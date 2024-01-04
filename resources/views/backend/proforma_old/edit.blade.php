@extends('backend.layouts.app')
@section('title', 'Update Order Booking')

@section('content')
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Order Booking</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Edit Order Booking</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a href="{{ route('admin.proforma') }}" class="btn btn-outline-secondary float-right"><i
                            class="bx bx-arrow-back"></i><span class="align-middle ml-25">Back</span></a>
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

                                @include('backend.includes.errors')
                                {{ Form::open(['url' => 'admin/proforma/update']) }}
                                {!! Form::model($model, [
                                    'method' => 'POST',
                                    'url' => ['admin/proforma/update'],
                                    'class' => 'form',
                                ]) !!}
                                {{ Form::hidden('financial_year', $fyear) }}
                                {{ Form::hidden('proforma_id', $model->proforma_id) }}
                                {{ Form::hidden('bill_to_state', null, ['class' => 'bill_to_state']) }}
                                {{ Form::hidden('party_name', null, ['class' => 'party_name']) }}
                                {{ Form::hidden('party_state', null, ['class' => 'party_state']) }}
                                {{ Form::hidden('bill_to_gst_no', null, ['class' => 'bill_to_gst_no']) }}
                                <div class="form-body">
                                    <div class="row">
                                        {{-- <div class="col-sm-4">
                                                {{ Form::label('bill_no', 'Bill No') }}
                                                <h4>{{ $invoice->bill_no }}</h4>
                                            </div> --}}
                                        <div class="col-md-3 col-sm-12">
                                            <div class="form-group">
                                                {{-- {{ Form::label('bill_date', 'Invoice Date *') }} --}}
                                                {{ Form::hidden('bill_date', date('Y-m-d'), ['class' => 'datepicker-here form-control digits', 'placeholder' => 'Invoice Date', 'required' => true, 'readonly' => true]) }}
                                            </div>
                                        </div>
                                        {{-- <div class="col-md-3 col-sm-12 d-none">
                                                <div class="form-group">
                                                    {{ Form::label('company_gstin', 'GSTIN *') }}
                                                    {{ Form::text('company_gstin', null, ['class' => 'form-control', 'placeholder' => 'GSTIN']) }}
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-12">
                                                <div class="form-group">
                                                    {{ Form::label('job_id', 'Job *') }}
                                                    {{ Form::select('job_id', $job, $invoice->job_id, ['class' => 'form-control select2', 'id' => 'job_id', 'placeholder' => 'Select Job', 'required' => true]) }}
                                                </div>
                                            </div>
                                            <div class="col-md-2 col-sm-12 mt-4">
                                                <div class="form-group">
                                                    {{ Form::checkbox('split_invoice', null) }}
                                                    {{ Form::label('split_invoice', 'Split Invoice') }}
                                                </div>
                                            </div> --}}
                                        <div class="col-sm-12">
                                            {{-- <hr> --}}
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="col-md-12 col-sm-12">
                                                        <div class="form-group">
                                                            {{ Form::label('party_id', 'Customer *') }}
                                                            {{ Form::select('party_id', $party, null, ['class' => 'form-control select2', 'id' => 'party_id', 'placeholder' => 'Select Bill To', 'required' => true]) }}
                                                        </div>
                                                    </div>

                                                    <div class="col-md-12 col-sm-12">
                                                        <div class="form-group">
                                                            {{-- {{ Form::label('bill_to_gst_no', 'GSTIN/UIN') }} --}}
                                                            {{ Form::hidden('bill_to_gst_no', null, ['class' => 'form-control bill_to_gst_no', 'placeholder' => 'GSTIN/UIN', 'readonly' => true]) }}
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 col-sm-12">
                                                        <div class="form-group">
                                                            {{ Form::label('contact_person', 'Contact Person *') }}
                                                            <select name="contact_person" id="contact_person"
                                                                class="form-control" required></select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 col-sm-12">
                                                        <div class="form-group">
                                                            {{ Form::label('customer_ref_no', 'Customer Refrence Number *') }}
                                                            {{ Form::text('customer_ref_no', null, ['class' => 'form-control customer_ref_no', 'placeholder' => 'Customer Refrence Number', 'required' => true]) }}
                                                        </div>
                                                    </div>

                                                    <div class="col-md-12 col-sm-12">
                                                        <div class="form-group">
                                                            {{ Form::label('ship_from', 'Ship From *') }}
                                                            <select name="ship_from" id="ship_from" class="form-control"
                                                                required></select>
                                                            {{-- {{ Form::select('ship_from', null, ['class' => 'form-control ship_from', 'placeholder' => 'Ship From', 'required' => true]) }} --}}
                                                        </div>
                                                    </div>


                                                </div>
                                                {{-- <div class="col-sm-6">
                                                      <div class="col-sm-12">
                                                          <h5>Bill Details</h5>
                                                          <p class="party">No Details To Display</p>
                                                          <textarea name="party_details" class="party_input d-none"></textarea>
                                                      </div>
                                                  </div> --}}

                                            </div>

                                        </div>
                                        {{-- <div class="col-sm-6"> --}}

                                        {{-- <div class="col-md-12 col-sm-12">
                                                  <div class="form-group">
                                                      {{ Form::label('po_document', 'Upload Goods Service Receipts Photocopy') }}
                                                      {{ Form::file('po_document', ['class' => 'form-control', 'id' => 'po_document']) }}
                                                  </div>
                                              </div> --}}


                                        <div class="col-md-3 col-sm-3">
                                        </div>
                                        <div class="col-md-3 col-sm-3">

                                            <div class="form-group">
                                                {{ Form::label('status', 'Status *') }}
                                                {{ Form::select('status', ['open' => 'Open', 'close' => 'Close'], null, ['class' => 'form-control status', 'placeholder' => 'Select Status', 'required' => true]) }}
                                            </div>


                                            <div class="form-group">
                                                {{ Form::label('posting_date', 'Posting Date *') }}
                                                {{ Form::date('posting_date', null, ['class' => 'form-control ', 'placeholder' => 'Posting Date', 'required' => true]) }}
                                            </div>

                                            <div class="form-group">
                                                {{ Form::label('delivery_date', 'Delivery Date *') }}
                                                {{ Form::date('delivery_date', null, ['class' => 'form-control delivery_date', 'placeholder' => 'Delivery Date', 'required' => true]) }}
                                            </div>

                                            <div class="form-group">
                                                {{ Form::label('document_date', 'Document Date *') }}
                                                {{ Form::date('document_date', null, ['class' => 'form-control document_date', 'placeholder' => 'Document Date', 'required' => true]) }}
                                            </div>


                                        </div>

                                        {{-- </div> --}}
                                    </div>


                                    <div class="row">

                                        <div class="col-sm-12">
                                            <hr>
                                        </div>

                                        <div class="col-sm-12">
                                            <section id="form-repeater-wrapper">

                                                {{-- Repeater old --}}
                                                <!-- form default repeater -->
                                                <div class="row">
                                                    <div class="col-12">
                                                        <h5 class="card-title">
                                                            Particulars Detail
                                                        </h5>
                                                        {{-- {{dd($goodsservicereceipt)}} --}}





                                                        {{-- Repeater new --}}
                                                        <!-- Repeater old Items -->
                                                        <div class="conatiner-fluid table-responsive repeater">
                                                            <table class="table table-bordered " id="repeater">
                                                                <thead class="bg-light" style="font-size:10px;">
                                                                    <tr>
                                                                        <td>{{ Form::label('item_name', 'Item Description') }}
                                                                        </td>
                                                                        <td>{{ Form::label('hsn_sac', 'HSN/SAC') }}
                                                                        </td>
                                                                        <td>{{ Form::label('qty', 'Quantity') }}
                                                                        </td>
                                                                        <td>{{ Form::label('taxable_amount', 'Unit Price') }}
                                                                        </td>
                                                                        <td>{{ Form::label('discount', 'Disocunt') }}
                                                                        </td>
                                                                        <td>{{ Form::label('price_af_discount', 'Price After Disocunt') }}
                                                                        </td>

                                                                        <td>{{ Form::label('GST', 'GST (%)') }}
                                                                        </td>
                                                                        <td>{{ Form::label('Amount', 'GST Amount') }}
                                                                        </td>
                                                                        <td>{{ Form::label('total', 'Total INR') }}
                                                                        </td>
                                                                        <td>{{ Form::label('storage_location_id', 'Warehouse') }}
                                                                        </td>
                                                                        <td></td>

                                                                    </tr>
                                                                </thead>
                                                                <tbody data-repeater-list="old_invoice_items">
                                                                    {{-- @if (isset($model->purchaseorder_items) && count($model->purchaseorder_items) > 0) --}}
                                                                    @foreach ($model->proforma_items as $items)
                                                                        {{-- {{dd($items->toArray())}} --}}
                                                                        <tr data-repeater-item class="item_row item-content"
                                                                            id="old_row_{{ $loop->index }}">

                                                                            {{ Form::hidden('old_invoice_items[' . $loop->index . '][invoice_item_id]', $items->invoice_item_id, ['data-name' => 'invoice_item_id', 'class' => 'form-control item_name typeahead', 'placeholder' => 'Description', 'required' => true, 'autocomplete' => 'off']) }}




                                                                            {{ Form::hidden('old_invoice_items[' . $loop->index . '][cgst_rate]', $items->cgst_rate, ['class' => 'form-control custom-rate', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'cgst_rate', 'data-group' => 'old_invoice_items']) }}
                                                                            {{ Form::hidden('old_invoice_items[' . $loop->index . '][cgst_amount]', $items->cgst_amount, ['class' => 'form-control custom-amount cgst_amount', 'placeholder' => 'Amt.', 'onchange' => 'calculategst(this)', 'data-name' => 'cgst_amount', 'data-group' => 'old_invoice_items']) }}

                                                                            {{ Form::hidden('old_invoice_items[' . $loop->index . '][sgst_utgst_rate]', $items->sgst_utgst_rate, ['class' => 'form-control custom-rate', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'sgst_utgst_rate', 'data-group' => 'old_invoice_items']) }}
                                                                            {{ Form::hidden('old_invoice_items[' . $loop->index . '][sgst_utgst_amount]', $items->sgst_utgst_amount, ['class' => 'form-control custom-amount sgst_utgst_amount', 'placeholder' => 'Amt.', 'onchange' => 'calculategst(this)', 'data-name' => 'sgst_utgst_amount', 'data-group' => 'old_invoice_items']) }}

                                                                            {{ Form::hidden('old_invoice_items[' . $loop->index . '][igst_rate]', $items->igst_rate, ['class' => 'form-control custom-rate', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'igst_rate', 'data-group' => 'old_invoice_items']) }}
                                                                            {{ Form::hidden('old_invoice_items[' . $loop->index . '][igst_amount]', $items->igst_amount, ['class' => 'form-control custom-amount igst_amount', 'placeholder' => 'Amt.', 'onchange' => 'calculategst(this)', 'data-name' => 'igst_amount', 'data-group' => 'old_invoice_items']) }}


                                                                            <td>{{ Form::text('old_invoice_items[' . $loop->index . '][item_name]', $items->item_name, ['data-name' => 'item_name', 'class' => 'form-control item_name typeahead', 'required' => true]) }}
                                                                            </td>
                                                                            <td>
                                                                                {{ Form::text('old_invoice_items[' . $loop->index . '][hsn_sac]', $items->hsn_sac, ['class' => 'form-control', 'data-name' => 'hsn_sac', 'required' => true]) }}
                                                                            </td>
                                                                            <td>
                                                                                {{ Form::text('old_invoice_items[' . $loop->index . '][qty]', $items->qty, ['class' => 'form-control qty', 'onchange' => 'calculategst(this)', 'data-name' => 'qty', 'data-group' => 'old_invoice_items', 'required' => true]) }}
                                                                            </td>
                                                                            <td>
                                                                                {{ Form::text('old_invoice_items[' . $loop->index . '][taxable_amount]', $items->taxable_amount, ['class' => 'form-control taxable_amount', 'onchange' => 'calculategst(this)', 'data-name' => 'taxable_amount', 'data-group' => 'old_invoice_items', 'required' => true]) }}
                                                                            </td>
                                                                            <td>
                                                                                {{ Form::text('old_invoice_items[' . $loop->index . '][discount_item]', $items->discount_item, ['class' => 'form-control discount_item', 'onchange' => 'calculategst(this)', 'data-name' => 'discount_item', 'data-group' => 'old_invoice_items']) }}
                                                                            </td>
                                                                            <td>{{ Form::text('old_invoice_items[' . $loop->index . '][price_af_discount]', $items->price_af_discount, ['class' => 'form-control  price_af_discount', 'onchange' => 'calculategst(this)', 'data-name' => 'price_af_discount', 'data-group' => 'old_invoice_items', 'readonly' => true]) }}
                                                                            </td>


                                                                            <td style="width: 130px;">
                                                                                {{ Form::select('old_invoice_items[' . $loop->index . '][gst_rate]', $gst, $items->gst_rate, ['class' => 'form-control', 'placeholder' => 'Select GST', 'onchange' => 'calculategst(this)', 'data-name' => 'gst_rate', 'data-group' => 'old_invoice_items', 'required' => true]) }}
                                                                            </td>
                                                                            <td>
                                                                                {{ Form::text('old_invoice_items[' . $loop->index . '][gst_amount]', $items->gst_amount, ['class' => 'form-control', 'placeholder' => 'GST Amount', 'onchange' => 'calculategst(this)', 'data-name' => 'gst_amount', 'data-group' => 'old_invoice_items', 'required' => true]) }}
                                                                            </td>
                                                                            {{ Form::hidden('old_invoice_items[' . $loop->index . '][gross_total]', $items->gross_total, ['class' => 'form-control gross_total', 'onchange' => 'calculategst(this)', 'data-name' => 'gross_total', 'data-group' => 'old_invoice_items', 'required' => true, 'readonly' => true]) }}
                                                                            

                                                                            <td>{{ Form::text('old_invoice_items[' . $loop->index . '][total]', $items->total, ['class' => 'form-control  total', 'onchange' => 'calculategst(this)', 'data-name' => 'total', 'data-group' => 'old_invoice_items', 'required' => true, 'readonly' => true]) }}
                                                                            </td>
                                                                            <td style="width: 210px;">
                                                                                {{ Form::select('old_invoice_items[' . $loop->index . '][storage_location_id]', $storage_locations, $items->storage_location_id, ['class' => 'form-control storage_locations selected_' . $items->storage_location_id, 'data-selected' => $items->storage_location_id, 'placeholder' => 'Warehouse', 'data-name' => 'storage_location_id']) }}

                                                                                {{--  Modal starts Here  --}}
                                                                                <div class="modal fade text-left"
                                                                                    id="" tabindex="-1"
                                                                                    role="dialog"
                                                                                    aria-labelledby="myModalLabel1"
                                                                                    aria-hidden="true">
                                                                                    <div class="modal-dialog modal-lg"
                                                                                        role="document">
                                                                                        <div class="modal-content">
                                                                                            <div class="modal-header">
                                                                                                <h4 class="modal-title"
                                                                                                    id="myModalLabel1">
                                                                                                    Assign
                                                                                                    Batch
                                                                                                </h4>
                                                                                                <button type="button"
                                                                                                    class="close"
                                                                                                    data-dismiss="modal"
                                                                                                    aria-label="Close">
                                                                                                    <span
                                                                                                        aria-hidden="true">&times;</span>
                                                                                                </button>
                                                                                            </div>
                                                                                            <div class="modal-body">
                                                                                                <div class="row">
                                                                                                    <div
                                                                                                        class="col-md-12 table-responsive">
                                                                                                        <table
                                                                                                            class="table table-sm">
                                                                                                            <!-- innner repeater -->

                                                                                                            <tr>
                                                                                                                <td>Sr.
                                                                                                                    No
                                                                                                                </td>
                                                                                                                <td>Batch
                                                                                                                    no
                                                                                                                </td>
                                                                                                                <td>Mfg.
                                                                                                                    Date
                                                                                                                </td>
                                                                                                                <td>Exp.
                                                                                                                    Date
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            @php $cnt = 1; @endphp
                                                                                                            {{--  <td>{{ Form::text('old_invoice_items['.$loop->index.'][batches]['.$cnt.'][batch_no]', $batches->batch_no, ['class'=>'form-control']) }}</td>  --}}
                                                                                                            @if (isset($items->goods_service_receipts_batches) && count($items->goods_service_receipts_batches) > 0)
                                                                                                                @for ($i = 0; $i < count($items->goods_service_receipts_batches); $i++)
                                                                                                                    {{--  {{ dd($items->goods_service_receipts_batches[$i]->toArray()) }}  --}}
                                                                                                                    <tr>
                                                                                                                        <td>{{ $cnt }}
                                                                                                                        </td>
                                                                                                                        <td>
                                                                                                                            {{ Form::hidden('old_invoice_items[' . $loop->index . '][batches][' . $cnt . '][goods_service_receipts_batches_id]', $items->goods_service_receipts_batches[$i]['goods_service_receipts_batches_id'], ['class' => 'form-control']) }}
                                                                                                                            {{ Form::hidden('old_invoice_items[' . $loop->index . '][batches][' . $cnt . '][goods_service_receipts_item_id]', $items->goods_service_receipts_batches[$i]['goods_service_receipts_item_id'], ['class' => 'form-control']) }}
                                                                                                                            {{ Form::text('old_invoice_items[' . $loop->index . '][batches][' . $cnt . '][batch_no]', $items->goods_service_receipts_batches[$i]['batch_no'], ['class' => 'form-control']) }}
                                                                                                                        </td>
                                                                                                                        <td>{{ Form::date('old_invoice_items[' . $loop->index . '][batches][' . $cnt . '][manufacturing_date]', $items->goods_service_receipts_batches[$i]['manufacturing_date'], ['class' => 'form-control']) }}
                                                                                                                        </td>
                                                                                                                        <td>{{ Form::date('old_invoice_items[' . $loop->index . '][batches][' . $cnt . '][expiry_date]', $items->goods_service_receipts_batches[$i]['expiry_date'], ['class' => 'form-control']) }}
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                    @php $cnt++  @endphp
                                                                                                                @endfor
                                                                                                            @endif
                                                                                                            @if ($cnt < 10)
                                                                                                                @for ($i = $cnt; $i <= 10; $i++)
                                                                                                                    <tr>
                                                                                                                        <td>{{ $i }}
                                                                                                                        </td>
                                                                                                                        <td>{{ Form::text('old_invoice_items[' . $loop->index . '][batches][' . $i . '][batch_no]', null, ['class' => 'form-control']) }}
                                                                                                                        </td>
                                                                                                                        <td>{{ Form::date('old_invoice_items[' . $loop->index . '][batches][' . $i . '][manufacturing_date]', null, ['class' => 'form-control']) }}
                                                                                                                        </td>
                                                                                                                        <td>{{ Form::date('old_invoice_items[' . $loop->index . '][batches][' . $i . '][expiry_date]', null, ['class' => 'form-control']) }}
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                @endfor
                                                                                                            @endif


                                                                                                        </table>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="modal-footer">
                                                                                                    <button type="button"
                                                                                                        class="btn grey btn-outline-secondary"
                                                                                                        data-dismiss="modal">Ok</button>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    {{--  Modal ends Here  --}}
                                                                                </div>
                                                                            </td>
                                                                            <td><button type='button'
                                                                                    class='btn btn-danger btn-flat btn-xs old_rep_item_del'
                                                                                    id="{{ $loop->index }}"
                                                                                    data-repeater-delete><i
                                                                                        class='fa fa-fw fa-remove'></i></button>
                                                                            </td>
                                                                        </tr>
                                                                    @endforeach
                                                                    {{-- @endif --}}

                                                                </tbody>

                                                            </table>
                                                        </div>


                                                        {{-- for new items --}}
                                                        <div class="conatiner-fluid table-responsive repeater">
                                                            <button type="button" data-repeater-create
                                                                class="btn btn-primary pull-right mb-2">Add</button>
                                                            <table class="table table-bordered " id="repeater">
                                                                <thead class="bg-light" style="font-size:10px;">
                                                                    <tr>
                                                                        <td>{{ Form::label('item_name', 'Item Description') }}
                                                                        </td>
                                                                        <td>{{ Form::label('hsn_sac', 'HSN/SAC') }}
                                                                        </td>
                                                                        <td>{{ Form::label('qty', 'Quantity') }}
                                                                        </td>
                                                                        <td>{{ Form::label('taxable_amount', 'Unit Price') }}
                                                                        </td>
                                                                        <td>{{ Form::label('discount', 'Disocunt') }}
                                                                        </td>
                                                                        <td>{{ Form::label('price_af_discount', 'Price After Disocunt') }}
                                                                        </td>

                                                                        <td>{{ Form::label('GST', 'GST (%)') }}
                                                                        </td>
                                                                        <td>{{ Form::label('Amount', 'GST Amount') }}
                                                                        </td>
                                                                        <td>{{ Form::label('total', 'Total INR') }}
                                                                        </td>
                                                                        <td>{{ Form::label('storage_location_id', 'Warehouse') }}
                                                                        </td>
                                                                        <td></td>

                                                                    </tr>
                                                                </thead>

                                                                <tbody data-repeater-list="invoice_items"
                                                                    style="border:none;">
                                                                    <tr data-repeater-item class="item_row">
                                                                        {{ Form::hidden('bill_to_state', null, ['class' => 'form-control bill_to_state', 'onchange' => 'calculategst(this)', 'data-name' => 'bill_to_state', 'data-group' => 'invoice_items', 'required' => true]) }}
                                                                        {{ Form::hidden('party_state', null, ['class' => 'form-control party_state', 'onchange' => 'calculategst(this)', 'data-name' => 'party_state', 'data-group' => 'invoice_items', 'required' => true]) }}

                                                                        {{ Form::hidden('cgst_rate', null, ['class' => 'form-control custom-rate', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'cgst_rate', 'data-group' => 'invoice_items']) }}
                                                                        {{ Form::hidden('cgst_amount', null, ['class' => 'form-control custom-amount cgst_amount', 'placeholder' => 'Amt.', 'onchange' => 'calculategst(this)', 'data-name' => 'cgst_amount', 'data-group' => 'invoice_items']) }}

                                                                        {{ Form::hidden('sgst_utgst_rate', null, ['class' => 'form-control custom-rate', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'sgst_utgst_rate', 'data-group' => 'invoice_items']) }}
                                                                        {{ Form::hidden('sgst_utgst_amount', null, ['class' => 'form-control custom-amount sgst_utgst_amount', 'placeholder' => 'Amt.', 'onchange' => 'calculategst(this)', 'data-name' => 'sgst_utgst_amount', 'data-name' => 'sgst_utgst_amount', 'data-group' => 'invoice_items']) }}

                                                                        {{ Form::hidden('igst_rate', null, ['class' => 'form-control custom-rate', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'igst_rate', 'data-group' => 'invoice_items']) }}
                                                                        {{ Form::hidden('igst_amount', null, ['class' => 'form-control custom-amount igst_amount', 'placeholder' => 'Amt.', 'onchange' => 'calculategst(this)', 'data-name' => 'igst_amount', 'data-group' => 'invoice_items']) }}


                                                                        <td>{{ Form::text('item_name', null, ['data-id' => 'item_name', 'id' => 'item_name', 'data-name' => 'item_name', 'class' => 'form-control  item_name typeahead', 'autocomplete' => 'off', 'required' => true]) }}
                                                                        </td>
                                                                        <td>{{ Form::text('hsn_sac', null, ['class' => 'form-control  hsn_sac', 'data-name' => 'hsn_sac', 'required' => true]) }}
                                                                        </td>
                                                                        <td> {{ Form::text('qty', null, ['class' => 'form-control  qty', 'onchange' => 'calculategst(this)', 'data-name' => 'qty', 'data-group' => 'invoice_items', 'required' => true]) }}
                                                                        </td>
                                                                        <td>{{ Form::text('taxable_amount', null, ['class' => 'form-control  taxable_amount', 'onchange' => 'calculategst(this)', 'data-name' => 'taxable_amount', 'data-group' => 'invoice_items', 'required' => true]) }}
                                                                        </td>
                                                                        <td>{{ Form::text('discount_item', null, ['class' => 'form-control  discount_item', 'id' => 'discount_item', 'onchange' => 'calculategst(this)', 'data-name' => 'discount_item', 'data-group' => 'invoice_items']) }}
                                                                        </td>
                                                                        <td>{{ Form::text('price_af_discount', null, ['class' => 'form-control  price_af_discount', 'onchange' => 'calculategst(this)', 'data-name' => 'price_af_discount', 'data-group' => 'invoice_items', 'readonly' => true]) }}
                                                                        </td>

                                                                        <td style="width: 130px;">
                                                                            {{ Form::select('gst_rate', $gst, null, ['class' => 'form-control    gst_type', 'placeholder' => 'Select GST', 'onchange' => 'calculategst(this)', 'data-name' => 'gst_rate', 'data-group' => 'invoice_items', 'required' => true]) }}
                                                                        </td>
                                                                        <td>{{ Form::text('gst_amount', null, ['class' => 'form-control  gst_amount', 'onchange' => 'calculategst(this)', 'data-name' => 'gst_amount', 'data-group' => 'invoice_items', 'required' => true, 'readonly' => true]) }}
                                                                        </td>
                                                                    {{ Form::hidden('gross_total', null, ['class' => 'form-control gross_total', 'onchange' => 'calculategst(this)', 'data-name' => 'gross_total', 'data-group' => 'invoice_items', 'required' => true, 'readonly' => true]) }}

                                                                        <td>{{ Form::text('total', null, ['class' => 'form-control  total', 'onchange' => 'calculategst(this)', 'data-name' => 'total', 'data-group' => 'invoice_items', 'required' => true, 'readonly' => true]) }}
                                                                        </td>
                                                                        <td style="width: 210px;">
                                                                            {{ Form::select('storage_location_id', $storage_locations, null, ['class' => 'form-control  storage_locations', 'placeholder' => 'Select Storage Location', 'data-name' => 'storage_location_id']) }}

                                                                            <div class="modal fade text-left"
                                                                                id="" tabindex="-1"
                                                                                role="dialog"
                                                                                aria-labelledby="myModalLabel1"
                                                                                aria-hidden="true">
                                                                                <div class="modal-dialog modal-lg"
                                                                                    role="document">
                                                                                    <div class="modal-content">
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title"
                                                                                                id="myModalLabel1">
                                                                                                Assign
                                                                                                Batch
                                                                                            </h4>
                                                                                            <button type="button"
                                                                                                class="close"
                                                                                                data-dismiss="modal"
                                                                                                aria-label="Close">
                                                                                                <span
                                                                                                    aria-hidden="true">&times;</span>
                                                                                            </button>
                                                                                        </div>
                                                                                        <div class="modal-body">
                                                                                            <div class="row">
                                                                                                <div
                                                                                                    class="col-md-12 table-responsive">
                                                                                                    <table
                                                                                                        class="table table-sm">
                                                                                                        <!-- innner repeater -->

                                                                                                        <tr>
                                                                                                            <td>Sr.
                                                                                                                No
                                                                                                            </td>
                                                                                                            <td>Batch
                                                                                                                no
                                                                                                            </td>
                                                                                                            <td>Mfg.
                                                                                                                Date
                                                                                                            </td>
                                                                                                            <td>Exp.
                                                                                                                Date
                                                                                                            </td>
                                                                                                        </tr>

                                                                                                        <tr>
                                                                                                            <td>1
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="text"
                                                                                                                    name="batches][0][batch_no"
                                                                                                                    data-name="batches][0][batch_no"
                                                                                                                    class='form-control'
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][0][manufacturing_date"
                                                                                                                    data-name="batches][0][manufacturing_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][0][expiry_date"
                                                                                                                    data-name="batches][0][expiry_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                        </tr>

                                                                                                        <tr>
                                                                                                            <td>2
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="text"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][1][batch_no"
                                                                                                                    data-name="batches][1][batch_no"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][1][manufacturing_date"
                                                                                                                    data-name="batches][1][manufacturing_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][1][expiry_date"
                                                                                                                    data-name="batches][1][expiry_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>3
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="text"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][2][batch_no"
                                                                                                                    data-name="batches][2][batch_no"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][2][manufacturing_date"
                                                                                                                    data-name="batches][2][manufacturing_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][2][expiry_date"
                                                                                                                    data-name="batches][2][expiry_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>4
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="text"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][3][batch_no"
                                                                                                                    data-name="batches][3][batch_no"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][3][manufacturing_date"
                                                                                                                    data-name="batches][3][manufacturing_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][3][expiry_date"
                                                                                                                    data-name="batches][3][expiry_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                        </tr>

                                                                                                        <tr>
                                                                                                            <td>5
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="text"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][4][batch_no"
                                                                                                                    data-name="batches][4][batch_no"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][4][manufacturing_date"
                                                                                                                    data-name="batches][4][manufacturing_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][4][expiry_date"
                                                                                                                    data-name="batches][4][expiry_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                        </tr>

                                                                                                        <tr>
                                                                                                            <td>6
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="text"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][5][batch_no"
                                                                                                                    data-name="batches][5][batch_no"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][5][manufacturing_date"
                                                                                                                    data-name="batches][5][manufacturing_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][5][expiry_date"
                                                                                                                    data-name="batches][5][expiry_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                        </tr>

                                                                                                        <tr>
                                                                                                            <td>7
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="text"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][6][batch_no"
                                                                                                                    data-name="batches][6][batch_no"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][6][manufacturing_date"
                                                                                                                    data-name="batches][6][manufacturing_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][6][expiry_date"
                                                                                                                    data-name="batches][6][expiry_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                        </tr>

                                                                                                        <tr>
                                                                                                            <td>8
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="text"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][7][batch_no"
                                                                                                                    data-name="batches][7][batch_no"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][7][manufacturing_date"
                                                                                                                    data-name="batches][7][manufacturing_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][7][expiry_date"
                                                                                                                    data-name="batches][7][expiry_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                        </tr>

                                                                                                        <tr>
                                                                                                            <td>9
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="text"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][8][batch_no"
                                                                                                                    data-name="batches][8][batch_no"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][8][manufacturing_date"
                                                                                                                    data-name="batches][8][manufacturing_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][8][expiry_date"
                                                                                                                    data-name="batches][8][expiry_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                        </tr>

                                                                                                        <tr>
                                                                                                            <td>10
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="text"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][9][batch_no"
                                                                                                                    data-name="batches][9][batch_no"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td><input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][9][manufacturing_date"
                                                                                                                    data-name="batches][9][manufacturing_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <input
                                                                                                                    type="date"
                                                                                                                    class='form-control'
                                                                                                                    name="batches][9][expiry_date"
                                                                                                                    data-name="batches][9][expiry_date"
                                                                                                                    id="">
                                                                                                            </td>
                                                                                                        </tr>

                                                                                                    </table>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="modal-footer">
                                                                                                <button type="button"
                                                                                                    class="btn grey btn-outline-secondary"
                                                                                                    data-dismiss="modal">Ok</button>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                {{--  Modal ends Here  --}}
                                                                            </div>
                                                                        </td>
                                                                        <td><button type='button'
                                                                                class='btn btn-danger btn-flat btn-xs '
                                                                                data-repeater-delete><i
                                                                                    class='fa fa-fw fa-remove'></i></button>
                                                                        </td>


                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>

                                                    </div>
                                                </div>

                                            </section>

                                        </div>







                                        <div class="col-sm-12">
                                            <hr>
                                        </div>
                                    </div>
                                    {{-- <hr> --}}

                                    <div class="row">


                                        <div class="col-md-3 col-sm-3">
                                            <div class="form-group">
                                                {{ Form::label('remarks', 'Remarks') }}
                                                {{ Form::textarea('remarks', null, ['class' => 'form-control remarks', 'placeholder' => 'Remarks', 'style' => 'height:100px;']) }}
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-6">
                                        </div>

                                        <div class="col-md-3 col-sm-3">
                                            <div>
                                                <p>Total Before Discount: <strong><span
                                                            class="total_amount">0</span></strong>
                                                </p>
                                            </div>
                                            <div>
                                                <p>Discount: <strong><input type="number" name="discount" id="discount"
                                                            style="width:30px;" value="{{ $model->discount }}"
                                                            onchange="calculate_grand_total()">
                                                        %</strong>
                                                    <input class="discount_amt w-25" value="">
                                                </p>
                                            </div>
                                            <div>
                                                <p>Total After Discount: <strong><span
                                                            class="total_af_disc"></span>0</strong>
                                                </p>
                                            </div>

                                            <div>
                                                <p>Tax: <strong><span class="gst_total">0</span></strong>
                                                </p>
                                            </div>
                                            <div>
                                                <p>Rounding: <strong><span class="rounding"></span></strong>
                                                </p>
                                            </div>
                                            <div>
                                                <p>Total Payment Due: <strong><span class="final_amount">0</span></strong>
                                                </p>
                                            </div>
                                        </div>


                                    </div>

                                    <div class="col-sm-12 d-flex justify-content-center">
                                        {{ Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1']) }}
                                        <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                                    </div>


                                    {{ Form::close() }}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </div>
    </div>

    <script>
        function get_data_display(customer_id) {

            // alert(customer_id);

            $.get(APP_URL + '/admin/purchaseorder/partydetails/' + customer_id, {}, function(
                response) {
                var customer_details = $.parseJSON(response);
                // console.log(customer_details);
                if (customer_details) {
                    $(".party").html(customer_details.party_detail);
                    $(".party_input").val(customer_details.party_detail);
                    $(".bill_to_state").val(customer_details.bill_to_state);
                    $(".party_state").val(customer_details.party_state);
                    $(".bill_to_gst_no").val(customer_details.bill_to_gst_no);
                    $(".party_name").val(customer_details.party_name);
                } else {
                    // alert('nop res');
                    $(".pary").html("");
                    $(".party_input").val('');
                    $(".bill_to_state").val('');
                    $(".party_state").val('');
                }
            });

        }
        $(document).ready(function() {

            var customer_id = $('#party_id option:selected').val();
            if (customer_id != "") {
                get_data_display(customer_id);
            }
            $("#party_id").on('change', function() {
                var customer_id = $(this).val();
                // alert(customer_id);
                if (customer_id != '') {
                    get_data_display(customer_id);
                }
            });

            // $("#bill_to").on('change',function() {
            //     var customer_id = $(this).val();
            //     if (customer_id != '') {
            //         $.get(APP_URL + '/admin/goodsservicereceipts/partydetails/' + customer_id, {}, function(
            //             response) {
            //             var customer_details = $.parseJSON(response);
            //             $(".party").html(customer_details.party_detail);

            //             $(".party_input").val(customer_details.party_detail);
            //             $(".bill_to_state").val(customer_details.bill_to_state);
            //             $(".party_state").val(customer_details.party_state);
            //             $(".bill_to_gst_no").val(customer_details.bill_to_gst_no);
            //         });
            //     } else {
            //         $(".party").html("");

            //         $(".party_input").val('');
            //         $(".bill_to_state").val('');
            //         $(".party_state").val('');
            //     }
            // });
            $(document).on('change', '.storage_locations ', function(e) {
                if ($(this).val() != '') {
                    var parent_div = $(this).parents()[2];
                    var suffix = $(this).attr('name');
                    $(this).closest('.item_row').find('.modal').modal('show');
                }
            });

            //old row delete button
            $('.old_rep_item_del').click(function() {
                let delete_row_id = $(this).attr('id');
                // alert(delete_row_id);
                let cnf = confirm('are you sure, do you want to delete these records');
                if (cnf) {
                    $('#old_row_' + delete_row_id).remove();
                    // &('.data-repeater-item').hide();
                    calculate_grand_total();
                }
            });
        });
    </script>

<script>
    $(document).ready(function() {
        /* Create Repeater */
        $("#repeater").createRepeater({
            showFirstItemToDefault: false,
        });
        calculate_grand_total();
    });
    $("#discount").on('change', function() {
        calculate_grand_total();
    });
</script>


    <script>
        $(document).ready(function() {
            $('.repeater').repeater({
                isFirstItemUndeletable: false,
                // initEmpty: false,
            });

        });
    </script>

    @include('backend.invoice.autocomplete_typeahead_script')

@endsection
