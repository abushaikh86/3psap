<?php $__env->startSection('title', 'View Product'); ?>

<?php $__env->startSection('content'); ?>
    <?php
        $status = ['No' => 'No', 'Yes' => 'Yes'];
        $product_types = ['simple' => 'Simple', 'configurable' => 'Configurable'];

    ?>
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
                            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="<?php echo e(url()->previous()); ?>">PRODUCTS HISTORY</a>
                        </li>
                        <li class="breadcrumb-item active">View Product</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a class="btn btn-outline-primary" href="<?php echo e(url()->previous()); ?>">
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
                    
                    <div class="card-content">
                        <div class="card-body readonly-form">
                            <?php echo $__env->make('backend.includes.errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <?php echo Form::model($products, [
                                'method' => 'POST',
                                'url' => ['admin/products/update'],
                                'class' => 'form',
                                'enctype' => 'multipart/form-data',
                            ]); ?>

                            <?php echo e(Form::hidden('product_item_id', null, ['required' => true, 'id' => 'product_item_id'])); ?>

                            <div class="form-body">
                                <!-- <h2>General</h2> -->
                                <div class="row">
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('item_type_id', 'Type ', ['class' => ''])); ?>

                                            <?php echo e(Form::select('item_type_id', $item_types, null, ['class' => 'select2 form-control ', 'placeholder' => 'Please Select Type', 'id' => 'item_type_id'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('item_code', 'Item Code ')); ?>

                                            <?php echo e(Form::text('item_code', null, ['class' => 'form-control', 'placeholder' => 'Enter Item Code', 'required' => true, 'id' => 'item_code'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-12 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('consumer_desc', 'Consumer Description (Product Name)')); ?>

                                            <?php echo e(Form::text('consumer_desc', null, ['class' => 'form-control', 'placeholder' => 'Enter Consumer Description', 'id' => 'consumer_desc'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-12 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('product_desc', 'Product Description ')); ?>

                                            <?php echo e(Form::text('product_desc', null, ['class' => 'form-control', 'placeholder' => 'Enter Product Description', 'id' => 'product_desc'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('brand_id', 'Brand ', ['class' => ''])); ?>

                                            <?php echo e(Form::select('brand_id', $brands, null, ['class' => 'select2 form-control ', 'placeholder' => 'Please Select Brand', 'id' => 'brand_id'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('category_id', 'Category ', ['class' => ''])); ?>

                                            <?php echo e(Form::select('category_id', $categories, null, ['class' => 'select2 form-control category', 'placeholder' => 'Please Select Category', 'id' => 'product_category_id'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('sub_category_id', 'Sub Category ', ['class' => ''])); ?>

                                            <?php echo e(Form::select('sub_category_id', $sub_categories, null, ['class' => 'select2 form-control subcategory', 'placeholder' => 'Please Select Sub Category'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('variant', 'Variant ')); ?>

                                            <?php echo e(Form::select('variant', $variants, null,['class' => 'form-control', 'placeholder' => 'Enter Variant', 'id' => 'variant'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('buom_pack_size', 'BUoM/ Pack Size ')); ?>

                                            <?php echo e(Form::text('buom_pack_size', null, ['class' => 'form-control', 'placeholder' => 'Enter BUoM/ Pack Size', 'id' => 'buom_pack_size'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('uom_id', 'UoM ', ['class' => ''])); ?>

                                            <?php echo e(Form::select('uom_id', $uoms, null, ['class' => 'select2 form-control uom_id uom_list', 'placeholder' => 'Please Select UoM'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('unit_case', 'Units/ Case Or Case Config ')); ?>

                                            <?php echo e(Form::text('unit_case', null, ['class' => 'form-control', 'placeholder' => 'Enter Units/ Case Or Case Config', 'id' => 'unit_case'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('hsncode_id', 'HSN Code ', ['class' => ''])); ?>

                                            <?php echo e(Form::text('hsncode_id', null, ['class' => ' form-control ', 'placeholder' => 'Please Select HSN Code'])); ?>

                                        </div>
                                    </div>
            
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('shelf_life', 'Shelf Life ', ['class' => ''])); ?>

                                            
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <?php echo e(Form::text('shelf_life_number', null, ['class' => 'form-control', 'placeholder' => 'Enter How Many'])); ?>


                                                </div>
                                                <div class="col-md-6">
                                                    <?php echo e(Form::select('shelf_life', ['month' => 'Month', 'days' => 'Days'], null, ['class' => 'form-control select2', 'id' => 'shelf_life'])); ?>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('sourcing', 'Sourcing Unit/ Source ')); ?>

                                            <?php echo e(Form::text('sourcing', null, ['class' => 'form-control', 'placeholder' => 'Enter Sourcing Unit/ Source', 'required' => true, 'id' => 'sourcing'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('case_pallet', 'Case/ Pallet ')); ?>

                                            <?php echo e(Form::text('case_pallet', null, ['class' => 'form-control', 'placeholder' => 'Enter Case/ Pallet', 'id' => 'case_pallet'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('layer_pallet', 'Layer/ Pallet ')); ?>

                                            <?php echo e(Form::text('layer_pallet', null, ['class' => 'form-control', 'placeholder' => 'Enter Layer/ Pallet', 'id' => 'layer_pallet'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-4 col-12" id="">
                                        <div class="form-group">
                                            <?php echo e(Form::label('dimensions_unit_pack', 'Unit/ Pack ')); ?>

                                            <?php echo e(Form::text('dimensions_unit_pack', null, ['class' => 'form-control', 'placeholder' => 'Enter Unit/ Pack'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-2 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('dimensions_length', 'Case Length ')); ?>

                                            <?php echo e(Form::text('dimensions_length', null, ['class' => 'form-control', 'placeholder' => 'Enter Length'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-2 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('dimensions_width', 'Case Width')); ?>

                                            <?php echo e(Form::text('dimensions_width', null, ['class' => 'form-control', 'placeholder' => 'Enter Width'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-2 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('dimensions_height', 'Case Height')); ?>

                                            <?php echo e(Form::text('dimensions_height', null, ['class' => 'form-control', 'placeholder' => 'Enter Height'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-2 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('dimensions_length_uom_id', 'UoM ', ['class' => ''])); ?>

                                            <?php echo e(Form::select('dimensions_length_uom_id', $uoms, null, ['class' => 'select2 form-control dimensions_length_uom_id uom_list', 'placeholder' => 'Please Select UoM'])); ?>

                                        </div>
                                    </div>

                                    <div class="col-md-2 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('dimensions_net_weight', 'Net Weight')); ?>

                                            <?php echo e(Form::text('dimensions_net_weight', null, ['class' => 'form-control', 'placeholder' => 'Enter Net Weight'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-2 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('dimensions_gross_weight', 'Gross Weight')); ?>

                                            <?php echo e(Form::text('dimensions_gross_weight', null, ['class' => 'form-control', 'placeholder' => 'Enter Gross Weight'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-2 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('dimensions_net_uom_id', 'UoM ', ['class' => ''])); ?>

                                            <?php echo e(Form::select('dimensions_net_uom_id', $uoms, null, ['class' => 'select2 form-control dimensions_net_uom_id uom_list', 'placeholder' => 'Please Select UoM'])); ?>

                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('ean_barcode', 'EAN/ Barcode')); ?>

                                            <?php echo e(Form::text('ean_barcode', null, ['class' => 'form-control', 'placeholder' => 'Enter EAN/ Barcode'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-3 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('mrp', 'MRP')); ?>

                                            <?php echo e(Form::text('mrp', null, ['class' => 'form-control', 'placeholder' => 'Enter MRP'])); ?>

                                        </div>
                                    </div>

                                    <div class="col-md-3 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('gst_id', 'GST (%)', ['class' => ''])); ?>

                                            <?php echo e(Form::select('gst_id', $gst, null, ['class' => 'form-control', 'placeholder' => 'Please Select GST'])); ?>

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-6">
                                        <?php echo e(Form::label('visibility', 'Show / Hide')); ?>

                                        <fieldset class="">
                                            <div class="radio radio-success">
                                                <?php echo e(Form::radio('visibility', '1', true, ['id' => 'radioshow'])); ?>

                                                <?php echo e(Form::label('radioshow', 'Yes')); ?>

                                            </div>
                                            <!-- </fieldset>
                                                                                                                                            <fieldset> -->
                                            <div class="radio radio-danger">
                                                <?php echo e(Form::radio('visibility', '0', false, ['id' => 'radiohide'])); ?>

                                                <?php echo e(Form::label('radiohide', 'No')); ?>

                                            </div>
                                        </fieldset>
                                    </div>
                      
                                    
                                    <?php if(!empty($products->product_thumb)): ?>
                                    <div class="col-md-12 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('product_thumb', 'Product Thumbnail *')); ?>

                                            <div class="custom-file">
                                                    <a href="<?php echo e(asset('public/backend-assets/images/')); ?>/<?php echo e($products->product_thumb); ?>"
                                                        target="_blank"><img class="card-img-top img-fluid mb-1"
                                                            src="<?php echo e(asset('public/backend-assets/images/')); ?>/<?php echo e($products->product_thumb); ?>"
                                                            alt="Product Image" style="width:50px"></a>
                                            </div>
                                        </div>
                                    </div>
                                    <?php endif; ?>

                                </div>
                            </div>
                            <?php echo e(Form::close()); ?>


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
                    <?php echo $__env->make('backend.brands._form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
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
                    <?php echo $__env->make('backend.uoms._form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
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
                    <?php echo $__env->make('backend.hsncodes._form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
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
                    <?php echo $__env->make('backend.categories._form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
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
                    <?php echo $__env->make('backend.subcategories._form', compact('categories'), \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>
            </div>
        </div>
    </div>

    <script src="<?php echo e(asset('public/backend-assets/js/MasterHandler.js')); ?>"></script>

    <script>
        $(document).ready(function() {



            new MasterHandler('#brand_id', '#add_brand_modal', '#submit_brand',
                '<?php echo e(url('admin/master/store_brand')); ?>', '', '#brand_name');

            new MasterHandler('#product_category_id', '#add_category_modal', '#submit_category',
                '<?php echo e(url('admin/master/store_product_category')); ?>', '', '#category_name',
                'input[name=visibility]:checked');

            new MasterHandler('#sub_category_id', '#add_sub_category_modal', '#submit_sub_category',
                '<?php echo e(url('admin/master/store_product_sub_category')); ?>', '', '#subcategory_name',
                'input[name=visibility]:checked');


            new MasterHandler('#uom_id', '#add_uom_modal', '#submit_uom',
                '<?php echo e(url('admin/uoms/store')); ?>', '', '#uom_name',
                '#uom_desc');

            new MasterHandler('#hsncode_id', '#add_hsncode_modal', '#submit_hsncode',
                '<?php echo e(url('admin/master/store_hsn')); ?>', '', '#hsncode_name',
                '#hsncode_desc');



        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/3psap/resources/views/backend/productshistory/show.blade.php ENDPATH**/ ?>