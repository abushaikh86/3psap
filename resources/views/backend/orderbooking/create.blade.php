@extends('backend.layouts.app')
@section('title', 'Create Sales Order')


@section('content')


<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">Create Sales Order</h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="{{ route('admin.orderbooking') }}">Sales Order</a>
                    </li>
                    <li class="breadcrumb-item active">Create Sales Order</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
        <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
            <div class="btn-group" role="group">
                <a href="{{ route('admin.orderbooking') }}" class="btn btn-outline-secondary float-right"><i
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
                            {{ Form::open(['url' => 'admin/orderbooking/store']) }}
                            {{ Form::hidden('financial_year', $fyear) }}
                            {{ Form::hidden('bill_to_state', '', ['class' => 'bill_to_state']) }}
                            {{ Form::hidden('party_name', '', ['class' => 'party_name']) }}
                            {{ Form::hidden('party_state', '', ['class' => 'party_state']) }}
                            {{ Form::hidden('bill_to_gst_no', '', ['class' => 'bill_to_gst_no']) }}
                            <div class="form-body">
                                <div class="row">

                                    <div class="col-md-3 col-sm-12">
                                        <div class="form-group">
                                            {{-- {{ Form::label('bill_date', 'PurchaseOrder Date *') }} --}}
                                            {{ Form::hidden('bill_date', date('Y-m-d'), [
                                            'class' => ' form-control
                                            digits',
                                            'placeholder' => 'PurchaseOrder Date',
                                            'required' => true,
                                            'readonly' => true,
                                            ]) }}
                                        </div>
                                    </div>



                                    <div class="col-md-3 col-sm-12 d-none">
                                        <div class="form-group">
                                            {{ Form::label('company_gstin', 'GSTIN *') }}
                                            {{ Form::text('company_gstin', null, ['class' => 'form-control',
                                            'placeholder' => 'GSTIN']) }}
                                        </div>
                                    </div>


                                    <div class="col-sm-12">
                                        {{--
                                        <hr> --}}
                                    </div>
                                </div>

                                <div class="row">

                                    <div class="col-sm-6">


                                        <div class="row">
                                            <div class="col-sm-6">

                                                @php
                                                $values = array_keys($party->toArray());
                                                $party_code = array_combine($values, $values);
                                                @endphp



                                                <div class="col-md-12 col-sm-12">
                                                    <div class="form-group">
                                                        {{ Form::label('party_code', 'Customer Code *') }}
                                                        {{ Form::select('party_code', $party_code, null, [
                                                        'class' => 'form-control select2',
                                                        'id' => 'party_code',
                                                        'placeholder' => 'Please Select',
                                                        'required' => true,
                                                        ]) }}
                                                    </div>
                                                </div>

                                                <div class="col-md-12 col-sm-12">
                                                    <div class="form-group">
                                                        {{ Form::label('party_id', 'Customer *') }}
                                                        {{ Form::select('party_id', $party, null, [
                                                        'class' => 'form-control select2',
                                                        'id' => 'party_id',
                                                        'placeholder' => 'Please Select',
                                                        'required' => true,
                                                        ]) }}
                                                    </div>
                                                </div>

                                                <div class="col-md-12 col-sm-12">
                                                    <div class="form-group">
                                                        {{-- {{ Form::label('bill_to_gst_no', 'GSTIN/UIN') }} --}}
                                                        {{ Form::hidden('bill_to_gst_no', null, [
                                                        'class' => 'form-control bill_to_gst_no',
                                                        'placeholder' => 'GSTIN/UIN',
                                                        'readonly' => true,
                                                        ]) }}
                                                    </div>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <div class="form-group">
                                                        {{ Form::label('contact_person', 'Contact Person *') }}
                                                        <select name="contact_person" id="contact_person"
                                                            class="form-control" required></select>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 col-sm-12 d-none doc_no">
                                                    <div class="form-group">
                                                        {{ Form::label('temp_sales_order_no', 'Sales Order No') }}
                                                        {{ Form::text('temp_sales_order_no', $latestSoRecordNumber, [
                                                        'class' => 'form-control
                                                        temp_sales_order_no',
                                                        // 'placeholder' => 'Customer OB Refrence Number',
                                                        'disabled' => true,
                                                        ]) }}
                                                    </div>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <div class="form-group">
                                                        {{ Form::label('customer_ref_no', 'Customer Refrence Number
                                                        *') }}
                                                        {{ Form::text('customer_ref_no', null, [
                                                        'class' => 'form-control
                                                        customer_ref_no',
                                                        'placeholder' => 'Customer Refrence Number',
                                                        'required' => true,
                                                        ]) }}
                                                    </div>
                                                </div>

                                                <div class="col-md-12 col-sm-12">
                                                    <div class="form-group">
                                                        {{ Form::label('place_of_supply', 'Place Of Supply') }}
                                                        {{ Form::text('place_of_supply', null, [
                                                        'class' => 'form-control
                                                        place_of_supply',
                                                        'placeholder' => 'Place Of Supply',
                                                        ]) }}
                                                    </div>
                                                </div>



                                            </div>

                                            <div class="col-sm-6">
                                                <div class="col-md-12 col-sm-12">
                                                    <div class="form-group">
                                                        {{ Form::label('bill_to', 'Bill To *') }}
                                                        <select name="bill_to" id="bill_to" class="form-control"
                                                            required></select>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 col-sm-12">
                                                    <div class="form-group">
                                                        {{ Form::label('ship_from', 'Ship To *') }}
                                                        <select name="ship_from" id="ship_from" class="form-control"
                                                            required></select>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>

                                    </div>



                                    <div class="col-md-3 col-sm-3">
                                    </div>
                                    <div class="col-md-3 col-sm-3">

                                        <div class="form-group">
                                            {{ Form::label('status', 'Status *') }}
                                            {{ Form::select('status', ['open' => 'Open', 'close' => 'Close'], null, [
                                            'class' => 'form-control status',
                                            'required' => true,
                                            'readonly' => true,
                                            ]) }}
                                        </div>


                                       
                                        
                                        <div class="form-group d-none back_dated">
                                            {{ Form::label('bill_date', 'Date *') }}
                                            {{ Form::date('bill_date', date('Y-m-d'), [
                                            'class' => 'form-control ',
                                            'placeholder' => 'Date',
                                            'required' => true,
                                            ]) }}
                                        </div>
                                        




                                        <div class="form-group">
                                            {{ Form::label('delivery_date', 'Delivery Date *') }}
                                            {{ Form::date('delivery_date', null, [
                                            'class' => 'form-control delivery_date',
                                            'placeholder' => 'Delivery Date',
                                            'required' => true,
                                            ]) }}
                                        </div>

                                        <div class="form-group">
                                            {{ Form::label('document_date', 'Document Date *') }}
                                            {{ Form::date('document_date', date('Y-m-d'), [
                                            'class' => 'form-control document_date',
                                            'placeholder' => 'Document Date',
                                            'required' => true,
                                            'readonly' => true,
                                            ]) }}
                                        </div>


                                    </div>

                                    {{--
                                </div> --}}
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
                                                {{-- {{dd($goodsservicereceipt)}} --}}


                                                {{-- This is Repeater --}}
                                                {{-- <div id="repeater"> --}}
                                                    <div class="repeater-heading">
                                                        {{-- <span class="btn btn-primary pull-right repeater-add-btn">
                                                            Add
                                                        </span> --}}

                                                    </div>

                                                    <!-- Repeater Items -->
                                                    {{-- <div class="row w-100"> --}}

                                                        <div class="conatiner-fluid table-responsive repeater">
                                                            <button type="button" data-repeater-create
                                                                class="btn btn-primary pull-right mb-2 add_btn_rep">Add</button>
                                                            <div class="table-responsive">
                                                                <table class="table table-bordered " id="repeater"
                                                                    style="width:120%;">
                                                                    <thead class="bg-light" style="font-size:10px;">
                                                                        <tr>
                                                                            <td class="adjust_col">
                                                                                {{ Form::label(
                                                                                'item_code',
                                                                                'Item
                                                                                Code',
                                                                                ) }}
                                                                            </td>
                                                                            <td class="adjust_col">
                                                                                {{ Form::label(
                                                                                'item_name',
                                                                                'Item
                                                                                Description',
                                                                                ) }}
                                                                            </td>
                                                                            <td class="adjust_col">
                                                                                {{ Form::label('hsn_sac', 'HSN/SAC') }}
                                                                            </td>
                                                                            <td>{{ Form::label('qty', 'Quantity') }}
                                                                            </td>
                                                                            {{-- <td>{{ Form::label('mrp', 'MRP') }}
                                                                            </td> --}}
                                                                            <td>{{ Form::label('taxable_amount', 'Unit
                                                                                Price') }}
                                                                            </td>
                                                                            <td>{{ Form::label('total', 'Total INR') }}
                                                                            </td>

                                                                            <td class="adjust_col">
                                                                                {{ Form::label('GST', 'GST (%)') }}
                                                                            </td>
                                                                            <td>{{ Form::label('CGST', 'CGST (%)') }}
                                                                            </td>
                                                                            <td>{{ Form::label('SGST', 'SGST (%)') }}
                                                                            </td>
                                                                            <td>{{ Form::label('IGST', 'IGST (%)') }}
                                                                            </td>

                                                                            <td>{{ Form::label('Amount', 'GST Amount')}}
                                                                            </td>
                                                                            <td>{{ Form::label('gross_total','GrossTotal') }}
                                                                            </td>
                                                                            <td>{{ Form::label('storage_location_id',
                                                                                'From Warehouse') }}
                                                                            </td>
                                                                            <td></td>

                                                                        </tr>
                                                                    </thead>
                                                                    <tbody data-repeater-list="invoice_items">


                                                                        <?php
                                                                    for ($i=0; $i < count(old('invoice_items')??['1']); $i++){ 
                                                                    ?>

                                                                        <tr data-repeater-item class="item_row">
                                                                            {{ Form::hidden('bill_to_state',
                                                                            old('invoice_items')[$i]['bill_to_state'] ??
                                                                            null, [
                                                                            'class' => 'form-control
                                                                            bill_to_state',
                                                                            'onchange' => 'calculategst(this)',
                                                                            'data-name' => 'bill_to_state',
                                                                            'data-group' => 'invoice_items',
                                                                            'required' => true,
                                                                            ]) }}
                                                                            {{ Form::hidden('party_state',
                                                                            old('invoice_items')[$i]['party_state'] ??
                                                                            null, [
                                                                            'class' => 'form-control
                                                                            party_state',
                                                                            'onchange' => 'calculategst(this)',
                                                                            'data-name' => 'party_state',
                                                                            'data-group' => 'invoice_items',
                                                                            'required' => true,
                                                                            ]) }}

                                                                            {{ Form::hidden('cgst_rate',
                                                                            old('invoice_items')[$i]['cgst_rate'] ??
                                                                            null, [
                                                                            'class' => 'form-control
                                                                            custom-rate',
                                                                            'placeholder' => '%',
                                                                            'onchange' => 'calculategst(this)',
                                                                            'data-name' => 'cgst_rate',
                                                                            'data-group' => 'invoice_items',
                                                                            ]) }}
                                                                            {{ Form::hidden('cgst_amount',
                                                                            old('invoice_items')[$i]['cgst_amount'] ??
                                                                            null, [
                                                                            'class' => 'form-control
                                                                            custom-amount cgst_amount',
                                                                            'placeholder' => 'Amt.',
                                                                            'onchange' => 'calculategst(this)',
                                                                            'data-name' => 'cgst_amount',
                                                                            'data-group' => 'invoice_items',
                                                                            ]) }}

                                                                            {{ Form::hidden('sgst_utgst_rate',
                                                                            old('invoice_items')[$i]['sgst_utgst_rate']
                                                                            ?? null, [
                                                                            'class' => 'form-control
                                                                            custom-rate',
                                                                            'placeholder' => '%',
                                                                            'onchange' => 'calculategst(this)',
                                                                            'data-name' => 'sgst_utgst_rate',
                                                                            'data-group' => 'invoice_items',
                                                                            ]) }}
                                                                            {{ Form::hidden('sgst_utgst_amount',
                                                                            old('invoice_items')[$i]['sgst_utgst_amount']
                                                                            ?? null, [
                                                                            'class' => 'form-control
                                                                            custom-amount sgst_utgst_amount',
                                                                            'placeholder' => 'Amt.',
                                                                            'onchange' => 'calculategst(this)',
                                                                            'data-name' => 'sgst_utgst_amount',
                                                                            'data-name' => 'sgst_utgst_amount',
                                                                            'data-group' => 'invoice_items',
                                                                            ]) }}

                                                                            {{ Form::hidden('igst_rate',
                                                                            old('invoice_items')[$i]['igst_rate'] ??
                                                                            null, [
                                                                            'class' => 'form-control
                                                                            custom-rate',
                                                                            'placeholder' => '%',
                                                                            'onchange' => 'calculategst(this)',
                                                                            'data-name' => 'igst_rate',
                                                                            'data-group' => 'invoice_items',
                                                                            ]) }}
                                                                            {{ Form::hidden('igst_amount',
                                                                            old('invoice_items')[$i]['igst_amount'] ??
                                                                            null, [
                                                                            'class' => 'form-control
                                                                            custom-amount igst_amount',
                                                                            'placeholder' => 'Amt.',
                                                                            'onchange' => 'calculategst(this)',
                                                                            'data-name' => 'igst_amount',
                                                                            'data-group' => 'invoice_items',
                                                                            ]) }}

                                                                            {{ Form::hidden('gross_total',
                                                                            old('invoice_items')[$i]['gross_total'] ??
                                                                            null, [
                                                                            'class' => 'form-control
                                                                            gross_total',
                                                                            'onchange' => 'calculategst(this)',
                                                                            'data-name' => 'gross_total',
                                                                            'data-group' => 'invoice_items',
                                                                            'required' => true,
                                                                            'readonly' => true,
                                                                            ]) }}

                                                                            <td>{{ Form::text('item_code',
                                                                                old('invoice_items')[$i]['item_code'] ??
                                                                                null, [
                                                                                'data-id' => 'item_code',
                                                                                'data-name' => 'item_code',
                                                                                'id' => 'auto_product_' . $i,
                                                                                'class' => 'form-control item_code
                                                                                typeahead',
                                                                                'autocomplete' => 'on',
                                                                                'data-group' => 'invoice_items',
                                                                                'required' => true,
                                                                                ]) }}
                                                                            </td>

                                                                            <td>{{ Form::text('item_name',
                                                                                old('invoice_items')[$i]['item_name'] ??
                                                                                null, [
                                                                                'data-id' => 'item_name',
                                                                                'id' => 'item_name',
                                                                                'data-name' => 'item_name',
                                                                                'class' => 'form-control item_name
                                                                                typeahead',
                                                                                'autocomplete' => 'off',
                                                                                'oninput' => 'validateInput(this)',
                                                                                ]) }}
                                                                            </td>
                                                                            <td>{{ Form::text('hsn_sac',
                                                                                old('invoice_items')[$i]['hsn_sac'] ??
                                                                                null, [
                                                                                'class' => 'form-control
                                                                                hsn_sac readonly',
                                                                                'data-name' => 'hsn_sac',
                                                                                ]) }}
                                                                            </td>
                                                                            <td> {{ Form::number('qty',
                                                                                old('invoice_items')[$i]['qty'] ?? null,
                                                                                [
                                                                                'class' => 'form-control
                                                                                qty',
                                                                                'onchange' => 'calculategst(this)',
                                                                                'data-name' => 'qty',
                                                                                'data-group' => 'invoice_items',
                                                                                'required' => true,
                                                                                ]) }}
                                                                            </td>
                                                                            {{-- <td> {{ Form::number('mrp',
                                                                                old('invoice_items')[$i]['mrp'] ?? null,
                                                                                [
                                                                                'class' => 'form-control
                                                                                mrp',
                                                                                'onchange' => 'calculategst(this)',
                                                                                'data-name' => 'mrp',
                                                                                'data-group' => 'invoice_items',
                                                                                'readonly' => true,
                                                                                ]) }}
                                                                            </td> --}}
                                                                            <td>{{ Form::number('taxable_amount',
                                                                                old('invoice_items')[$i]['taxable_amount']
                                                                                ?? null, [
                                                                                'class' => 'form-control
                                                                                taxable_amount',
                                                                                'onchange' => 'calculategst(this)',
                                                                                'data-name' => 'taxable_amount',
                                                                                'data-group' => 'invoice_items',
                                                                                'readonly' => true,
                                                                                'required' => true,
                                                                                ]) }}
                                                                            </td>

                                                                            <td>{{ Form::text('total',
                                                                                old('invoice_items')[$i]['total'] ??
                                                                                null, [
                                                                                'class' => 'form-control
                                                                                total',
                                                                                'onchange' => 'calculategst(this)',
                                                                                'data-name' => 'total',
                                                                                'data-group' => 'invoice_items',
                                                                                'required' => true,
                                                                                'readonly' => true,
                                                                                ]) }}
                                                                            </td>

                                                                            {{ Form::hidden('discount_item',
                                                                            old('invoice_items')[$i]['discount_item'] ??
                                                                            null, [
                                                                            'class' => 'form-control
                                                                            discount_item',
                                                                            'id' => 'discount_item',
                                                                            'onchange' => 'calculategst(this)',
                                                                            'data-name' => 'discount_item',
                                                                            'data-group' => 'invoice_items',
                                                                            ]) }}
                                                                            {{-- <td>
                                                                            </td> --}}
                                                                            {{ Form::hidden('price_af_discount',
                                                                            old('invoice_items')[$i]['price_af_discount']
                                                                            ?? null, [
                                                                            'class' => 'form-control
                                                                            price_af_discount',
                                                                            'onchange' => 'calculategst(this)',
                                                                            'data-name' => 'price_af_discount',
                                                                            'data-group' => 'invoice_items',
                                                                            'readonly' => true,
                                                                            ]) }}
                                                                            {{-- <td>
                                                                            </td> --}}

                                                                            <td style="width: 130px;">
                                                                                {{ Form::select('gst_rate', $gst,
                                                                                old('invoice_items')[$i]['gst_rate'] ??
                                                                                null, [
                                                                                'class' => 'form-control
                                                                                gst_type gst_dropdown readonly',
                                                                                'placeholder' => 'Select GST',
                                                                                'onchange' => 'calculategst(this)',
                                                                                'data-name' => 'gst_rate',
                                                                                'data-group' => 'invoice_items',
                                                                                'required' => true,
                                                                                ]) }}
                                                                            </td>

                                                                            <td>
                                                                                {{ Form::text('cgst_rate',
                                                                                old('invoice_items')[$i]['cgst_rate'] ??
                                                                                null, [
                                                                                'class' => 'form-control
                                                                                custom-rate all_gst',
                                                                                'placeholder' => '%',
                                                                                'onchange' => 'calculategst(this)',
                                                                                'data-name' => 'cgst_rate',
                                                                                'data-group' => 'invoice_items',
                                                                                'readonly' => true,
                                                                                ]) }}
                                                                            </td>
                                                                            <td>
                                                                                {{ Form::text('sgst_utgst_rate',
                                                                                old('invoice_items')[$i]['sgst_utgst_rate']
                                                                                ?? null, [
                                                                                'class' => 'form-control
                                                                                custom-rate all_gst',
                                                                                'placeholder' => '%',
                                                                                'onchange' => 'calculategst(this)',
                                                                                'data-name' => 'sgst_utgst_rate',
                                                                                'data-group' => 'invoice_items',
                                                                                'readonly' => true,
                                                                                ]) }}
                                                                            </td>
                                                                            <td>
                                                                                {{ Form::text('igst_rate',
                                                                                old('invoice_items')[$i]['igst_rate'] ??
                                                                                null, [
                                                                                'class' => 'form-control
                                                                                custom-rate all_gst',
                                                                                'placeholder' => '%',
                                                                                'onchange' => 'calculategst(this)',
                                                                                'data-name' => 'igst_rate',
                                                                                'data-group' => 'invoice_items',
                                                                                'readonly' => true,
                                                                                ]) }}
                                                                            </td>


                                                                            <td>{{ Form::text('gst_amount',
                                                                                old('invoice_items')[$i]['gst_amount']
                                                                                ?? null, [
                                                                                'class' => 'form-control
                                                                                gst_amount',
                                                                                'onchange' => 'calculategst(this)',
                                                                                'data-name' => 'gst_amount',
                                                                                'data-group' => 'invoice_items',
                                                                                'required' => true,
                                                                                'readonly' => true,
                                                                                ]) }}
                                                                            </td>

                                                                            <td>{{ Form::text('gross_total',
                                                                                old('invoice_items')[$i]['gross_total']
                                                                                ?? null, [
                                                                                'class' => 'form-control
                                                                                gross_total',
                                                                                'onchange' => 'calculategst(this)',
                                                                                'data-name' => 'gross_total',
                                                                                'data-group' => 'invoice_items',
                                                                                'required' => true,
                                                                                'readonly' => true,
                                                                                ]) }}
                                                                            </td>
                                                                           
                                                                            <td style="width: 210px;">
                                                                                {{ Form::select(
                                                                                'storage_location_id',
                                                                                $storage_locations,
                                                                                old('invoice_items')[$i]['storage_location_id']
                                                                                ?? null,
                                                                                [
                                                                                'class' => 'form-control
                                                                                storage_locations',
                                                                                'placeholder' => 'Select Storage
                                                                                Location',
                                                                                'data-name' => 'storage_location_id',
                                                                                'required' => true,
                                                                                ],
                                                                                ) }}


                                                                            </td>


                                                                            <td><button type='button'
                                                                                    class='btn btn-danger btn-flat btn-xs old_rep_item_del'
                                                                                    data-repeater-delete><i
                                                                                        class='fa fa-fw fa-remove'></i></button>
                                                                            </td>


                                                                        </tr>

                                                                        <?php
                                                                    }
                                                                    ?>



                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>



                                                    </div>
                                                </div>

                                    </section>

                                </div>


                                <div class="col-sm-12">

                                </div>

                            </div>

                            <hr>


                            <div class="row">


                                <div class="col-md-3 col-sm-3">
                                    <div class="form-group">
                                        {{ Form::label('remarks', 'Remarks') }}
                                        {{ Form::textarea('remarks', null, [
                                        'class' => 'form-control remarks',
                                        'placeholder' => 'Remarks',
                                        'style' => 'height:100px;',
                                        ]) }}
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                </div>

                                <div class="col-md-3 col-sm-3">
                                    <div>
                                        <p>Total Before Discount: <strong><span class="total_amount">0</span></strong>
                                        </p>
                                    </div>
                                    <div>
                                        <p>Discount: <strong><input type="number" name="discount" id="discount"
                                                    style="width:30px;" onchange="calculate_grand_total()">
                                                %</strong>
                                            <input class="discount_amt w-25 readonly" value="">
                                        </p>
                                    </div>
                                    <div>
                                        <p>Total After Discount: <strong><span class="total_af_disc"></span>0</strong>
                                        </p>
                                    </div>

                                    <div>
                                        <p>Tax: <strong><span class="gst_total">0</span></strong></p>
                                    </div>
                                    <div>
                                        <p>Rounding: <strong><span class="rounding"></span></strong></p>
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


            var customer_id = $('#party_id option:selected,#party_code option:selected').val();
            if (customer_id != "") {
                get_data_display(customer_id);
            }
            $("#party_id,#party_code").on('change', function() {

            // fetch company_id for party
            $.ajax({
                    method: 'get',
                    url: '{{ route('admin.get_company') }}',
                    data: {
                        party_id: $(this).val(),
                    },
                    // dataType: 'json',
                    success: function(data) {
                        // console.log(data);
                        if(data.is_backdated_date != 0){
                            $('.back_dated').removeClass('d-none');
                        }

                    }
            });

                // usama_12-03-2024-fetch company of party and then make doc number
                $('.doc_no').removeClass('d-none');
                $.ajax({
                    method: 'post',
                    headers: {
                        'X-CSRF-Token': '{{ csrf_token() }}',
                    },
                    url: '{{ route('admin.get_doc_number') }}',
                    data: {
                        id: '{{$series_no}}',
                        party_id: $(this).val(),
                    },
                    // dataType: 'json',
                    success: function(data) {
                        var matches = data.match(/(\d+)$/);
                        var currentNumber = matches ? parseInt(matches[1], 10) : 0;
                        var newNumber = currentNumber + 1;
                        var newDocNumber = data.replace(/\d+$/, newNumber);
                        $('#temp_sales_order_no').val(newDocNumber);

                    }
                });

                var customer_id = $(this).val();
                // alert(customer_id);
                if (customer_id != '') {
                    get_data_display(customer_id);
                }
            });






            $(document).on('click', '.storage_locations option:selected', function(e) {
                if ($(this).val() != '') {
                    var parent_div = $(this).parents()[2];
                    var suffix = $(this).attr('name');
                    $(this).closest('.item_row').find('.modal').modal('show');
                }
            });





        });
</script>


<script>
    var generateId = function(string) {
            return string
                .replace(/\[/g, '_')
                .replace(/\]/g, '')
                .toLowerCase();
        };


        function getFirstNumber(string) {
            // alert(string);
            const regex = /[1-9]/; // Regular expression to match any number from 1 to 9
            const match = string.match(regex);

            if (match) {
                return match[0];
            }

            return null; // If no match found
        }

        function get_invoice_itemnames() {
            setTimeout(() => {
                var itemContent = $('.modal');
                // var group = itemContent.data("group");

                var item = itemContent;
                var input = item.find('.modal_items');

                // console.log(input);
                input.each(function(index, el) {
                    // console.log(el.name);
                    var attrName = $(el).attr('name');
                    var dataName = $(el).data('name');
                    // alert(attrName);
                    // console.log(attrName);
                    var key = attrName.match(/\d+/)[0];
                    // alert(key);
                    var skipName = $(el).data('skip-name');
                    // console.log('attrName',attrName);
                    var group = $(el).data("group");
                    // alert(group);


                    if (key == 0) {
                        $(el).attr("name", group + "[" + key + "]" + "[" + dataName + "]");
                    } else {
                        var key = getFirstNumber(attrName);
                        $(el).attr("name", group + "[" + key + "]" + "[" + dataName + "]");
                    }


                    $(el).attr('id', generateId($(el).attr('name')));
                    $(el).parent().find('label').attr('for', generateId($(el).attr('name')));
                });
            }, 200);
        }


        $(document).ready(function() {

            calculate_grand_total();

            $('.repeater').repeater({
                isFirstItemUndeletable: true,
                // initEmpty: false,
            });


            get_invoice_itemnames();

            $('.add_btn_rep').click(function() {
                get_invoice_itemnames();
            });


            // 08-01-2024 -usama
            $('#party_code').on('change', function() {
                $('#party_id').val($(this).val()).trigger('change.select2');
            });

            $('#party_id').on('change', function() {
                $('#party_code').val($(this).val()).trigger('change.select2');
            });

        });
</script>




@include('backend.autocomplete_typeahead_script')

@endsection