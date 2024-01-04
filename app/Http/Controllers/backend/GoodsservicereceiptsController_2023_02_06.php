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
use App\Models\backend\GoodsServiceReceipts;
use App\Models\backend\GoodsServiceReceiptsItems;
use App\Models\backend\Financialyear;
use App\Models\backend\BussinessPartnerMaster;
use App\Models\backend\BussinessPartnerOrganizationType;
use App\Models\backend\Company;
use App\Models\backend\GoodsServiceReceiptsBatches;
use DB;
use PDF;
use App\Models\backend\Products;
use App\Models\backend\StorageLocations;

class GoodsservicereceiptsController extends Controller
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
        $GLOBALS['breadcrumb'] = [['name' => 'GoodsServiceReceipts', 'route' => ""]];
        $goodsservicereceipts = GoodsServiceReceipts::latest()->get();

        return view('backend.goodsservicereceipts.index', compact('goodsservicereceipts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $GLOBALS['breadcrumb'] = [['name' => 'GoodsServiceReceipts', 'route' => "admin.goodsservicereceipts"], ['name' => 'Create', 'route' => ""]];

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
        $storage_locations = StorageLocations::pluck('storage_location_name', 'storage_location_id')->all();
        return view('backend.goodsservicereceipts.create', compact('roles', 'party', 'purchase_order_counter', 'fyear', 'storage_locations'));
    }


    public function show($id)
    {
        $GLOBALS['breadcrumb'] = [['name' => 'GoodsServiceReceipts', 'route' => "admin.goodsservicereceipts"], ['name' => 'View', 'route' => ""]];
        $roles = Role::pluck('name', 'id')->all();
        $goodsservicereceipts = GoodsServiceReceipts::where('purchase_order_id', $id)->with('goodsservicereceipts_items')->first();
        $party = BussinessPartnerMaster::where('business_partner_id', $goodsservicereceipts->party_id)->first();
        $invoice = $goodsservicereceipts;

        return view('backend.goodsservicereceipts.show', compact('roles', 'goodsservicereceipts', 'party', 'invoice'));
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
        $goodsservicereceipts = new GoodsServiceReceipts();
        $goodsservicereceipts->fill($request->all());
        if ($goodsservicereceipts->save()) {
            $sub_total = $cgst_total = $sgst_utgst_total = $igst_total = $gst_grand_total = $grand_total = 0;
            $gst_rate = 0;
            // store goodsservicereceipts items
            if (isset($request->invoice_items)) {
                $goodsservicereceipts_items = $request->invoice_items;
                $purchase_order_id = $goodsservicereceipts->purchase_order_id;
                foreach ($goodsservicereceipts_items as $item) {
                    $goodsservicereceipts_item = new GoodsServiceReceiptsItems();
                    $goodsservicereceipts_item->fill($item);
                    $goodsservicereceipts_item->purchase_order_id = $purchase_order_id;
                    $goodsservicereceipts_item->save();

                    //amount calculation
                    $sub_total = $sub_total + ($item['taxable_amount'] * $goodsservicereceipts_item->qty);
                    $cgst_total = $cgst_total + $item['cgst_amount'];
                    $sgst_utgst_total = $sgst_utgst_total + $item['sgst_utgst_amount'];
                    $igst_total = $igst_total + $item['igst_amount'];

                    // gst rate
                    if ($gst_rate == 0) {
                        $gst_rate = $goodsservicereceipts_item->cgst_rate + $goodsservicereceipts_item->sgst_utgst_rate + $goodsservicereceipts_item->igst_rate;
                    }
                    //save batches
                    $goodsservicereceipts_id = $goodsservicereceipts->goods_service_receipt_id;
                    $goodsservicereceipts_item_id = $goodsservicereceipts_item->goods_service_receipts_item_id;


                    if (isset($item['batches'])) {
                        foreach ($item['batches'] as $batches) {
                            $goodsservicereceiptsbatches = new GoodsServiceReceiptsBatches;

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
                $rounded_off = round(($gst_grand_total_rounded - $gst_grand_total), 2);
                $amount_in_words = amount_in_words($grand_total) . " Only";
                $tax_in_words = amount_in_words($gst_grand_total_rounded) . " Only";

                GoodsServiceReceipts::where('purchase_order_id', $goodsservicereceipts->purchase_order_id)->update(['sub_total' => $sub_total, 'cgst_total' => $cgst_total, 'sgst_utgst_total' => $sgst_utgst_total, 'igst_total' => $igst_total, 'gst_grand_total' => $gst_grand_total, 'grand_total' => $grand_total, 'amount_in_words' => $amount_in_words, 'gst_rate' => $gst_rate, 'tax_in_words' => $tax_in_words]);
            }

            // set job counter
            $financial_year = Financialyear::where('active', 1)->first();
            $purchase_order_counter = 1;
            if ($financial_year) {
                $purchase_order_counter = $financial_year->purchase_order_counter + 1;
            }
            $bill_no = "3PSAP/" . $financial_year->year . "/" . $purchase_order_counter;

            $customer = BussinessPartnerMaster::where('business_partner_id', $goodsservicereceipts->party_id)->first();
            $party_name = "";
            if ($customer) {
                $party_name = $customer->name;
            }

            GoodsServiceReceipts::where('purchase_order_id', $goodsservicereceipts->purchase_order_id)->update(['purchase_order_counter' => $purchase_order_counter, 'bill_no' => $bill_no, 'party_name' => $party_name]);
            $financial_year->purchase_order_counter = $purchase_order_counter;
            $financial_year->save();

            Session::flash('message', 'GoodsServiceReceipts Added Successfully!');
            Session::flash('status', 'success');
            // return redirect('admin/goodsservicereceipts/view/'.$goodsservicereceipts->purchase_order_id.'?print=yes');
            return redirect('admin/goodsservicereceipts');
        } else {
            Session::flash('message', 'Something went wrong!');
            Session::flash('status', 'error');
            return redirect('admin/goodsservicereceipts');
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
        $storage_locations = StorageLocations::pluck('storage_location_name', 'storage_location_id')->all();

        if ($id != '' && $id != '') {
            $goodsservicereceipt = GoodsServiceReceipts::with('goodsservicereceipts_items')->where('goods_service_receipt_id', $id)->first();
            if ($goodsservicereceipt) {
                return view('backend.goodsservicereceipts.edit', compact('goodsservicereceipt', 'party', 'financial_year', 'purchase_order_counter', 'fyear', 'storage_locations'));
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
        $purchase_item_array = [];

        $goodsservicereceipt = GoodsServiceReceipts::where('goods_service_receipt_id', $request->goods_service_receipt_id)->first();

        if ($goodsservicereceipt) {
            $goodsservicereceipt->fill($request->all());
            if ($goodsservicereceipt->save()) {
                //save initial data
                $sub_total = $cgst_total = $sgst_utgst_total = $igst_total = $gst_grand_total = $grand_total = 0;
                $gst_rate = 0;

                //update old data
                if(isset($request->old_invoice_items)){

                    //save data of GoodsService Receipts
                    $old_goodsservicereceipts_items = $request->old_invoice_items;
                    $purchase_order_id = $goodsservicereceipt->purchase_order_id;
                    foreach ($old_goodsservicereceipts_items as $old_item) {
                        ////
                        // dd($old_item);

                        $old_goodsservicereceipts_item = GoodsServiceReceiptsItems::where('goods_service_receipts_item_id', $old_item['goods_service_receipts_item_id'])->first();
                        $old_goodsservicereceipts_item->fill($old_item);
                        $old_goodsservicereceipts_item->purchase_order_id = $purchase_order_id;
                        $old_goodsservicereceipts_item->goods_service_receipt_id = $request->goods_service_receipt_id;
                        $old_goodsservicereceipts_item->save();
                        ////


                        //amount Calculation
                         //amount calculation
                         $sub_total = $sub_total + ($old_item['taxable_amount'] * $old_goodsservicereceipts_item->qty);
                         $cgst_total = $cgst_total + $old_item['cgst_amount'];
                         //$sgst_utgst_total = $sgst_utgst_total + $old_item['sgst_utgst_amount'];
                         $igst_total = $igst_total + $old_item['igst_amount'];

                         // gst rate
                        if ($gst_rate == 0) {
                            $gst_rate = $old_goodsservicereceipts_item->cgst_rate + $old_goodsservicereceipts_item->sgst_utgst_rate + $old_goodsservicereceipts_item->igst_rate;
                        }

                        //insert and update model data
                        $goodsservicereceipts_id = $goodsservicereceipt->goods_service_receipt_id;
                        $goodsservicereceipts_item_id = $old_goodsservicereceipts_item->goods_service_receipts_item_id;

                        if (isset($old_item['batches'])) {
                            foreach ($old_item['batches'] as $old_bat) {
                                if ($old_bat['batch_no'] != '') {
                                 //  print_r($old_bat['goods_service_receipts_batches_id']);

                                    // $budget_data = CategoryBudget::updateOrCreate(

                                        if((isset($old_bat['goods_service_receipts_batches_id']) && $old_bat['goods_service_receipts_batches_id'] != '') && (isset($old_bat['goods_service_receipts_item_id']) && $old_bat['goods_service_receipts_item_id'] != '') ){
                                            $old_goodsservicereceiptsbatches = GoodsServiceReceiptsBatches::updateOrCreate(
                                                [
                                                    'goods_service_receipts_batches_id' => $old_bat['goods_service_receipts_batches_id'],
                                                    'goods_service_receipts_item_id'=>$old_bat['goods_service_receipts_item_id'],
                                                ],
                                                [
                                                    'goods_service_receipts_item_id' => $old_bat['goods_service_receipts_item_id'],
                                                    'batch_no' => $old_bat['batch_no'],
                                                    'manufacturing_date' => $old_bat['manufacturing_date'],
                                                    'expiry_date' => $old_bat['expiry_date'],
                                                ]
                                            );
                                        }else{
                                            $contine_old_batch = new GoodsServiceReceiptsBatches;
                                            $contine_old_batch->batch_no = $old_bat['batch_no'];
                                            $contine_old_batch->manufacturing_date = $old_bat['manufacturing_date'];
                                            $contine_old_batch->expiry_date = $old_bat['expiry_date'];
                                            $contine_old_batch->goods_service_receipts_item_id = $old_goodsservicereceipts_item->goods_service_receipts_item_id;
                                            $contine_old_batch->goods_service_receipt_id = $goodsservicereceipt->goods_service_receipt_id;
                                            $contine_old_batch->save();
                                        }
                                }
                            }
                        }



                    }   //end of loop of old items


                } //end of invoice data
                //Old Item Repeater Data

                //insert new repeater data
                if (isset($request->invoice_items)) {
                    $goodsservicereceipts_items = $request->invoice_items;
                    $purchase_order_id = $goodsservicereceipt->purchase_order_id;
                    foreach ($goodsservicereceipts_items as $item) {
                       if($item['item_name'] != ''){

                        $goodsservicereceipts_item = new GoodsServiceReceiptsItems();
                        $goodsservicereceipts_item->fill($item);
                        $goodsservicereceipts_item->purchase_order_id = $purchase_order_id;
                        $goodsservicereceipts_item->goods_service_receipt_id = $request->goods_service_receipt_id;
                        $goodsservicereceipts_item->save();


                        //amount calculation
                        $sub_total = $sub_total + ($item['taxable_amount'] * $goodsservicereceipts_item->qty);
                        $cgst_total = $cgst_total + $item['cgst_amount'];
                        $sgst_utgst_total = $sgst_utgst_total + $item['sgst_utgst_amount'];
                        $igst_total = $igst_total + $item['igst_amount'];

                        // gst rate
                        if ($gst_rate == 0) {
                            $gst_rate = $goodsservicereceipts_item->cgst_rate + $goodsservicereceipts_item->sgst_utgst_rate + $goodsservicereceipts_item->igst_rate;
                        }
                        //save batches
                        $goodsservicereceipts_id = $goodsservicereceipt->goods_service_receipt_id;
                        $goodsservicereceipts_item_id = $goodsservicereceipts_item->goods_service_receipts_item_id;

                        if (isset($item['batches'])) {
                            foreach ($item['batches'] as $batches) {
                                $goodsservicereceiptsbatches = new GoodsServiceReceiptsBatches;

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

                        //update old  data of repeater

                        //update old
                        $gst_grand_total = ($cgst_total + $sgst_utgst_total + $igst_total);
                        $gst_grand_total_rounded = round($gst_grand_total);
                        $grand_total = $sub_total + $gst_grand_total_rounded;
                        $rounded_off = round(($gst_grand_total_rounded - $gst_grand_total), 2);
                        $amount_in_words = amount_in_words($grand_total) . " Only";
                        $tax_in_words = amount_in_words($gst_grand_total_rounded) . " Only";

                        GoodsServiceReceipts::where('purchase_order_id', $goodsservicereceipt->purchase_order_id)->update(['sub_total' => $sub_total, 'cgst_total' => $cgst_total, 'sgst_utgst_total' => $sgst_utgst_total, 'igst_total' => $igst_total, 'gst_grand_total' => $gst_grand_total, 'grand_total' => $grand_total, 'amount_in_words' => $amount_in_words, 'gst_rate' => $gst_rate, 'tax_in_words' => $tax_in_words]);
                    } //end of if
                    } ////end of foreach
                }
            }
        }
       // dd($request->all());
    //    dd('out');
    // return back to edit page
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

   
        $goodsservicereceipts = GoodsServiceReceipts::findOrFail($id);


        if ($goodsservicereceipts->delete()) {
            Session::flash('message', 'GoodsServiceReceipts Deleted Successfully!');
            Session::flash('status', 'success');
        } else {
            Session::flash('message', 'Something went wrong!');
            Session::flash('status', 'error');
        }

        return redirect('admin/goodsservicereceipts');
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
