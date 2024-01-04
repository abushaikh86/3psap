<?php

namespace App\Http\Controllers\backend;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\backend\AdminUsers;
use App\Models\backend\Apinvoice;
use App\Models\backend\ApInvoiceBatches;
use App\Models\backend\ApInvoiceItems;
use App\Models\backend\ArInvoice;
use App\Models\backend\ArInvoiceBatches;
use App\Models\backend\ArInvoiceItems;
use App\Models\backend\BussinessPartnerAddress;
use App\Models\backend\BussinessPartnerBankingDetails;
use App\Models\backend\BussinessPartnerContactDetails;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Session;
use Illuminate\Validation\Rule;
use Spatie\Permission\Models\Role;
use App\Models\backend\GoodsServiceReceipts;
use App\Models\backend\GoodsServiceReceiptsItems;
use App\Models\backend\Financialyear;
use App\Models\backend\BussinessPartnerMaster;
use App\Models\backend\BussinessPartnerOrganizationType;
use App\Models\backend\Company;
use App\Models\backend\GoodsServiceReceiptsBatches;
use App\Models\backend\Gst;
use App\Models\backend\OrderBooking;
use App\Models\backend\PurchaseOrder;
use DB;
use PDF;
use App\Models\backend\Products;
use App\Models\backend\StorageLocations;

class ArinvoiceController extends Controller
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
        $GLOBALS['breadcrumb'] = [['name' => 'A/R Invoice', 'route' => ""]];
        $apinvoice = ArInvoice::with('get_partyname')->get();

        return view('backend.arinvoice.index', compact('apinvoice'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $GLOBALS['breadcrumb'] = [['name' => 'A/P Invoice', 'route' => "admin.apinvoice"], ['name' => 'Create', 'route' => ""]];

        $roles = Role::pluck('name', 'id')->all();
        $gsts = Gst::pluck('gst_name', 'gst_id')->all();
        $party = BussinessPartnerMaster::get();
        // $party = collect($party)->mapWithKeys(function ($item, $key) {
        //     return [$item['business_partner_id'] => $item['bp_name']];
        // });
        $party = $party->filter(function ($item) {
            $data = $item->getpartnertype;

            return $data;
        })->mapWithKeys(function ($item) {
            return [$item['business_partner_id'] => $item['bp_name']];
        });

        $financial_year = Financialyear::where('active', 1)->first();
        // dd($financial_year->toArray());
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
        $storage_locations = StorageLocations::pluck('storage_location_name', 'storage_location_id')->all();
        $gst = Gst::pluck('gst_name', 'gst_id');
        $purchaseorder = PurchaseOrder::latest()->pluck('bill_no', 'purchase_order_id');

        return view('backend.apinvoice.create', compact('roles', 'gst', 'party', 'purchase_order_counter', 'fyear', 'storage_locations', 'purchaseorder'));
    }


    public function show($id)
    {
        // dd('asdf');
        $GLOBALS['breadcrumb'] = [['name' => 'GoodsServiceReceipts', 'route' => "admin.goodsservicereceipts"], ['name' => 'View', 'route' => ""]];
        $roles = Role::pluck('name', 'id')->all();
        $goodsservicereceipts = Arinvoice::where('order_fulfillment_id', $id)->with('goodsservicereceipts_items')->with('get_bill_toaddress')->with('get_ship_toaddress')->first();
        // dd($goodsservicereceipts->toArray());
        $party = BussinessPartnerMaster::where('business_partner_id', $goodsservicereceipts->party_id)->first();
        $bill_address = BussinessPartnerAddress::where(['bussiness_partner_id' => $goodsservicereceipts->party_id, 'address_type' => 'Bill-To/ Bill-From'])->first();
        $ship_address = BussinessPartnerAddress::where(['bussiness_partner_id' => $goodsservicereceipts->party_id, 'address_type' => 'Ship-To/ Ship-From'])->first();
        $contact = BussinessPartnerContactDetails::where('bussiness_partner_id', $goodsservicereceipts->party_id)->first();
        $bank_details = BussinessPartnerBankingDetails::where('bussiness_partner_id', $goodsservicereceipts->party_id)->first();
        $invoice = $goodsservicereceipts;
        // dd($invoice->toArray());

        return view('backend.arinvoice.show', compact('roles', 'bill_address', 'ship_address', 'contact', 'bank_details', 'goodsservicereceipts', 'party', 'invoice'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(Request $request)
    {
        // dd($request->all());

        $this->validate($request, [
            'bill_date' => 'required',
            'receipt_type' => 'required',
            'party_id' => 'required',
            'vendor_ref_no' => 'required',
            'ship_from' => 'required',
            'delivery_date' => 'required',
            'document_date' => 'required',
            'status' => 'required',
            'bill_to_gst_no' => 'required',
            'place_of_supply' => 'required',
        ]);
        $goodsservicereceipts = new Apinvoice();
        $goodsservicereceipts->fill($request->all());
        if ($goodsservicereceipts->save()) {
            $sub_total = $cgst_total = $sgst_utgst_total = $igst_total = $gst_grand_total = $grand_total = 0;
            $gst_rate = 0;

            //check for file and upload file
            if ($request->has('po_document')) {
                $location = public_path('/uploads/po_document/' . $goodsservicereceipts->goods_service_receipt_id);
                $upload_file = 'po_' . date('dmyhis') . '_.' . $request->file('po_document')->getClientOriginalExtension();  //
                $request->file('po_document')->move($location, $upload_file);
                $goodsservicereceipts->po_document = $upload_file;
                $goodsservicereceipts->save();
            }


            // store goodsservicereceipts items
            // dd($request->all());
            if (isset($request->invoice_items)) {
                $goodsservicereceipts_items = $request->invoice_items;
                $purchase_order_id = $goodsservicereceipts->purchase_order_id;
                foreach ($goodsservicereceipts_items as $item) {
                    $goodsservicereceipts_item = new ApInvoiceItems();
                    $goodsservicereceipts_item->fill($item);
                    $goodsservicereceipts_item->purchase_order_id = $purchase_order_id;
                    $goodsservicereceipts_item->goods_service_receipt_id = $goodsservicereceipts->goods_service_receipt_id;
                    // dd($goodsservicereceipts_item->toArray());
                    $goodsservicereceipts_item->save();
                    // dd($item);
                    //amount calculation
                    $sub_total = $sub_total + ($item['taxable_amount'] * $goodsservicereceipts_item->qty);
                    $cgst_total = $cgst_total + $item['cgst_amount'];
                    $sgst_utgst_total = $sgst_utgst_total + $item['sgst_utgst_amount'];
                    $igst_total = $igst_total + $item['igst_amount'];

                    // gst rate
                    $gst_rate = $goodsservicereceipts_item->gst_rate;
                    if (!empty($gst_rate)) {
                        $get_data = Gst::where('gst_id', $gst_rate)->first();
                        $gst_rate = $get_data->gst_percent;
                    }

                    //save batches
                    $goodsservicereceipts_id = $goodsservicereceipts->goods_service_receipt_id;
                    $goodsservicereceipts_item_id = $goodsservicereceipts_item->goods_service_receipts_item_id;
                    // dd($goodsservicereceipts_item_id);


                    if (isset($item['batches'])) {
                        foreach ($item['batches'] as $batches) {
                            $goodsservicereceiptsbatches = new ApInvoiceBatches;

                            $data = [
                                'goods_service_receipt_id' => $goodsservicereceipts_id,
                                'goods_service_receipts_item_id' => $goodsservicereceipts_item_id,
                                'batch_no' => $batches['batch_no'],
                                'manufacturing_date' => $batches['manufacturing_date'],
                                'expiry_date' => $batches['expiry_date']
                            ];

                            if ($batches['batch_no'] != '') {
                                $goodsservicereceiptsbatches->fill($data);
                                $goodsservicereceiptsbatches->save();
                            }
                        }
                    }
                }   //loop ends of goods services reciepnts items
                $gst_grand_total = ($cgst_total + $sgst_utgst_total + $igst_total);
                $gst_grand_total_rounded = round($gst_grand_total);
                $grand_total = $sub_total + $gst_grand_total_rounded;
                if (!empty($request->discount)) {
                    $discount = ($grand_total * $request->discount) / 100;
                    $grand_total = round($sub_total + $gst_grand_total_rounded - $discount);
                }
                $rounded_off = round(($gst_grand_total_rounded - $gst_grand_total), 2);
                $amount_in_words = amount_in_words($grand_total) . " Only";
                $tax_in_words = amount_in_words($gst_grand_total_rounded) . " Only";

                Apinvoice::where('purchase_order_id', $goodsservicereceipts->purchase_order_id)->update(['sub_total' => $sub_total, 'cgst_total' => $cgst_total, 'sgst_utgst_total' => $sgst_utgst_total, 'igst_total' => $igst_total, 'gst_grand_total' => $gst_grand_total, 'grand_total' => $grand_total, 'amount_in_words' => $amount_in_words, 'gst_rate' => $gst_rate, 'tax_in_words' => $tax_in_words]);
            }

            // set job counter
            $financial_year = Financialyear::where('active', 1)->first();
            $purchase_order_counter = 1;
            if ($financial_year) {
                $purchase_order_counter = $financial_year->purchase_order_counter + 1;
            }
            $bill_no = "3PSAP/" . $financial_year->year . "/" . $purchase_order_counter;

            $customer = BussinessPartnerMaster::where('business_partner_id', $goodsservicereceipts->party_id)->first();
            // $party_name = "";
            // if ($customer) {
            //     $party_name = $customer->name;
            // }

            Apinvoice::where('purchase_order_id', $goodsservicereceipts->purchase_order_id)->update(['purchase_order_counter' => $purchase_order_counter, 'bill_no' => $bill_no]);
            $financial_year->purchase_order_counter = $purchase_order_counter;
            $financial_year->save();

            Session::flash('message', 'A/P Invoice Added Successfully!');
            Session::flash('status', 'success');
            // return redirect('admin/goodsservicereceipts/view/'.$goodsservicereceipts->purchase_order_id.'?print=yes');
            return redirect('admin/apinvoice');
        } else {
            Session::flash('message', 'Something went wrong!');
            Session::flash('status', 'error');
            return redirect('admin/apinvoice');
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
        $party = BussinessPartnerMaster::get();
        $gst = Gst::pluck('gst_name', 'gst_id');
        // $party = collect($party)->mapWithKeys(function ($item, $key) {
        //     return [$item['business_partner_id'] => $item['bp_name']];
        // });
        $party = $party->filter(function ($item) {
            $data = $item->getpartnertypecustomer;

            return $data;
        })->mapWithKeys(function ($item) {
            return [$item['business_partner_id'] => $item['bp_name']];
        });

        $financial_year = Financialyear::where('active', 1)->first();
        if (!$financial_year) {
            Session::flash('message', 'Financial Year Not Active!');
            Session::flash('status', 'error');
            return redirect()->back();
        }
        $order_booking_counter = 1;
        $fyear = "";
        if ($financial_year) {
            $order_booking_counter = $financial_year->order_booking_counter + 1;
            $fyear = $financial_year->year;
        }
        $storage_locations = StorageLocations::pluck('storage_location_name', 'storage_location_id')->all();

        $purchaseorder = OrderBooking::latest()->pluck('bill_no', 'order_booking_id');

        if ($id != '' && $id != '') {
            $model = Arinvoice::with('goodsservicereceipts_items')->where('order_fulfillment_id', $id)->first();
            $data = ArInvoiceItems::first();
            // dd($model->toArray());
            // dd($goodsservicereceipt->toArray());
            if ($model) {
                return view('backend.arinvoice.edit', compact('model', 'gst', 'party', 'financial_year', 'order_booking_counter', 'fyear', 'storage_locations', 'purchaseorder'));
            }
        }



        //   $GLOBALS['breadcrumb'] = [['name'=>'GoodsServiceReceipts','route'=>"admin.goodsservicereceipts"],['name'=>'Edit','route'=>""]];
        //     $goodsservicereceipts = GoodsServiceReceipts::findOrFail($id);
        //     $roles = Role::pluck('name','id')->all();

        //     $financial_year = Financialyear::where('active',1)->first();
        //     if(!$financial_year){
        //       Session::flash('message', 'Financial Year Not Active!');
        //           Session::flash('status', 'error');
        //       return redirect()->back();
        //     }
        //     $fyear = "";
        //   if($financial_year){
        //     $fyear = $financial_year->year;
        //   }
        //     $party = BussinessPartnerMaster::Where('business_partner_id','party')->get();
        //     $party = collect($party)->mapWithKeys(function ($item, $key) {
        //         return [$item['business_partner_id'] => $item['bp_name']];
        //     });
        //     $job = Job::get();
        //     $job = collect($job)->mapWithKeys(function ($item, $key) {
        //             return [$item['job_id'] => $item['job_id']];
        //         });
        //     $bill_to = BussinessPartnerMaster::where('business_partner_id',$goodsservicereceipts->bill_to)->first();
        //     $selected_party = BussinessPartnerMaster::where('business_partner_id',$goodsservicereceipts->party_id)->first();
        //     $bill_to_state = "Andaman and Nicobar Islands";
        //     $party_state = $selected_party->state;

        //     return view('backend.goodsservicereceipts.edit', compact('goodsservicereceipts','roles','fyear','bill_to_state','party_state','party','selected_party','job'));
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
            'trans_type' => 'required',
            'party_id' => 'required',
            'place_of_supply' => 'required',
            'customer_ref_no' => 'required',
            'posting_date' => 'required',
            'due_date' => 'required',
            'document_date' => 'required',
            'status' => 'required',
            'contact_person' => 'required',
        ]);

        $invoice_items_array = array();
        $current_invoice_items = array();

        $goodsservicereceipt = Arinvoice::where('order_fulfillment_id', $request->order_fulfillment_id)->first();

        if ($goodsservicereceipt) {
            $goodsservicereceipt->fill($request->all());
            // dd($goodsservicereceipt);
            //update Goods service Receipts
            if ($goodsservicereceipt->save()) {

                //check for file and upload file
                // if ($request->has('po_document')) {
                //     $location = public_path('/uploads/po_document/' . $goodsservicereceipt->goods_service_receipt_id);
                //     $upload_file = 'po_' . date('dmyhis') . '_.' . $request->file('po_document')->getClientOriginalExtension();  //
                //     $request->file('po_document')->move($location, $upload_file);
                //     $goodsservicereceipt->po_document = $upload_file;
                //     $goodsservicereceipt->save();
                // }


                //save initial data
                $sub_total = $cgst_total = $sgst_utgst_total = $igst_total = $gst_grand_total = $grand_total = 0;
                $gst_rate = 0;

                //update old data

                //get old invoice items for
                $old_invoice_items  = ArInvoiceItems::where('order_fulfillment_id', $goodsservicereceipt->order_fulfillment_id)->get('order_fulfillment_item_id');
                //store ids in saparate array()

                if ($old_invoice_items && count($old_invoice_items) > 0) {
                    foreach ($old_invoice_items as $inv_item) {
                        // $invoice_items_array[] = $inv_item->goods_service_receipts_item_id;
                        array_push($invoice_items_array, $inv_item->order_fulfillment_item_id);
                    }
                }
                // dd($invoice_items_array);
                // dd($request->old_invoice_items);

                if (isset($request->old_invoice_items)) {

                    //save data of GoodsService Receipts
                    // $old_goodsservicereceipts_items = $request->old_invoice_items;
                    $filteredItems = $request->old_invoice_items;

                    $old_goodsservicereceipts_items = array_filter($filteredItems, function ($item) {
                        return $item['order_fulfillment_item_id'] !== null;
                    });

                    $new_goodsservicereceipts_items = array_filter($filteredItems, function ($item) {
                        return $item['order_fulfillment_item_id'] == null;
                    });


                    $purchase_order_id = $goodsservicereceipt->order_booking_id;
                    $total_inr = 0;

                    if (!empty($new_goodsservicereceipts_items)) {
                        foreach ($new_goodsservicereceipts_items as $item) {
                            $total_inr += $item['total'];
                            if ($item['item_name'] != '') {

                                $goodsservicereceipts_item = new ArInvoiceItems();
                                $goodsservicereceipts_item->fill($item);
                                $goodsservicereceipts_item->order_booking_id = $purchase_order_id;
                                $goodsservicereceipts_item->order_fulfillment_id = $request->order_fulfillment_id;
                                $goodsservicereceipts_item->party_id = $request->party_id;
                                $goodsservicereceipts_item->save();


                                //amount calculation
                                $sub_total = $sub_total + ($item['taxable_amount'] * $goodsservicereceipts_item->qty);
                                $cgst_total = $cgst_total + $item['cgst_amount'];
                                $sgst_utgst_total = $sgst_utgst_total + $item['sgst_utgst_amount'];
                                $igst_total = $igst_total + $item['igst_amount'];

                                // gst rate
                                $gst_rate = $goodsservicereceipts_item->gst_rate;
                                if (!empty($gst_rate)) {
                                    $get_data = Gst::where('gst_id', $gst_rate)->first();
                                    $gst_rate = $get_data->gst_percent;
                                }
                                // batches
                                $goods_service_receipt_id = $goodsservicereceipt->order_fulfillment_id;
                                $purchase_order_item_id = $goodsservicereceipts_item->order_fulfillment_item_id;
                                $storage_location_id = $goodsservicereceipts_item->storage_location_id;

                                if (isset($item['batches'])) {
                                    foreach ($item['batches'] as $batches) {
                                        $purchaseOrderBatches = new ArInvoiceBatches;

                                        $data = [
                                            'order_fulfillment_id' => $goods_service_receipt_id,
                                            'order_fulfillment_item_id' => $purchase_order_item_id,
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

                            //update old  data of repeater


                            //end of if
                        } ////end of foreach
                        //update old
                        $gst_grand_total = ($cgst_total + $sgst_utgst_total + $igst_total);
                        $gst_grand_total_rounded = $gst_grand_total;
                        // $grand_total = $sub_total + $gst_grand_total_rounded;
                        $gst_grand_total_rounded = $gst_grand_total;
                        // $grand_total = $sub_total + $gst_grand_total_rounded;

                        $final_amt = 0;
                        // dd($gross_total);
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

                        Arinvoice::where('order_booking_id', $goodsservicereceipt->order_booking_id)->update(['sub_total' => $sub_total, 'cgst_total' => $cgst_total, 'sgst_utgst_total' => $sgst_utgst_total, 'igst_total' => $igst_total, 'gst_grand_total' => $gst_grand_total, 'grand_total' => $final_amt, 'amount_in_words' => $amount_in_words, 'gst_rate' => $gst_rate, 'tax_in_words' => $tax_in_words]);
                    }

                    foreach ($old_goodsservicereceipts_items as $old_item) {
                        $total_inr += $old_item['total'];
                        if (isset($old_item['order_fulfillment_item_id']) && $old_item['order_fulfillment_item_id'] != '') {

                            $old_goodsservicereceipts_item = ArInvoiceItems::where('order_fulfillment_item_id', $old_item['order_fulfillment_item_id'])->first();
                            //   dd($old_goodsservicereceipts_item->toArray());
                            $old_goodsservicereceipts_item->fill($old_item);
                            $old_goodsservicereceipts_item->order_booking_id = $purchase_order_id;
                            $old_goodsservicereceipts_item->order_fulfillment_id = $request->order_fulfillment_id;
                            $old_goodsservicereceipts_item->save();
                            array_push($current_invoice_items, $old_goodsservicereceipts_item->order_fulfillment_item_id);


                            //amount Calculation

                            $sub_total = $sub_total + ($old_item['taxable_amount'] * $old_goodsservicereceipts_item->qty);
                            $cgst_total = $cgst_total + $old_item['cgst_amount'];
                            $sgst_utgst_total = $sgst_utgst_total + $old_item['sgst_utgst_amount'];
                            $igst_total = $igst_total + $old_item['igst_amount'];

                            // gst rate
                            $gst_rate = $old_goodsservicereceipts_item->gst_rate;
                            if (!empty($gst_rate)) {
                                $get_data = Gst::where('gst_id', $gst_rate)->first();
                                $gst_rate = $get_data->gst_percent;
                            }

                            //batches
                            $goods_service_receipt_id = $goodsservicereceipt->order_fulfillment_id;
                            $purchase_order_item_id = $old_goodsservicereceipts_item->order_fulfillment_item_id;
                            $storage_location_id = $old_goodsservicereceipts_item->storage_location_id;
                            // dd($item);

                  

                            // dd($updated_data);
                        }
                    }   //end of loop of old items
                    $gst_grand_total = ($cgst_total + $sgst_utgst_total + $igst_total);
                    // dd($gst_grand_total);
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

                    $rounded_off = round(($gst_grand_total_rounded - $gst_grand_total), 2);
                    $amount_in_words = amount_in_words(round($final_amt)) . " Only";
                    $tax_in_words = amount_in_words(round($gst_grand_total_rounded)) . " Only";
                    // dd($sgst_utgst_total);
                    $updated_data =  Arinvoice::where('order_booking_id', $goodsservicereceipt->order_booking_id)->update(['sub_total' => $sub_total, 'cgst_total' => $cgst_total, 'sgst_utgst_total' => $sgst_utgst_total, 'igst_total' => $igst_total, 'gst_grand_total' => $gst_grand_total, 'grand_total' => $final_amt, 'amount_in_words' => $amount_in_words, 'gst_rate' => $gst_rate, 'tax_in_words' => $tax_in_words]);

                    $invoice_difference = array_diff($invoice_items_array, $current_invoice_items);
                    if ($invoice_difference && count($invoice_difference) > 0) {
                        foreach ($invoice_difference as $inv_diff) {
                            $delete_invoice = ArInvoiceItems::where('order_fulfillment_item_id', $inv_diff)->first();
                            if ($delete_invoice) {
                                $delete_invoice->delete();
                            }
                        }
                    }
                } else {
                    foreach ($invoice_items_array as $inv_diff) {
                        $delete_invoice = ArInvoiceItems::where('order_fulfillment_item_id', $inv_diff)->first();
                        if ($delete_invoice) {
                            $delete_invoice->delete();
                        }
                    }
                }

                //end of invoice data
                //Old Item Repeater Data

                //insert new repeater data
                // dd($request->party_id);

            }
        }

        if ($goodsservicereceipt->getChanges()) {
            $new_changes = $goodsservicereceipt->getChanges();
            $log = ['module' => 'A/R Invoice', 'action' => 'A/R Invoice Updated', 'description' => 'A/R Invoice Updated: Name=>' . $goodsservicereceipt->bill_no];
            captureActivityupdate($new_changes, $log);
        }

        // dd($request->all());
        // dd('out');
        // return back to edit page
        return redirect()->route('admin.arinvoice')->with('success', 'Details has Been Updated');
    }     //end of function

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        // dd($id);
        $goodsservicereceipts = Arinvoice::findOrFail($id);

        // dd($goodsservicereceipts);

        if ($goodsservicereceipts->delete()) {

            $log = ['module' => 'A/R Invoice', 'action' => 'A/R Invoice Deleted', 'description' => 'A/R Invoice Deleted: ' . $goodsservicereceipts->bill_no];
            captureActivity($log);

            Session::flash('message', 'A/R Invoice Deleted Successfully!');
            Session::flash('status', 'success');
        } else {
            Session::flash('message', 'Something went wrong!');
            Session::flash('status', 'error');
        }

        return redirect('admin/arinvoice');
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
        // dd($query);
        $data = Products::select(DB::raw("consumer_desc as name"), 'product_item_id', 'hsncode_id')->where("consumer_desc", "LIKE", "%" . $query . "%")->get();
        // dd($data);
        return response()->json($data);
    }


    public function download($id)
    {
        $roles = Role::pluck('name', 'id')->all();
        $goodsservicereceipts = GoodsServiceReceipts::where('purchase_order_id', $id)->with('goodsservicereceipts_items')->first();

        $party = BussinessPartnerMaster::where('business_partner_id', $goodsservicereceipts->party_id)->first();

        $filename = $goodsservicereceipts->bill_no;
        if (1 != 1) {
            $pdf = PDF::loadView('backend.goodsservicereceipts.goodsservicereceipts_format_split', ['roles' => $roles, 'goodsservicereceipts' => $goodsservicereceipts, 'party' => $party, 'download' => true]);
        } else {
            $pdf = PDF::loadView('backend.goodsservicereceipts.invoice_format', ['roles' => $roles, 'goodsservicereceipts' => $goodsservicereceipts, 'party' => $party, 'download' => true]);
        }

        return $pdf->stream($filename . '.pdf');
    }
}
