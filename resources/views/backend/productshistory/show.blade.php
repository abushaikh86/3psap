@extends('backend.layouts.app')
@section('title', 'View Product')

@section('content')
    @php
        $status = ['No' => 'No', 'Yes' => 'Yes'];
        $product_types = ['simple' => 'Simple', 'configurable' => 'Configurable'];

    @endphp
    <style>
        .select2-container {
            display: block;
            width: 100% !important;
        }

        .readonly-form input,
        .readonly-form select,
        .readonly-form .select2-container {
            pointer-events: none;
            background-color: #f4f4f4;
            /* Optional: You can change the background color to visually indicate that the fields are read-only */
        }

        .readonly-form .select2-selection,
        .readonly-form .select2-container input[readonly] {
            background: #f4f4f4;
            /* Optional: You can change the background color to visually indicate that the selected value is read-only */
        }

        .readonly-form .select2-container .select2-selection__arrow {
            display: none;
        }

        .readonly-form input[type="radio"],
        .readonly-form input[type="checkbox"] {
            pointer-events: none;
        }
    </style>
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Product</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{ url()->previous() }}">PRODUCTS HISTORY</a>
                        </li>
                        <li class="breadcrumb-item active">View Product</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a class="btn btn-outline-primary" href="{{ url()->previous() }}">
                        <i class="feather icon-arrow-left"></i> Back
                    </a>
                </div>
            </div>
        </div>
    </div>
    <section id="multiple-column-form">
        <div class="row match-height">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">View Product History</h4>
                    </div>
                    {{-- {{dd($products)}} --}}
                    <div class="card-content">
                        <div class="card-body readonly-form">
                            @include('backend.includes.errors')
                            {!! Form::model($products, [
                                'method' => 'POST',
                                'url' => ['admin/products/update'],
                                'class' => 'form',
                                'enctype' => 'multipart/form-data',
                            ]) !!}
                            {{ Form::hidden('product_item_id', null, ['required' => true, 'id' => 'product_item_id']) }}
                            <div class="form-body">
                                <!-- <h2>General</h2> -->
                                <div class="row">
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('item_type_id', 'Type ', ['class' => '']) }}
                                            {{ Form::select('item_type_id', $item_types, null, ['class' => 'select2 form-control ', 'placeholder' => 'Please Select Type', 'id' => 'item_type_id']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('item_code', 'Item Code ') }}
                                            {{ Form::text('item_code', null, ['class' => 'form-control', 'placeholder' => 'Enter Item Code', 'required' => true, 'id' => 'item_code']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-12">
                                        <div class="form-group">
                                            {{ Form::label('consumer_desc', 'Consumer Description (Product Name)') }}
                                            {{ Form::text('consumer_desc', null, ['class' => 'form-control', 'placeholder' => 'Enter Consumer Description', 'id' => 'consumer_desc']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-12">
                                        <div class="form-group">
                                            {{ Form::label('product_desc', 'Product Description ') }}
                                            {{ Form::text('product_desc', null, ['class' => 'form-control', 'placeholder' => 'Enter Product Description', 'id' => 'product_desc']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('brand_id', 'Brand ', ['class' => '']) }}
                                            {{ Form::select('brand_id', $brands, null, ['class' => 'select2 form-control ', 'placeholder' => 'Please Select Brand', 'id' => 'brand_id']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('category_id', 'Category ', ['class' => '']) }}
                                            {{ Form::select('category_id', $categories, null, ['class' => 'select2 form-control category', 'placeholder' => 'Please Select Category', 'id' => 'product_category_id']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('sub_category_id', 'Sub Category ', ['class' => '']) }}
                                            {{ Form::select('sub_category_id', $sub_categories, null, ['class' => 'select2 form-control subcategory', 'placeholder' => 'Please Select Sub Category']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('variant', 'Variant ') }}
                                            {{ Form::text('variant', null, ['class' => 'form-control', 'placeholder' => 'Enter Variant', 'id' => 'variant']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('buom_pack_size', 'BUoM/ Pack Size ') }}
                                            {{ Form::text('buom_pack_size', null, ['class' => 'form-control', 'placeholder' => 'Enter BUoM/ Pack Size', 'id' => 'buom_pack_size']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('uom_id', 'UoM ', ['class' => '']) }}
                                            {{ Form::select('uom_id', $uoms, null, ['class' => 'select2 form-control uom_id uom_list', 'placeholder' => 'Please Select UoM']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('unit_case', 'Units/ Case Or Case Config ') }}
                                            {{ Form::text('unit_case', null, ['class' => 'form-control', 'placeholder' => 'Enter Units/ Case Or Case Config', 'id' => 'unit_case']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('hsncode_id', 'HSN Code ', ['class' => '']) }}
                                            {{ Form::select('hsncode_id', $hsncodes, null, ['class' => 'select2 form-control hsncode_id', 'placeholder' => 'Please Select HSN Code']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('batch', 'Batch ') }}
                                            {{ Form::text('batch', null, ['class' => 'form-control', 'placeholder' => 'Enter Batch', 'id' => 'batch']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('expiry_date', 'Expiry Date ') }}
                                            {{ Form::date('expiry_date', null, ['class' => 'form-control pickadate', 'placeholder' => 'Enter Expiry Date', 'id' => 'expiry_date']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('shelf_life', 'Shelf Life ', ['class' => '']) }}
                                            {{-- {{ Form::number('shelf_life_number', null, ['class' => 'form-control']) }} --}}
                                            <div class="row">
                                                <div class="col-md-6">
                                                    {{ Form::text('shelf_life_number', null, ['class' => 'form-control', 'placeholder' => 'Enter How Many']) }}

                                                </div>
                                                <div class="col-md-6">
                                                    {{ Form::select('shelf_life', ['month' => 'Month', 'days' => 'Days'], null, ['class' => 'form-control select2', 'id' => 'shelf_life']) }}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('sourcing', 'Sourcing Unit/ Source ') }}
                                            {{ Form::text('sourcing', null, ['class' => 'form-control', 'placeholder' => 'Enter Sourcing Unit/ Source', 'required' => true, 'id' => 'sourcing']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('case_pallet', 'Case/ Pallet ') }}
                                            {{ Form::text('case_pallet', null, ['class' => 'form-control', 'placeholder' => 'Enter Case/ Pallet', 'id' => 'case_pallet']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('layer_pallet', 'Layer/ Pallet ') }}
                                            {{ Form::text('layer_pallet', null, ['class' => 'form-control', 'placeholder' => 'Enter Layer/ Pallet', 'id' => 'layer_pallet']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-12" id="">
                                        <div class="form-group">
                                            {{ Form::label('dimensions_unit_pack', 'Unit/ Pack ') }}
                                            {{ Form::text('dimensions_unit_pack', null, ['class' => 'form-control', 'placeholder' => 'Enter Unit/ Pack']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-12">
                                        <div class="form-group">
                                            {{ Form::label('dimensions_length', 'Case Length ') }}
                                            {{ Form::text('dimensions_length', null, ['class' => 'form-control', 'placeholder' => 'Enter Length']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-12">
                                        <div class="form-group">
                                            {{ Form::label('dimensions_width', 'Case Width') }}
                                            {{ Form::text('dimensions_width', null, ['class' => 'form-control', 'placeholder' => 'Enter Width']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-12">
                                        <div class="form-group">
                                            {{ Form::label('dimensions_height', 'Case Height') }}
                                            {{ Form::text('dimensions_height', null, ['class' => 'form-control', 'placeholder' => 'Enter Height']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-12">
                                        <div class="form-group">
                                            {{ Form::label('dimensions_length_uom_id', 'UoM ', ['class' => '']) }}
                                            {{ Form::select('dimensions_length_uom_id', $uoms, null, ['class' => 'select2 form-control dimensions_length_uom_id uom_list', 'placeholder' => 'Please Select UoM']) }}
                                        </div>
                                    </div>
                                    <!-- <div class="col-md-2 col-12">
                                                                                                                                        <div class="form-group">
                                                                                                                                          {{ Form::label('dimensions_width_uom_id', 'UoM ', ['class' => '']) }}
                                                                                                                                          {{ Form::select('dimensions_width_uom_id', $uoms, null, ['class' => 'select2 form-control dimensions_width_uom_id uom_list', 'placeholder' => 'Please Select UoM']) }}
                                                                                                                                        </div>
                                                                                                                                      </div> -->
                                    <!-- <div class="col-md-2 col-12">
                                                                                                                                        <div class="form-group">
                                                                                                                                          {{ Form::label('dimensions_height_uom_id', 'UoM ', ['class' => '']) }}
                                                                                                                                          {{ Form::select('dimensions_height_uom_id', $uoms, null, ['class' => 'select2 form-control dimensions_height_uom_id uom_list', 'placeholder' => 'Please Select UoM']) }}
                                                                                                                                        </div>
                                                                                                                                      </div> -->
                                    <div class="col-md-2 col-12">
                                        <div class="form-group">
                                            {{ Form::label('dimensions_net_weight', 'Net Weight') }}
                                            {{ Form::text('dimensions_net_weight', null, ['class' => 'form-control', 'placeholder' => 'Enter Net Weight']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-12">
                                        <div class="form-group">
                                            {{ Form::label('dimensions_gross_weight', 'Gross Weight') }}
                                            {{ Form::text('dimensions_gross_weight', null, ['class' => 'form-control', 'placeholder' => 'Enter Gross Weight']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-12">
                                        <div class="form-group">
                                            {{ Form::label('dimensions_net_uom_id', 'UoM ', ['class' => '']) }}
                                            {{ Form::select('dimensions_net_uom_id', $uoms, null, ['class' => 'select2 form-control dimensions_net_uom_id uom_list', 'placeholder' => 'Please Select UoM']) }}
                                        </div>
                                    </div>
                                    <!-- <div class="col-md-2 col-12">
                                                                                                                                        <div class="form-group">
                                                                                                                                          {{ Form::label('dimensions_gross_weight_uom_id', 'UoM ', ['class' => '']) }}
                                                                                                                                          {{ Form::select('dimensions_gross_weight_uom_id', $uoms, null, ['class' => 'select2 form-control dimensions_gross_weight_uom_id uom_list', 'placeholder' => 'Please Select UoM']) }}
                                                                                                                                        </div>
                                                                                                                                      </div> -->
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('ean_barcode', 'EAN/ Barcode') }}
                                            {{ Form::text('ean_barcode', null, ['class' => 'form-control', 'placeholder' => 'Enter EAN/ Barcode']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-12">
                                        <div class="form-group">
                                            {{ Form::label('mrp', 'MRP') }}
                                            {{ Form::text('mrp', null, ['class' => 'form-control', 'placeholder' => 'Enter MRP']) }}
                                        </div>
                                    </div>

                                    <div class="col-md-3 col-12">
                                        <div class="form-group">
                                            {{ Form::label('gst_id', 'GST (%)', ['class' => '']) }}
                                            {{ Form::select('gst_id', $gst, null, ['class' => 'form-control', 'placeholder' => 'Please Select GST']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-6">
                                        {{ Form::label('visibility', 'Show / Hide') }}
                                        <fieldset class="">
                                            <div class="radio radio-success">
                                                {{ Form::radio('visibility', '1', true, ['id' => 'radioshow']) }}
                                                {{ Form::label('radioshow', 'Yes') }}
                                            </div>
                                            <!-- </fieldset>
                                                                                                                                        <fieldset> -->
                                            <div class="radio radio-danger">
                                                {{ Form::radio('visibility', '0', false, ['id' => 'radiohide']) }}
                                                {{ Form::label('radiohide', 'No') }}
                                            </div>
                                        </fieldset>
                                    </div>
                                    {{-- Repeater code  --}}
                                    <div class='col-md-12 col-12'>
                                        {{ Form::label('table', 'Inventory') }}
                                        <table class='table borderd'>
                                            <tr>
                                                <th>Sr. No</th>
                                                <th>Storage Location</th>
                                                {{-- <th>Quantity</th> --}}
                                            </tr>
                                            <tbody>
                                                @if (isset($qty_location) && count($qty_location) > 0)
                                                    @foreach ($qty_location as $qty)
                                                        <tr>
                                                            <td>
                                                                {{ $loop->index + 1 }}
                                                            </td>

                                                            <td>
                                                                {{ Form::select('storage_location_id[]', $storage_locations, $qty->storage_location_id, ['class' => 'select2 form-control w-100', 'placeholder' => 'Please Select Storage Location']) }}
                                                            </td>

                                                            {{-- <td>
                                                                {{ Form::text('qty[]', $qty->qty, ['class' => 'form-control ', 'placeholder' => 'Please Enter Quantity']) }}
                                                            </td> --}}

                                                        </tr>
                                                    @endforeach
                                                @else
                                                    <tr>
                                                        <td>
                                                            1
                                                        </td>

                                                        <td>
                                                            {{ Form::select('storage_location_id[]', $storage_locations, null, ['class' => 'select2 form-control w-100', 'placeholder' => 'Please Select Storage Location']) }}
                                                        </td>

                                                        <td class="d-none">
                                                            {{ Form::text('qty[]', null, ['class' => 'form-control ', 'placeholder' => 'Please Enter Quantity']) }}
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            2
                                                        </td>

                                                        <td>
                                                            {{ Form::select('storage_location_id[]', $storage_locations, null, ['class' => 'select2 form-control w-100', 'placeholder' => 'Please Select Storage Location']) }}
                                                        </td>

                                                        <td class="d-none">
                                                            {{ Form::text('qty[]', null, ['class' => 'form-control ', 'placeholder' => 'Please Enter Quantity']) }}
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            3
                                                        </td>

                                                        <td>
                                                            {{ Form::select('storage_location_id[]', $storage_locations, null, ['class' => 'select2 form-control w-100', 'placeholder' => 'Please Select Storage Location']) }}
                                                        </td>

                                                        <td class="d-none">
                                                            {{ Form::text('qty[]', null, ['class' => 'form-control ', 'placeholder' => 'Please Enter Quantity']) }}
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            4
                                                        </td>

                                                        <td>
                                                            {{ Form::select('storage_location_id[]', $storage_locations, null, ['class' => 'select2 form-control w-100', 'placeholder' => 'Please Select Storage Location']) }}
                                                        </td>

                                                        <td class="d-none">
                                                            {{ Form::text('qty[]', null, ['class' => 'form-control ', 'placeholder' => 'Please Enter Quantity']) }}
                                                        </td>
                                                    </tr>
                                                @endif
                                            </tbody>
                                        </table>

                                        {{-- @if (isset($qty_location) && count($qty_location) > 0)  --}}
                                        {{-- @foreach ($qty_location as $qty)
                                            <div class="col-md-6 col-12">
                                                <div class="form-group">
                                                    {{ Form::label('qty', 'Quantity ', ['class' => '']) }}
                                    {{ Form::text('qty[]', $qty->qty, ['class' => 'form-control', 'placeholder' => 'Please Enter Quantity']) }}
                                </div>
                            </div>

                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    {{ Form::label('storage_location_id', 'Storage Location 1', ['class' => '']) }}
                                    {{ Form::select('storage_location_id[]', $storage_locations, $qty->storage_location_id, ['class' => 'select2 form-control', 'placeholder' => 'Please Select Storage Location']) }}
                                </div>
                            </div>
                            @endforeach --}}
                                        {{-- @else
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                {{ Form::label('qty', 'Quantity ', ['class' => '']) }}
                            {{ Form::text('qty[]', null, ['class' => 'form-control', 'placeholder' => 'Please Enter Quantity']) }}
                        </div>
                    </div>

                    <div class="col-md-6 col-12">
                        <div class="form-group">
                            {{ Form::label('storage_location_id', 'Storage Location 1', ['class' => '']) }}
                            {{ Form::select('storage_location_id[]', $storage_locations, null, ['class' => 'select2 form-control', 'placeholder' => 'Please Select Storage Location']) }}
                        </div>
                    </div>
                    @endif --}}
                                    </div>
                                    {{-- Repeater code end  --}}
                                    <div class="col-md-12 col-12">
                                        <div class="form-group">
                                            {{ Form::label('product_thumb', 'Product Thumbnail *') }}
                                            <div class="custom-file">
                                                @if (!empty($products->product_thumb))
                                                    <a href="{{ asset('public/backend-assets/images/') }}/{{ $products->product_thumb }}"
                                                        target="_blank"><img class="card-img-top img-fluid mb-1"
                                                            src="{{ asset('public/backend-assets/images/') }}/{{ $products->product_thumb }}"
                                                            alt="Product Image" style="width:50px"></a>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                    {{-- <div class="col-12 d-flex justify-content-start">
                                        {{ Form::submit('Update', ['class' => 'btn btn-primary mr-1 mb-1']) }}
                                    </div> --}}
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
    <div class="modal fade text-left" id="image_delete_toast" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel120" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
            <div class="modal-content">
                <div class="modal-header bg-danger">
                    <h5 class="modal-title white" id="myModalLabel120">Warning</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <i class="bx bx-x"></i>
                    </button>
                </div>
                <div class="modal-body" id="delete_image_toast_content">
                    Please Select Product Images To Delete.
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-light-secondary" data-dismiss="modal">
                        <i class="bx bx-x d-block d-sm-none"></i>
                        <span class="d-none d-sm-block">Close</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!-- brands modal -->
    <div class="modal fade text-left" id="add_brand_modal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel1" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel1">Add Brand</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    @include('backend.brands._form')
                </div>
                <!-- <div class="modal-footer">
                                                                                                                              <button type="button" class="btn grey btn-outline-secondary" data-dismiss="modal">Close</button>
                                                                                                                              <button type="button" class="btn btn-outline-primary">Save changes</button>
                                                                                                                          </div> -->
            </div>
        </div>
    </div>
    <!-- uoms modal -->
    <div class="modal fade text-left" id="add_uom_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel1">Add Brand</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    @include('backend.uoms._form')
                </div>
            </div>
        </div>
    </div>
    <!-- hsncodes modal -->
    <div class="modal fade text-left" id="add_hsncode_modal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel1" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel1">Add Brand</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    @include('backend.hsncodes._form')
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade text-left" id="add_category_modal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel1" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel1">Add Category</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    @include('backend.categories._form')
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade text-left" id="add_sub_category_modal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel1" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel1">Add Sub Category</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    @include('backend.subcategories._form', compact('categories'))
                </div>
            </div>
        </div>
    </div>

    <script src="{{ asset('public/backend-assets/js/MasterHandler.js') }}"></script>

    <script>
        $(document).ready(function() {
            // if ($(".category").val() != '') {
            //     subcategories($(".category").val());
            // }
            // $(".category").change(function() {
            //     var category_id = $(this).val();
            //     subcategories(category_id);
            // });

            // function subcategories(category_id) {
            //     $.ajax({
            //         url: '{{ url('admin/products/getsubcategory') }}',
            //         type: 'post',
            //         data: {
            //             category_id: category_id,
            //             _token: "{{ csrf_token() }}",
            //         },
            //         success: function(data) {
            //             //console.log(data);
            //             $('.subcategory').html(data);
            //             $('.subsubcategory').html('');
            //             // $('.hsncode_id').html('');
            //         }
            //     });
            // }


            new MasterHandler('#brand_id', '#add_brand_modal', '#submit_brand',
                '{{ url('admin/master/store_brand') }}', '', '#brand_name');

            new MasterHandler('#product_category_id', '#add_category_modal', '#submit_category',
                '{{ url('admin/master/store_product_category') }}', '', '#category_name',
                'input[name=visibility]:checked');

            new MasterHandler('#sub_category_id', '#add_sub_category_modal', '#submit_sub_category',
                '{{ url('admin/master/store_product_sub_category') }}', '', '#subcategory_name',
                'input[name=visibility]:checked');


            new MasterHandler('#uom_id', '#add_uom_modal', '#submit_uom',
                '{{ url('admin/uoms/store') }}', '', '#uom_name',
                '#uom_desc');

            new MasterHandler('#hsncode_id', '#add_hsncode_modal', '#submit_hsncode',
                '{{ url('admin/master/store_hsn') }}', '', '#hsncode_name',
                '#hsncode_desc');



        });
    </script>
@endsection
