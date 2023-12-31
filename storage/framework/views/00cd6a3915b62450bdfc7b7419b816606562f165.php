<?php $__env->startSection('title', 'Create Order Boooking'); ?>


<?php $__env->startSection('content'); ?>

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Order Boooking</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Order Boooking</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a href="<?php echo e(route('admin.orderbooking')); ?>" class="btn btn-outline-secondary float-right"><i
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

                                <?php echo $__env->make('backend.includes.errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                <?php echo e(Form::open(['url' => 'admin/orderbooking/store'])); ?>

                                <?php echo e(Form::hidden('financial_year', $fyear)); ?>

                                <?php echo e(Form::hidden('bill_to_state', '', ['class' => 'bill_to_state'])); ?>

                                <?php echo e(Form::hidden('party_name', '', ['class' => 'party_name'])); ?>

                                <?php echo e(Form::hidden('party_state', '', ['class' => 'party_state'])); ?>

                                <?php echo e(Form::hidden('bill_to_gst_no', '', ['class' => 'bill_to_gst_no'])); ?>

                                <div class="form-body">
                                    <div class="row">
                                        
                                        
                                        <div class="col-md-3 col-sm-12">
                                            <div class="form-group">
                                                
                                                <?php echo e(Form::hidden('bill_date', date('Y-m-d'), ['class' => ' form-control digits', 'placeholder' => 'PurchaseOrder Date', 'required' => true, 'readonly' => true])); ?>

                                            </div>
                                        </div>

                                        


                                        <div class="col-md-3 col-sm-12 d-none">
                                            <div class="form-group">
                                                <?php echo e(Form::label('company_gstin', 'GSTIN *')); ?>

                                                <?php echo e(Form::text('company_gstin', null, ['class' => 'form-control', 'placeholder' => 'GSTIN'])); ?>

                                            </div>
                                        </div>

                                        


                                        <div class="col-sm-12">
                                            
                                        </div>
                                    </div>

                                    <div class="row">

                                        <div class="col-sm-6">


                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="col-md-12 col-sm-12">
                                                        <div class="form-group">
                                                            <?php echo e(Form::label('party_id', 'Customer *')); ?>

                                                            <?php echo e(Form::select('party_id', $party, null, ['class' => 'form-control select2', 'id' => 'party_id', 'placeholder' => 'Select Bill To', 'required' => true])); ?>

                                                        </div>
                                                    </div>

                                                    <div class="col-md-12 col-sm-12">
                                                        <div class="form-group">
                                                            
                                                            <?php echo e(Form::hidden('bill_to_gst_no', null, ['class' => 'form-control bill_to_gst_no', 'placeholder' => 'GSTIN/UIN', 'readonly' => true])); ?>

                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 col-sm-12">
                                                        <div class="form-group">
                                                            <?php echo e(Form::label('contact_person', 'Contact Person *')); ?>

                                                            <select name="contact_person" id="contact_person"
                                                                class="form-control" required></select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 col-sm-12">
                                                        <div class="form-group">
                                                            <?php echo e(Form::label('customer_ref_no', 'Customer Refrence Number *')); ?>

                                                            <?php echo e(Form::text('customer_ref_no', null, ['class' => 'form-control customer_ref_no', 'placeholder' => 'Customer Refrence Number', 'required' => true])); ?>

                                                        </div>
                                                    </div>

                                                    <div class="col-md-12 col-sm-12">
                                                        <div class="form-group">
                                                            <?php echo e(Form::label('place_of_supply', 'Place Of Supply *')); ?>

                                                            <?php echo e(Form::text('place_of_supply', null, ['class' => 'form-control place_of_supply', 'placeholder' => 'Place Of Supply', 'required' => true])); ?>

                                                        </div>
                                                    </div>



                                                </div>

                                                <div class="col-sm-6">
                                                    <div class="col-md-12 col-sm-12">
                                                        <div class="form-group">
                                                            <?php echo e(Form::label('bill_to', 'Bill To *')); ?>

                                                            <select name="bill_to" id="bill_to" class="form-control"
                                                                required></select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 col-sm-12">
                                                        <div class="form-group">
                                                            <?php echo e(Form::label('ship_from', 'Ship From *')); ?>

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
                                                <?php echo e(Form::label('status', 'Status *')); ?>

                                                <?php echo e(Form::select('status', ['open' => 'Open', 'close' => 'Close'], null, ['class' => 'form-control status', 'placeholder' => 'Select Status', 'required' => true])); ?>

                                            </div>


                                            <div class="form-group">
                                                <?php echo e(Form::label('posting_date', 'Posting Date *')); ?>

                                                <?php echo e(Form::date('posting_date', date('Y-m-d'), ['class' => 'form-control ', 'placeholder' => 'Posting Date', 'required' => true, 'readonly' => true])); ?>

                                            </div>

                                            <div class="form-group">
                                                <?php echo e(Form::label('delivery_date', 'Delivery Date *')); ?>

                                                <?php echo e(Form::date('delivery_date', null, ['class' => 'form-control delivery_date', 'placeholder' => 'Delivery Date', 'required' => true])); ?>

                                            </div>

                                            <div class="form-group">
                                                <?php echo e(Form::label('document_date', 'Document Date *')); ?>

                                                <?php echo e(Form::date('document_date', date('Y-m-d'), ['class' => 'form-control document_date', 'placeholder' => 'Document Date', 'required' => true])); ?>

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
                                                        



                                                        
                                                        

                                                        
                                                        
                                                        <div class="repeater-heading">
                                                            

                                                        </div>

                                                        <!-- Repeater Items -->
                                                        

                                                        <div class="conatiner-fluid table-responsive repeater">
                                                            <button type="button" data-repeater-create
                                                                class="btn btn-primary pull-right mb-2 add_btn_rep">Add</button>
                                                            <div class="table-responsive">
                                                                <table class="table table-bordered " id="repeater"
                                                                    style="width:120%;">
                                                                    <thead class="bg-light" style="font-size:10px;">
                                                                        <tr>
                                                                            <td class="adjust_col">
                                                                                <?php echo e(Form::label('item_code', 'Item Code')); ?>

                                                                            </td>
                                                                            <td class="adjust_col">
                                                                                <?php echo e(Form::label('item_name', 'Item Description')); ?>

                                                                            </td>
                                                                            <td class="adjust_col">
                                                                                <?php echo e(Form::label('hsn_sac', 'HSN/SAC')); ?>

                                                                            </td>
                                                                            <td><?php echo e(Form::label('qty', 'Quantity')); ?></td>
                                                                            <td><?php echo e(Form::label('taxable_amount', 'Unit Price')); ?>

                                                                            </td>
                                                                            <td><?php echo e(Form::label('discount', 'Disocunt')); ?>

                                                                            </td>
                                                                            <td><?php echo e(Form::label('price_af_discount', 'Price After Disocunt')); ?>

                                                                            </td>

                                                                            <td class="adjust_col">
                                                                                <?php echo e(Form::label('GST', 'GST (%)')); ?></td>
                                                                            <td><?php echo e(Form::label('CGST', 'CGST (%)')); ?></td>
                                                                            <td><?php echo e(Form::label('SGST', 'SGST (%)')); ?></td>
                                                                            <td><?php echo e(Form::label('IGST', 'IGST (%)')); ?></td>

                                                                            <td><?php echo e(Form::label('Amount', 'GST Amount')); ?>

                                                                            </td>
                                                                            <td><?php echo e(Form::label('total', 'Total INR')); ?>

                                                                            </td>
                                                                            <td><?php echo e(Form::label('storage_location_id', 'Warehouse')); ?>

                                                                            </td>
                                                                            <td></td>

                                                                        </tr>
                                                                    </thead>
                                                                    <tbody data-repeater-list="invoice_items">


                                                                        <?php
                                                                    for ($i=0; $i < count(old('invoice_items')??['1']); $i++){ 
                                                                    ?>

                                                                        <tr data-repeater-item class="item_row">
                                                                            <?php echo e(Form::hidden('bill_to_state', old('invoice_items')[$i]['bill_to_state'] ?? null, ['class' => 'form-control bill_to_state', 'onchange' => 'calculategst(this)', 'data-name' => 'bill_to_state', 'data-group' => 'invoice_items', 'required' => true])); ?>

                                                                            <?php echo e(Form::hidden('party_state', old('invoice_items')[$i]['party_state'] ?? null, ['class' => 'form-control party_state', 'onchange' => 'calculategst(this)', 'data-name' => 'party_state', 'data-group' => 'invoice_items', 'required' => true])); ?>


                                                                            <?php echo e(Form::hidden('cgst_rate', old('invoice_items')[$i]['cgst_rate'] ?? null, ['class' => 'form-control custom-rate', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'cgst_rate', 'data-group' => 'invoice_items'])); ?>

                                                                            <?php echo e(Form::hidden('cgst_amount', old('invoice_items')[$i]['cgst_amount'] ?? null, ['class' => 'form-control custom-amount cgst_amount', 'placeholder' => 'Amt.', 'onchange' => 'calculategst(this)', 'data-name' => 'cgst_amount', 'data-group' => 'invoice_items'])); ?>


                                                                            <?php echo e(Form::hidden('sgst_utgst_rate', old('invoice_items')[$i]['sgst_utgst_rate'] ?? null, ['class' => 'form-control custom-rate', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'sgst_utgst_rate', 'data-group' => 'invoice_items'])); ?>

                                                                            <?php echo e(Form::hidden('sgst_utgst_amount', old('invoice_items')[$i]['sgst_utgst_amount'] ?? null, ['class' => 'form-control custom-amount sgst_utgst_amount', 'placeholder' => 'Amt.', 'onchange' => 'calculategst(this)', 'data-name' => 'sgst_utgst_amount', 'data-name' => 'sgst_utgst_amount', 'data-group' => 'invoice_items'])); ?>


                                                                            <?php echo e(Form::hidden('igst_rate', old('invoice_items')[$i]['igst_rate'] ?? null, ['class' => 'form-control custom-rate', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'igst_rate', 'data-group' => 'invoice_items'])); ?>

                                                                            <?php echo e(Form::hidden('igst_amount', old('invoice_items')[$i]['igst_amount'] ?? null, ['class' => 'form-control custom-amount igst_amount', 'placeholder' => 'Amt.', 'onchange' => 'calculategst(this)', 'data-name' => 'igst_amount', 'data-group' => 'invoice_items'])); ?>


                                                                            <?php echo e(Form::hidden('gross_total', old('invoice_items')[$i]['gross_total'] ?? null, ['class' => 'form-control gross_total', 'onchange' => 'calculategst(this)', 'data-name' => 'gross_total', 'data-group' => 'invoice_items', 'required' => true, 'readonly' => true])); ?>


                                                                            <td><?php echo e(Form::number('item_code', old('invoice_items')[$i]['item_code'] ?? null, ['data-id' => 'item_code', 'id' => 'auto_product_' . $i, 'class' => 'form-control  item_code typeahead', 'autocomplete' => 'on', 'data-group' => 'invoice_items', 'required' => true])); ?>

                                                                            </td>

                                                                            <td><?php echo e(Form::text('item_name', old('invoice_items')[$i]['item_name'] ?? null, ['data-id' => 'item_name', 'id' => 'item_name', 'data-name' => 'item_name', 'class' => 'form-control  item_name typeahead', 'autocomplete' => 'off', 'required' => true,'oninput' => 'validateInput(this)'])); ?>

                                                                            </td>
                                                                            <td><?php echo e(Form::text('hsn_sac', old('invoice_items')[$i]['hsn_sac'] ?? null, ['class' => 'form-control  hsn_sac', 'data-name' => 'hsn_sac', 'required' => true])); ?>

                                                                            </td>
                                                                            <td> <?php echo e(Form::number('qty', old('invoice_items')[$i]['qty'] ?? null, ['class' => 'form-control  qty', 'onchange' => 'calculategst(this)', 'data-name' => 'qty', 'data-group' => 'invoice_items', 'required' => true])); ?>

                                                                            </td>
                                                                            <td><?php echo e(Form::number('taxable_amount', old('invoice_items')[$i]['taxable_amount'] ?? null, ['class' => 'form-control  taxable_amount', 'onchange' => 'calculategst(this)', 'data-name' => 'taxable_amount', 'data-group' => 'invoice_items', 'required' => true])); ?>

                                                                            </td>
                                                                            <td><?php echo e(Form::number('discount_item', old('invoice_items')[$i]['discount_item'] ?? null, ['class' => 'form-control  discount_item', 'id' => 'discount_item', 'onchange' => 'calculategst(this)', 'data-name' => 'discount_item', 'data-group' => 'invoice_items'])); ?>

                                                                            </td>
                                                                            <td><?php echo e(Form::text('price_af_discount', old('invoice_items')[$i]['price_af_discount'] ?? null, ['class' => 'form-control  price_af_discount', 'onchange' => 'calculategst(this)', 'data-name' => 'price_af_discount', 'data-group' => 'invoice_items', 'readonly' => true])); ?>

                                                                            </td>

                                                                            <td style="width: 130px;">
                                                                                <?php echo e(Form::select('gst_rate', $gst, old('invoice_items')[$i]['gst_rate'] ?? null, ['class' => 'form-control    gst_type gst_dropdown', 'placeholder' => 'Select GST', 'onchange' => 'calculategst(this)', 'data-name' => 'gst_rate', 'data-group' => 'invoice_items', 'required' => true])); ?>

                                                                            </td>

                                                                            <td>
                                                                                <?php echo e(Form::text('cgst_rate', old('invoice_items')[$i]['cgst_rate'] ?? null, ['class' => 'form-control custom-rate all_gst', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'cgst_rate', 'data-group' => 'invoice_items', 'readonly' => true])); ?>

                                                                            </td>
                                                                            <td>
                                                                                <?php echo e(Form::text('sgst_utgst_rate', old('invoice_items')[$i]['sgst_utgst_rate'] ?? null, ['class' => 'form-control custom-rate all_gst', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'sgst_utgst_rate', 'data-group' => 'invoice_items', 'readonly' => true])); ?>

                                                                            </td>
                                                                            <td>
                                                                                <?php echo e(Form::text('igst_rate', old('invoice_items')[$i]['igst_rate'] ?? null, ['class' => 'form-control custom-rate all_gst', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'igst_rate', 'data-group' => 'invoice_items', 'readonly' => true])); ?>

                                                                            </td>


                                                                            <td><?php echo e(Form::text('gst_amount', old('invoice_items')[$i]['gst_amount'] ?? null, ['class' => 'form-control  gst_amount', 'onchange' => 'calculategst(this)', 'data-name' => 'gst_amount', 'data-group' => 'invoice_items', 'required' => true, 'readonly' => true])); ?>

                                                                            </td>
                                                                            <td><?php echo e(Form::text('total', old('invoice_items')[$i]['total'] ?? null, ['class' => 'form-control  total', 'onchange' => 'calculategst(this)', 'data-name' => 'total', 'data-group' => 'invoice_items', 'required' => true, 'readonly' => true])); ?>

                                                                            </td>
                                                                            <td style="width: 210px;">
                                                                                <?php echo e(Form::select('storage_location_id', $storage_locations, old('invoice_items')[$i]['storage_location_id'] ?? null, ['class' => 'form-control  storage_locations', 'placeholder' => 'Select Storage Location', 'data-name' => 'storage_location_id'])); ?>


                                                                                
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
                                                                                                    Assign Batch</h4>
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
                                                                                                                        class='form-control modal_items'
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td><input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][0][manufacturing_date"
                                                                                                                        data-name="batches][0][manufacturing_date"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][0][expiry_date"
                                                                                                                        data-name="batches][0][expiry_date"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                            </tr>

                                                                                                            <tr>
                                                                                                                <td>2
                                                                                                                </td>
                                                                                                                <td><input
                                                                                                                        type="text"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][1][batch_no"
                                                                                                                        data-name="batches][1][batch_no"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td><input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][1][manufacturing_date"
                                                                                                                        data-name="batches][1][manufacturing_date"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][1][expiry_date"
                                                                                                                        data-name="batches][1][expiry_date"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td>3
                                                                                                                </td>
                                                                                                                <td><input
                                                                                                                        type="text"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][2][batch_no"
                                                                                                                        data-name="batches][2][batch_no"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td><input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][2][manufacturing_date"
                                                                                                                        data-name="batches][2][manufacturing_date"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][2][expiry_date"
                                                                                                                        data-name="batches][2][expiry_date"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td>4
                                                                                                                </td>
                                                                                                                <td><input
                                                                                                                        type="text"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][3][batch_no"
                                                                                                                        data-name="batches][3][batch_no"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td><input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][3][manufacturing_date"
                                                                                                                        data-name="batches][3][manufacturing_date"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][3][expiry_date"
                                                                                                                        data-name="batches][3][expiry_date"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                            </tr>

                                                                                                            <tr>
                                                                                                                <td>5
                                                                                                                </td>
                                                                                                                <td><input
                                                                                                                        type="text"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][4][batch_no"
                                                                                                                        data-name="batches][4][batch_no"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td><input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][4][manufacturing_date"
                                                                                                                        data-name="batches][4][manufacturing_date"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][4][expiry_date"
                                                                                                                        data-name="batches][4][expiry_date"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                            </tr>

                                                                                                            <tr>
                                                                                                                <td>6
                                                                                                                </td>
                                                                                                                <td><input
                                                                                                                        type="text"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][5][batch_no"
                                                                                                                        data-name="batches][5][batch_no"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td><input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][5][manufacturing_date"
                                                                                                                        data-name="batches][5][manufacturing_date"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][5][expiry_date"
                                                                                                                        data-name="batches][5][expiry_date"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                            </tr>

                                                                                                            <tr>
                                                                                                                <td>7
                                                                                                                </td>
                                                                                                                <td><input
                                                                                                                        type="text"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][6][batch_no"
                                                                                                                        data-name="batches][6][batch_no"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td><input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][6][manufacturing_date"
                                                                                                                        data-name="batches][6][manufacturing_date"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][6][expiry_date"
                                                                                                                        data-name="batches][6][expiry_date"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                            </tr>

                                                                                                            <tr>
                                                                                                                <td>8
                                                                                                                </td>
                                                                                                                <td><input
                                                                                                                        type="text"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][7][batch_no"
                                                                                                                        data-name="batches][7][batch_no"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td><input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][7][manufacturing_date"
                                                                                                                        data-name="batches][7][manufacturing_date"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][7][expiry_date"
                                                                                                                        data-name="batches][7][expiry_date"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                            </tr>

                                                                                                            <tr>
                                                                                                                <td>9
                                                                                                                </td>
                                                                                                                <td><input
                                                                                                                        type="text"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][8][batch_no"
                                                                                                                        data-name="batches][8][batch_no"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td><input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][8][manufacturing_date"
                                                                                                                        data-name="batches][8][manufacturing_date"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][8][expiry_date"
                                                                                                                        data-name="batches][8][expiry_date"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                            </tr>

                                                                                                            <tr>
                                                                                                                <td>10
                                                                                                                </td>
                                                                                                                <td><input
                                                                                                                        type="text"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][9][batch_no"
                                                                                                                        data-name="batches][9][batch_no"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td><input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][9][manufacturing_date"
                                                                                                                        data-name="batches][9][manufacturing_date"
                                                                                                                        data-group="invoice_items"
                                                                                                                        id="">
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <input
                                                                                                                        type="date"
                                                                                                                        class='form-control modal_items'
                                                                                                                        name="batches][9][expiry_date"
                                                                                                                        data-name="batches][9][expiry_date"
                                                                                                                        data-group="invoice_items"
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
                                                                                    
                                                                                </div>

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
                                                <?php echo e(Form::label('remarks', 'Remarks')); ?>

                                                <?php echo e(Form::textarea('remarks', null, ['class' => 'form-control remarks', 'placeholder' => 'Remarks', 'style' => 'height:100px;'])); ?>

                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-6">
                                        </div>

                                        <div class="col-md-3 col-sm-3">
                                            <div>
                                                <p>Total Before Discount: <strong><span
                                                            class="total_amount">0</span></strong></p>
                                            </div>
                                            <div>
                                                <p>Discount: <strong><input type="number" name="discount" id="discount"
                                                            style="width:30px;" onchange="calculate_grand_total()">
                                                        %</strong>
                                                    <input class="discount_amt w-25" value="">
                                                </p>
                                            </div>
                                            <div>
                                                <p>Total After Discount: <strong><span
                                                            class="total_af_disc"></span>0</strong></p>
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
                                        <?php echo e(Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1'])); ?>

                                        <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                                    </div>
                                    <?php echo e(Form::close()); ?>

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


        });
    </script>




    <?php echo $__env->make('backend.autocomplete_typeahead_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/3psap/resources/views/backend/orderbooking/create.blade.php ENDPATH**/ ?>