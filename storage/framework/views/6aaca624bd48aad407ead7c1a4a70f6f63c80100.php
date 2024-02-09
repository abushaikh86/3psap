<?php $__env->startSection('title', 'BSPL Sub-Category'); ?>

<?php $__env->startSection('content'); ?>

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">BSPL Sub-Category</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="<?php echo e(route('admin.bsplcat')); ?>">BSPL Category</a>
                        </li>
                        <li class="breadcrumb-item active">BSPL Sub-Category</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('Create BSPL Sub-Category')): ?>
                        <a class="btn btn-outline-primary"
                            href="<?php echo e(route('admin.bsplsubcat.create', ['id' => isset(request()->id) ? request()->id : 0])); ?>">
                            <i class="feather icon-plus"></i> Add
                        </a>
                    <?php endif; ?>
                    <?php if(Request::route()->getName() != 'admin.bsplsubcat'): ?>
                        <a class="btn btn-outline-secondary ml-25" href="<?php echo e(route('admin.bsplcat')); ?>">
                            <i class="feather icon-arrow-left"></i> Back
                        </a>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>


    <section id="basic-datatable">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">BSPL Sub-Category </h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body card-dashboard">

                            
                            <div class="table-responsive">

                                <table class="table zero-configuration" id="tbl-datatable">
                                    <thead>
                                        <tr>
                                            <th>Sr. No</th>
                                            <th>BSPL Category</th>
                                            <th>BSPL Sub-Category</th>
                                            <th colspan="3">Action</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if(isset($details) && count($details) > 0): ?>
                                            <?php $srno = 1; ?>
                                            <?php $__currentLoopData = $details; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <tr>
                                                    <td><?php echo e($srno); ?></td>

                                                    <td><?php echo e($data->bspl_cat_name->bspl_cat_name); ?></td>
                                                    <td><?php echo e($data->bspl_subcat_name); ?></td>

                                                    <td>
                                                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('Update BSPL Sub-Category')): ?>
                                                            <a href="<?php echo e(url('admin/bsplsubcat/edit/' . $data->bsplsubcat_id . '?route=' . Request::route()->getName())); ?>"
                                                                class="btn btn-primary" title="Edit"><i
                                                                    class="feather icon-edit"></i></a>
                                                        <?php endif; ?>
                                                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('Delete BSPL Sub-Category')): ?>
                                                            <?php echo Form::open([
                                                                'method' => 'GET',
                                                                'url' => ['admin/bsplsubcat/delete', $data->bsplsubcat_id],
                                                                'style' => 'display:inline',
                                                            ]); ?>

                                                            <?php echo Form::button('<i class="feather icon-trash"></i>', [
                                                                'type' => 'submit',
                                                                'title' => 'Delete',
                                                                'class' => 'btn btn-danger',
                                                                'onclick' => "return confirm('Are you sure you want to Delete this Entry ?')",
                                                            ]); ?>

                                                            <?php echo Form::close(); ?>

                                                        <?php endif; ?>


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
<?php $__env->startSection('scripts'); ?>
    <script src="<?php echo e(asset('public/backend-assets/vendors/js/tables/datatable/datatables.min.js')); ?>"></script>
    <script src="<?php echo e(asset('public/backend-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js')); ?>"></script>
    <script src="<?php echo e(asset('public/backend-assets/vendors/js/tables/datatable/dataTables.buttons.min.js')); ?>"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/3psap/resources/views/backend/bsplsubcat/index.blade.php ENDPATH**/ ?>