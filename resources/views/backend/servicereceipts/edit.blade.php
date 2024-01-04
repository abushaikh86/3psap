@extends('backend.layouts.app')
@section('title', 'Update Invoice')

@section('content')
<div class="app-content content">
<div class="content-overlay"></div>
<div class="content-wrapper">
<section id="multiple-column-form">
<div class="row match-height">
<div class="col-sm-12">
<div class="card">
<div class="card-content">
<div class="card-body">
<div class="content-header row">
<div class="col-sm-12 text-sm-end mb-1">
          <a href="{{ route('admin.invoice') }}" class="btn btn-outline-secondary float-right"><i class="bx bx-arrow-back"></i><span class="align-middle ml-25">Back</span></a>
          </div>
</div>





@include('backend.includes.errors')
  {{ Form::open(array('url' => 'admin/invoice/update')) }}
  {!! Form::model($invoice, [
    'method' => 'POST',
    'url' => ['admin/invoice/update'],
    'class' => 'form'
  ]) !!}
  {{ Form::hidden('financial_year', $fyear) }}
  {{ Form::hidden('invoice_id', $invoice->invoice_id) }}
  {{ Form::hidden('bill_to_state', $bill_to_state,['class'=>'bill_to_state']) }}
  {{ Form::hidden('party_state', $party_state,['class'=>'party_state']) }}
  {{ Form::hidden('bill_to_gst_no', $invoice->bill_to_gst_no,['class'=>'bill_to_gst_no']) }}
    <div class="form-body">
      <div class="row">
      <div class="col-sm-4">
        {{ Form::label('bill_no', 'Bill No') }}
        <h4>{{ $invoice->bill_no }}</h4>
      </div>
      <div class="col-md-4 col-sm-12">
              <div class="form-group">
                {{ Form::label('bill_date', 'Invoice Date *') }}
                {{ Form::text('bill_date', date('Y-m-d'), ['class' => 'datepicker-here form-control digits', 'placeholder' => 'Invoice Date', 'required' => true,'readonly'=>true]) }}
              </div>
            </div>
            <div class="col-md-4 col-sm-12 d-none">
              <div class="form-group">
                {{ Form::label('company_gstin', 'GSTIN *') }}
                {{ Form::text('company_gstin', null, ['class' => 'form-control', 'placeholder' => 'GSTIN']) }}
              </div>
            </div>

            <div class="col-md-3 col-sm-12">
              <div class="form-group">
                {{ Form::label('job_id', 'Job *') }}
                {{ Form::select('job_id',$job,$placeholder->party_id, array('class' => 'form-control select2','id'=>'job_id','placeholder'=>'Select Job','required'=>true)) }}
              </div>
            </div>
            <!-- <div class="col-md-4 col-sm-12 mt-4">
              <div class="form-group">
                {{ Form::checkbox('split_invoice',null) }}
                {{ Form::label('split_invoice', 'Split Invoice') }}
              </div>
            </div> -->
                  <div class="col-sm-12">
      <hr>
      </div>
      </div>
      <div class="row">
      <div class="col-sm-6">
        <div class="row">
            <div class="col-sm-6">
            <div class="col-md-12 col-sm-12">
              <div class="form-group">
                {{ Form::label('party_id', 'Bill To *') }}
                {{ Form::select('party_id',$party,$invoice->party_id, array('class' => 'form-control select2','id'=>'bill_to','placeholder'=>'Select Bill To','required'=>true)) }}
              </div>
            </div>
            <div class="col-md-12 col-sm-12">
              <div class="form-group">
                {{ Form::label('bill_to_gst_no', 'GSTIN/UIN') }}
                {{ Form::text('bill_to_gst_no', null, ['class' => 'form-control bill_to_gst_no', 'placeholder' => 'GSTIN/UIN',]) }}
              </div>
            </div>
            </div>
            <div class="col-sm-6">
            <div class="col-sm-12">
              <h5>Bill Details</h5>
              <p class="party">{!! nl2br($invoice->party_details) !!}</p>
              <textarea name="party_details" class="party_input d-none">{{ $invoice->party_details }}</textarea>
            </div>
            </div>

            </div>
      </div>
      <div class="col-sm-6">
      <div class="row">
            <div class="col-md-6 col-sm-12">
              <div class="form-group">
                {{ Form::label('vessel', 'Vessel') }}
                {{ Form::text('vessel', null, ['class' => 'form-control', 'placeholder' => 'Vessel']) }}
              </div>
            </div>

            <div class="col-md-6 col-sm-12">
              <div class="form-group">
                {{ Form::label('port', 'Port') }}
                {{ Form::text('port', null, ['class' => 'form-control', 'placeholder' => 'Port']) }}
              </div>
            </div>

            <div class="col-md-6 col-sm-12">
              <div class="form-group">
                {{ Form::label('date_of_arrival', 'Date Of Arrival') }}
                {{ Form::text('date_of_arrival', date('Y-m-d'), ['class' => 'form-control datepicker-here', 'placeholder' => 'Date Of Arrival','readonly'=>true]) }}
              </div>
            </div>

            <div class="col-md-6 col-sm-12">
              <div class="form-group">
                {{ Form::label('date_of_departure', 'Date Of Departure') }}
                {{ Form::text('date_of_departure', date('Y-m-d'), ['class' => 'form-control datepicker-here', 'placeholder' => 'Date Of Departure','readonly'=>true]) }}
              </div>
            </div>

            <div class="col-md-12 col-sm-12">
              <div class="form-group">
                {{ Form::label('place_of_supply', 'Place Of Supply') }}
                {{ Form::text('place_of_supply', null, ['class' => 'form-control', 'placeholder' => 'Place Of Supply']) }}
              </div>
            </div>

            </div>
          </div>
          </div>
          <div class="row">

      <div class="col-sm-12">
      <hr>
      </div>
      <div class="col-sm-12">
<section id="form-repeater-wrapper">
<!-- form default repeater -->
<div class="row">
<div class="col-12">
    <h5 class="card-title">
      Particulars Detail
    </h5>
<div class="form repeater-default">


@if($invoice->invoice_items)
@php $i=0; @endphp
<div data-repeater-list="invoice_items">
@foreach($invoice->invoice_items as $item)
  <div data-repeater-item>
      <div class="row justify-content-between">
          <div class="col-md-3 col-sm-12 pr-0">
              <div class="form-group">
                {{ Form::label('item_name', 'Description') }}
                {{ Form::text('item_name', $item->item_name, ['class' => 'form-control item_name typeahead', 'placeholder' => 'Description', 'required' => true,'autocomplete'=>'off']) }}
              </div>
          </div>
          <div class="col-md-2 col-sm-12 pl-0 pr-0">
              <div class="form-group">
                {{ Form::label('hsn_sac', 'HSN/SAC') }}
                {{ Form::text('hsn_sac', $item->hsn_sac, ['class' => 'form-control', 'placeholder' => 'HSN/SAC']) }}
              </div>
          </div>
          <div class="col-md-1 col-sm-12 pl-0 pr-0">
              <div class="form-group">
                {{ Form::label('qty', 'Quantity') }}
                {{ Form::text('qty', $item->qty, ['class' => 'form-control qty', 'placeholder' => 'Quantity','onchange'=>'calculategst(this)']) }}
              </div>
          </div>
          <div class="col-md-1 col-sm-12 pl-0 pr-0">
              <div class="form-group">
                {{ Form::label('taxable_amount', 'Rate') }}
                {{ Form::text('taxable_amount', $item->taxable_amount, ['class' => 'form-control taxable_amount', 'placeholder' => 'Rate','onchange'=>'calculategst(this)']) }}
              </div>
          </div>

          <div class="col-md-1 col-sm-12 pl-0 pr-0">
              <div class="form-group">
                {{ Form::label('total', 'Total INR') }}
                {{ Form::text('total', $item->total, ['class' => 'form-control total', 'placeholder' => 'Total','onchange'=>'calculategst(this)']) }}
              </div>
          </div>

          <div class="col-md-1 col-sm-12 pl-0 pr-0">
              <div class="form-group">
                {{ Form::label('cgst_rate', 'CGST',['class'=>'custom-label']) }}
                {{ Form::text('cgst_rate', $item->cgst_rate, ['class' => 'form-control custom-rate', 'placeholder' => '%','onchange'=>'calculategst(this)']) }}
                {{ Form::text('cgst_amount', $item->cgst_amount, ['class' => 'form-control custom-amount cgst_amount', 'placeholder' => 'Amt.','onchange'=>'calculategst(this)']) }}
              </div>
          </div>
          <div class="col-md-1 col-sm-12 pl-0 pr-0">
              <div class="form-group">
                {{ Form::label('sgst_utgst_rate', 'SGST',['class'=>'custom-label']) }}
                {{ Form::text('sgst_utgst_rate', $item->sgst_utgst_rate, ['class' => 'form-control custom-rate', 'placeholder' => '%','onchange'=>'calculategst(this)']) }}
                {{ Form::text('sgst_utgst_amount', $item->sgst_utgst_amount, ['class' => 'form-control custom-amount sgst_utgst_amount', 'placeholder' => 'Amt.','onchange'=>'calculategst(this)']) }}
              </div>
          </div>
          <div class="col-md-1 col-sm-12 pl-0 pr-0">
              <div class="form-group">
                {{ Form::label('igst_rate', 'IGST',['class'=>'custom-label']) }}
                {{ Form::text('igst_rate', $item->igst_rate, ['class' => 'form-control custom-rate', 'placeholder' => '%','onchange'=>'calculategst(this)']) }}
                {{ Form::text('igst_amount', $item->igst_amount, ['class' => 'form-control custom-amount igst_amount', 'placeholder' => 'Amt.','onchange'=>'calculategst(this)']) }}
              </div>
          </div>

          <div class="col-md-1 col-sm-12 d-flex align-items-center pl-0 pr-0">
              <button class="btn btn-danger text-nowrap px-1 custom-delete" data-repeater-delete type="button"> <i class="bx bx-x"></i>Delete</button>
          </div>
      </div>
      <hr>
  </div>
@php $i++ @endphp
@endforeach
</div>
@else

  <div data-repeater-list="invoice_items">
  <div data-repeater-item>
      <div class="row justify-content-between">
          <div class="col-md-3 col-sm-12 pr-0">
              <div class="form-group">
                {{ Form::label('item_name', 'Description') }}
                {{ Form::text('item_name', null, ['class' => 'form-control item_name typeahead', 'placeholder' => 'Description', 'required' => true,'autocomplete'=>'off']) }}
              </div>
          </div>
          <div class="col-md-2 col-sm-12 pl-0 pr-0">
              <div class="form-group">
                {{ Form::label('hsn_sac', 'HSN/SAC') }}
                {{ Form::text('hsn_sac', null, ['class' => 'form-control', 'placeholder' => 'HSN/SAC']) }}
              </div>
          </div>
          <div class="col-md-1 col-sm-12 pl-0 pr-0">
              <div class="form-group">
                {{ Form::label('qty', 'Quantity') }}
                {{ Form::text('qty', null, ['class' => 'form-control qty', 'placeholder' => 'Quantity','onchange'=>'calculategst(this)']) }}
              </div>
          </div>
          <div class="col-md-1 col-sm-12 pl-0 pr-0">
              <div class="form-group">
                {{ Form::label('taxable_amount', 'Rate') }}
                {{ Form::text('taxable_amount', null, ['class' => 'form-control taxable_amount', 'placeholder' => 'Rate','onchange'=>'calculategst(this)']) }}
              </div>
          </div>

          <div class="col-md-1 col-sm-12 pl-0 pr-0">
              <div class="form-group">
                {{ Form::label('total', 'Total INR') }}
                {{ Form::text('total', null, ['class' => 'form-control total', 'placeholder' => 'Total','onchange'=>'calculategst(this)']) }}
              </div>
          </div>

          <div class="col-md-1 col-sm-12 pl-0 pr-0">
              <div class="form-group">
                {{ Form::label('cgst_rate', 'CGST',['class'=>'custom-label']) }}
                {{ Form::text('cgst_rate', null, ['class' => 'form-control custom-rate', 'placeholder' => '%','onchange'=>'calculategst(this)']) }}
                {{ Form::text('cgst_amount', null, ['class' => 'form-control custom-amount cgst_amount', 'placeholder' => 'Amt.','onchange'=>'calculategst(this)']) }}
              </div>
          </div>
          <div class="col-md-1 col-sm-12 pl-0 pr-0">
              <div class="form-group">
                {{ Form::label('sgst_utgst_rate', 'SGST',['class'=>'custom-label']) }}
                {{ Form::text('sgst_utgst_rate', null, ['class' => 'form-control custom-rate', 'placeholder' => '%','onchange'=>'calculategst(this)']) }}
                {{ Form::text('sgst_utgst_amount', null, ['class' => 'form-control custom-amount sgst_utgst_amount', 'placeholder' => 'Amt.','onchange'=>'calculategst(this)']) }}
              </div>
          </div>
          <div class="col-md-1 col-sm-12 pl-0 pr-0">
              <div class="form-group">
                {{ Form::label('igst_rate', 'IGST',['class'=>'custom-label']) }}
                {{ Form::text('igst_rate', null, ['class' => 'form-control custom-rate', 'placeholder' => '%','onchange'=>'calculategst(this)']) }}
                {{ Form::text('igst_amount', null, ['class' => 'form-control custom-amount igst_amount', 'placeholder' => 'Amt.','onchange'=>'calculategst(this)']) }}
              </div>
          </div>

          <div class="col-md-1 col-sm-12 d-flex align-items-center pl-0 pr-0">
              <button class="btn btn-danger text-nowrap px-1 custom-delete" data-repeater-delete type="button"> <i class="bx bx-x"></i>Delete</button>
          </div>
      </div>
      <hr>
  </div>
</div>

@endif


<div class="form-group">
  <div class="col p-0">
      <button class="btn btn-primary" data-repeater-create type="button"><i class="bx bx-plus"></i>
          Add
      </button>
  </div>
</div>
</div>
</div>
</div>
<!--/ form default repeater -->
</section>
      </div>

      <div class="col-md-2 col-sm-12">
        <p>Sub Total <strong><span class="sub_total">{{ $invoice->sub_total }}</span></strong></p>
      </div>
      <div class="col-md-2 col-sm-12">
        <p>CGST Total: <strong><span class="cgst_total">{{ $invoice->cgst_total }}</span></strong></p>
      </div>
      <div class="col-md-2 col-sm-12">
        <p>SGST Total: <strong><span class="sgst_utgst_total">{{ $invoice->sgst_utgst_total }}</span></strong></p>
      </div>
      <div class="col-md-2 col-sm-12">
        <p>IGST Total: <strong><span class="igst_total">{{ $invoice->igst_total }}</span></strong></p>
      </div>
      <div class="col-md-2 col-sm-12">
        <p>GST Total: <strong><span class="gst_total">{{ $invoice->gst_grand_total }}</span></strong></p>
      </div>
      <div class="col-md-2 col-sm-12">
        <p>Total Amount: <strong><span class="total_amount">{{ $invoice->grand_total }}</span></strong></p>
      </div>
      <div class="col-md-12 col-sm-12">
        <p>Total Amount In Words: <strong><span class="total_amount_words">{{ $invoice->amount_in_words }}</span></strong></p>
      </div>

        <div class="col-sm-12">
          <hr>
        </div>
        <div class="col-sm-12 d-flex justify-content-center">
          {{ Form::submit('Save', array('class' => 'btn btn-primary mr-1 mb-1')) }}
          <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
        </div>
      </div>
    </div>
  {{ Form::close() }}
</div>
</div>
</div>
</div>
</div>
</section>
</div>
</div>

<script>
  $(document).ready(function(){
    $("#bill_to").change(function(){
      var customer_id = $(this).val();
      if(customer_id != ''){
        $.get(APP_URL+'/admin/invoice/partydetails/'+customer_id,{}, function(response){
            var customer_details = $.parseJSON(response);
            $(".party").html(customer_details.party_detail);

            $(".party_input").val(customer_details.party_detail);
            $(".bill_to_state").val(customer_details.bill_to_state);
            $(".party_state").val(customer_details.party_state);
            $(".bill_to_gst_no").val(customer_details.bill_to_gst_no);
        });
      }else{
        $(".party").html("");

        $(".party_input").val('');
        $(".bill_to_state").val('');
        $(".party_state").val('');
      }
    })
  });
</script>

@include('backend.invoice.autocomplete_typeahead_script')

@endsection
