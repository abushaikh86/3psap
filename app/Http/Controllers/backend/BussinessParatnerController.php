<?php

namespace App\Http\Controllers\backend;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\backend\AdminUsers;
use App\Models\backend\Area;
use App\Models\backend\Beat;
use App\Models\backend\InternalUser;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Session;
use Illuminate\Validation\Rule;

use Spatie\Permission\Models\Role;
use App\Models\backend\BussinessPartnerMaster;
use App\Models\backend\BussinessMasterType;
use App\Models\backend\BussinessPartnerOrganizationType;
use App\Models\backend\TermPayment;
use App\Models\backend\BussinessPartnerAddress;
use App\Models\backend\BussinessPartnerContactDetails;
use App\Models\backend\BussinessPartnerBankingDetails;
use App\Models\backend\BusinessPartnerCategory;
use App\Models\backend\Pricings;
use App\Models\backend\Route;
use Carbon\Exceptions\Exception;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;
use PhpOffice\PhpSpreadsheet\IOFactory;
use Yajra\DataTables\Facades\DataTables;

class BussinessParatnerController extends Controller
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
    public function index(Request $request)
    {
        $controllerName = class_basename(request()->route()->getAction('controller'));
        session(['previous_controller' => $controllerName]);

        if ($request->ajax()) {
            $bussinesspartner = BussinessPartnerMaster::with('get_org_type', 'get_category', 'paymentterms', 'get_partner_type_name')
                ->where('is_converted', 1)->get();

            // dd($purchaseorder);

            return DataTables::of($bussinesspartner)
                ->addIndexColumn()
                ->addColumn('action', function ($bussinesspartner) {
                    $actionBtn = '<div id="action_buttons">';
                    if (request()->user()->can('Update Login Management')) {
                        // dd("yes");
                        $actionBtn .= '<a href="' . route('admin.bussinesspartner.edit', ['id' => $bussinesspartner->business_partner_id]) . '
                     " class="btn btn-sm btn-primary" title="Edit"><i class="feather icon-edit"></i></a> ';
                    }
                    if (request()->user()->can('Delete Login Management')) {
                        $actionBtn .= '<a href="' . route('admin.bussinesspartner.delete', ['id' => $bussinesspartner->business_partner_id]) . '"
                    class="btn btn-sm btn-danger" title="Delete" id="delete_btn" onclick="return confirm(`Are you sure you want to Delete this Entry ?`)">
                    <i class="feather icon-trash"></i></a>';
                    }

                    $actionBtn .= '<a href="' . route('admin.bussinesspartner.address', ['id' => $bussinesspartner->business_partner_id]) . '"
                    class="btn btn-sm btn-primary" title="Address"><i class="feather icon-map"></i></a> ';

                    $actionBtn .= '<a href="' . route('admin.bussinesspartner.contact', ['id' => $bussinesspartner->business_partner_id]) . '"
                    class="btn btn-sm btn-secondary" title="Contact"><i class="feather icon-mail"></i></a> ';

                    $actionBtn .= '<a href="' . route('admin.bussinesspartner.banking', ['id' => $bussinesspartner->business_partner_id]) . '
                     " class="btn btn-sm btn-success" title="Banking" ">
                     <i class="feather icon-dollar-sign"></i></a></div>';

                    return $actionBtn;
                })

                ->rawColumns(['action'])
                ->make(true);
        }

        return view('backend.bussinesspartner.index');
    }


    public function updateBpmaster(Request $request)
    {

        // dd($request->all());
        // for import
        $excel_file = $request->file('file');
        try {

            $spreadsheet = IOFactory::load($excel_file->getRealPath());
            $sheet = $spreadsheet->getActiveSheet();
            $row_limit = $sheet->getHighestDataRow();
            $column_limit = $sheet->getHighestDataColumn();
            $row_range = range(1, $row_limit);
            $column_range = range('A', $column_limit);
            $startcount = 1;
            $srno = 0;
            $uploadedFile = $excel_file;
            $filename = date('Y-m-d_H-i-s') . '_' . str_replace(' ', '_', $uploadedFile->getClientOriginalName());

            if ($request->import_type == 'ven') {
                $uploadedFile->move(public_path('uploads/Vendors'), $filename);
            } else if ($request->import_type  == 'cus') {
                $uploadedFile->move(public_path('uploads/Customers'), $filename);
            }


            foreach ($row_range as $row) {
                $isEmptyRow = true;
                foreach ($column_range as $column) {
                    if (!empty($sheet->getCell($column . $row)->getValue())) {
                        $isEmptyRow = false;
                        break;
                    }
                }

                if ($srno > 0 &&  !$isEmptyRow) {
                    if ($request->import_type == 'ven') {
                        $data = [
                            'business_partner_type' => trim(addslashes($sheet->getCell('A' . $row)->getValue())),
                            'bp_name' => trim(addslashes($sheet->getCell('B' . $row)->getValue())),
                            'bp_organisation_type' => (int) trim(addslashes($sheet->getCell('C' . $row)->getValue())),
                            'residential_status' => trim(addslashes($sheet->getCell('D' . $row)->getValue())),
                            'bp_category' => trim(addslashes($sheet->getCell('E' . $row)->getValue())),
                            'bp_group' => trim(addslashes($sheet->getCell('F' . $row)->getValue())),
                            'payment_terms_id' => (int) trim(addslashes($sheet->getCell('G' . $row)->getValue())),
                            'gst_details' => trim(addslashes($sheet->getCell('H' . $row)->getValue())),
                            'gst_reg_type' => trim(addslashes($sheet->getCell('I' . $row)->getValue())),
                            'rcm_app' => (int) trim(addslashes($sheet->getCell('J' . $row)->getValue())),
                            'pricing_profile' => trim(addslashes($sheet->getCell('K' . $row)->getValue())),
                            'msme_reg' => (int) trim(addslashes($sheet->getCell('L' . $row)->getValue())),
                            // Add more fields as needed
                        ];

                        //bill-address
                        $bill_add = [
                            'address_type' => 'Bill-To/ Bill-From',
                            'bp_address_name' => trim(addslashes($sheet->getCell('N' . $row)->getValue())),
                            'building_no_name' => trim(addslashes($sheet->getCell('O' . $row)->getValue())),
                            'street_name' => trim(addslashes($sheet->getCell('P' . $row)->getValue())),
                            'landmark' => trim(addslashes($sheet->getCell('Q' . $row)->getValue())),
                            'country' => trim(addslashes($sheet->getCell('R' . $row)->getValue())),
                            'state' => trim(addslashes($sheet->getCell('S' . $row)->getValue())),
                            'district' => trim(addslashes($sheet->getCell('T' . $row)->getValue())),
                            'city' => trim(addslashes($sheet->getCell('U' . $row)->getValue())),
                            'pin_code' => trim(addslashes($sheet->getCell('V' . $row)->getValue())),
                        ];

                        //ship-address
                        $ship_add = [
                            'address_type' => 'Ship-To/ Ship-From',
                            'bp_address_name' => trim(addslashes($sheet->getCell('X' . $row)->getValue())),
                            'building_no_name' => trim(addslashes($sheet->getCell('Y' . $row)->getValue())),
                            'street_name' => trim(addslashes($sheet->getCell('Z' . $row)->getValue())),
                            'landmark' => trim(addslashes($sheet->getCell('AA' . $row)->getValue())),
                            'country' => trim(addslashes($sheet->getCell('AB' . $row)->getValue())),
                            'state' => trim(addslashes($sheet->getCell('AC' . $row)->getValue())),
                            'district' => trim(addslashes($sheet->getCell('AD' . $row)->getValue())),
                            'city' => trim(addslashes($sheet->getCell('AE' . $row)->getValue())),
                            'pin_code' => trim(addslashes($sheet->getCell('AF' . $row)->getValue())),
                        ];
                    } else if ($request->import_type  == 'cus') {
                        $data = [
                            'business_partner_type' => trim(addslashes($sheet->getCell('A' . $row)->getValue())),
                            'bp_name' => trim(addslashes($sheet->getCell('B' . $row)->getValue())),
                            'bp_organisation_type' => (int)trim(addslashes($sheet->getCell('C' . $row)->getValue())),
                            'residential_status' => trim(addslashes($sheet->getCell('D' . $row)->getValue())),
                            'bp_category' => trim(addslashes($sheet->getCell('E' . $row)->getValue())),
                            'bp_group' => trim(addslashes($sheet->getCell('F' . $row)->getValue())),
                            'sales_manager' => trim(addslashes($sheet->getCell('G' . $row)->getValue())),
                            'sales_officer' => trim(addslashes($sheet->getCell('H' . $row)->getValue())),
                            'salesman' => trim(addslashes($sheet->getCell('I' . $row)->getValue())),
                            'payment_terms_id' => (int)trim(addslashes($sheet->getCell('J' . $row)->getValue())),
                            'gst_details' => trim(addslashes($sheet->getCell('K' . $row)->getValue())),
                            'gst_reg_type' => trim(addslashes($sheet->getCell('L' . $row)->getValue())),
                            'rcm_app' => (int)trim(addslashes($sheet->getCell('M' . $row)->getValue())),
                            'pricing_profile' => trim(addslashes($sheet->getCell('N' . $row)->getValue())),
                            'msme_reg' => (int) trim(addslashes($sheet->getCell('O' . $row)->getValue())),
                            'beat_id' => (int) trim(addslashes($sheet->getCell('P' . $row)->getValue())),
                            // Add more fields as needed
                        ];
                    }

                    // dd($data);
                    // $pricings = PricingItem::where(['pricing_master_id' => $request->pricing_master_id, 'sku' => $data['sku'], 'item_code' => $data['item_code']])->first();

                    // if (!empty($pricings)) {
                    //     $pricings->selling_price = $data['selling_price'];
                    // } else {
                    $pricings = new BussinessPartnerMaster();
                    $pricings->fill($data);
                    // }
                    $pricings->save();

                    // $bill_address = new BussinessPartnerAddress();
                    // $bill_address->fill($bill_add);
                    // $bill_address->bussiness_partner_id = $pricings->business_partner_id;
                    // $bill_address->save();

                    // $ship_address = new BussinessPartnerAddress();
                    // $ship_address->fill($ship_add);
                    // $ship_address->bussiness_partner_id = $pricings->business_partner_id;
                    // $ship_address->save();


                    // array_push($imported_data, $data);
                }
                $startcount++;
                $srno++;
                // $data = User::all();
            }
            // dd($imported_data);
        } catch (Exception $e) {
            $error_code = $e->errorInfo[1];
            return redirect()->back()->with('error', $error_code);
        }

        return redirect()->back()->with('success', 'Bussiness Partners Updated');
        // return redirect('/admin/pricings')->with('success', 'Pricing Updated');
    }

    // //create new user
    public function create()
    {
        $bussinesstype = BussinessMasterType::pluck('bussiness_master_type', 'bussiness_master_type_id');
        // $sales_manager = AdminUsers::where('department_id', '7')->pluck("first_name", "admin_user_id");
        // dd($sales_manager);
        // $sales_officer = AdminUsers::where('department_id', '6')->pluck("first_name", "admin_user_id");

        //fetch asm
        $salesman_manager_ids = Role::where('department_id', 5)->pluck('id')->toArray();
        $sales_manager = AdminUsers::where('company_id', session('company_id'))->whereIn('role', $salesman_manager_ids)->get()->pluck('first_name', 'admin_user_id');
        //fetch ase
        $ase_ids = Role::where('department_id', 4)->pluck('id')->toArray();
        $ase = AdminUsers::where('company_id', session('company_id'))->whereIn('role', $ase_ids)->get()->pluck('first_name', 'admin_user_id');

        //fetch sales officers
        $sales_officer_ids = Role::where('department_id', 6)->pluck('id')->toArray();
        $sales_officer = AdminUsers::where('company_id', session('company_id'))->whereIn('role', $sales_officer_ids)->get()->pluck('first_name', 'admin_user_id');

        //fetch salesman
        $salesman_ids = Role::where('department_id', 8)->pluck('id')->toArray();
        $salesman = AdminUsers::where('company_id', session('company_id'))->whereIn('role', $salesman_ids)->get()->pluck('first_name', 'admin_user_id');

        $area_data = Area::pluck('area_name', 'area_id');
        $route_data = Route::pluck('route_name', 'route_id');
        $beat_data = Beat::get();

        $pricing_data = Pricings::pluck('pricing_name', 'pricing_master_id');
        // dd($pricing_data);
        $bpOrgType = BussinessPartnerOrganizationType::pluck('bp_organisation_type', 'bp_organisation_type_id');
        $termPayment = TermPayment::pluck('term_type', 'payment_terms_id');
        $business_partner_category = BusinessPartnerCategory::pluck("business_partner_category_name", "business_partner_category_id");

        return view('backend.bussinesspartner.create', compact('area_data', 'ase', 'sales_officer', 'salesman', 'route_data', 'pricing_data', 'beat_data', 'bussinesstype', 'sales_manager', 'bpOrgType', 'termPayment', 'business_partner_category'));
    }





    public function store(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'business_partner_type' => 'required',
            // 'bp_code' => 'required',
            'bp_name' => 'required|unique:business_partner_master,bp_name',
            'bp_organisation_type' => 'required',
            'bp_category' => 'required',
            'pricing_profile' => 'required',
            // 'shelf_life' => 'required',
            'bp_group' => 'required',
            // 'sales_manager' => 'required_if',
            // 'sales_officer' => 'required',
            // 'salesman' => 'required',
            'payment_terms_id' => 'required',
            // 'credit_limit' => 'required',
            'gst_details' => 'required',
            'residential_status' => 'required',
            'gst_reg_type' => 'required',
            'msme_reg' => 'required',
            // 'area_id' => 'required',
            // 'route_id' => 'required',
            // 'beat_id' => 'required',
        ]);

        $data = $request->all();
        // dd($data);



        $bussiness = new BussinessPartnerMaster;
        $bussiness->fill($request->all());
        if ($bussiness->save()) {
            // dd('sdgdfg');
            $bid = $bussiness->business_partner_id;
            $uid = ['bussiness_partner_id' => $bid];
            $full_data = array_merge($uid, $data);
            // dd($bid);
            if ($bid != "") {
                if ($data['address_type'] == 'Bill-To/ Bill-From') {
                    $address = new BussinessPartnerAddress;
                    $address->fill($full_data);
                    // dd($address);
                    $address->save();
                }

                if ($data['address_type1'] == 'Ship-To/ Ship-From') {
                    $address1 = new BussinessPartnerAddress;
                    $arr_data = [
                        'bussiness_partner_id' => $bid,
                        'bp_address_name'  => $data['bp_address_name'],
                        'address_type' => $data['address_type1'],
                        'building_no_name'  => $data['building_no_name1'],
                        'street_name' => $data['street_name1'],
                        'landmark' => $data['landmark1'],
                        'city' => $data['city1'],
                        'pin_code' => $data['pin_code1'],
                        'district'   => $data['district1'],
                        'state'  => $data['state1'],
                        'country' => $data['country1']
                    ];

                    $address1->fill($arr_data);
                    // dd($address1);
                    $address1->save();
                }


                $contact = new BussinessPartnerContactDetails;
                $contact->fill($full_data);
                // dd($contact);
                $contact->save();



                $banking = new BussinessPartnerBankingDetails;
                $banking->fill($full_data);
                $banking->save();


                $log = ['module' => 'Bussiness Partner Master', 'action' => 'Bussiness Partner Created', 'description' => 'Bussiness Partner Created: ' . $request->bp_name];
                captureActivity($log);
            }

            return redirect('/admin/bussinesspartner')->with('success', 'New Bussiness Partner Added');
        }
    }


    public function delete($id)
    {
        $data = BussinessPartnerMaster::where('business_partner_id', $id)->get();

        if (count($data) > 0) {
            if (BussinessPartnerMaster::where('business_partner_id', $id)->delete()) {
                BussinessPartnerAddress::where('bussiness_partner_id', $id)->delete();

                $log = ['module' => 'Bussiness Partner Master', 'action' => 'Bussiness Partner Deleted', 'description' => 'Bussiness Partner Deleted'];
                captureActivity($log);

                return redirect('/admin/bussinesspartner')->with('success', 'Partner Has Been Deleted');
            }
        }
    }

    //edit details
    public function edit($id)
    {
        $bussinesstype = BussinessMasterType::all(['bussiness_master_type_id', 'bussiness_master_type']);
        $admin_users = AdminUsers::all(['first_name', 'admin_user_id', 'role']);
        $bussiness_master_type = BussinessMasterType::pluck('bussiness_master_type', 'bussiness_master_type_id');
        // dd($admin_users);
        $bpOrgType = BussinessPartnerOrganizationType::pluck('bp_organisation_type', 'bp_organisation_type_id');
        $business_partner_category = BusinessPartnerCategory::pluck("business_partner_category_name", "business_partner_category_id");
        $termPayment = TermPayment::all();
        $model = BussinessPartnerMaster::where('business_partner_id', $id)->with('paymentterms')->first();
        // dd($bussinesspartner);
        $business_partner_address = BussinessPartnerAddress::where('bussiness_partner_id', $id)->get();
        $business_partner_contact = BussinessPartnerContactDetails::where('bussiness_partner_id', $id)->first();
        $business_partner_banking = BussinessPartnerBankingDetails::where('bussiness_partner_id', $id)->first();
        // dd($bussinesspartner->toArray());
        $area_data = Area::pluck('area_name', 'area_id');
        $route_data = Route::pluck('route_name', 'route_id');
        $beat_data = Beat::get();
        $pricing_data = Pricings::pluck('pricing_name', 'pricing_master_id');

        //fetch asm
        $salesman_manager_ids = Role::where('department_id', 5)->pluck('id')->toArray();
        $sales_manager = AdminUsers::where('company_id', session('company_id'))->whereIn('role', $salesman_manager_ids)->get()->pluck('first_name', 'admin_user_id');

        //fetch ase
        $ase_ids = Role::where('department_id', 4)->pluck('id')->toArray();
        $ase = AdminUsers::where('company_id', session('company_id'))->whereIn('role', $ase_ids)->get()->pluck('first_name', 'admin_user_id');

        //fetch sales officers
        $sales_officer_ids = Role::where('department_id', 6)->pluck('id')->toArray();
        $sales_officer = AdminUsers::where('company_id', session('company_id'))->whereIn('role', $sales_officer_ids)->get()->pluck('first_name', 'admin_user_id');

        //fetch salesman
        $salesman_ids = Role::where('department_id', 8)->pluck('id')->toArray();
        $salesman = AdminUsers::where('company_id', session('company_id'))->whereIn('role', $salesman_ids)->get()->pluck('first_name', 'admin_user_id');

        $officer_users = [];
        $ase_users = [];
        $asm_users = [];
        if (!empty($model->salesman)) {
            $officer_users = AdminUsers::where(['admin_user_id' => $model->salesman])->first();
            $ase_users = AdminUsers::where(['admin_user_id' => $officer_users->parent_users])->first();
            $asm_users = AdminUsers::where(['admin_user_id' => $ase_users->parent_users])->first();
        }


        return view('backend.bussinesspartner.edit', compact('officer_users', 'ase_users', 'asm_users', 'sales_manager', 'ase', 'sales_officer', 'salesman', 'area_data', 'pricing_data', 'route_data', 'beat_data', 'model', 'business_partner_category', 'bussiness_master_type', 'admin_users', 'bussinesstype', 'bpOrgType', 'termPayment', 'business_partner_address', 'business_partner_contact', 'business_partner_banking'));
    }

    public function update(Request $request, $id = null)
    {
        // dd($request->all());
        $request->validate([
            'business_partner_type' => 'required',
            // 'bp_code' => 'required',
            // 'bp_name' => 'required|unique:business_partner_master,bp_name',
            'bp_name' => [
                'required',
                Rule::unique('business_partner_master', 'bp_name')->ignore($id, 'business_partner_id'),
            ],
            'bp_organisation_type' => 'required',
            'bp_category' => 'required',
            'pricing_profile' => 'required',
            // 'shelf_life' => 'required',
            'bp_group' => 'required',
            // 'sales_manager' => 'required',
            // 'sales_officer' => 'required',
            // 'salesman' => 'required',
            'payment_terms_id' => 'required',
            // 'credit_limit' => 'required',
            'gst_details' => 'required',
            'residential_status' => 'required',
            'gst_reg_type' => 'required',
            'msme_reg' => 'required',
            // 'area_id' => 'required',
            // 'route_id' => 'required',
            // 'beat_id' => 'required',
        ]);
        // $data = $request->all();
        // dd($data);
        $bussiness = BussinessPartnerMaster::where('business_partner_id', $request->business_partner_id)->first();
        $bussiness->fill($request->all());
        $bussiness->is_converted = 1;
        if ($bussiness->save()) {


            if ($bussiness->getChanges()) {
                $new_changes = $bussiness->getChanges();
                $log = ['module' => 'Bussiness Partner Master', 'action' => 'Bussiness Partner Updated', 'description' => 'Bussiness Partner Updated: Name=>' . $bussiness->bp_name];
                captureActivityupdate($new_changes, $log);
            }


            return redirect('/admin/bussinesspartner')->with('success', 'Partner Has Been Updated');
        }
    }



    public function address($id)
    {
        $addresses = BussinessPartnerAddress::where('bussiness_partner_id', $id)->get();
        // dd($address->toArray());
        return view('backend.bussinesspartner.address', compact('addresses', 'id'));
    }

    //show new address form
    public function addaddress($id)
    {
        return view('backend.bussinesspartner.add_address', compact('id'));
    }

    public function storeaddress(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'address_type' => 'required',
            'bp_address_name' => 'required',
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


                if ($address->getChanges()) {
                    $new_changes = $address->getChanges();
                    $log = ['module' => 'Bussiness Partner Address', 'action' => 'Bussiness Partner Address Updated', 'description' => 'Bussiness Partner Address Updated: ' . $address->city];
                    captureActivityupdate($new_changes, $log);
                }



                return redirect()->route('admin.bussinesspartner.address', ['id' => $address->bussiness_partner_id])->with('success', 'Address Has Been updated');
                // return redirect('admin/bussinesspartner/address/'.$id)->with('success', 'New Address Has Been Added');
            } else {
                return redirect()->route('admin.bussinesspartner.address', ['id' => $address->bussiness_partner_id])->with('error', 'Failed to Rupdate Address');
            }
        } else {
            //Insert Code
            $address = new BussinessPartnerAddress;
            $address->fill($request->all());
            $id = $request->bussiness_partner_id;
            if ($address->save()) {

                $log = ['module' => 'Bussiness Partner Address', 'action' => 'Bussiness Partner Address Created', 'description' => 'Bussiness Partner Address Created: ' . $request->city];
                captureActivity($log);

                return redirect()->route('admin.bussinesspartner.address', ['id' => $id])->with('success', 'New Address Has Been Added');
                // return redirect('admin/bussinesspartner/address/'.$id)->with('success', 'New Address Has Been Added');
            } else {
                return redirect()->route('admin.bussinesspartner.address', ['id' => $id])->with('error', 'Failed to Register Address');
            }
        }
    }

    public function editaddress($addressid)
    {
        $address = BussinessPartnerAddress::where('bp_address_id', $addressid)->first();
        // dd($address);
        return view('backend.bussinesspartner.updateaddress', compact('address'));
    }

    //function for delete address
    public function deleteaddress($id)
    {
        $address = BussinessPartnerAddress::where('bp_address_id', $id)->first();

        if (!empty($address)) {
            $addresddata = BussinessPartnerAddress::where('bp_address_id', $id)->delete();

            $log = ['module' => 'Bussiness Partner Address', 'action' => 'Bussiness Partner Address Deleted', 'description' => 'Bussiness Partner Address Deleted: ' . $address->city];
            captureActivity($log);

            return redirect()->route('admin.bussinesspartner.address', ['id' => $address->bussiness_partner_id])->with('success', 'Bussiness Partner Address Deleted');
        }
    }

    public function contactdetails($id)
    {
        $contact = BussinessPartnerContactDetails::where('bussiness_partner_id', $id)->get();
        return view('backend.bussinesspartner.contact', compact('contact', 'id'));
    }

    public function createcontact($id)
    {
        return view('backend.bussinesspartner.add_contact', compact('id'));
    }

    public function storecontact(Request $request)
    {

        $request->validate([
            'type' => 'required',
            'contact_person' => 'required',
            'email_id' => 'required|email',
            'mobile_no' => 'required|digits:10|min:10',
        ]);


        if ($request->has('contact_details_id') && $request->contact_details_id != "") {
            //update the data
            $contact = BussinessPartnerContactDetails::where('contact_details_id', $request->contact_details_id)->first();
            $contact->fill($request->all());
            if ($contact->save()) {

                if ($contact->getChanges()) {
                    $new_changes = $contact->getChanges();
                    $log = ['module' => 'Bussiness Partner Contact', 'action' => 'Bussiness Partner Contact Updated', 'description' => 'Bussiness Partner Contact Updated: ' . $contact->contact_person];
                    captureActivityupdate($new_changes, $log);
                }

                return redirect()->route('admin.bussinesspartner.contact', ['id' => $contact->bussiness_partner_id])->with('success', 'Contact Has Been Updates');
            } else {
                return redirect()->route('admin.bussinesspartner.contact', ['id' => $contact->bussiness_partner_id])->with('error', 'Failed to Update Contact');
            }
        } else {
            //inset the data
            $contact = new BussinessPartnerContactDetails;
            $contact->fill($request->all());
            if ($contact->save()) {
                $log = ['module' => 'Bussiness Partner Contact', 'action' => 'Bussiness Partner Contact Created', 'description' => 'Bussiness Partner Contact Created: ' . $request->contact_person];
                captureActivity($log);

                return redirect()->route('admin.bussinesspartner.contact', ['id' => $request->bussiness_partner_id])->with('success', 'Contact Has Been Added');
            } else {
                return redirect()->route('admin.bussinesspartner.contact', ['id' => $request->bussiness_partner_id])->with('error', 'Unable to add contact details');
            }
        }
    }


    public function editcontact($id)
    {
        $contact = BussinessPartnerContactDetails::where('contact_details_id', $id)->first();
        return view('backend.bussinesspartner.update_contact', compact('contact', 'id'));
    }

    //delete contact
    public function deletecontact($id)
    {
        $contact = BussinessPartnerContactDetails::where('contact_details_id', $id)->first();
        if (isset($contact) && count($contact->toArray()) > 0) {
            $deleted = BussinessPartnerContactDetails::where('contact_details_id', $id)->delete();

            if ($deleted) {
                $log = ['module' => 'Bussiness Partner Contact', 'action' => 'Bussiness Partner Contact Deleted', 'description' => 'Bussiness Partner Contact Deleted: ' . $contact->contact_person];
                captureActivity($log);
                return redirect()->route('admin.bussinesspartner.contact', ['id' => $contact->bussiness_partner_id])->with('success', 'Address Has Been Removed');
            } else {
                return redirect()->route('admin.bussinesspartner.contact', ['id' => $contact->bussiness_partner_id])->with('error', 'Unable to remove Address');
            }
        }
    }
    //banking details
    public function banking($id)
    {

        $banking_data = BussinessPartnerBankingDetails::where('bussiness_partner_id', $id)->get();
        return view('backend.bussinesspartner.bank_detail', compact('banking_data', 'id'));
    }

    public function addbank($id)
    {
        return view('backend.bussinesspartner.add_bank', compact('id'));
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

        if (isset($request->banking_details_id) && $request->banking_details_id != "") {
            $bankdetails = BussinessPartnerBankingDetails::where('banking_details_id', $request->banking_details_id)->first();
            $bankdetails->fill($request->all());
            if ($bankdetails->save()) {


                if ($bankdetails->getChanges()) {
                    $new_changes = $bankdetails->getChanges();
                    $log = ['module' => 'Bussiness Partner Bank', 'action' => 'Bussiness Partner Bank Updated', 'description' => 'Bussiness Partner Bank Updated: ' . $bankdetails->bank_name];
                    captureActivityupdate($new_changes, $log);
                }

                return redirect()->route('admin.bussinesspartner.banking', ['id' => $bankdetails->bussiness_partner_id])->with('success', 'bank Details Has Been Updated');
            } else {
                return redirect()->route('admin.bussinesspartner.banking', ['id' => $bankdetails->bussiness_partner_id])->with('error', 'Unable to Update bank details');
            }
        } else {
            //fresh request
            $bank = new BussinessPartnerBankingDetails;
            $bank->fill($request->all());

            if ($bank->save()) {

                $log = ['module' => 'Bussiness Partner Bank', 'action' => 'Bussiness Partner Bank Created', 'description' => 'Bussiness Partner Bank Created: ' . $request->bank_name];
                captureActivity($log);

                return redirect()->route('admin.bussinesspartner.banking', ['id' => $request->bussiness_partner_id])->with('success', 'bank Details Has Been Added');
            } else {
                return redirect()->route('admin.bussinesspartner.banking', ['id' => $request->bussiness_partner_id])->with('error', 'Unable to Add bank details');
            }
        }
    }

    public function editbank($id)
    {
        $bankdetails = BussinessPartnerBankingDetails::where('banking_details_id', $id)->first();
        return view('backend.bussinesspartner.edit_bank', compact('id', 'bankdetails'));
    }

    public function deletebank($id)
    {
        $bank = BussinessPartnerBankingDetails::where('banking_details_id', $id)->first();
        if (isset($bank) &&  count($bank->toArray()) > 0) {
            $delete = BussinessPartnerBankingDetails::where('banking_details_id', $id)->delete();
            if ($delete) {
                $log = ['module' => 'Bussiness Partner Bank', 'action' => 'Bussiness Partner Bank Deleted', 'description' => 'Bussiness Partner Bank Deleted: ' . $bank->bank_name];
                captureActivity($log);

                return redirect()->route('admin.bussinesspartner.banking', ['id' => $bank->bussiness_partner_id])->with('error', 'bank Details Has Been Added');
            }
        }
    }
} //end of class
