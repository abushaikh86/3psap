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
use App\Models\backend\Proforma;
use App\Models\backend\ProformaItems;
use App\Models\backend\Party;
use App\Models\backend\Agent;
use App\Models\backend\Consignee;
use App\Models\backend\Financialyear;
use App\Models\backend\Job;
use App\Models\backend\BussinessPartnerMaster;
use App\Models\backend\Services;
use App\Models\backend\Company;
use App\Models\backend\Gst;
use App\Models\backend\Invoice;
use App\Models\backend\InvoiceItems;
use App\Models\backend\PurchaseOrderBatches;
use App\Models\backend\StorageLocations;
use DB;
use PDF;

class ProformaController extends Controller
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
    $GLOBALS['breadcrumb'] = [['name' => 'Proforma', 'route' => ""]];
    $proforma = Proforma::with('get_partyname')->get();
    // dd($proforma->toArray());

    return view('backend.proforma.index', compact('proforma'));
  }

  /**
   * Show the form for creating a new resource.
   *
   * @return Response
   */
  public function create()
  {
    $GLOBALS['breadcrumb'] = [['name' => 'Proforma', 'route' => "admin.proforma"], ['name' => 'Create', 'route' => ""]];

    $roles = Role::pluck('name', 'id')->all();
    $party = BussinessPartnerMaster::get();
    $gsts = Gst::pluck('gst_name', 'gst_id')->all();
    // $party = collect($party)->mapWithKeys(function ($item, $key) {
    //       return [$item['business_partner_id'] => $item['bp_name']];
    //   });
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
    $proforma_counter = 1;
    $fyear = "";
    if ($financial_year) {
      $proforma_counter = $financial_year->proforma_counter + 1;
      $fyear = $financial_year->year;
    }
    $storage_locations = StorageLocations::pluck('storage_location_name', 'storage_location_id')->all();
    $gst = Gst::pluck('gst_name', 'gst_id');
    return view('backend.proforma.create', compact('roles', 'gst', 'storage_locations', 'party', 'proforma_counter', 'fyear'));
  }


  public function show($id)
  {
    $GLOBALS['breadcrumb'] = [['name' => 'Proforma', 'route' => "admin.proforma"], ['name' => 'View', 'route' => ""]];
    $roles = Role::pluck('name', 'id')->all();
    $proforma = Proforma::where('proforma_id', $id)->with('proforma_items')->first();
    // dd($proforma->toArray());
    $party = BussinessPartnerMaster::where('business_partner_id', $proforma->party_id)->first();


    return view('backend.proforma.show', compact('roles', 'proforma', 'party'));
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
      // 'receipt_type' => 'required',
      'party_id' => 'required',
      'customer_ref_no' => 'required',
      'ship_from' => 'required',
      'posting_date' => 'required',
      'delivery_date' => 'required',
      'document_date' => 'required',
      'status' => 'required',
      'contact_person' => 'required',
    ]);
    $proforma = new Proforma();
    // $split_proforma = 0;
    // if($request->split_proforma == 'on'){
    //   $split_proforma = 1;
    // }
    $proforma->fill($request->all());
    // $proforma->split_proforma = $split_proforma;
    if ($proforma->save()) {
      $sub_total = $cgst_total = $sgst_utgst_total = $igst_total = $gst_grand_total = $grand_total = 0;
      $gst_rate = 0;
      // store proforma items
      // dd($request->invoice_items);
      if (isset($request->invoice_items)) {
        $proforma_items = $request->invoice_items;
        $proforma_id = $proforma->proforma_id;
        foreach ($proforma_items as $item) {
          $proforma_item = new ProformaItems;
          $proforma_item->fill($item);
          $proforma_item->proforma_id = $proforma_id;
          $proforma_item->save();

          //amount calculation
          $sub_total = $sub_total + ($item['taxable_amount'] * $proforma_item->qty);
          $cgst_total = $cgst_total + $item['cgst_amount'];
          $sgst_utgst_total = $sgst_utgst_total + $item['sgst_utgst_amount'];
          $igst_total = $igst_total + $item['igst_amount'];

          // gst rate
          // if($gst_rate == 0){
          //   $gst_rate = $proforma_item->cgst_rate+$proforma_item->sgst_utgst_rate+$proforma_item->igst_rate;
          // }
          $gst_rate = $proforma_item->gst_rate;
          if (!empty($gst_rate)) {
            $get_data = Gst::where('gst_id', $gst_rate)->first();
            $gst_rate = $get_data->gst_percent;
          }
          //save batches
          $goodsservicereceipts_id = $proforma_item->purchase_order_id;
          $purchase_order_item_id = $proforma_item->purchase_order_item_id;

          // dd($item);
          if (isset($item['batches'])) {
            foreach ($item['batches'] as $batches) {
              $purchaseOrderBatches = new PurchaseOrderBatches();

              $data = [
                'purchase_order_id' => $goodsservicereceipts_id,
                'purchase_order_item_id' => $purchase_order_item_id,
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
        $gst_grand_total_rounded = round($gst_grand_total);
        $grand_total = $sub_total + $gst_grand_total_rounded;
        if (!empty($request->discount)) {
          $discount = ($grand_total * $request->discount) / 100;
          $grand_total = $sub_total + $gst_grand_total_rounded - $discount;
        }

        $rounded_off = round(($gst_grand_total_rounded - $gst_grand_total), 2);
        $amount_in_words = amount_in_words($grand_total) . " Only";
        $tax_in_words = amount_in_words($gst_grand_total_rounded) . " Only";

        Proforma::where('proforma_id', $proforma->proforma_id)->update(['sub_total' => $sub_total, 'cgst_total' => $cgst_total, 'sgst_utgst_total' => $sgst_utgst_total, 'igst_total' => $igst_total, 'gst_grand_total' => $gst_grand_total, 'grand_total' => $grand_total, 'amount_in_words' => $amount_in_words, 'gst_rate' => $gst_rate, 'tax_in_words' => $tax_in_words]);
      }

      // set job counter
      $financial_year = Financialyear::where('active', 1)->first();
      $proforma_counter = 1;
      if ($financial_year) {
        $proforma_counter = $financial_year->proforma_counter + 1;
      }
      $bill_no = "RMS/" . $financial_year->year . "/" . $proforma_counter;

      $customer = BussinessPartnerMaster::where('business_partner_id', $proforma->party_id)->first();
      $party_name = "";
      if ($customer) {
        $party_name = $customer->name;
      }

      Proforma::where('proforma_id', $proforma->proforma_id)->update(['proforma_counter' => $proforma_counter, 'bill_no' => $bill_no, 'party_name' => $party_name]);
      $financial_year->proforma_counter = $proforma_counter;
      $financial_year->save();

      Session::flash('message', 'proforma Added Successfully!');
      Session::flash('status', 'success');
      return redirect('admin/proforma');
      //return redirect('admin/proforma');
    } else {
      Session::flash('message', 'Something went wrong!');
      Session::flash('status', 'error');
      return redirect('admin/proforma');
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
    $GLOBALS['breadcrumb'] = [['name' => 'Proforma', 'route' => "admin.proforma"], ['name' => 'Edit', 'route' => ""]];
    // $proforma = Proforma::findOrFail($id);
    $roles = Role::pluck('name', 'id')->all();
    $gsts = Gst::pluck('gst_name', 'gst_id')->all();
    $party = BussinessPartnerMaster::with('getpartnertype')->get();

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
    $fyear = "";
    if ($financial_year) {
      $fyear = $financial_year->year;
    }


    // $job = Job::get();
    // $job = collect($job)->mapWithKeys(function ($item, $key) {
    //   return [$item['job_id'] => $item['job_id']];
    // });
    $model = Proforma::with('proforma_items')->where('proforma_id', $id)->first();
    // dd($model->toArray());
    $storage_locations = StorageLocations::pluck('storage_location_name', 'storage_location_id')->all();
    $gst = Gst::pluck('gst_name', 'gst_id');


    // $bill_to = BussinessPartnerMaster::where('business_partner_id', $model->bill_to)->first();
    // $selected_party = BussinessPartnerMaster::where('business_partner_id', $model->party_id)->first();
    // $bill_to_state = "Andaman and Nicobar Islands";
    // $party_state = $selected_party->state;

    return view('backend.proforma.edit', compact('model', 'roles', 'gst', 'storage_locations', 'fyear', 'party'));
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
    $this->validate($request, [
      // 'receipt_type' => 'required',
      'party_id' => 'required',
      'customer_ref_no' => 'required',
      'ship_from' => 'required',
      'posting_date' => 'required',
      'delivery_date' => 'required',
      'document_date' => 'required',
      'status' => 'required',
      'contact_person' => 'required',
    ]);

    $invoice_items_array = array();
    $current_invoice_items = array();


    $id = $request->input('proforma_id');
    // dd($id);

    $proforma = Proforma::findOrFail($id);
    // $split_proforma = 0;
    // if ($request->split_proforma == 'on') {
    //   $split_proforma = 1;
    // }
    $proforma->fill($request->all());
    // $proforma->split_proforma = $split_proforma;
    if ($proforma->update()) {
      // delete existing items
      // proformaItems::where(['proforma_id' => $proforma->proforma_id])->delete();

      $sub_total = $cgst_total = $sgst_utgst_total = $igst_total = $gst_grand_total = $grand_total = 0;
      $gst_rate = 0;

      $old_invoice_items  = ProformaItems::where('proforma_id', $proforma->proforma_id)->get('invoice_item_id');
      //store ids in saparate array()

      // dd($old_invoice_items->toArray());
      if ($old_invoice_items && count($old_invoice_items) > 0) {
        foreach ($old_invoice_items as $inv_item) {
          // $invoice_items_array[] = $inv_item->goods_service_receipts_item_id;
          array_push($invoice_items_array, $inv_item->invoice_item_id);
        }
      }

      // store proforma items
      // dd($request->old_invoice_items);
      if (isset($request->old_invoice_items)) {
        $proforma_items = $request->old_invoice_items;
        $proforma_id = $proforma->proforma_id;
        foreach ($proforma_items as $item) {
          // $proforma_item = new ProformaItems();
          $proforma_item = ProformaItems::where('invoice_item_id', $item['invoice_item_id'])->first();

          $proforma_item->fill($item);
          $proforma_item->proforma_id = $proforma_id;
          $proforma_item->save();
          array_push($current_invoice_items, $proforma_item->invoice_item_id);

          //amount calculation
          $sub_total = $sub_total + ($item['taxable_amount'] * $proforma_item->qty);
          $cgst_total = $cgst_total + $item['cgst_amount'];
          $sgst_utgst_total = $sgst_utgst_total + $item['sgst_utgst_amount'];
          $igst_total = $igst_total + $item['igst_amount'];

          // gst rate
          if ($gst_rate == 0) {
            $gst_rate = $proforma_item->cgst_rate + $proforma_item->sgst_utgst_rate + $proforma_item->igst_rate;
          }

          //insert and update model data
          // $goodsservicereceipts_id = $goodsservicereceipt->goods_service_receipt_id;
          // $goodsservicereceipts_item_id = $old_goodsservicereceipts_item->goods_service_receipts_item_id;

          // if (isset($old_item['batches'])) {
          //   foreach ($old_item['batches'] as $old_bat) {
          //     if ($old_bat['batch_no'] != '') {


          //       if ((isset($old_bat['goods_service_receipts_batches_id']) && $old_bat['goods_service_receipts_batches_id'] != '') && (isset($old_bat['goods_service_receipts_item_id']) && $old_bat['goods_service_receipts_item_id'] != '')) {
          //         $old_goodsservicereceiptsbatches = GoodsServiceReceiptsBatches::updateOrCreate(
          //           [
          //             'goods_service_receipts_batches_id' => $old_bat['goods_service_receipts_batches_id'],
          //             'goods_service_receipts_item_id' => $old_bat['goods_service_receipts_item_id'],
          //           ],
          //           [
          //             'goods_service_receipts_item_id' => $old_bat['goods_service_receipts_item_id'],
          //             'batch_no' => $old_bat['batch_no'],
          //             'manufacturing_date' => $old_bat['manufacturing_date'],
          //             'expiry_date' => $old_bat['expiry_date'],
          //           ]
          //         );
          //       } else {
          //         $contine_old_batch = new GoodsServiceReceiptsBatches;
          //         $contine_old_batch->batch_no = $old_bat['batch_no'];
          //         $contine_old_batch->manufacturing_date = $old_bat['manufacturing_date'];
          //         $contine_old_batch->expiry_date = $old_bat['expiry_date'];
          //         $contine_old_batch->goods_service_receipts_item_id = $old_goodsservicereceipts_item->goods_service_receipts_item_id;
          //         $contine_old_batch->goods_service_receipt_id = $goodsservicereceipt->goods_service_receipt_id;
          //         $contine_old_batch->save();
          //       }
          //     }
          //   }
          // }

          $gst_grand_total = ($cgst_total + $sgst_utgst_total + $igst_total);
          $gst_grand_total_rounded = round($gst_grand_total);
          $grand_total = $sub_total + $gst_grand_total_rounded;
          $rounded_off = round(($gst_grand_total_rounded - $gst_grand_total), 2);
          $amount_in_words = amount_in_words($grand_total) . " Only";
          $tax_in_words = amount_in_words($gst_grand_total_rounded) . " Only";

          Proforma::where('proforma_id', $proforma->proforma_id)->update(['sub_total' => $sub_total, 'cgst_total' => $cgst_total, 'sgst_utgst_total' => $sgst_utgst_total, 'igst_total' => $igst_total, 'gst_grand_total' => $gst_grand_total, 'grand_total' => $grand_total, 'amount_in_words' => $amount_in_words, 'gst_rate' => $gst_rate, 'tax_in_words' => $tax_in_words]);
        }
        $invoice_difference = array_diff($invoice_items_array, $current_invoice_items);

        if ($invoice_difference && count($invoice_difference) > 0) {
          foreach ($invoice_difference as $inv_diff) {
            $delete_invoice = ProformaItems::where('invoice_item_id', $inv_diff)->first();
            if ($delete_invoice) {
              $delete_invoice->delete();
            }
          }
        }
      } else {
        foreach ($invoice_items_array as $inv_diff) {
          $delete_invoice = ProformaItems::where('invoice_item_id', $inv_diff)->first();
          if ($delete_invoice) {
            $delete_invoice->delete();
          }
        }
      }


      if (isset($request->invoice_items)) {
        $proforma_items = $request->invoice_items;
        $proforma_id = $proforma->proforma_id;
        foreach ($proforma_items as $item) {
          // dd($item);
          $proforma_item = new ProformaItems();
          // $purchaseorder_item = PurchaseOrderItems::where('purchase_order_item_id', $item['purchase_order_item_id'])->first();
          $proforma_item->fill($item);
          $proforma_item->proforma_id = $proforma_id;
          $proforma_item->save();


          //amount calculation
          $sub_total = $sub_total + ($item['taxable_amount'] * $proforma_item->qty);
          $cgst_total = $cgst_total + $item['cgst_amount'];
          $sgst_utgst_total = $sgst_utgst_total + $item['sgst_utgst_amount'];
          $igst_total = $igst_total + $item['igst_amount'];

          // gst rate
          if ($gst_rate == 0) {
            $gst_rate = $proforma_item->cgst_rate + $proforma_item->sgst_utgst_rate + $proforma_item->igst_rate;
          }
        }
        $gst_grand_total = ($cgst_total + $sgst_utgst_total + $igst_total);
        $gst_grand_total_rounded = round($gst_grand_total);
        $grand_total = $sub_total + $gst_grand_total_rounded;
        $rounded_off = round(($gst_grand_total_rounded - $gst_grand_total), 2);
        $amount_in_words = amount_in_words($grand_total) . " Only";
        $tax_in_words = amount_in_words($gst_grand_total_rounded) . " Only";


        Proforma::where('proforma_id', $proforma->proforma_id)->update(['sub_total' => $sub_total, 'cgst_total' => $cgst_total, 'sgst_utgst_total' => $sgst_utgst_total, 'igst_total' => $igst_total, 'gst_grand_total' => $gst_grand_total, 'grand_total' => $grand_total, 'amount_in_words' => $amount_in_words, 'gst_rate' => $gst_rate, 'tax_in_words' => $tax_in_words]);
      }


      $customer = BussinessPartnerMaster::where('business_partner_id', $proforma->party_id)->first();
      $party_name = "";
      if ($customer) {
        $party_name = $customer->name;
      }

      Proforma::where('proforma_id', $proforma->proforma_id)->update(['party_name' => $party_name]);

      Session::flash('message', 'proforma Updated Successfully!');
      Session::flash('status', 'success');
      return redirect('admin/proforma');
    } else {
      Session::flash('message', 'Something went wrong!');
      Session::flash('status', 'error');
      return redirect('admin/proforma');
    }
  }

  public function createarinvoice($id)
  {
    // dd($id);
      $roles = Role::pluck('name', 'id')->all();
      $preceipt = Proforma::where('proforma_id', $id)->first();
      // dd($purchaseorder->toArray());
      $arinvoice = Invoice::where('proforma_id', $id)->first();
      // dd($goods_receipt_exist->toArray());
      if (!isset($arinvoice)) {
          $goods_receipt = new Invoice();
          //$party = BussinessPartnerMaster::where('business_partner_id',$purchaseorder->party_id)->first();
          $properties = $preceipt->attributesToArray();
          // dd($properties)->toArray();
          // unset($properties['purchase_order_id']);//by mahesh for copy data
          $goods_receipt->due_date = $preceipt->delivery_date;
          $goods_receipt->fill($properties);
          if ($goods_receipt->save()) {
              $purchaseorder_items = ProformaItems::where('proforma_id', $id)->get();
              if ($purchaseorder_items) {
                  foreach ($purchaseorder_items as $item) {
                      $goods_receipt_items = new InvoiceItems();
                      //$party = BussinessPartnerMaster::where('business_partner_id',$purchaseorder->party_id)->first();
                      $properties_item = $item->attributesToArray();
                      unset($properties_item['invoice_item_id']);
                      $goods_receipt_items->fill($properties_item);
                      // dd($goods_receipt_items->toArray());
                      // dd($goods_receipt_items->gst_rate,$goods_receipt_items->purchase_order_id);
                      $goods_receipt_items->invoice_id = $goods_receipt->invoice_id;
                      $inserted = $goods_receipt_items->save();

                      if ($inserted) {
                          $gst_rate = $goods_receipt_items->gst_rate;
                          if (!empty($gst_rate)) {
                              $get_data = Gst::where('gst_id', $gst_rate)->first();
                              $gst_rate = $get_data->gst_percent;
                          }
                          Invoice::where('proforma_id', $goods_receipt_items->proforma_id)->update(['gst_rate' => $gst_rate]);
                      }
                  }
              }
          }


          Session::flash('message', 'A/R Invoice Created Successfully!');
          Session::flash('status', 'success');
          //   return redirect('admin/purchaseorder');
          return redirect()->route('admin.invoice.edit', [$goods_receipt->invoice_id]);
      } else {
          Session::flash('error', 'A/R Invoice already exists!');
          Session::flash('status', 'error');
          return redirect('admin/proforma');
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
    // dd($id);
    $proforma = Proforma::findOrFail($id);

    if ($proforma->delete()) {
      Session::flash('message', 'proforma Deleted Successfully!');
      Session::flash('status', 'success');
    } else {
      Session::flash('message', 'Something went wrong!');
      Session::flash('status', 'error');
    }

    return redirect('admin/proforma');
  }


  public function amountinwords($number = 0)
  {
    return amount_in_words($number);
  }



  public function partydetails($partyid)
  {

    $party_detail = "";
    $bill_to_state = "Andaman and Nicobar Islands";
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
    $data = Services::select(DB::raw("service_name as name"), "hsn_sac", "taxable_amount", "gst_percent")->where("service_name", "LIKE", "%" . $query . "%")->get();
    //var_dump($data);exit;
    return response()->json($data);
  }


  public function download($id)
  {
    $roles = Role::pluck('name', 'id')->all();
    $proforma = Proforma::where('proforma_id', $id)->with('proforma_items')->first();

    $party = Party::where('business_partner_id', $proforma->party_id)->first();

    $filename = $proforma->bill_no;
    if ($proforma->split_proforma == 1) {
      $pdf = PDF::loadView('backend.proforma.proforma_format_split', ['roles' => $roles, 'proforma' => $proforma, 'party' => $party, 'download' => true]);
    } else {
      $pdf = PDF::loadView('backend.proforma.proforma_format', ['roles' => $roles, 'proforma' => $proforma, 'party' => $party, 'download' => true]);
    }

    return $pdf->stream($filename . '.pdf');
  }
}
