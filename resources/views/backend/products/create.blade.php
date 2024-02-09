@extends('backend.layouts.app')
@section('title', 'Create Product')

@section('content')
    <style>
        .select2-container {
            display: block;
            width: 100% !important;
        }
    </style>
    @php

    @endphp
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Products</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.products') }}">Products</a>
                        </li>
                        <li class="breadcrumb-item active">Add Product</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a class="btn btn-outline-primary" href="{{ route('admin.products') }}">
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
                        <h4 class="card-title">Create Product</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            @include('backend.includes.errors')
                            {{ Form::open(['url' => 'admin/products/store', 'enctype' => 'multipart/form-data']) }}
                            <div class="form-body">
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
                                            {{ Form::select('variant', $variants, null, ['class' => 'select2 form-control variant', 'placeholder' => 'Select Variant', 'id' => 'variant']) }}
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
                                            {{ Form::number('unit_case', null, ['class' => 'form-control', 'placeholder' => 'Enter Units/ Case Or Case Config', 'id' => 'unit_case']) }}
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

                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('ean_barcode', 'EAN/ Barcode') }}
                                            {{ Form::text('ean_barcode', null, ['class' => 'form-control', 'placeholder' => 'Enter EAN/ Barcode']) }}
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-12">
                                        <div class="form-group">
                                            {{ Form::label('mrp', 'MRP') }}
                                            {{ Form::number('mrp', null, ['class' => 'form-control', 'placeholder' => 'Enter MRP']) }}
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



                                    {{-- UoM Group  --}}
                                    <div class="col-md-12 col-12">
                                        {{ Form::label('unit_case', 'UoM Group ') }}
                                        <table class='table borderd'>
                                            <tr>
                                                <th>Sr. No</th>
                                                <th>At. Qty</th>
                                                <th>At UoM</th>
                                                <th>=</th>
                                                <th>Base Qty</th>
                                                <th>Base UoM</th>
                                                <th>Active</th>
                                            </tr>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        1
                                                    </td>

                                                    <td>
                                                        {{ Form::text('at_qty[]', null, ['class' => 'form-control ', 'placeholder' => 'Please Enter Quantity']) }}
                                                    </td>

                                                    <td>
                                                        {{ Form::select('at_uom[]', $uom_types, null, ['class' => 'form-control ', 'placeholder' => 'Please Select UoM Type']) }}
                                                    </td>

                                                    <td>
                                                        =
                                                    </td>

                                                    <td>
                                                        {{ Form::text('base_qty[]', null, ['class' => 'form-control ', 'placeholder' => 'Please Enter Quantity']) }}
                                                    </td>

                                                    <td>
                                                        {{ Form::select('base_uom[]', $uom_types, null, ['class' => 'form-control ', 'placeholder' => 'Please Select UoM Type']) }}
                                                    </td>

                                                    <td>
                                                        {{ Form::checkbox('is_active[]', null) }}
                                                    </td>

                                                </tr>

                                                <tr>
                                                    <td>
                                                        2
                                                    </td>

                                                    <td>
                                                        {{ Form::text('at_qty[]', null, ['class' => 'form-control ', 'placeholder' => 'Please Enter Quantity']) }}
                                                    </td>

                                                    <td>
                                                        {{ Form::select('at_uom[]', $uom_types, null, ['class' => 'form-control ', 'placeholder' => 'Please Select UoM Type']) }}
                                                    </td>

                                                    <td>
                                                        =
                                                    </td>

                                                    <td>
                                                        {{ Form::text('base_qty[]', null, ['class' => 'form-control ', 'placeholder' => 'Please Enter Quantity']) }}
                                                    </td>

                                                    <td>
                                                        {{ Form::select('base_uom[]', $uom_types, null, ['class' => 'form-control ', 'placeholder' => 'Please Select UoM Type']) }}
                                                    </td>

                                                    <td>
                                                        {{ Form::checkbox('is_active[]', null) }}
                                                    </td>

                                                </tr>

                                                <tr>
                                                    <td>
                                                        3
                                                    </td>

                                                    <td>
                                                        {{ Form::text('at_qty[]', null, ['class' => 'form-control ', 'placeholder' => 'Please Enter Quantity']) }}
                                                    </td>

                                                    <td>
                                                        {{ Form::select('at_uom[]', $uom_types, null, ['class' => 'form-control ', 'placeholder' => 'Please Select UoM Type']) }}
                                                    </td>

                                                    <td>
                                                        =
                                                    </td>

                                                    <td>
                                                        {{ Form::text('base_qty[]', null, ['class' => 'form-control ', 'placeholder' => 'Please Enter Quantity']) }}
                                                    </td>

                                                    <td>
                                                        {{ Form::select('base_uom[]', $uom_types, null, ['class' => 'form-control ', 'placeholder' => 'Please Select UoM Type']) }}
                                                    </td>

                                                    <td>
                                                        {{ Form::checkbox('is_active[]', null) }}
                                                    </td>

                                                </tr>

                                                <tr>
                                                    <td>
                                                        4
                                                    </td>

                                                    <td>
                                                        {{ Form::text('at_qty[]', null, ['class' => 'form-control ', 'placeholder' => 'Please Enter Quantity']) }}
                                                    </td>

                                                    <td>
                                                        {{ Form::select('at_uom[]', $uom_types, null, ['class' => 'form-control ', 'placeholder' => 'Please Select UoM Type']) }}
                                                    </td>

                                                    <td>
                                                        =
                                                    </td>

                                                    <td>
                                                        {{ Form::text('base_qty[]', null, ['class' => 'form-control ', 'placeholder' => 'Please Enter Quantity']) }}
                                                    </td>

                                                    <td>
                                                        {{ Form::select('base_uom[]', $uom_types, null, ['class' => 'form-control ', 'placeholder' => 'Please Select UoM Type']) }}
                                                    </td>

                                                    <td>
                                                        {{ Form::checkbox('is_active[]', null) }}
                                                    </td>

                                                </tr>


                                            </tbody>
                                        </table>
                                    </div>


                                    <div class="col-md-12 col-12">
                                        <div class="form-group">
                                            {{ Form::label('product_thumb', 'Product Thumbnail *') }}
                                            <div class="custom-file">
                                                {{ Form::file('product_thumb', ['class' => 'custom-file-input', 'id' => 'product_thumb']) }}
                                                <label class="custom-file-label" for="product_thumb">Choose file</label>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="col-12 d-flex justify-content-start">
                                        {{ Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1']) }}
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
            </div>
        </div>
    </div>

    {{-- variant modal --}}
    <div class="modal fade text-left" id="add_variant_modal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel1" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel1">Add Variant</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    @include('backend.variant._form')
                </div>
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
                    <h4 class="modal-title" id="myModalLabel1">Add HSN</h4>
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


            new MasterHandler('#variant', '#add_variant_modal', '#submit_variant',
                '{{ url('admin/master/store_variant') }}', '', '#name');



        });
    </script>
@endsection
