<?php

namespace App\Http\Controllers\backend;

use Illuminate\Http\Request;
use App\Models\backend\Brands;
use App\Models\backend\Manufacturers;
use App\Http\Controllers\Controller;
use App\Models\backend\AdminUsers;
use App\Models\backend\Apinvoice;
use App\Models\backend\Area;
use App\Models\backend\Beat;
use App\Models\backend\BillBooking;
use App\Models\backend\BillBookingItems;
use App\Models\backend\BusinessPartnerCategory;
use App\Models\backend\Categories;
use App\Models\backend\Expensemaster;
use App\Models\backend\Financialyear;
use App\Models\backend\GLCodes;
use App\Models\backend\GoodsServiceReceipts;
use App\Models\backend\HSNCodes;
use App\Models\backend\Products;
use App\Models\backend\PurchaseOrder;
use App\Models\backend\Route;
use App\Models\backend\SeriesMaster;
use App\Models\backend\SubCategories;
use App\Models\backend\Variant;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule; //import Rule class


class MasterDropdownController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function store_category(Request $request)
    {

        // dd($request->all());
        $model = new BusinessPartnerCategory();
        $model->business_partner_category_name = $request->data_name[0];
        $model->save();
        // $model->fill($request->all());

        $data = BusinessPartnerCategory::pluck('business_partner_category_name', 'business_partner_category_id');
        // $brands->put('add_brand','Add Brand +');
        $data_options = "";
        foreach ($data as $key => $val) {
            $data_options .= '<option value="' . $key . '">' . $val . '</option>';
        }
        return ['flag' => 'success', 'message' => 'New Business Partner Category Added!', 'data' => $data_options];
    }

    public function store_users(Request $request)
    {

        $model = new AdminUsers();
        $model->first_name = $request->data_name[0];
        $model->last_name = $request->data_name[1];
        $model->email = $request->data_name[2];
        $model->password = 'Pass12@#';
        $model->account_status = 1;
        $model->role_id = $request->role;
        $model->role = $request->role;
        $model->save();

        $data = AdminUsers::where('role', $request->role)->pluck('first_name', 'admin_user_id');
        $data_options = "";
        foreach ($data as $key => $val) {
            $data_options .= '<option value="' . $key . '">' . $val . '</option>';
        }
        return ['flag' => 'success', 'message' => 'New Item Added!', 'data' => $data_options];
    }

    public function store_area(Request $request)
    {

        // dd($request->all());
        $model = new Area();
        $model->area_name = $request->data_name[0];
        $model->save();
        // $model->fill($request->all());

        $data = Area::pluck('area_name', 'area_id');
        // $brands->put('add_brand','Add Brand +');
        $data_options = "";
        foreach ($data as $key => $val) {
            $data_options .= '<option value="' . $key . '">' . $val . '</option>';
        }
        return ['flag' => 'success', 'message' => 'New Area Added!', 'data' => $data_options];
    }

    public function store_brand(Request $request)
    {
        $brand = new Brands();
        $brand->brand_name = $request->data_name[0];
        $brand->save();

        $brands = Brands::pluck('brand_name', 'brand_id');
        // $brands->put('add_brand','Add Brand +');
        $brand_options = "";
        foreach ($brands as $brand_id => $brand_name) {
            $brand_options .= '<option value="' . $brand_id . '">' . $brand_name . '</option>';
        }
        return ['flag' => 'success', 'message' => 'New Brand Added!', 'data' => $brand_options];
    }



    public function store_variant(Request $request)
    {
        $brand = new Variant();
        $brand->name = $request->data_name[0];
        $brand->save();

        $brands = Variant::pluck('name', 'id');
        // $brands->put('add_brand','Add Brand +');
        $brand_options = "";
        foreach ($brands as $brand_id => $brand_name) {
            $brand_options .= '<option value="' . $brand_id . '">' . $brand_name . '</option>';
        }
        return ['flag' => 'success', 'message' => 'New Variant Added!', 'data' => $brand_options];
    }


    public function store_product_category(Request $request)
    {
        // dd($request->all());
        $brand = new Categories();
        $brand->category_name = $request->data_name[0];
        $brand->visibility = $request->data_name[1];
        $brand->save();

        $categories_list = Categories::where('visibility', 1)->pluck('category_name', 'category_id');
        // $brands->put('add_brand','Add Brand +');
        $category_options = "";
        foreach ($categories_list as $category_id => $category_name) {
            $category_options .= '<option value="' . $category_id . '">' . $category_name . '</option>';
        }
        return ['flag' => 'success', 'message' => 'New Category Added!', 'data' => $category_options];
    }

    public function store_product_sub_category(Request $request)
    {
        // dd($request->all());
        $brand = new SubCategories();
        $brand->subcategory_name = $request->data_name[0];
        $brand->visibility = $request->data_name[1];
        $brand->save();

        $sub_categories_list = SubCategories::where('visibility', 1)->pluck('subcategory_name', 'subcategory_id');
        // $brands->put('add_brand','Add Brand +');
        $sub_category_options = "";
        foreach ($sub_categories_list as $subcategory_id => $subcategory_name) {
            $sub_category_options .= '<option value="' . $subcategory_id . '">' . $subcategory_name . '</option>';
        }
        return ['flag' => 'success', 'message' => 'New Sub Category Added!', 'data' => $sub_category_options];
    }

    public function store_hsn(Request $request)
    {
        // dd($request->all());
        $brand = new HSNCodes();
        $brand->hsncode_name = $request->data_name[0];
        $brand->hsncode_desc = $request->data_name[1];
        $brand->save();

        $hsncodes = HSNCodes::pluck('hsncode_desc', 'hsncode_name');
        // $hsncodes->put('add_hsncode','Add HSN Code +');
        $hsncode_options = "";
        foreach ($hsncodes as $hsncode_id => $hsncode_name) {
            $hsncode_options .= '<option value="' . $hsncode_id . '">' . $hsncode_name . '</option>';
        }
        return ['flag' => 'success', 'message' => 'New Gl Code Added!', 'data' => $hsncode_options];
    }

    public function store_gl(Request $request)
    {
        // dd($request->all());
        $brand = new GLCodes();
        $brand->gl_code = $request->data_name[0];
        $brand->save();

        $hsncodes = GLCodes::pluck('gl_code', 'gl_code');
        // $hsncodes->put('add_hsncode','Add HSN Code +');
        $hsncode_options = "";
        foreach ($hsncodes as $hsncode_id => $hsncode_name) {
            $hsncode_options .= '<option value="' . $hsncode_id . '">' . $hsncode_name . '</option>';
        }
        return ['flag' => 'success', 'message' => 'New GL Code Added!', 'data' => $hsncode_options];
    }

    public function get_expense(Request $request)
    {
        $expense_id = $request->id;

        $data = Expensemaster::where('expense_id', $expense_id)
            ->with('get_type', 'get_sub_cat', 'get_cat', 'get_heads', 'get_gl')
            ->first();

        return response()->json($data);
    }

    public function get_doc_numbers(Request $request)
    {
        $party_id = $request->party_id;
        $series_no = $request->series_no;

        // dd($party_id,$series_no);

        $data = BillBooking::where(['vendor_id' => $party_id, 'series_no' => $series_no])->pluck('doc_no', 'doc_no');

        // $data = SeriesMaster::WhereIn('id',$series_ids)->get();

        // dd($data->toArray());

        return response()->json($data);
    }



    public function get_series(Request $request)
    {
        $party_id = $request->party_id;


        $data = BillBooking::where(['vendor_id' => $party_id])->pluck('series_no');


        $data = SeriesMaster::WhereIn('id', $data)->pluck('id', 'series_number');

        // dd($data);
        // dd($data->toArray());

        return response()->json($data);
    }


    public function get_bill_bookings(Request $request)
    {
        $vendor_id = $request->doc_number;

        // dd($vendor_id);
        $data = BillBooking::where(['vendor_id'=> $vendor_id,'is_bb_updated'=>1])
            ->with(
                'billbooking_items.get_expense_name',
                'billbooking_items.get_type',
                'billbooking_items.get_sub_cat',
                'billbooking_items.get_cat',
                'billbooking_items.get_heads',
                'billbooking_items.get_gl'
            )->get();

        // dd($data->toArray());
        return response()->json($data);
    }

    function getModelClass($index)
    {
        switch ($index) {
            case 1:
                return PurchaseOrder::class;
            case 2:
                return GoodsServiceReceipts::class;
            case 3:
                return Apinvoice::class;
                // Add more cases as needed
            default:
                return null;
        }
    }

    public function get_doc_number(Request $request)
    {

        $series_number = $request->id;
        $exploded = explode('-', $series_number);
        $module = $exploded[0];


        $data = SeriesMaster::where('series_number', $module)->first();
        $modules = DB::table('modules')->pluck('name', 'id')->toArray();
        $moduleName = DB::table('modules')->where('id', $data->module)->value('name');

        $fy_year = FinancialYear::where(['year' => session('fy_year'), 'active' => 1])->first();

        if ($moduleName == $modules[1]) {
            $doc_number = $series_number . '-' . $fy_year->purchase_order_counter;
        } else if ($moduleName == $modules[2]) {
            $doc_number = $series_number . '-' .  $fy_year->goods_servie_receipt_counter;
        } else if ($moduleName == $modules[3]) {
            $doc_number = $series_number . '-' .  $fy_year->ap_invoice_counter;
        }


        return $doc_number;
    }


    public function autocomplete()
    {

        $query = $_GET['query'] ?? '';
        if (is_numeric($query)) {
            $data = Products::select(DB::raw("item_code as name"), 'product_item_id', 'hsncode_id', 'sku', 'mrp', 'gst_id', 'consumer_desc')->where("item_code", "LIKE", "%" . $query . "%")->get();
        } else if (preg_match('/^\d+-\d+$/', $query)) {
            // Check if the query matches the pattern "digits-hyphen-digits"
            $data = Products::select(DB::raw("sku as name"), 'product_item_id', 'hsncode_id', 'sku', 'mrp', 'gst_id', 'item_code')
                ->where("sku", "LIKE", "%" . $query . "%")
                ->get();
        } else {
            $data = Products::select(DB::raw("consumer_desc as name"), 'product_item_id', 'hsncode_id', 'sku', 'mrp', 'gst_id', 'item_code')->where("consumer_desc", "LIKE", "%" . $query . "%")->get();
        }



        DB::table('def_bacth_no_counter')->increment('counter');
        $counterValue = DB::table('def_bacth_no_counter')->value('counter');

        return response()->json(['data' => $data, 'counter' => $counterValue]);
    }


    public function change_fy()
    {
        $selectedYear = $_GET['year'];
        // session(['fy_year' => $selectedYear]);
        session()->put('fy_year', $selectedYear);

        // Update or create the financial year
        $financial_year = Financialyear::firstOrNew(['year' => $selectedYear]);
        $financial_year->active = 1;
        $financial_year->save();

        // Deactivate other financial years
        Financialyear::where('year', '!=', $selectedYear)->update(['active' => 0]);


        return response()->json(['success' => true]);
    }

    public function store_route(Request $request)
    {

        // dd($request->all());
        $model = new Route();
        $model->area_id = $request->data_name[0];
        $model->route_name = $request->data_name[1];
        $model->save();
        // $model->fill($request->all());

        $data = Route::where('area_id', $request->data_name[0])->pluck('route_name', 'route_id');
        // $brands->put('add_brand','Add Brand +');
        $data_options = "";
        foreach ($data as $key => $val) {
            $data_options .= '<option value="' . $key . '">' . $val . '</option>';
        }
        return ['flag' => 'success', 'message' => 'New Route Added!', 'data' => $data_options];
    }

    public function store_beat(Request $request)
    {

        // dd($request->all());
        $model = new Beat();
        $model->beat_name = $request->data_name[0];
        $model->area_id = $request->data_name[1];
        $model->route_id = $request->data_name[2];
        $model->save();
        // $model->fill($request->all());

        $data = Beat::pluck('beat_name', 'beat_id');
        // $brands->put('add_brand','Add Brand +');
        $data_options = "";
        foreach ($data as $key => $val) {
            $data_options .= '<option value="' . $key . '">' . $val . '</option>';
        }
        return ['flag' => 'success', 'message' => 'New Beat Added!', 'data' => $data_options];
    }
}
