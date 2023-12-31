<?php

namespace App\Http\Controllers\backend;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\backend\AdminUsers;
use App\Models\backend\BussinessPartnerAddress;
use App\Models\backend\BussinessPartnerBankingDetails;
use App\Models\backend\BussinessPartnerContactDetails;
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
use App\Models\backend\Gst;
use App\Models\backend\OrderBooking;
use App\Models\backend\OrderBookingBatches;
use App\Models\backend\OrderBookingItems;
use App\Models\backend\OrderFulfilment;
use App\Models\backend\OrderFulfilmentBatches;
use App\Models\backend\OrderFulfilmentItems;
use App\Models\backend\PurchaseOrderBatches;
use App\Models\backend\StorageLocations;

class OrderbookingController extends Controller
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
    $GLOBALS['breadcrumb'] = [['name' => 'Order Booking', 'route' => ""]];
    $purchaseorder = OrderBooking::with('get_partyname')->get();
    // dd($purchaseorder->toArray());
    return view('backend.orderbooking.index', compact('purchaseorder'));
  }

  /**
   * Show the form for creating a new resource.
   *
   * @return Response
   */
  public function create()
  {
    $GLOBALS['breadcrumb'] = [['name' => 'OrderBooking', 'route' => "admin.orderbooking"], ['name' => 'Create', 'route' => ""]];

    $roles = Role::pluck('name', 'id')->all();
    $gsts = Gst::pluck('gst_name', 'gst_id')->all();
    $party = BussinessPartnerMaster::get();

    // $contac_data = BussinessPartnerContactDetails::get('contact_details_id','contact_person');

    $party = $party->filter(function ($item) {
      $data = $item->getpartnertypecustomer;

      return $data;
    })->mapWithKeys(function ($item) {
      return [$item['business_partner_id'] => $item['bp_name']];
    });


    // dd($party->toArray());

    $financial_year = Financialyear::where('active', 1)->first();
    if (!$financial_year) {
      Session::flash('message', 'Financial Year Not Active!');
      Session::flash('status', 'error');
      return redirect()->back();
    }
    // dd($financial_year->toArray());
    $order_booking_counter = 1;
    $fyear = "";
    if ($financial_year) {
      $order_booking_counter = $financial_year->order_booking_counter + 1;
      $fyear = $financial_year->year;
    }
    $storage_locations = StorageLocations::pluck('storage_location_name', 'storage_location_id')->all();
    $gst = Gst::pluck('gst_name', 'gst_id');
    return view('backend.orderbooking.create', compact('roles', 'gst', 'storage_locations', 'party', 'order_booking_counter', 'fyear', 'gsts'));
  }


  public function show($id)
  {

    $GLOBALS['breadcrumb'] = [['name' => 'PurchaseOrder', 'route' => "admin.purchaseorder"], ['name' => 'View', 'route' => ""]];
    $roles = Role::pluck('name', 'id')->all();
    $purchaseorder = OrderBooking::where('order_booking_id', $id)->with('purchaseorder_items')->with('get_bill_toaddress')->with('get_ship_toaddress')->first();
    $party = BussinessPartnerMaster::where('business_partner_id', $purchaseorder->party_id)->first();
    $bank_details = BussinessPartnerBankingDetails::where('bussiness_partner_id', $purchaseorder->party_id)->first();
    $invoice = $purchaseorder;
    // dd($invoice->toArray());

    return view('backend.orderbooking.show', compact('roles', 'bank_details', 'purchaseorder', 'party', 'invoice'));
  }

  public function creategr($id)
  {
    $roles = Role::pluck('name', 'id')->all();
    $purchaseorder = OrderBooking::where('order_booking_id', $id)->first();
    // dd($purchaseorder->toArray());
    $goods_receipt_exist = OrderFulfilment::where('order_booking_id', $id)->first();
    // dd($goods_receipt_exist->toArray());
    if (!isset($goods_receipt_exist)) {
      $goods_receipt = new OrderFulfilment();
      //$party = BussinessPartnerMaster::where('business_partner_id',$purchaseorder->party_id)->first();
      $properties = $purchaseorder->attributesToArray();
      // dd($properties)->toArray();
      // unset($properties['purchase_order_id']);//by mahesh for copy data
      $goods_receipt->due_date = $purchaseorder->delivery_date;
      $goods_receipt->fill($properties);
      if ($goods_receipt->save()) {
        $purchaseorder_items = OrderBookingItems::where('order_booking_id', $id)->get();
        //  dd($purchaseorder_items->toArray());
        if ($purchaseorder_items) {
          foreach ($purchaseorder_items as $item) {
            // dd($item->order_booking_batches->toArray());
            $goods_receipt_items = new OrderFulfilmentItems();
            //$party = BussinessPartnerMaster::where('business_partner_id',$purchaseorder->party_id)->first();
            $properties_item = $item->attributesToArray();
            unset($properties_item['order_fulfillment_item_id']);
            $goods_receipt_items->fill($properties_item);

            // dd($goods_receipt_items->gst_rate,$goods_receipt_items->purchase_order_id);
            $goods_receipt_items->order_fulfillment_id = $goods_receipt->order_fulfillment_id;
            $inserted = $goods_receipt_items->save();

            if ($inserted) {
              $gst_rate = $goods_receipt_items->gst_rate;
              if (!empty($gst_rate)) {
                $get_data = Gst::where('gst_id', $gst_rate)->first();
                $gst_rate = $get_data->gst_percent;
              }
              OrderFulfilment::where('order_fulfillment_id', $goods_receipt_items->order_fulfillment_id)->update(['gst_rate' => $gst_rate]);


              //add batches

              foreach ($item->order_booking_batches as $secondary_item) {
                $goods_receipt_item_bacthes = new OrderFulfilmentBatches();
                // dd($secondary_item->toArray());
                $properties_item_baches = $secondary_item->attributesToArray();
                unset($properties_item_baches['order_fulfilment_batches_id']);
                $goods_receipt_item_bacthes->fill($properties_item_baches);
                $goods_receipt_item_bacthes->order_fulfillment_id = $goods_receipt->order_fulfillment_id;
                $goods_receipt_item_bacthes->order_fulfillment_item_id = $goods_receipt_items->order_fulfillment_item_id;
                $goods_receipt_item_bacthes->save();
              }
            }
          }
        }
      }


      $log = ['module' => 'Order Fulfillment', 'action' => 'Order Fulfillment Created', 'description' => 'Order Fulfillment Created: ' . $goods_receipt->bill_no];
      captureActivity($log);


      Session::flash('message', 'Order Fulfillment Created Successfully!');
      Session::flash('status', 'success');
      //   return redirect('admin/purchaseorder');
      return redirect()->route('admin.orderfulfilment.edit', [$goods_receipt->order_fulfillment_id]);
    } else {
      Session::flash('error', 'Order Fulfillment already exists!');
      Session::flash('status', 'error');
      return redirect('admin/orderbooking');
    }
  }

  /**
   * Store a newly created resource in storage.
   *
   * @return Response
   */
  public function store(Request $request)
  {
    // dd($request->all());

    $dynamicRowCount = !empty($request->invoice_items) ? count($request->invoice_items) : 0;

    $this->validate($request, [
      // 'receipt_type' => 'required',
      'party_id' => 'required',
      'bill_to' => 'required',
      'ship_from' => 'required',
      'customer_ref_no' => 'required',
      'place_of_supply' => 'required',
      'delivery_date' => 'required',
      'document_date' => 'required',
      'status' => 'required',
      'contact_person' => 'required',
    ]);
    // dd($request->all());
    $purchaseorder = new OrderBooking();
    $purchaseorder->fill($request->all());

    if ($purchaseorder->save()) {
      // dd($purchaseorder->toArray());
      $sub_total = $cgst_total = $sgst_utgst_total = $igst_total = $gst_grand_total = $grand_total = 0;
      $gst_rate = 0;
      // store purchaseorder items
      // dd($request->all());
      if (isset($request->invoice_items)) {
        $purchaseorder_items = $request->invoice_items;
        $purchase_order_id = $purchaseorder->order_booking_id;
        $total_inr = 0;
        foreach ($purchaseorder_items as $item) {
          $total_inr += $item['total'];
          $purchaseorder_item = new OrderBookingItems();
          $purchaseorder_item->fill($item);
          $purchaseorder_item->order_booking_id = $purchase_order_id;

          $purchaseorder_item->save();

          //amount calculation
          // dd($request->discount);
          $sub_total = $sub_total + ($item['taxable_amount'] * $purchaseorder_item->qty);


          $cgst_total = $cgst_total + $item['cgst_amount'];
          $sgst_utgst_total = $sgst_utgst_total + $item['sgst_utgst_amount'];
          $igst_total = $igst_total + $item['igst_amount'];

          // gst rate
          // dd($purchaseorder_item->cgst_rate,$purchaseorder_item->sgst_utgst_rate,$purchaseorder_item->igst_rate);
          // if ($gst_rate == 0) {
          //   $gst_rate = $purchaseorder_item->cgst_rate + $purchaseorder_item->sgst_utgst_rate + $purchaseorder_item->igst_rate;
          // }
          $gst_rate = $purchaseorder_item->gst_rate;
          if (!empty($gst_rate)) {
            $get_data = Gst::where('gst_id', $gst_rate)->first();
            $gst_rate = $get_data->gst_percent;
          }


          //save batches
          $purchase_order_id = $purchaseorder->order_booking_id;
          $purchase_order_item_id = $purchaseorder_item->order_booking_item_id;
          $storage_location_id = $purchaseorder_item->storage_location_id;
          // dd($storage_location_id);


        }
        $gst_grand_total = ($cgst_total + $sgst_utgst_total + $igst_total);
        $gst_grand_total_rounded = $gst_grand_total;
        $final_amt = 0;
        // $grand_total = $sub_total + $gst_grand_total_rounded;
        if (!empty($request->discount)) {
          $discount = ($total_inr * $request->discount) / 100;
          // dd($discount);
          $final_amt = round(($total_inr + $gst_grand_total_rounded) - $discount);
        } else {
          $final_amt = round($total_inr + $gst_grand_total_rounded);
        }
        // dd($grand_total);
        $rounded_off = round(($gst_grand_total_rounded - $gst_grand_total), 2);
        $amount_in_words = amount_in_words(round($final_amt)) . " Only";
        $tax_in_words = amount_in_words(round($gst_grand_total_rounded)) . " Only";

        OrderBooking::where('order_booking_id', $purchaseorder->order_booking_id)->update(['sub_total' => $sub_total, 'cgst_total' => $cgst_total, 'sgst_utgst_total' => $sgst_utgst_total, 'igst_total' => $igst_total, 'gst_grand_total' => $gst_grand_total, 'grand_total' => $final_amt, 'amount_in_words' => $amount_in_words, 'gst_rate' => $gst_rate, 'tax_in_words' => $tax_in_words]);
      }

      // set job counter
      $financial_year = Financialyear::where('active', 1)->first();
      $order_booking_counter = 1;
      if ($financial_year) {
        $order_booking_counter = $financial_year->order_booking_counter + 1;
      }
      $bill_no = "3PSAP/" . $financial_year->year . "/" . $order_booking_counter;

      // $customer = BussinessPartnerMaster::where('business_partner_id', $purchaseorder->party_id)->first();

      // dd($customer);
      // $party_name = "";
      // if ($customer) {
      //   $party_name = $customer->name;
      // }

      OrderBooking::where('order_booking_id', $purchaseorder->order_booking_id)->update(['order_booking_counter' => $order_booking_counter, 'bill_no' => $bill_no]);
      $financial_year->order_booking_counter = $order_booking_counter;
      $financial_year->save();

      $log = ['module' => 'Order Booking', 'action' => 'Order Booking Created', 'description' => 'Order Booking Created: ' . $bill_no];
      captureActivity($log);


      Session::flash('message', 'Order Booking Updated Successfully!');
      Session::flash('status', 'success');
      return redirect('admin/orderbooking/view/' . $purchaseorder->order_booking_id . '?print=yes');
      // return redirect('admin/orderbooking');
      //return redirect('admin/purchaseorder');
    } else {
      Session::flash('message', 'Something went wrong!');
      Session::flash('status', 'error');
      return redirect('admin/orderbooking');
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
    $GLOBALS['breadcrumb'] = [['name' => 'OrderBooking', 'route' => "admin.orderbooking"], ['name' => 'Create', 'route' => ""]];

    $roles = Role::pluck('name', 'id')->all();
    $gsts = Gst::pluck('gst_name', 'gst_id')->all();
    $party = BussinessPartnerMaster::with('getpartnertype')->get();

    // $contac_data = BussinessPartnerContactDetails::get('contact_details_id','contact_person');

    $party = $party->filter(function ($item) {
      $data = $item->getpartnertypecustomer;

      return $data;
    })->mapWithKeys(function ($item) {
      return [$item['business_partner_id'] => $item['bp_name']];
    });


    // dd($party->toArray());

    $financial_year = Financialyear::where('active', 1)->first();
    if (!$financial_year) {
      Session::flash('message', 'Financial Year Not Active!');
      Session::flash('status', 'error');
      return redirect()->back();
    }
    // dd($financial_year->toArray());
    $order_booking_counter = 1;
    $fyear = "";
    if ($financial_year) {
      $order_booking_counter = $financial_year->order_booking_counter + 1;
      $fyear = $financial_year->year;
    }
    $model = OrderBooking::with('purchaseorder_items')->where('order_booking_id', $id)->first();
    // dd($model->toArray());
    $storage_locations = StorageLocations::pluck('storage_location_name', 'storage_location_id')->all();
    $gst = Gst::pluck('gst_name', 'gst_id');
    return view('backend.orderbooking.edit', compact('roles', 'model', 'gst', 'storage_locations', 'party', 'order_booking_counter', 'fyear', 'gsts'));
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

    // dd($request->all());

    $this->validate($request, [
      // 'receipt_type' => 'required',
      'party_id' => 'required',
      'bill_to' => 'required',
      'ship_from' => 'required',
      'customer_ref_no' => 'required',
      'place_of_supply' => 'required',
      'delivery_date' => 'required',
      'document_date' => 'required',
      'status' => 'required',
      'contact_person' => 'required',
    ]);

    $invoice_items_array = array();
    $current_invoice_items = array();


    $id = $request->input('order_booking_id');
    $this->validate($request, [
      //'purchaseorder_type_name' => ['required', 'email', Rule::unique(PurchaseOrder::class,'email')->ignore($id, 'purchaseorder_type_id')],
    ]);
    $purchaseorder = OrderBooking::findOrFail($id);
    $purchaseorder->fill($request->all());
    if ($purchaseorder->update()) {
      // delete existing items
      // PurchaseOrderItems::where(['purchase_order_id' => $purchaseorder->purchase_order_id])->delete();

      $sub_total = $cgst_total = $sgst_utgst_total = $igst_total = $gst_grand_total = $grand_total = 0;
      $gst_rate = 0;

      //update old data

      //get old invoice items for
      $old_invoice_items  = OrderBookingItems::where('order_booking_id', $purchaseorder->order_booking_id)->get('order_booking_item_id');
      //store ids in saparate array()

      // dd($old_invoice_items->toArray());
      if ($old_invoice_items && count($old_invoice_items) > 0) {
        foreach ($old_invoice_items as $inv_item) {
          // $invoice_items_array[] = $inv_item->goods_service_receipts_item_id;
          array_push($invoice_items_array, $inv_item->order_booking_item_id);
        }
      }

      // store purchaseorder items
      // dd($request->old_invoice_items);
      if (isset($request->old_invoice_items)) {
        // $purchaseorder_items = $request->old_invoice_items;
        $filteredItems = $request->old_invoice_items;

        $old_orderbooking_items = array_filter($filteredItems, function ($item) {
          return $item['order_booking_item_id'] !== null;
        });

        $new_orderbooking_items = array_filter($filteredItems, function ($item) {
          return $item['order_booking_item_id'] == null;
        });

        $purchase_order_id = $purchaseorder->order_booking_id;
        $total_inr = 0;

        if (!empty($new_orderbooking_items)) {

          foreach ($new_orderbooking_items as $item) {
            // dd($item);
            $total_inr += $item['total'];
            $purchaseorder_item = new OrderBookingItems();
            // $purchaseorder_item = PurchaseOrderItems::where('purchase_order_item_id', $item['purchase_order_item_id'])->first();

            $purchaseorder_item->fill($item);
            $purchaseorder_item->order_booking_id = $purchase_order_id;
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

            // batches
            $purchase_order_item_id = $purchaseorder_item->order_booking_item_id;
            $storage_location_id = $purchaseorder_item->storage_location_id;

            if (isset($item['batches'])) {
              foreach ($item['batches'] as $batches) {
                $purchaseOrderBatches = new OrderBookingBatches;

                $data = [
                  'order_booking_id' => $purchase_order_id,
                  'order_booking_item_id' => $purchase_order_item_id,
                  'storage_location_id' => $storage_location_id,
                  'batch_no' => $batches['batch_no'],
                  'manufacturing_date' => $batches['manufacturing_date'],
                  'expiry_date' => $batches['expiry_date']
                ];

                if ($batches['batch_no'] != '') {
                  $purchaseOrderBatches->fill($data);
                  $purchaseOrderBatches->save();
                }
              }
            }
          }
          $gst_grand_total = ($cgst_total + $sgst_utgst_total + $igst_total);
          $gst_grand_total_rounded = $gst_grand_total;
          $final_amt = 0;
          // $grand_total = $sub_total + $gst_grand_total_rounded;
          if (!empty($request->discount)) {
            $discount = ($total_inr * $request->discount) / 100;
            // dd($discount);
            $final_amt = round(($total_inr + $gst_grand_total_rounded) - $discount);
          } else {
            $final_amt = round($total_inr + $gst_grand_total_rounded);
          }

          $rounded_off = round(($gst_grand_total_rounded - $gst_grand_total), 2);
          $amount_in_words = amount_in_words(round($final_amt)) . " Only";
          $tax_in_words = amount_in_words(round($gst_grand_total_rounded)) . " Only";

          OrderBooking::where('order_booking_id', $purchaseorder->order_booking_id)->update(['sub_total' => $sub_total, 'cgst_total' => $cgst_total, 'sgst_utgst_total' => $sgst_utgst_total, 'igst_total' => $igst_total, 'gst_grand_total' => $gst_grand_total, 'grand_total' => $final_amt, 'amount_in_words' => $amount_in_words, 'gst_rate' => $gst_rate, 'tax_in_words' => $tax_in_words]);
        }

        foreach ($old_orderbooking_items as $item) {
          // dd($item);
          // $purchaseorder_item = new PurchaseOrderItems();
          $total_inr += $item['total'];
          $purchaseorder_item = OrderBookingItems::where('order_booking_item_id', $item['order_booking_item_id'])->first();


          $purchaseorder_item->fill($item);
          $purchaseorder_item->order_booking_id = $purchase_order_id;
          // dd($purchaseorder_item);
          $purchaseorder_item->save();
          array_push($current_invoice_items, $purchaseorder_item->order_booking_item_id);

          //amount calculation
          $sub_total = $sub_total + ($item['taxable_amount'] * $purchaseorder_item->qty);
          $cgst_total = $cgst_total + $item['cgst_amount'];
          $sgst_utgst_total = $sgst_utgst_total + $item['sgst_utgst_amount'];
          $igst_total = $igst_total + $item['igst_amount'];

          // gst rate
          if ($gst_rate == 0) {
            $gst_rate = $purchaseorder_item->cgst_rate + $purchaseorder_item->sgst_utgst_rate + $purchaseorder_item->igst_rate;
          }

          //batches
          $purchase_order_id = $purchaseorder->order_booking_id;
          $purchase_order_item_id = $purchaseorder_item->order_booking_item_id;
          $storage_location_id = $purchaseorder_item->storage_location_id;
          // dd($item['batches']);

          if (isset($item['batches'])) {
            foreach ($item['batches'] as $old_bat) {
              // dd($old_bat );
              if ($old_bat['batch_no'] != '') {


                if ((isset($old_bat['order_booking_batches_id']) && $old_bat['order_booking_batches_id'] != '') && (isset($old_bat['order_booking_item_id']) && $old_bat['order_booking_item_id'] != '')) {
                  $old_goodsservicereceiptsbatches = OrderBookingBatches::updateOrCreate(

                    [
                      'order_booking_batches_id' => $old_bat['order_booking_batches_id'],
                      'order_booking_item_id' => $old_bat['order_booking_item_id'],
                    ],

                    [
                      'order_booking_item_id' => $old_bat['order_booking_item_id'],
                      'storage_location_id' => $storage_location_id,
                      'batch_no' => $old_bat['batch_no'],
                      'manufacturing_date' => $old_bat['manufacturing_date'],
                      'expiry_date' => $old_bat['expiry_date'],
                    ]
                  );
                } else {
                  // dd('else');
                  $contine_old_batch = new OrderBookingBatches;
                  $contine_old_batch->batch_no = $old_bat['batch_no'];
                  $contine_old_batch->manufacturing_date = $old_bat['manufacturing_date'];
                  $contine_old_batch->expiry_date = $old_bat['expiry_date'];
                  $contine_old_batch->storage_location_id = $storage_location_id;
                  $contine_old_batch->order_booking_id = $purchase_order_id;
                  $contine_old_batch->order_booking_item_id = $purchase_order_item_id;
                  $contine_old_batch->save();
                }
              }
            }
          }
        }
        // dd($gross_total);
        $gst_grand_total = ($cgst_total + $sgst_utgst_total + $igst_total);
        $gst_grand_total_rounded = $gst_grand_total;
        $final_amt = 0;
        // dd($gross_total);
        if (!empty($request->discount)) {
          $discount = ($total_inr * $request->discount) / 100;
          // dd($discount);
          $final_amt = round(($total_inr + $gst_grand_total_rounded) - $discount);
        } else {
          $final_amt = round($total_inr + $gst_grand_total_rounded);
        }
        // dd($grand_total);
        $rounded_off = round(($gst_grand_total_rounded - $gst_grand_total), 2);
        $amount_in_words = amount_in_words(round($final_amt)) . " Only";
        $tax_in_words = amount_in_words(round($gst_grand_total_rounded)) . " Only";

        OrderBooking::where('order_booking_id', $purchaseorder->order_booking_id)->update(['sub_total' => $sub_total, 'cgst_total' => $cgst_total, 'sgst_utgst_total' => $sgst_utgst_total, 'igst_total' => $igst_total, 'gst_grand_total' => $gst_grand_total, 'grand_total' => $final_amt, 'amount_in_words' => $amount_in_words, 'gst_rate' => $gst_rate, 'tax_in_words' => $tax_in_words]);

        $invoice_difference = array_diff($invoice_items_array, $current_invoice_items);

        if ($invoice_difference && count($invoice_difference) > 0) {
          foreach ($invoice_difference as $inv_diff) {
            $delete_invoice = OrderBookingItems::where('order_booking_item_id', $inv_diff)->first();
            if ($delete_invoice) {
              $delete_invoice->delete();
            }
          }
        }
      } else {
        foreach ($invoice_items_array as $inv_diff) {
          $delete_invoice = OrderBookingItems::where('order_booking_item_id', $inv_diff)->first();
          if ($delete_invoice) {
            $delete_invoice->delete();
          }
        }
      }




      $customer = BussinessPartnerMaster::where('business_partner_id', $purchaseorder->party_id)->first();
      $party_name = "";
      if ($customer) {
        $party_name = $customer->name;
      }

      OrderBooking::where('order_booking_id', $purchaseorder->order_booking_id)->update(['party_name' => $party_name]);


      if ($purchaseorder->getChanges()) {
        $new_changes = $purchaseorder->getChanges();
        $log = ['module' => 'Order Booking', 'action' => 'Order Booking Updated', 'description' => 'Order Booking Updated: Name=>' . $purchaseorder->bill_no];
        captureActivityupdate($new_changes, $log);
      }

      Session::flash('message', 'Order Booking Updated Successfully!');
      Session::flash('status', 'success');
      return redirect('admin/orderbooking');
    } else {
      Session::flash('message', 'Something went wrong!');
      Session::flash('status', 'error');
      return redirect('admin/orderbooking');
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
    $purchaseorder = OrderBooking::findOrFail($id);
    $purchaseorder_items = OrderBookingItems::where('order_booking_id', $id);
    // dd($purchaseorder_items);

    if ($purchaseorder->delete()) {
      $purchaseorder_items->delete();


      $log = ['module' => 'Order Booking', 'action' => 'Order Booking Deleted', 'description' => 'Order Booking Deleted: ' . $purchaseorder->bill_no];
      captureActivity($log);

      Session::flash('message', 'Order Booking Deleted Successfully!');
      Session::flash('status', 'success');
    } else {
      Session::flash('message', 'Something went wrong!');
      Session::flash('status', 'error');
    }

    return redirect('admin/orderbooking');
  }


  public function amountinwords($number = 0)
  {
    return amount_in_words($number);
  }



  public function partydetails($business_partner_id)
  {
    $comapny_data = Company::first();
    $business_partner_detail = "";
    $bill_to_state = "";
    $business_partner_state = $comapny_data->state;
    $bill_to_gst_no = "";
    $party_name = "";

    $business_partner = BussinessPartnerMaster::where('business_partner_id', $business_partner_id)->first();

    $business_partner_address = BussinessPartnerAddress::where(['bussiness_partner_id' => $business_partner_id, 'address_type' => 'Bill-To/ Bill-From'])->first();

    // dd($business_partner_address);

    if ($business_partner && $business_partner_address) {
      $party_name = $business_partner->bp_name;
      $bill_to_state = $business_partner_address->state;
      $business_partner_detail = "<strong>" . $business_partner->bp_name . "</strong><br>";
      $business_partner_detail .= "<span>" . $business_partner_address->building_no_name . ' ' . $business_partner_address->street_name . ' ' .
        $business_partner_address->landmark . ' ' . $business_partner_address->city . ' ' . $business_partner_address->district .  "</span><br>";
      $business_partner_detail .= "<span>POS: Code & State: " . $business_partner_address->pin_code . ' ' . $business_partner_address->state . "</span><br>";
      $bill_to_gst_no .= $business_partner->gst_details;

      // $business_partner_state = $business_partner->state;
    }


    $details['party_name'] = $party_name;
    $details['party_detail'] = $business_partner_detail;
    $details['party_state'] = $business_partner_state;
    $details['bill_to_state'] = $bill_to_state;
    $details['bill_to_gst_no'] = $bill_to_gst_no;

    // dd($details);
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

    // dd($party);

    $filename = $purchaseorder->bill_no;
    if (1 != 1) {
      $pdf = PDF::loadView('backend.purchaseorder.purchaseorder_format_split', ['roles' => $roles, 'purchaseorder' => $purchaseorder, 'party' => $party, 'download' => true]);
    } else {
      $pdf = PDF::loadView('backend.purchaseorder.invoice_format', ['roles' => $roles, 'purchaseorder' => $purchaseorder, 'party' => $party, 'download' => true]);
    }

    return $pdf->stream($filename . '.pdf');
  }
}
