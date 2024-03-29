<?php

namespace App\Http\Controllers\backend;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\backend\BinManagement;
use App\Models\backend\Bintype;
use App\Models\backend\BussinessPartnerMaster;
use App\Models\backend\GoodsReceipt;
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

class GoodsreceiptController extends Controller
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
        $data =  GoodsReceipt::when(session('company_id') != 0 && session('fy_year') != 0, function ($query) {
            return $query->where(['fy_year' => session('fy_year'), 'company_id' => session('company_id')]);
        })->get();
        return view('backend.inventoryrectification.goodsreceipt', compact('data'));
    }

    public function create()
    {
        $storage_locations = StorageLocations::pluck('storage_location_name', 'storage_location_id')->all();
        $gst = Gst::pluck('gst_name', 'gst_id');
        return view('backend.inventoryrectification.goodsreceipt_create', compact('storage_locations', 'gst'));
    }

    public function update(Request $request)
    {
        // dd($request->all());
        $filteredItems = $request->old_invoice_items;
        // save data in inventory
        foreach ($filteredItems as $row) {

            $modal = new GoodsReceipt();
            $modal->fill($row);
            $modal->discount = $request->discount;
            $modal->remarks = $request->remarks;
            $modal->fy_year = session('fy_year');
            $modal->company_id = session('company_id');
            $modal->save();

            $good_bin_type_id = Bintype::where('name', 'Good')->first();
            $good_bin = BinManagement::where(['bin_type' => $good_bin_type_id->bin_type_id, 'warehouse_id' => $row['storage_location_id']])->first();


            $batch_no = $row['batch_no'] ?? '';
            if (empty($batch_no) || $batch_no == null) {
                $sk_inventory_available = Inventory::where([
                    'warehouse_id' => $row['storage_location_id'],
                    'bin_id' => $good_bin->bin_id,
                    'sku' => $row['sku'],
                ])
                    ->when(
                        session('company_id') != 0 && session('fy_year') != 0,
                        function ($query) {
                            return $query->where([
                                'fy_year' => session('fy_year'),
                                'company_id' => session('company_id'),
                            ]);
                        }
                    )
                    ->first();


                if (!empty($sk_inventory_available)) {
                    $batch_no = $sk_inventory_available->batch_no;
                } else {
                    DB::table('def_bacth_no_counter')->increment('counter');
                    $counterValue = DB::table('def_bacth_no_counter')->value('counter');
                    $batch_no = $counterValue . '-Batch-' . $row['sku'];
                }
            }


            $product = Products::where('item_code', $row['item_code'])->first();

            // dd($row);
            if (!empty($product)) {

                $inventoryExist = Inventory::where([
                    'warehouse_id' => $row['storage_location_id'],
                    'bin_id' => $good_bin->bin_id,
                    'sku' => $product->sku,
                    'batch_no' => $batch_no,
                ])
                    ->when(
                        session('company_id') != 0 && session('fy_year') != 0,
                        function ($query) {
                            return $query->where([
                                'fy_year' => session('fy_year'),
                                'company_id' => session('company_id'),
                            ]);
                        }
                    )
                    ->first();


                $perday_inventoryExist = Inventory::where([
                    'warehouse_id' => $row['storage_location_id'],
                    'bin_id' => $good_bin->bin_id,
                    'sku' => $product->sku,
                    'batch_no' => $batch_no,
                ])
                    ->when(
                        session('company_id') != 0 && session('fy_year') != 0,
                        function ($query) {
                            return $query->where([
                                'fy_year' => session('fy_year'),
                                'company_id' => session('company_id'),
                            ]);
                        }
                    )
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
                    'fy_year' => session('fy_year'),
                    'company_id' => session('company_id'),
                    'user_id' => Auth()->guard('admin')->user()->admin_user_id,
                    'manufacturing_date' => $row['manufacturing_date'] ??  $inventory->manufacturing_date,
                    'expiry_date' => $row['expiry_date'] ??  $inventory->expiry_date,
                ];
                $base_quantity = optional($inventoryExist)->qty ?? 0;

                // Check if $inventoryExist is null before deciding to update or create
                if ($inventoryExist === null) {
                    Inventory::create($inventoryData);
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

                // $routeName = Route::currentRouteName();
                // $moduleName = explode('.', $routeName)[1] ?? null;
                // $series_no = get_series_number($moduleName);
                // $transaction_type = get_transaction_type($moduleName);
                // if (empty($series_no)) {
                //     return redirect()->back()->with(['error' => 'Series Number Is Not Defind For This Module']);
                // }

                $transactionHistory = new Transaction();
                // $transactionHistory->transaction_type =  $transaction_type;
                $transactionHistory->qty =  $base_quantity;
                $transactionHistory->updated_qty = $row['qty'];
                $transactionHistory->final_qty = $base_quantity + $row['qty'];
                $transactionHistory->sku = $product->sku;
                $transactionHistory->fill($transactionData);
                $transactionHistory->save();
            }
        }
        return redirect()->route('admin.goodsreceipt')->with(['success' => 'Inventory Updated Successfully']);
    }
}
