@php
use Carbon\Carbon;
@endphp
@php
  if($invoice->igst_total <= 0){
    $cs_gst_percent = "@ ".($invoice->gst_rate/2)." %";
    $st_gst_percent = "@ ".($invoice->gst_rate/2)." %";
    $igst_percent='';
  }else{
    $igst_percent = "@ ".($invoice->gst_rate)." %";
    $cs_gst_percent='';
    $st_gst_percent='';
  }
@endphp
<div class="table-responsive printable mb-4">
        <table class="table table-bordered table-striped table-hover" border="1">
            <thead>
              <tr>
                <td colspan="7">
                  <table width="100%" class="no-border">
                  <tr>
                  <td width="80">
                  <img class="img-fluid for-light" src="{{ asset('public/assets/images/logo/logo.JPG')}}" width="100" alt="">
                  </td>
                  <td>
                  <h2 class="text-uppercase" style="text-transform: uppercase;">3P SAP Services</h2>
                    <p class="mb-0">Kalyan</p>
                    <p>Tel : 55544422 Fax : 55577784</p>
                  </td>
                  </tr>
                  </table>
                </td>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td colspan="7" style="text-align:center;font-weight:bold;font-size:20px;">TAX INVOICE</td>
              </tr>
              <tr>
                <td colspan="2">Invoice No</td>
                <td colspan="2">Invoice Date</td>
                <td colspan="3">GSTIN</td>
              </tr>
              <tr>
                <td colspan="2">{{$invoice->bill_no}}</td>
                <td colspan="2">{{ Carbon::parse($invoice->bill_date)->format('d-m-Y')}}</td>
                <td colspan="3">{{ $invoice->bill_to_gst_no }}</td>
              </tr>

              <tr>
                <td  colspan="7">
                  {{-- <p class="mb-0"><strong>{{ $party->name }}</strong></p> --}}
                  {{-- <p class="mb-0">{!! nl2br($party->address) !!}</p> --}}
                  <p class="mb-0">POS:Code & State: {{ $party->pin_code ." ". $party->state }}</p>
                </td>
              </tr>

              <tr>
                <td colspan="3">GSTIN/UIN: {{ $invoice->bill_to_gst_no }}</td>
                <td colspan="2">Place Of Supply</td>
                <td colspan="2">{{ $invoice->place_of_supply }}</td>
              </tr>
              <tr>
              <th width="20">Sr.No</th>
              <th width="40%" colspan="2">Description</th>
              <th>SAC</th>
              <th>Quantity</th>
              <th>Rate</th>
              <th>Total - INR</th>
              </tr>
              @if($invoice->invoice_items)
              @php $i=1; @endphp
              @foreach($invoice->invoice_items as $item)
                <tr>
                  <td>{{ $i++ }}</td>
                  <td colspan="2">{{ $item->item_name }}</td>
                  <td>{{ $item->hsn_sac }}</td>
                  <td>{{ $item->qty }}</td>
                  <td>{{ $item->taxable_amount }}</td>
                  <td>{{ $item->total }}</td>
                </tr>
              @endforeach
              @endif
              <tr>
                <td colspan="6" style="text-align: right;">Total</td>
                <td>{{ $invoice->sub_total }}</td>
              </tr>
              <tr>
              <td colspan="6" style="text-align: right;">CGST {{$cs_gst_percent}}  </td>
              <td>{{ $invoice->cgst_total }}</td>
            </tr>
            <tr>
              <td colspan="6" style="text-align: right;">SGST {{$st_gst_percent}}</td>
              <td>{{ $invoice->sgst_utgst_total }}</td>
            </tr>
            <tr>
              <td colspan="6" style="text-align: right;">IGST {{$igst_percent}}</td>
              <td>{{ $invoice->igst_total }}</td>
            </tr>
            <tr>
              <td colspan="6" style="text-align: right;">Grand Total</td>
              <td>{{ $invoice->grand_total }}</td>
            </tr>
            <tr>
              <td colspan="7" style="font-weight: bold;">Amount Chargeable In Words - {{ $invoice->amount_in_words }}</td>
            </tr>
            <tr>
              <th width="20">Sr.No</th>
              <th>SAC</th>
              <th>Taxable Value</th>
              <th>CGST</th>
              <th>SGST</th>
              <th>IGST</th>
              <th width="40">Total - INR</th>
              </tr>
              @if($invoice->invoice_items)
              @php $i=1; @endphp
              @foreach($invoice->invoice_items as $item)
                <tr>
                  <td>{{ $i++ }}</td>
                  <td>{{ $item->hsn_sac }}</td>
                  <td>{{ $item->taxable_amount }}</td>
                  <td>{{ $item->cgst_amount }}</td>
                  <td>{{ $item->sgst_utgst_amount }}</td>
                  <td>{{ $item->igst_amount }}</td>
                  <td width="80">{{ $item->cgst_amount+$item->sgst_utgst_amount+$item->igst_amount }}</td>
                </tr>
              @endforeach
              @endif
              <tr>
              <td colspan="7" style="font-weight: bold;">Tax Amount In Words - {{ $invoice->tax_in_words }}</td>
              </tr>
              <tr>
              <td colspan="4" rowspan="2">
                <p>Bank Details:-</p>
                <p>A/c Name :-{{ $bank_details->acc_holdername }}</p>
                <p>A/c No- {{ $bank_details->ac_number }}</p>
                <p>Bank Name:- {{ $bank_details->bank_name }}</p>
                <p>RTGS/NEFT IFSC Code:- {{ $bank_details->ifsc }}</p>
                <p>Branch: {{ $bank_details->bank_branch }}</p>
              </td>
              <td colspan="3" style="text-align:center;">For Raj Marine Service Pvt. Ltd.</td>
            </tr>
            <tr>
              <td colspan="3" style="vertical-align: bottom;text-align: center;padding-top:100px;">Authorised Signatory</td>
            </tr>
            </tbody>
        </table>
    </div>

@if($download)
    <style>@page{body{color:#000;} table{width:100%;border:1px solid #000;border-collapse:collapse;} table tr td,table tr th{border:1px solid #000;text-align:left;font-size:12px;padding:4px;}table tr th p, table tr td p,table tr td h2,table tr th h2{margin-bottom:0px;padding-bottom:0px;padding-top:0px;margin-top:0px;}.invoice_items tr th, .invoice_items tr td{padding:4px;}.no-border,.no-border tr td,.no-border tr th{border:none !important;}</style>
@endif