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
<style>
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: sans-serif;
  }
  .container {
    width: 1280px;
    margin: 50px auto;
    overflow-x: auto;
  }
  table,
  th,
  td {
    border: 1px solid #c3c3c3;
    border-collapse: collapse;
    padding: 15px;
  }
</style>

<div class="table-responsive printable mb-4">
<table style="width: 100%">
        <tr>
          <th colspan="20">
            <h3>Tax Invoice</h3>
          </th>
        </tr>

        <tr>
          <td colspan="10" rowspan="3" style="width: 50%">
            <img
              src="https://assets.materialup.com/uploads/1e01d352-7e77-4162-a6cc-3b4c4558ba2f/preview.jpg"
              width="200"
            />

            <h5><b>3P SAP Services</b></h5>
            Address : Kalyan<br />
            Tel : 55544422 Fax : 55577784<br />
            GSTIN :{{ $invoice->bill_to_gst_no }} <br />
            State : Maharashtra, State Code : 27<br />
          </td>
          <td colspan="5" style="width: 25%">
            Invoice No:<br />
            <b>{{$invoice->bill_no}}</b>
          </td>
          <td colspan="5" style="width: 25%">
            Date:<br />
            <b>{{ Carbon::parse($invoice->bill_date)->format('d-m-Y')}}</b>
          </td>
        </tr>

        <tr>
          <td colspan="10" style="width: 50%">
            Place Of Supply:<br />
            <b>{{ $invoice->place_of_supply }}</b>
          </td>
        </tr>

        <tr>
          <td colspan="10" style="width: 50%">
            Ship To<br />
            Self pick up
          </td>
        </tr>

        <tr>
          @if(!empty($bill_address))
          <td colspan="10">
            Bill To
            {{-- {{dd($party)}} --}}
            <h5>{{$party->bp_name}}</h5>
            Address : {{$bill_address->building_no_name. " ,".$bill_address->street_name ." ,". $bill_address->landmark
             ." ,". $bill_address->city." ".$bill_address->district." ".$bill_address->pin_code }}<br />
            Phone No: {{$contact->mobile_no}} <br />
            GSTIN:  {{ $invoice->bill_to_gst_no }}<br />
            State: {{$bill_address->state}}
          </td>
          @endif
          
          @if(!empty($ship_address))
          <td colspan="10">
            Ship To
            <h5>{{$party->bp_name}}</h5>
            Address : {{$ship_address->building_no_name. " ,".$ship_address->street_name ." ,". $ship_address->landmark
             ." ,". $ship_address->city." ".$ship_address->district." ".$ship_address->pin_code }}<br />
            Phone No: {{$contact->mobile_no}} <br />
            GSTIN:  {{ $invoice->bill_to_gst_no }}<br />
            State: {{$ship_address->state}}
          </td>
          @endif
        </tr>

        <tr>
          <td colspan="2">#</td>
          <td colspan="4">Description</td>
          <td colspan="4">SAC</td>
          <td colspan="3">Quantity</td>
          <td colspan="3">Rate</td>
          <td colspan="4">Total - INR</td>
        </tr>

        @php
        $total_rate=0;
        $total_inr=0;
        @endphp

        @if($invoice->invoice_items)
        @php $i=1; @endphp
        @foreach($invoice->invoice_items as $item)
        @php
        $total_rate += $item->taxable_amount ;
        $total_inr += $item->total ;
        @endphp
        <tr>
          <td colspan="2">{{ $i++ }}</td>
          <td colspan="4">{{ $item->item_name }}</td>
          <td colspan="4">{{ $item->hsn_sac }}</td>
          <td colspan="3">{{ $item->qty }}</td>
          <td colspan="3">{{$item->taxable_amount}}</td>
          <td colspan="4">{{ $item->total }}</td>

        </tr>
        @endforeach
        @endif

        <tr>
          <td colspan="1"></td>
          <td colspan="12">Total</td>
          <td colspan="3">{{$total_rate}}</td>
          <td colspan="4">{{ $total_inr}}</td>
        </tr>

        <tr>
          <td colspan="10" style="width: 50%">
            Invoice Amount In Words<br />
            <strong>{{ $invoice->amount_in_words }}</strong>
          </td>
          <td colspan="10" style="width: 50%">
            <b>Amounts:</b><br />
              Sub Total  <span style="float:right;">{{ $invoice->sub_total}}</span>
              <br>
              Round off  <span style="float:right;">{{ round(fmod($invoice->sub_total,1),2) }}</span>
          
          </td>
        </tr>

        <tr>
          <td colspan="10" style="width: 50%">
            Payment mode<br />
            <b> Cash</b>
          </td>

          <td colspan="10" style="width: 50%">
             <b>Total</b> <span style="float:right;">{{ $invoice->grand_total }}</span>
          </td>
        </tr>



        <tr>
          <td colspan="3" rowspan="2">SAC</td>
          <td colspan="3" rowspan="2">Taxable Value</td>
          <td colspan="4">CGST</td>
          <td colspan="4">SGST</td>
          <td colspan="4">IGST</td>
          <td colspan="2" rowspan="2">Total - INR</td>
        </tr>
 

        <tr>
          <td colspan="2">Rate</td>
          <td colspan="2">Amount</td>
          <td colspan="2">Rate</td>
          <td colspan="2">Amount</td>    
          <td colspan="2">Rate</td>
          <td colspan="2">Amount</td>
        </tr>

        @php 
        $taxable_amt=0;
        $csgst_amt=0;
        $sgst_amt=0;
        $igst_amt=0;
        $total_taxable_amt=0;
        $i=1;
       @endphp

        @if($invoice->invoice_items)
        @foreach($invoice->invoice_items as $item)

        @php
        $taxable_amt += $item->taxable_amount ;
        $csgst_amt += $item->cgst_amount ;
        $sgst_amt += $item->sgst_utgst_amount;
        $igst_amt += $item->igst_amount;
        $total_taxable_amt += $item->cgst_amount+$item->sgst_utgst_amount+$item->igst_amount;
        @endphp
        <tr>

          <td colspan="3">{{ $item->hsn_sac }}</td>
          <td colspan="3">{{ $item->taxable_amount }}</td>
          <td colspan="2">{{$cs_gst_percent}}</td>
          <td colspan="2">{{ $item->cgst_amount }}</td>
          <td colspan="2">{{$st_gst_percent}}</td>
          <td colspan="2">{{ $item->sgst_utgst_amount }}</td>
          <td colspan="2">{{$igst_percent}}</td>
          <td colspan="2">{{ $item->igst_amount }}</td>
          <td colspan="2">{{ $item->cgst_amount+$item->sgst_utgst_amount+$item->igst_amount }}</td>
    
        </tr>
        @endforeach
        @endif

        <tr>
          <td colspan="3">Total</td>
          <td colspan="3">{{ $taxable_amt }}</td>
          <td colspan="2"></td>
          <td colspan="2">{{ $csgst_amt }}</td>
          <td colspan="2"></td>
          <td colspan="2">{{ $sgst_amt }}</td>
          <td colspan="2"></td>
          <td colspan="2">{{ $igst_amt }}</td>
          <td colspan="2">{{ $total_taxable_amt }}</td>
        </tr>

        <tr>
          <td colspan="10" rowspan="3">
            <b>Terms and conditions :</b><br />
            <p>
              1. Cost Of Unseen Complications Arised During Servicing Will Be
              Born By The Customer
            </p>
            <p>2. Vehicle Parking, Driven At Owners Risk.</p>
            <p>3. KM is just mentioned for reference purpose.</p>
            <p>4. No Guarantee on Gas & Electronic Items.</p>
            <p>5. All Dispute Subject to Kalyan Jurisdiction.</p>
            <p>5.50% Advance To Be Paid For Job Of More Than Rs.2500/-.</p>
          </td>
        </tr>

        <tr>
          <td colspan="10">
            <b>Company's Bank details :</b><br />
            Bank Name: {{ $bank_details->bank_name??'' }}
            <br />
            Branch Name : {{ $bank_details->bank_branch??'' }}
            <br />
            Bank IFSC Code : {{ $bank_details->ifsc??'' }}
            <br />
            Account Number : {{ $bank_details->ac_number??'' }}
            <br />
            Account holder's Name : {{ $bank_details->acc_holdername??'' }}
          </td>
        </tr>

        <tr>
          <td colspan="10">
            For : 3P SAP Services
            <br /><br /><br />
            Authorised Signatory
          </td>
        </tr>
      </table>
    </div>

@if($download)
    <style>@page{body{color:#000;} table{width:100%;border:1px solid #000;border-collapse:collapse;} table tr td,table tr th{border:1px solid #000;text-align:left;font-size:12px;padding:4px;}table tr th p, table tr td p,table tr td h2,table tr th h2{margin-bottom:0px;padding-bottom:0px;padding-top:0px;margin-top:0px;}.invoice_items tr th, .invoice_items tr td{padding:4px;}.no-border,.no-border tr td,.no-border tr th{border:none !important;}</style>
@endif