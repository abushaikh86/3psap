@extends('backend.layouts.app')
@section('title', 'Create Invoice')

@section('content')
<div class="content-header row">
  <div class="content-header-left col-md-6 col-12 mb-2">
    <h3 class="content-header-title">Invoice</h3>
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="{{ route('admin.dashboard')}}">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Create Invoice</li>
        </ol>
      </div>
    </div>
  </div>
  <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
    <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
      <div class="btn-group" role="group">

      <a href="{{ route('admin.invoice') }}" class="btn btn-outline-secondary float-right"><i class="bx bx-arrow-back"></i><span class="align-middle ml-25">Back</span></a>

      </div>
    </div>
  </div>
</div>
<section id="multiple-column-form">
<div class="row match-height">
<div class="col-sm-12">
<div class="card">
<div class="card-content">
<div class="card-body">
<div class="content-header row">
</div>
  @include('backend.includes.errors')
  {{ Form::open(array('url' => 'admin/invoice/store')) }}
  {{ Form::hidden('financial_year', $fyear) }}
  {{ Form::hidden('bill_to_state', '',['class'=>'bill_to_state']) }}
  {{ Form::hidden('party_state', '',['class'=>'party_state']) }}
  {{ Form::hidden('bill_to_gst_no', '',['class'=>'bill_to_gst_no']) }}
    <div class="form-body">
      <div class="row">
      <div class="col-sm-4">
        {{ Form::label('bill_no', 'Invoice No') }}
        <h4>3PSAP/{{$fyear}}/{{ $invoice_counter }}</h4>
      </div>
      <div class="col-md-4 col-sm-12">
              <div class="form-group">
                {{ Form::label('bill_date', 'Invoice Date *') }}
                {{ Form::text('bill_date', date('Y-m-d'), ['class' => 'datepicker-here form-control digits', 'placeholder' => 'Invoice Date', 'required' => true,'readonly'=>true]) }}
              </div>
            </div>
            <div class="col-md-3 col-sm-12 d-none">
              <div class="form-group">
                {{ Form::label('company_gstin', 'GSTIN *') }}
                {{ Form::text('company_gstin', null, ['class' => 'form-control', 'placeholder' => 'GSTIN']) }}
              </div>
            </div>
            <div class="col-md-4 col-sm-12">
              <div class="form-group">
                {{ Form::label('po_number', 'PO Number *') }}
                {{ Form::text('po_number', null, ['class' => 'form-control', 'placeholder' => 'PO Number']) }}
              </div>
            </div>


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
                {{ Form::label('party_id', 'Customer *') }}
                {{ Form::select('party_id',$party,'', array('class' => 'form-control select2','id'=>'bill_to','placeholder'=>'Customer','required'=>true)) }}
              </div>
            </div>

            </div>
            <div class="col-sm-6">
            <div class="col-sm-12">
              <h5>Bill Details</h5>
              <p class="party">No Details To Display</p>
              <textarea name="party_details" class="party_input d-none"></textarea>
            </div>
            </div>




            <div class="col-sm-6">
                <div class="col-md-12 col-sm-12">
                    <div class="form-group">
                        {{ Form::label('bill_to_gst_no', 'Vendor Reference Number') }}
                        {{ Form::text('vrn', '', ['class' => 'form-control bill_to_gst_no', 'placeholder' => 'Vendor Reference Number']) }}
                    </div>
                </div>
            </div>

            <div class="col-sm-6">
                <div class="col-md-12 col-sm-12">
                  <div class="form-group">
                    {{ Form::label('party_id', 'Ship to *') }}
                    {{ Form::select('party_id',$party,'', array('class' => 'form-control select2','id'=>'bill_to','placeholder'=>'Ship to','required'=>true)) }}
                  </div>
                </div>

                </div>

            <div class="col-sm-6">
                <div class="col-md-12 col-sm-12">
                    <div class="form-group">
                        {{ Form::label('bill_to_gst_no', 'Delivery Date') }}
                        {{ Form::text('bill_to_gst_no', '', ['class' => 'form-control bill_to_gst_no', 'placeholder' => 'Delivery Date']) }}
                    </div>
                </div>
            </div>

            <div class="col-sm-6">
                <div class="col-md-6 col-sm-12">
                    <div class="form-group">
                        {{ Form::label('bill_to_gst_no', 'Document Date') }}
                        {{ Form::text('bill_to_gst_no', '', ['class' => 'form-control bill_to_gst_no', 'placeholder' => 'Document Date']) }}
                    </div>
                </div>
            </div>


            </div>
      </div>
      <div class="col-sm-6">
      <div class="row">

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
<div data-repeater-list="invoice_items">
  <div data-repeater-item>
      <div class="row justify-content-between">
          <div class="col-md-3 col-sm-12 pr-0">
              <div class="form-group">
                {{ Form::label('item_name', 'Description') }}
                {{ Form::text('item_name', null, ['class' => 'form-control item_name typeahead', 'placeholder' => 'Description', 'required' => true,'autocomplete'=>'off']) }}
              </div>
          </div>
          <div class="col-md-1 col-sm-12 pl-0 pr-0">
            <div class="form-group">
              {{ Form::label('hsn_sac', 'Storage Location') }}
              {{ Form::select('hsn_sac',[0=>'Location1',1=>'Location 2'], null, ['class' => 'form-control', 'placeholder' => 'Storage Location']) }}
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
        <p>Sub Total <strong><span class="sub_total">0</span></strong></p>
      </div>
      <div class="col-md-2 col-sm-12">
        <p>CGST Total: <strong><span class="cgst_total">0</span></strong></p>
      </div>
      <div class="col-md-2 col-sm-12">
        <p>SGST Total: <strong><span class="sgst_utgst_total">0</span></strong></p>
      </div>
      <div class="col-md-2 col-sm-12">
        <p>IGST Total: <strong><span class="igst_total">0</span></strong></p>
      </div>
      <div class="col-md-2 col-sm-12">
        <p>GST Total: <strong><span class="gst_total">0</span></strong></p>
      </div>
      <div class="col-md-2 col-sm-12">
        <p>Total Amount: <strong><span class="total_amount">0</span></strong></p>
      </div>
      <div class="col-md-12 col-sm-12">
        <p>Total Amount In Words: <strong><span class="total_amount_words">-</span></strong></p>
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
            console.log(customer_details);
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
