<?php

namespace App\Http\Controllers\backend;

use Session;
use Carbon\Carbon;

use App\Http\Requests;
use App\Models\backend\Gst;
use App\Models\backend\UoMs;
use Illuminate\Http\Request;
use App\Models\backend\Brands;

use Illuminate\Validation\Rule;
use App\Models\backend\HSNCodes;
use App\Models\backend\Products;
use App\Models\backend\UoMGroup;
use App\Models\backend\UoMTypes;
use App\Models\backend\ItemTypes;
use App\Models\backend\Categories;
use Spatie\Permission\Models\Role;
use App\Models\backend\TermPayment;
use App\Http\Controllers\Controller;
use App\Models\backend\InternalUser;
use App\Models\backend\SubCategories;
use App\Models\backend\StorageLocations;
use App\Models\backend\ProductQtyStorage;
use App\Models\backend\BussinessMasterType;
use App\Models\backend\BussinessPartnerAddress;
use App\Models\backend\BussinessPartnerBankingDetails;
use App\Models\backend\BussinessPartnerContactDetails;
use App\Models\backend\BussinessPartnerOrganizationType;
use App\Models\backend\ProductQtyStorageRevision;
use App\Models\backend\ProductRevision;
use App\Models\backend\Variant;
use Illuminate\Support\Facades\Session as FacadesSession;

class ProductsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $products = Products::all();

        return view('backend.products.index', compact('products'));
    }

    // //create new user
    public function create()
    {
        $categories = Categories::where('visibility', 1)->pluck('category_name', 'category_id');
        $sub_categories = SubCategories::where('visibility', 1)->pluck('subcategory_name', 'subcategory_id');
        $hsncodes = HSNCodes::pluck('hsncode_desc', 'hsncode_desc');
        $item_types = ItemTypes::pluck('item_type_name', 'item_type_id');
        $brands = Brands::pluck('brand_name', 'brand_id');
        $variants = Variant::pluck('name', 'id');
        $uoms = UoMs::pluck('uom_name', 'uom_id');
        $storage_locations = StorageLocations::pluck('storage_location_name', 'storage_location_id');
        $uom_types = UoMTypes::pluck('uom_type', 'uom_type_id');
        $gst = Gst::pluck('gst_percent', 'gst_id');
        // dd($categories);
        return view('backend.products.create', compact('categories', 'variants', 'sub_categories', 'hsncodes', 'item_types', 'brands', 'uoms', 'storage_locations', 'uom_types', 'gst'));
    }

    public function store(Request $request)
    {

        // dd($request->all());
        $request->validate([
            'item_type_id' => 'required',
            'item_code' => 'required',
            'brand_id' => 'required',
            'category_id' => 'required',
            'sub_category_id' => 'required',
            'hsncode_id' => 'numeric|required',
        ]);
        $data = $request->all();

        // unset($data['qty']);
        // unset($data['storage_location_id']);

        // client said to diable
        // $quantities = $request->qty;
        // dd($request->base_qty);
        // $quantities = [1, 1, 1, 1];

        $locations = $request->storage_location_id;

        $products = new Products;
        $productsRevision = new ProductRevision();
        $products->fill($data);
        if (!empty($request->product_thumb)) {
            $imageName = time() . '.' . $request->product_thumb->extension();
            $request->product_thumb->move(public_path('backend-assets/images'), $imageName);
            $products->product_thumb = $imageName;
        }

        $sku = $request->brand_id  . $request->category_id . $request->sub_category_id . $request->variant;
        $products->sku = $sku;

        // $products->save();
        if ($products->save()) {
            $productsRevision->fill($products->toArray());
            $productsRevision->save();

            $log = ['module' => 'Products', 'action' => 'Product Created', 'description' => 'Product Created: ' . $request->item_code];
            captureActivity($log);


            // for ($i = 0; $i < sizeof($quantities); $i++) {
            //     $product_qty = new ProductQtyStorage;
            //     $product_qty_revision = new ProductQtyStorageRevision;
            //     $product_qty->product_item_id = $products->product_item_id;
            //     $product_qty->item_code = $products->item_code;
            //     $product_qty->qty = $quantities[$i];
            //     $product_qty->storage_location_id = $locations[$i];
            //     $product_qty->save();

            //     $product_qty_revision->fill($product_qty->toArray());
            //     $product_qty_revision->save();

            //     //UoM Group data
            //     $at_qty = $request->at_qty;
            //     $at_uom = $request->at_uom;
            //     $base_qty = $request->base_qty;
            //     $base_uom = $request->base_uom;
            //     $is_active = $request->is_active;

            //     for ($i = 0; $i < sizeof($at_qty); $i++) {
            //         $group = new UoMGroup;
            //         $group_data = [
            //             'product_item_id' => $products->product_item_id,
            //             'at_qty' => $at_uom[$i],
            //             'at_uom' => $at_uom[$i],
            //             'base_qty' => $base_qty[$i],
            //             'base_uom' => $base_uom[$i],
            //             'is_active' => '0'
            //         ];
            //         if (isset($is_active[$i]) && $is_active[$i] == 'on') {
            //             $group_data['is_active'] = 1;
            //         } else {
            //             $group_data['is_active'] = 0;
            //         }

            //         //save data
            //         $group->fill($group_data);
            //         $group->save();
            //     }
            // }
            return redirect('/admin/products')->with('success', 'New Product Added');
        }
    }


    public function delete($id)
    {
        $data = Products::where('product_item_id', $id)->get();
        if (count($data) > 0) {
            if (Products::where('product_item_id', $id)->delete()) {
                return redirect('/admin/products')->with('success', 'Product Has Been Deleted');
            }
        }
    }

    //edit products
    public function edit($id)
    {
        $products = Products::where('product_item_id', $id)->first();
        $categories = Categories::where('visibility', 1)->pluck('category_name', 'category_id');
        $sub_categories = SubCategories::where('visibility', 1)->pluck('subcategory_name', 'subcategory_id');
        $hsncodes = HSNCodes::pluck('hsncode_desc', 'hsncode_desc');
        $item_types = ItemTypes::pluck('item_type_name', 'item_type_id');
        $brands = Brands::pluck('brand_name', 'brand_id');
        $qty_location = ProductQtyStorage::where('product_item_id', $id)->get();
        $gst = Gst::pluck('gst_percent', 'gst_id');
        // $brands->put('add_brand','Add Brand <i class="feather icon-plus"></i>');
        // $brands->add_brand = 'Add Brand';
        // dd($hsncodes);
        $uoms = UoMs::pluck('uom_name', 'uom_id');
        $variants = Variant::pluck('name', 'id');
        $storage_locations = StorageLocations::pluck('storage_location_name', 'storage_location_id');
        return view('backend.products.edit', compact('products', 'categories', 'variants', 'sub_categories', 'hsncodes', 'item_types', 'brands', 'uoms', 'storage_locations', 'qty_location', 'gst'));
    }

    public function update(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'product_item_id' => 'required',
            'item_type_id' => 'required',
            'item_code' => 'required',
            'brand_id' => 'required',
            // 'category_id' => 'required',
            // 'sub_category_id' => 'required',
        ]);
        $data = $request->all();
        // unset($data['storage_location_id']);

        // client said
        // $quantities = $request->qty;
        $quantities = [1];

        $locations = $request->storage_location_id;

        $bussiness = Products::where('product_item_id', $request->product_item_id)->first();
        $productsRevision = new ProductRevision();
        $bussiness->fill($data);
        if (!empty($request->product_thumb)) {
            $imageName = time() . '.' . $request->product_thumb->extension();
            $request->product_thumb->move(public_path('backend-assets/images'), $imageName);
            $bussiness->product_thumb = $imageName;
        }


        $sku = $request->brand_id  . $request->category_id  . $request->sub_category_id  . $request->variant;
        $bussiness->sku = $sku;

        if ($bussiness->save()) {
            // dd($bussiness);



            $productsRevision->fill($bussiness->toArray());
            $productsRevision->save();

            if ($bussiness->getChanges()) {
                $new_changes = $bussiness->getChanges();
                $log = ['module' => 'Products', 'action' => 'Product Updated', 'description' => 'Product Updated: Name=>' . $bussiness->item_code];
                captureActivityupdate($new_changes, $log);
            }


            // $old_location = ProductQtyStorage::where('product_item_id', $request->product_item_id)->get();
            // $old_location_revision = ProductQtyStorageRevision::where('product_item_id', $request->product_item_id)->get();
            // if ($old_location && count($old_location) > 0) {
            //     foreach ($old_location as $old) {
            //         $old_data = ProductQtyStorage::where('product_qty_storage_id', $old->product_qty_storage_id)->first()->delete();
            //     }
            // }
            // if ($old_location_revision && count($old_location_revision) > 0) {
            //     foreach ($old_location_revision as $old) {
            //         $old_data = ProductQtyStorageRevision::where('product_qty_storage_id', $old->product_qty_storage_id)->first()->delete();
            //     }
            // }

            // //put new data
            // for ($i = 0; $i < sizeof($quantities); $i++) {
            //     $product_qty = new ProductQtyStorage;
            //     $product_qty_revision = new ProductQtyStorageRevision;
            //     $product_qty->product_item_id = $request->product_item_id;
            //     $product_qty->qty = $quantities[$i];
            //     $product_qty->storage_location_id = $locations[$i] ?? '';
            //     $product_qty->save();
            //     $product_qty_revision->fill($product_qty->toArray());
            //     $product_qty_revision->save();
            // }

            return redirect('/admin/products')->with('success', 'Product Has Been Updated');
        }
    }

    public function destroy($id)
    {
        $products = Products::findOrFail($id);
        $products->delete();

        $log = ['module' => 'Products', 'action' => 'Product Deleted', 'description' => 'Product Deleted: ' . $products->item_code];
        captureActivity($log);

        FacadesSession::flash('message', 'Product deleted!');
        FacadesSession::flash('status', 'success');

        return redirect('admin/products');
    }

    public function address($id)
    {
        $address = BussinessPartnerAddress::where('bussiness_partner_id', $id)->get();
        return view('backend.products.address', compact('address', 'id'));
    }

    //show new address form
    public function addaddress($id)
    {
        return view('backend.products.add_address', compact('id'));
    }

    public function storeaddress(Request $request)
    {
        $request->validate([
            'address_type' => 'required',
            'building_no_name' => 'required',
            'street_name' => 'required',
            'landmark' => 'required',
            'city' => 'required',
            'pin_code' => 'required|digits:6|min:6|max:6',
            'district' => 'required',
            'state' => 'required',
            'country' => 'required',
        ]);

        //check bp_address id set or not
        if ($request->has('bp_address_id')) {
            //update code
            $address = BussinessPartnerAddress::where('bp_address_id', $request->bp_address_id)->first();
            $address->fill($request->all());
            if ($address->save()) {
                return redirect()->route('admin.products.address', ['id' => $address->bussiness_partner_id])->with('success', 'Address Has Been updated');
                // return redirect('admin/products/address/'.$id)->with('success', 'New Address Has Been Added');
            } else {
                return redirect()->route('admin.products.address', ['id' => $address->bussiness_partner_id])->with('error', 'Failed to Rupdate Address');
            }
        } else {
            //Insert Code
            $address = new BussinessPartnerAddress;
            $address->fill($request->all());
            $id = $request->bussiness_partner_id;
            if ($address->save()) {
                return redirect()->route('admin.products.address', ['id' => $id])->with('success', 'New Address Has Been Added');
                // return redirect('admin/products/address/'.$id)->with('success', 'New Address Has Been Added');
            } else {
                return redirect()->route('admin.products.address', ['id' => $id])->with('error', 'Failed to Register Address');
            }
        }
    }

    public function editaddress($addressid)
    {
        $address = BussinessPartnerAddress::where('bp_address_id', $addressid)->first();
        return view('backend.products.updateaddress', compact('address'));
    }

    //function for delete address
    public function deleteaddress($id)
    {
        $address = BussinessPartnerAddress::where('bp_address_id', $id)->first();

        if (count($address->toArray()) > 0) {
            $addresddata = BussinessPartnerAddress::where('bp_address_id', $id)->delete();
            return redirect()->route('admin.products.address', ['id' => $address->bussiness_partner_id])->with('error', 'Failed to Register Address');
        }
    }

    public function contactproducts($id)
    {
        $contact = BussinessPartnerContactDetails::where('bussiness_partner_id', $id)->get();
        return view('backend.products.contact', compact('contact', 'id'));
    }

    public function createcontact($id)
    {
        return view('backend.products.add_contact', compact('id'));
    }

    public function storecontact(Request $request)
    {

        $request->validate([
            'type' => 'required',
            'email_id' => 'required|email',
            'mobile_no' => 'required|digits:10|min:10',
        ]);


        if ($request->has('contact_products_id') && $request->contact_products_id != "") {
            //update the data
            $contact = BussinessPartnerContactDetails::where('contact_products_id', $request->contact_products_id)->first();
            $contact->fill($request->all());
            if ($contact->save()) {
                return redirect()->route('admin.products.contact', ['id' => $contact->bussiness_partner_id])->with('success', 'Contact Has Been Updates');
            } else {
                return redirect()->route('admin.products.contact', ['id' => $contact->bussiness_partner_id])->with('error', 'Failed to Update Contact');
            }
        } else {
            //inset the data
            $contact = new BussinessPartnerContactDetails;
            $contact->fill($request->all());
            if ($contact->save()) {
                return redirect()->route('admin.products.contact', ['id' => $request->bussiness_partner_id])->with('success', 'Contact Has Been Added');
            } else {
                return redirect()->route('admin.products.contact', ['id' => $request->bussiness_partner_id])->with('error', 'Unable to add contact products');
            }
        }
    }


    public function editcontact($id)
    {
        $contact = BussinessPartnerContactDetails::where('contact_products_id', $id)->first();
        return view('backend.products.update_contact', compact('contact', 'id'));
    }

    //delete contact
    public function deletecontact($id)
    {
        $contact = BussinessPartnerContactDetails::where('contact_products_id', $id)->first();
        if (isset($contact) && count($contact->toArray()) > 0) {
            $deleted = BussinessPartnerContactDetails::where('contact_products_id', $id)->delete();
            if ($deleted) {
                return redirect()->route('admin.products.contact', ['id' => $contact->bussiness_partner_id])->with('success', 'Address Has Been Removed');
            } else {
                return redirect()->route('admin.products.contact', ['id' => $contact->bussiness_partner_id])->with('error', 'Unable to remove Address');
            }
        }
    }
    //banking products
    public function banking($id)
    {
        $banking_data = BussinessPartnerBankingDetails::where('bussiness_partner_id', $id)->get();
        return view('backend.products.bank_detail', compact('banking_data', 'id'));
    }

    public function addbank($id)
    {
        return view('backend.products.add_bank', compact('id'));
    }

    public function bankstore(Request $request)
    {

        $request->validate([
            'bank_name' => 'required',
            'bank_branch' => 'required',
            'ifsc' => 'required',
            'ac_number' => 'required|integer',
            'bank_address' => 'required',
        ]);

        if (isset($request->banking_products_id) && $request->banking_products_id != "") {
            $bankproducts = BussinessPartnerBankingDetails::where('banking_products_id', $request->banking_products_id)->first();
            $bankproducts->fill($request->all());
            if ($bankproducts->save()) {
                return redirect()->route('admin.products.banking', ['id' => $bankproducts->bussiness_partner_id])->with('success', 'bank Details Has Been Updated');
            } else {
                return redirect()->route('admin.products.banking', ['id' => $bankproducts->bussiness_partner_id])->with('error', 'Unable to Update bank products');
            }
        } else {
            //fresh request
            $bank = new BussinessPartnerBankingDetails;
            $bank->fill($request->all());

            if ($bank->save()) {
                return redirect()->route('admin.products.banking', ['id' => $request->bussiness_partner_id])->with('success', 'bank Details Has Been Added');
            } else {
                return redirect()->route('admin.products.banking', ['id' => $request->bussiness_partner_id])->with('error', 'Unable to Add bank products');
            }
        }
    }

    public function editbank($id)
    {
        $bankproducts = BussinessPartnerBankingDetails::where('banking_products_id', $id)->first();
        return view('backend.products.edit_bank', compact('id', 'bankproducts'));
    }

    public function deletebank($id)
    {
        $bank = BussinessPartnerBankingDetails::where('banking_products_id', $id)->first();
        if (isset($bank) &&  count($bank->toArray()) > 0) {
            $delete = BussinessPartnerBankingDetails::where('banking_products_id', $id)->delete();
            if ($delete) {
                return redirect()->route('admin.products.banking', ['id' => $bank->bussiness_partner_id])->with('error', 'bank Details Has Been Added');
            }
        }
    }



    // public function edit($id)
    // {
    //     $userdata = InternalUser::where('user_id', $id)->first();
    //     $role = Role::get(['id', 'name']);
    //     return view('backend.internalusers.edit', compact('userdata', 'role'));
    // }
    // public function update(Request $request)
    // {
    //     $update_data = $request->all();
    //     unset($update_data['_token']);
    //     //  dd($update_data);
    //     $data = InternalUser::where('user_id', $request->user_id)->get();
    //     if (count($data) > 0) {
    //         // $userdata = InternalUser::where('user_id', $request->id)->update($update_data);
    //         $userdata = InternalUser::where('user_id', $request->user_id)->first();

    //         $userdata->fill($request->all());
    //         if ($userdata->save()) {
    //             return redirect('/admin/internalusers')->with('success', 'User Has Been Updated');
    //         }
    //     }
    // }


    public function getsubcategory(Request $request)
    {
        $data = $request->all();
        $subcategory = SubCategories::where('category_id', $data['category_id'])->get();

        $subcategory_list = "<option value=''>Please Select</option>";

        foreach ($subcategory as $key => $value) {
            $subcategory_list .= "<option value='" . $value['subcategory_id'] . "'>" . $value['subcategory_name'] . "</option>";
        }
        if (count($subcategory) == 0) {
            $subcategory_list .= "<option value=''>No Record Found</option>";
        }
        return $subcategory_list;
    }
} //end of class
