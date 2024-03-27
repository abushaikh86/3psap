<?php

namespace App\Http\Controllers\backend;

use Illuminate\Http\Request;
use App\Models\backend\StockCountAdjustment;
use App\Models\backend\Manufacturers;
use App\Http\Controllers\Controller;
use App\Models\backend\BinManagement;
use App\Models\backend\BinTransfer;
use App\Models\backend\Bintype;
use App\Models\backend\BussinessPartnerMaster;
use App\Models\backend\Financialyear;
use App\Models\backend\Gst;
use App\Models\backend\Inventory;
use App\Models\backend\Products;
use App\Models\backend\StorageLocations;
use App\Models\backend\Transaction;
use Illuminate\Contracts\Session\Session;
use Illuminate\Support\Facades\Session as FacadesSession;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule; //import Rule class
use Spatie\Permission\Models\Role;


class StockManagementController extends Controller
{

  public function __construct()
  {
    $this->middleware('auth:admin');
  }
  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index()
  {

    $storage_locations = StorageLocations::pluck('storage_location_name', 'storage_location_id')->all();

    $stockcountadjustment = StockCountAdjustment::with('product', 'storagelocation')->get();
    return view('backend.stockmanagement.index', compact('stockcountadjustment', 'storage_locations'));
  }

  public function bin_transfer_history()
  {
    if (session('company_id') != 0 && session('fy_year') != 0) {
      $data = BinTransfer::where(['fy_year' => session('fy_year'), 'company_id' => session('company_id')])->orderby('created_at', 'desc')->get();
    } else {
      $data = BinTransfer::orderby('created_at', 'desc')->get();
    }
    return view('backend.stockmanagement.bin_history', compact('data'));
  }
  public function update(Request $request)
  {
    // dd($request->all());
    // Additional validation or manipulation of data
    $invoiceItems = $request->input('invoice_items');

    // dd($invoiceItems);
    foreach ($invoiceItems as $item) {
      if ($item['qty'] > $item['from_qty']) {
        return redirect()->back()->withErrors(['error' => 'Quantity must be less than or equal to Available Quantity']);
      }

      // Fetch data for 'from' and 'to' bins
      $from_binData = BinManagement::where(['bin_type' => $item['from_bin'], 'warehouse_id' => $item['from_warehouse']])->first();
      $to_binData = BinManagement::where(['bin_type' => $item['to_bin'], 'warehouse_id' => $item['to_warehouse']])->first();

      // dd($from_binData,$to_binData);
      $binTransfer = new BinTransfer();
      $binTransfer->remarks = $request->remarks;
      $binTransfer->fy_year = session('fy_year');
      $binTransfer->company_id = session('company_id');
      $binTransfer->user_id = Auth()->guard('admin')->user()->admin_user_id;
      $binTransfer->fill($item);
      $binTransfer->from_bin =  $from_binData->bin_id;
      $binTransfer->to_bin = $to_binData->bin_id;

      if ($binTransfer->save()) {

        // Update 'from' inventory
        // dd($item,$from_binData);
        if (!empty($from_inventory = Inventory::where([
          'warehouse_id' => $item['from_warehouse'],
          'bin_id' => $from_binData->bin_id,
          'sku' => $item['sku'],
          'item_code' => $item['item_code'],
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
          ->first())) {
          // dd($from_inventory,$item);
          $this->updateInventory($from_inventory, $item['from_qty'], -$item['qty'], $item, $from_binData->bin_id, $request->remarks);
        }

        // Update 'to' inventory
        if (!empty($to_inventory = Inventory::where([
          'warehouse_id' => $item['to_warehouse'],
          'bin_id' => $to_binData->bin_id,
          'sku' => $item['sku'],
          'item_code' => $item['item_code'],
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
          ->first())) {
          $this->updateInventory($to_inventory, $to_inventory->qty, $item['qty'], $item, $to_binData->bin_id, $request->remarks);
        } else {
          // Create new inventory if 'to' inventory doesn't exist
          $this->createNewInventory($item, $to_binData->bin_id, $request->remarks);
        }
      }
    }
    return redirect()->back()->with(['success' => 'Data Transfer Successfully']);
  }


  // Function to update inventory and create transaction history
  private function updateInventory($inventory, $qty, $changeQty, $item, $binId, $remarks)
  {

    // $inventory->fy_year = session('fy_year');
    // $inventory->company_id = session('company_id');
    $inventory->user_id = Auth()->guard('admin')->user()->admin_user_id;
    $inventory->remarks = $remarks;
    $inventory->qty = $qty + $changeQty;
    // dd($inventory);
    $inventory->save();

    $transactionHistory = new Transaction();
    $transactionHistory->warehouse_id = $item['to_warehouse'];
    $transactionHistory->bin_id = $binId;
    // $transactionHistory->batch_no = $inventory->batch_no;
    $transactionHistory->item_code = $item['item_code'];
    $transactionHistory->unit_price = $inventory->get_unit_price->mrp;
    $transactionHistory->manufacturing_date = $inventory->manufacturing_date;
    $transactionHistory->expiry_date = $inventory->expiry_date;
    $transactionHistory->sku = $item['sku'];
    $transactionHistory->qty = $qty;
    $transactionHistory->updated_qty = $changeQty;
    $transactionHistory->final_qty = $inventory->qty;
    $transactionHistory->user_id = Auth()->guard('admin')->user()->admin_user_id;
    $transactionHistory->fy_year = session('fy_year');
    $transactionHistory->company_id = session('company_id');
    $transactionHistory->save();
  }

  // Function to create new inventory and transaction history
  private function createNewInventory($item, $binId, $remarks)
  {
    $inventory = new Inventory();
    $inventory->warehouse_id = $item['to_warehouse'];
    $inventory->bin_id = $binId;
    // $inventory->batch_no = $item['batch'] ?? null;
    $inventory->sku = $item['sku'] ?? null;
    $inventory->item_code = $item['item_code'] ?? null;
    $inventory->qty = $item['qty'];
    $inventory->unit_price = $inventory->unit_price;
    $inventory->manufacturing_date = $inventory->manufacturing_date;
    $inventory->expiry_date = $inventory->manufacturing_date;
    $inventory->user_id = Auth()->guard('admin')->user()->admin_user_id;
    $inventory->fy_year = session('fy_year');
    $inventory->company_id = session('company_id');
    $inventory->remarks = $remarks;
    $inventory->save();

    $transactionHistory = new Transaction();
    $transactionHistory->warehouse_id = $item['to_warehouse'];
    $transactionHistory->bin_id = $item['to_bin'];
    // $transactionHistory->batch_no = $item['batch'];
    $transactionHistory->item_code = $item['item_code'];
    $transactionHistory->unit_price = $inventory->get_unit_price->mrp;
    $transactionHistory->sku = $item['sku'];
    $transactionHistory->qty = 0;
    $transactionHistory->updated_qty = $item['qty'];
    $transactionHistory->final_qty = $item['qty'];
    $transactionHistory->user_id = Auth()->guard('admin')->user()->admin_user_id;
    $transactionHistory->fy_year = session('fy_year');
    $transactionHistory->company_id = session('company_id');
    $transactionHistory->save();
  }


  public function get_bins()
  {
    $from_warehouse_id = $_GET['from_warehouse_id'] ?? null;
    $to_warehouse_id = $_GET['to_warehouse_id'] ?? null;

    $options = '<option value="">Select Bin</option>';

    if (!is_null($from_warehouse_id)) {
      $bin_data = BinManagement::where('warehouse_id', $from_warehouse_id)->pluck('bin_type', 'bin_id');
    } elseif (!is_null($to_warehouse_id)) {
      $bin_data = BinManagement::where('warehouse_id', $to_warehouse_id)->pluck('bin_type', 'bin_id');
    }

    if (isset($bin_data)) {
      $bin_type = Bintype::whereIn('bin_type_id', $bin_data)->pluck('name', 'bin_type_id');

      foreach ($bin_type as $binTypeId => $binTypeName) {
        $options .= '<option value="' . $binTypeId . '">' . $binTypeName . '</option>';
      }
    }

    return $options;
  }

  public function get_batches()
  {
    $sku = $_GET['sku'];
    $data = Inventory::where('sku', $sku)->pluck('batch_no', 'batch_no');
    $options = '<option value="">Select Batch</option>';
    if (!empty($data)) {
      foreach ($data as $binTypeId => $binTypeName) {
        $options .= '<option value="' . $binTypeId . '">' . $binTypeName . '</option>';
      }
    }

    return $options;
  }

  public function get_available_qty()
  {
    $warehouse_id = $_GET['warehouse_id'];
    $from_bin_id = $_GET['from_bin_id'];
    // $batch_no = $_GET['batch_no'];
    $sku = $_GET['sku'];
    $item_code = $_GET['item_code'];



    $binData = BinManagement::where(['bin_type' => $from_bin_id, 'warehouse_id' => $warehouse_id])->first();
    $data = Inventory::where(['warehouse_id' => $warehouse_id, 'item_code' => $item_code, 'bin_id' => $binData->bin_id, 'sku' => $sku])->first();

    // dd($data);

    if (!empty($data)) {
      return $data->toArray();
    } else {
      return false;
    }
  }
}
