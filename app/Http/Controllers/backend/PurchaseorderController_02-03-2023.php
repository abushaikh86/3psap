<?php

namespace App\Http\Controllers\backend;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\backend\AdminUsers;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Session;
use Illuminate\Validation\Rule;
use Spatie\Permission\Models\Role;
use App\Models\backend\PurchaseOrder;
use App\Models\backend\PurchaseOrderItems;
use App\Models\backend\Financialyear;
use App\Models\backend\BussinessPartnerMaster;
use App\Models\backend\BussinessPartnerOrganizationType;
use App\Models\backend\Company;
use DB;
use PDF;
use App\Models\backend\Products;
use App\Models\backend\GoodsServiceReceipts;
use App\Models\backend\GoodsServiceReceiptsItems;

class PurchaseorderController extends Controller
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
    $GLOBALS['breadcrumb'] = [['name' => 'PurchaseOrder', 'route' => ""]];
    $purchaseorder = PurchaseOrder::latest()->get();

    return view('backend.purchaseorder.index', compact('purchaseorder'));
  }

  /**
   * Show the form for creating a new resource.
   *
   * @return Response
   */
  public function create()
  {
    $GLOBALS['breadcrumb'] = [['name' => 'PurchaseOrder', 'route' => "admin.purchaseorder"], ['name' => 'Create', 'route' => ""]];

    $roles = Role::pluck('name', 'id')->all();
    $party = BussinessPartnerMaster::get();
    $party = collect($party)->mapWithKeys(function ($item, $key) {
      return [$item['business_partner_id'] => $item['bp_name']];
    });

    $financial_year = Financialyear::where('active', 1)->first();
    if (!$financial_year) {
      Session::flash('message', 'Financial Year Not Active!');
      Session::flash('status', 'error');
      return redirect()->back();
    }
    $purchase_order_counter = 1;
    $fyear = "";
    if ($financial_year) {
      $purchase_order_counter = $financial_year->purchase_order_counter + 1;
      $fyear = $financial_year->year;
    }
    return view('backend.purchaseorder.create', compact('roles', 'party', 'purchase_order_counter', 'fyear'));
  }


  public function show($id)
  {
    $GLOBALS['breadcrumb'] = [['name' => 'PurchaseOrder', 'route' => "admin.purchaseorder"], ['name' => 'View', 'route' => ""]];
    $roles = Role::pluck('name', 'id')->all();
    $purchaseorder = PurchaseOrder::where('purchase_order_id', $id)->with('purchaseorder_items')->first();
    $party = BussinessPartnerMaster::where('business_partner_id', $purchaseorder->party_id)->first();
    $invoice = $purchaseorder;

    return view('backend.purchaseorder.show', compact('roles', 'purchaseorder', 'party', 'invoice'));
  }

  public function creategr($id)
  {
    $roles = Role::pluck('name', 'id')->all();
    $purchaseorder = PurchaseOrder::where('purchase_order_id', $id)->first();
    $goods_receipt_exist = GoodsServiceReceipts::where('purchase_order_id', $id)->first();
    // dd($purchaseorder);
    if(!isset($goods_receipt_exist))
    {
      $goods_receipt = new GoodsServiceReceipts();
      //$party = BussinessPartnerMaster::where('business_partner_id',$purchaseorder->party_id)->first();
      $properties = $purchaseorder->attributesToArray();
      // unset($properties['purchase_order_id']);//by mahesh for copy data
      $goods_receipt->fill($properties);
      if ($goods_receipt->save()) {
        $purchaseorder_items = PurchaseOrderItems::where('purchase_order_id', $id)->get();
        if ($purchaseorder_items) {
          foreach ($purchaseorder_items as $item) {
            $goods_receipt_items = new GoodsServiceReceiptsItems();
            //$party = BussinessPartnerMaster::where('business_partner_id',$purchaseorder->party_id)->first();
            $properties_item = $item->attributesToArray();
            unset($properties_item['purchase_order_item_id']);
            $goods_receipt_items->fill($properties_item);
            $goods_receipt_items->goods_service_receipt_id = $goods_receipt->goods_service_receipt_id;
            $goods_receipt_items->save();
          }
        }
      }

      Session::flash('message', 'GR Receipt Created Successfully!');
      Session::flash('status', 'success');
    //   return redirect('admin/purchaseorder');
    return redirect()->route('admin.goodsservicereceipts.edit',[$goods_receipt->goods_service_receipt_id]);
    }
    else
    {
      Session::flash('error', 'GR Receipt already exists!');
      Session::flash('status', 'error');
      return redirect('admin/purchaseorder');
    }
  }

  /**
   * Store a newly created resource in storage.
   *
   * @return Response
   */
  public function store(Request $request)
  {
    $this->validate($request, [
      //'' => ['required'],
    ]);
    $purchaseorder = new PurchaseOrder();
    $purchaseorder->fill($request->all());
    if ($purchaseorder->save()) {
      $sub_total = $cgst_total = $sgst_utgst_total = $igst_total = $gst_grand_total = $grand_total = 0;
      $gst_rate = 0;
      // store purchaseorder items
      if (isset($request->invoice_items)) {
        $purchaseorder_items = $request->invoice_items;
        $purchase_order_id = $purchaseorder->purchase_order_id;
        foreach ($purchaseorder_items as $item) {
          $purchaseorder_item = new PurchaseOrderItems();
          $purchaseorder_item->fill($item);
          $purchaseorder_item->purchase_order_id = $purchase_order_id;
          $purchaseorder_item->save();

          //amount calculation
          $sub_total = $sub_total + ($item['taxable_amount'] * $purchaseorder_item->qty);
          $cgst_total = $cgst_total + $item['cgst_amount'];
          $sgst_utgst_total = $sgst_utgst_total + $item['sgst_utgst_amount'];
          $igst_total = $igst_total + $item['igst_amount'];

          // gst rate
          if ($gst_rate == 0) {
            $gst_rate = $purchaseorder_item->cgst_rate + $purchaseorder_item->sgst_utgst_rate + $purchaseorder_item->igst_rate;
          }
        }
        $gst_grand_total = ($cgst_total + $sgst_utgst_total + $igst_total);
        $gst_grand_total_rounded = round($gst_grand_total);
        $grand_total = $sub_total + $gst_grand_total_rounded;
        $rounded_off = round(($gst_grand_total_rounded - $gst_grand_total), 2);
        $amount_in_words = amount_in_words($grand_total) . " Only";
        $tax_in_words = amount_in_words($gst_grand_total_rounded) . " Only";

        PurchaseOrder::where('purchase_order_id', $purchaseorder->purchase_order_id)->update(['sub_total' => $sub_total, 'cgst_total' => $cgst_total, 'sgst_utgst_total' => $sgst_utgst_total, 'igst_total' => $igst_total, 'gst_grand_total' => $gst_grand_total, 'grand_total' => $grand_total, 'amount_in_words' => $amount_in_words, 'gst_rate' => $gst_rate, 'tax_in_words' => $tax_in_words]);
      }

      // set job counter
      $financial_year = Financialyear::where('active', 1)->first();
      $purchase_order_counter = 1;
      if ($financial_year) {
        $purchase_order_counter = $financial_year->purchase_order_counter + 1;
      }
      $bill_no = "3PSAP/" . $financial_year->year . "/" . $purchase_order_counter;

      $customer = BussinessPartnerMaster::where('business_partner_id', $purchaseorder->party_id)->first();
      $party_name = "";
      if ($customer) {
        $party_name = $customer->name;
      }

      PurchaseOrder::where('purchase_order_id', $purchaseorder->purchase_order_id)->update(['purchase_order_counter' => $purchase_order_counter, 'bill_no' => $bill_no, 'party_name' => $party_name]);
      $financial_year->purchase_order_counter = $purchase_order_counter;
      $financial_year->save();

      Session::flash('message', 'PurchaseOrder Added Successfully!');
      Session::flash('status', 'success');
      return redirect('admin/purchaseorder/view/' . $purchaseorder->purchase_order_id . '?print=yes');
      //return redirect('admin/purchaseorder');
    } else {
      Session::flash('message', 'Something went wrong!');
      Session::flash('status', 'error');
      return redirect('admin/purchaseorder');
    }
  }

  /**
   * Display the specified resource.
   *
   * @param  int  $id
   *
   * @return Response
   */


  /**
   * Show the form for editing the specified resource.
   *
   * @param  int  $id
   *
   * @return Response
   */
  public function edit($id)
  {
    $GLOBALS['breadcrumb'] = [['name' => 'PurchaseOrder', 'route' => "admin.purchaseorder"], ['name' => 'Edit', 'route' => ""]];
    $purchaseorder = PurchaseOrder::findOrFail($id);
    $roles = Role::pluck('name', 'id')->all();

    $financial_year = Financialyear::where('active', 1)->first();
    if (!$financial_year) {
      Session::flash('message', 'Financial Year Not Active!');
      Session::flash('status', 'error');
      return redirect()->back();
    }
    $fyear = "";
    if ($financial_year) {
      $fyear = $financial_year->year;
    }
    $party = BussinessPartnerMaster::Where('business_partner_id', 'party')->get();
    $party = collect($party)->mapWithKeys(function ($item, $key) {
      return [$item['business_partner_id'] => $item['bp_name']];
    });
    $job = Job::get();
    $job = collect($job)->mapWithKeys(function ($item, $key) {
      return [$item['job_id'] => $item['job_id']];
    });
    $bill_to = BussinessPartnerMaster::where('business_partner_id', $purchaseorder->bill_to)->first();
    $selected_party = BussinessPartnerMaster::where('business_partner_id', $purchaseorder->party_id)->first();
    $bill_to_state = "Andaman and Nicobar Islands";
    $party_state = $selected_party->state;

    return view('backend.purchaseorder.edit', compact('purchaseorder', 'roles', 'fyear', 'bill_to_state', 'party_state', 'party', 'selected_party', 'job'));
  }

  /**
   * Update the specified resource in storage.
   *
   * @param  int  $id
   *
   * @return Response
   */
  public function update(Request $request)
  {
    $id = $request->input('purchase_order_id');
    $this->validate($request, [
      //'purchaseorder_type_name' => ['required', 'email', Rule::unique(PurchaseOrder::class,'email')->ignore($id, 'purchaseorder_type_id')],
    ]);
    $purchaseorder = PurchaseOrder::findOrFail($id);
    $purchaseorder->fill($request->all());
    if ($purchaseorder->update()) {
      // delete existing items
      PurchaseOrderItems::where(['purchase_order_id' => $purchaseorder->purchase_order_id])->delete();

      $sub_total = $cgst_total = $sgst_utgst_total = $igst_total = $gst_grand_total = $grand_total = 0;
      $gst_rate = 0;
      // store purchaseorder items
      if (isset($request->purchaseorder_items)) {
        $purchaseorder_items = $request->purchaseorder_items;
        $purchase_order_id = $purchaseorder->purchase_order_id;
        foreach ($purchaseorder_items as $item) {
          $purchaseorder_item = new PurchaseOrderItems();
          $purchaseorder_item->fill($item);
          $purchaseorder_item->purchase_order_id = $purchase_order_id;
          $purchaseorder_item->save();

          //amount calculation
          $sub_total = $sub_total + ($item['taxable_amount'] * $purchaseorder_item->qty);
          $cgst_total = $cgst_total + $item['cgst_amount'];
          $sgst_utgst_total = $sgst_utgst_total + $item['sgst_utgst_amount'];
          $igst_total = $igst_total + $item['igst_amount'];

          // gst rate
          if ($gst_rate == 0) {
            $gst_rate = $purchaseorder_item->cgst_rate + $purchaseorder_item->sgst_utgst_rate + $purchaseorder_item->igst_rate;
          }
        }
        $gst_grand_total = ($cgst_total + $sgst_utgst_total + $igst_total);
        $gst_grand_total_rounded = round($gst_grand_total);
        $grand_total = $sub_total + $gst_grand_total_rounded;
        $rounded_off = round(($gst_grand_total_rounded - $gst_grand_total), 2);
        $amount_in_words = amount_in_words($grand_total) . " Only";
        $tax_in_words = amount_in_words($gst_grand_total_rounded) . " Only";

        PurchaseOrder::where('purchase_order_id', $purchaseorder->purchase_order_id)->update(['sub_total' => $sub_total, 'cgst_total' => $cgst_total, 'sgst_utgst_total' => $sgst_utgst_total, 'igst_total' => $igst_total, 'gst_grand_total' => $gst_grand_total, 'grand_total' => $grand_total, 'amount_in_words' => $amount_in_words, 'gst_rate' => $gst_rate, 'tax_in_words' => $tax_in_words]);
      }


      $customer = BussinessPartnerMaster::where('business_partner_id', $purchaseorder->party_id)->first();
      $party_name = "";
      if ($customer) {
        $party_name = $customer->name;
      }

      PurchaseOrder::where('purchase_order_id', $purchaseorder->purchase_order_id)->update(['party_name' => $party_name]);

      Session::flash('message', 'PurchaseOrder Updated Successfully!');
      Session::flash('status', 'success');
      return redirect('admin/purchaseorder/view/' . $purchaseorder->purchase_order_id);
    } else {
      Session::flash('message', 'Something went wrong!');
      Session::flash('status', 'error');
      return redirect('admin/purchaseorder');
    }
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   *
   * @return Response
   */
  public function destroy($id)
  {
    $purchaseorder = PurchaseOrder::findOrFail($id);

    if ($purchaseorder->delete()) {
      Session::flash('message', 'PurchaseOrder Deleted Successfully!');
      Session::flash('status', 'success');
    } else {
      Session::flash('message', 'Something went wrong!');
      Session::flash('status', 'error');
    }

    return redirect('admin/purchaseorder');
  }


  public function amountinwords($number = 0)
  {
    return amount_in_words($number);
  }



  public function partydetails($partyid)
  {

    $party_detail = "";
    $bill_to_state = "Maharashtra";
    $party_state = "";

    $party = BussinessPartnerMaster::where('business_partner_id', $partyid)->first();

    if ($party) {
      $party_detail = "<strong>" . $party->name . "</strong><br>";
      $party_detail .= "<span>" . $party->address . "</span><br>";
      $party_detail .= "<span>POS: Code & State: " . $party->state . "</span><br>";
      $party_detail .= "<span>GSTIN:" . $party->gst_no . "</span><br>";
      $party_state = $party->state;
    }

    $details['party_detail'] = $party_detail;
    $details['party_state'] = $party_state;
    $details['bill_to_state'] = $bill_to_state;
    $details['bill_to_gst_no'] = $party->gst_no;
    return json_encode($details);
  }


  public function autocomplete()
  {
    //dd($request->query);
    $query = $_GET['query'];
    $data = Products::select(DB::raw("item_name as name"), 'product_item_id')->where("item_name", "LIKE", "%" . $query . "%")->get();
    //var_dump($data);exit;
    return response()->json($data);
  }


  public function download($id)
  {
    $roles = Role::pluck('name', 'id')->all();
    $purchaseorder = PurchaseOrder::where('purchase_order_id', $id)->with('purchaseorder_items')->first();

    $party = BussinessPartnerMaster::where('business_partner_id', $purchaseorder->party_id)->first();

    $filename = $purchaseorder->bill_no;
    if (1 != 1) {
      $pdf = PDF::loadView('backend.purchaseorder.purchaseorder_format_split', ['roles' => $roles, 'purchaseorder' => $purchaseorder, 'party' => $party, 'download' => true]);
    } else {
      $pdf = PDF::loadView('backend.purchaseorder.invoice_format', ['roles' => $roles, 'purchaseorder' => $purchaseorder, 'party' => $party, 'download' => true]);
    }

    return $pdf->stream($filename . '.pdf');
  }
}
