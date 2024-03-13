<?php $__env->startSection('title', 'Products'); ?>

<?php $__env->startSection('content'); ?>
<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">Products</h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
                    </li>
                    <li class="breadcrumb-item active">Products</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
        <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
            <div class="btn-group" role="group">
                <a class="btn btn-outline-primary" href="<?php echo e(route('admin.products.create')); ?>">
                    <i class="feather icon-plus"></i> Add
                </a>
                <?php if(is_superAdmin()): ?>
                <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal"
                    data-bs-target="#importModal">
                    <i class="feather icon-download"></i>
                    Import
                </button>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>



<div class="modal fade" id="importModal" tabindex="-1" aria-labelledby="importModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="importModalLabel">Import Data</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- Form for importing data -->
                <?php echo e(Form::open(['url' => 'admin/updateProduct/update', 'class' => 'w-100', 'enctype' =>
                'multipart/form-data'])); ?>



                <div class="form-group mb-3">
                    <?php echo e(Form::label('file', 'Select File')); ?>

                    <input type="file" name="file" class="form-control">
                </div>
                <div class="d-flex mb-1">
                    <a href="<?php echo e(asset('public/sheets/sample-product.xlsx')); ?>"
                        class="btn btn-sm btn-outline-primary mr-1">Sample Sheet
                        (Product)</a>
                </div>

                <button type="submit" class="btn btn-primary">Submit</button>
                <?php echo e(Form::close()); ?>

            </div>
        </div>
    </div>
</div>

<section id="basic-datatable">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Products</h4>
                </div>
                <div class="card-content">
                    <div class="card-body card-dashboard">
                        <div class="table-responsive">
                            <table class="table zero-configuration" id="tbl-datatable">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Image</th>
                                        <!-- <th>Item Type</th> -->
                                        <th>Item Code</th>
                                        <th>Base Pack</th>
                                        <th>Description</th>
                                        <th>Brand</th>
                                        <th>Category</th>
        
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if(isset($products) && count($products) > 0): ?>
                                    <?php $srno = 1; ?>
                                    <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td><?php echo e($srno); ?></td>
                                        <td>
                                            <?php if(!empty($product->product_thumb)): ?>
                                            <a href="<?php echo e(asset('public/backend-assets/images/')); ?>/<?php echo e($product->product_thumb); ?>"
                                                target="_blank"><img class="card-img-top img-fluid mb-1"
                                                    src="<?php echo e(asset('public/backend-assets/images/')); ?>/<?php echo e($product->product_thumb); ?>"
                                                    alt="Product Image" style="width:50px"></a>
                                            <?php endif; ?>
                                        </td>
                                        </td>
                                        <!-- <td><?php echo e(isset($product->item_type) ? $product->item_type->item_type_name : ''); ?>

                                        </td> -->
                                        <td><?php echo e($product->item_code); ?></td>
                                        <td><?php echo e($product->sku); ?></td>
                                        <td><?php echo e($product->item_description); ?></td>
                                        <td><?php echo e(isset($product->brand) ? $product->brand->brand_name : ''); ?>

                                        </td>
                                        <td><?php echo e(isset($product->category) ? $product->category->category_name : ''); ?>

                                        </td>
                                   
                                        <td>

                                            <a href="<?php echo e(url('admin/products/edit/' . $product->product_item_id)); ?>"
                                                class="btn btn-primary" title="Edit"><i
                                                    class="feather icon-edit"></i></a>

                                            <?php echo Form::open([
                                            'method' => 'GET',
                                            'url' => ['admin/products/delete', $product->product_item_id],
                                            'style' => 'display:inline',
                                            ]); ?>

                                            <?php echo Form::button('<i class="feather icon-trash"></i>', [
                                            'type' => 'submit',
                                            'title' => 'Delete',
                                            'class' => 'btn btn-danger',
                                            'onclick' => "return confirm('Are you sure you want to Delete this Entry
                                            ?')",
                                            ]); ?>

                                            <?php echo Form::close(); ?>

                                        </td>
                                    </tr>
                                    <?php $srno++; ?>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php endif; ?>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\eureka\resources\views/backend/products/index.blade.php ENDPATH**/ ?>