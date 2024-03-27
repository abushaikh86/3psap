<?php

namespace App\Http\Controllers\backend;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\backend\ArInvoice;
use App\Models\backend\ArInvoiceItems;
use App\Models\backend\BinManagement;
use App\Models\backend\Bintype;
use App\Models\backend\BussinessPartnerMaster;
use App\Models\backend\Financialyear;
use App\Models\backend\ReturnInvoice;
use App\Models\backend\Gst;
use App\Models\backend\Inventory;
use App\Models\backend\PerDayInventory;
use App\Models\backend\Products;
use App\Models\backend\StorageLocations;
use App\Models\backend\Transaction;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

class ReturnInvoiceController extends Controller
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
        $data =  ReturnInvoice::when(session('company_id') != 0 && session('fy_year') != 0, function ($query) {
            return $query->where(['fy_year' => session('fy_year'), 'company_id' => session('company_id')]);
        })->get();
        return view('backend.returninvoice.goodsreceipt', compact('data'));
    }


    public function inv_data($id)
    {
        $inv_data = ArInvoice::where('bill_no', $id)->first();
        $inv_items = ArInvoiceItems::where('order_fulfillment_id', $inv_data->order_fulfillment_id)->get();

        $details['inv_data'] = $inv_data;
        $details['inv_items'] = $inv_items;

        return json_encode($details);
    }

    public function create()
    {
        $storage_locations = StorageLocations::pluck('storage_location_name', 'storage_location_id')->all();
        $gst = Gst::pluck('gst_name', 'gst_id')->toArray();
        $invocies = ArInvoice::when((session('company_id') != 0 && session('fy_year')), function ($query) {
            $query->where([
                'company_id' => session('company_id'),
                'fy_year' => session('fy_year'),
            ]);
        })->pluck('bill_no', 'bill_no');


        $parties = ArInvoice::when((session('company_id') != 0 && session('fy_year')), function ($query) {
            $query->where([
                'company_id' => session('company_id'),
                'fy_year' => session('fy_year'),
            ]);
        })->pluck('party_id', 'party_id');

        $bp_data = BussinessPartnerMaster::whereIn('business_partner_id', $parties)->pluck('bp_name', 'business_partner_id');

        $moduleName = "Return Invoice";
        $series_no = get_series_number($moduleName);

        $encoded_gst = json_encode($gst);
        $encoded_wh = json_encode($storage_locations);

        // dd($encoded_wh);

        return view('backend.returninvoice.goodsreceipt_create', compact('encoded_gst', 'encoded_wh', 'series_no', 'bp_data', 'invocies', 'storage_locations', 'gst'));
    }

    public function update(Request $request)
    {
        // dd($request->all());
        $this->validate($request, [
            'bp_id' => 'required',
            'doc_date' => 'required',
            'inv_no' => 'required',
            'return_no' => 'required',
        ]);
        $filteredItems = $request->old_invoice_items;

        $bp_master = BussinessPartnerMaster::where('business_partner_id', $request->bp_id)->first();
        $Financialyear = get_fy_year($bp_master->company_id);

        //get current module and get module id from modules table

        $routeName = Route::currentRouteName();
        $moduleName = explode('.', $routeName)[1] ?? null;
        $series_no = get_series_number($moduleName, $bp_master->company_id);
        $transaction_type = get_transaction_type($moduleName, $bp_master->company_id);

        if (empty($series_no)) {
            return redirect()->back()->with(['error' => 'Series Number Is Not Defind For This Module']);
        }
        // set counter
        $financial_year = Financialyear::where(['year' => $Financialyear])->first();
        $invoice_return_counter = 0;
        if ($financial_year) {
            $invoice_return_counter = $financial_year->invoice_return_counter + 1;
        }
        //update counter
        $financial_year->invoice_return_counter = $invoice_return_counter;
        $financial_year->save();

        foreach ($filteredItems as $row) {

            $modal = new ReturnInvoice();
            $modal->fill($row);
            $modal->bp_id = $request->bp_id;
            $modal->doc_no = $request->doc_no;
            $modal->doc_date = $request->doc_date;
            $modal->inv_no = $request->inv_no;
            $modal->t_type = $request->t_type;
            $modal->return_no = $request->return_no;
            $modal->fy_year = $Financialyear;
            $modal->company_id = $bp_master->company_id;
            $modal->save();

            // save data in inventory only if its with inventory
            if ($request->t_type == 'with_inv') {
                $good_bin_type_id = Bintype::where('name', 'Good')->first();
                $good_bin = BinManagement::where(['bin_type' => $good_bin_type_id->bin_type_id, 'warehouse_id' => $row['storage_location_id']])->first();
                $batch_no = $row['batch_no'] ?? '';

                $product = Products::where('item_code', $row['item_code'])->first();

                // dd($row);
                if (!empty($product)) {

                    $inventoryExist = Inventory::where([
                        'warehouse_id' => $row['storage_location_id'],
                        'bin_id' => $good_bin->bin_id,
                        'sku' => $product->sku,
                        'batch_no' => $batch_no,
                        'fy_year' => $Financialyear,
                        'company_id' => $bp_master->company_id,
                    ])->first();


                    $perday_inventoryExist = Inventory::where([
                        'warehouse_id' => $row['storage_location_id'],
                        'bin_id' => $good_bin->bin_id,
                        'sku' => $product->sku,
                        'batch_no' => $batch_no,
                        'fy_year' => $Financialyear,
                        'company_id' => $bp_master->company_id,
                    ])
                        ->whereDate('created_at', Carbon::today())
                        ->first();


                    $inventory = Inventory::where(['batch_no' => $batch_no])->where('manufacturing_date', '!=', null)
                        ->orWhere('expiry_date', '!=', null)
                        ->first();

                    $inventoryData = [
                        'warehouse_id' => $row['storage_location_id'],
                        'bin_id' => optional($good_bin)->bin_id,
                        'batch_no' => $batch_no,
                        'item_code' => $row['item_code'],
                        'sku' => $product->sku,
                        'qty' => optional($inventoryExist)->qty + $row['qty'],
                        'unit_price' => $row['taxable_amount'],
                        'remarks' => $request->remarks,
                        // 'fy_year' => session('fy_year'),
                        // 'company_id' => session('company_id'),
                        'user_id' => Auth()->guard('admin')->user()->admin_user_id,
                        // 'manufacturing_date' => $row['manufacturing_date'] ??  $inventory->manufacturing_date,
                        // 'expiry_date' => $row['expiry_date'] ??  $inventory->expiry_date,
                    ];
                    $base_quantity = optional($inventoryExist)->qty ?? 0;

                    // Check if $inventoryExist is null before deciding to update or create
                    if ($inventoryExist === null) {
                        // Inventory::create($inventoryData);
                    } else {
                        $inventoryExist->update($inventoryData);
                    }

                    if ($perday_inventoryExist === null) {
                        PerDayInventory::create($inventoryData);
                    } else {
                        $perday_inventoryExist->update($inventoryData);
                    }

                    // Use the same data for Transaction
                    $transactionData = $inventoryData;
                    unset($transactionData['qty']);


                    if (empty($series_no)) {
                        return redirect()->back()->with(['error' => 'Series Number Is Not Defind For This Module']);
                    }

                    $transactionHistory = new Transaction();
                    $transactionHistory->transaction_type =  $transaction_type;
                    $transactionHistory->qty =  $base_quantity;
                    $transactionHistory->updated_qty = $row['qty'];
                    $transactionHistory->final_qty = $base_quantity + $row['qty'];
                    $transactionHistory->sku = $product->sku;
                    $transactionHistory->fill($transactionData);
                    $transactionHistory->save();
                }
            }
        }


        return redirect()->route('admin.returninvoice')->with(['success' => 'Inventory Updated Successfully']);
    }
}
