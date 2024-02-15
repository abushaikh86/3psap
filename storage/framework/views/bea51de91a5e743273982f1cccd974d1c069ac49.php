<?php $__env->startSection('title', 'BSPL Category'); ?>

<?php $__env->startSection('content'); ?>

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">BSPL Category</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">BSPL Category</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('Create BSPL Category')): ?>
                        <a class="btn btn-outline-primary" href="<?php echo e(route('admin.bsplcat.create')); ?>">
                            <i class="feather icon-plus"></i> Add
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
                        <h4 class="card-title">BSPL Category</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body card-dashboard">

                            <div class="table-responsive">

                                <table class="table zero-configuration" id="tbl-datatable">
                                    <thead>
                                        <tr>
                                            <th>Sr. No</th>
                                            <th>BSPL Head</th>
                                            <th>BSPL Category</th>
                                            <th colspan="3">Action</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if(isset($details) && count($details) > 0): ?>
                                            <?php $srno = 1; ?>
                                            <?php $__currentLoopData = $details; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <tr>
                                                    <td><?php echo e($srno); ?></td>
                                                    <td><?php echo e($data->bspl_head_name->bspl_heads_name); ?></td>
                                                    <td><?php echo e($data->bspl_cat_name); ?></td>

                                                    <td>
                                                        <?php
                                                  if($data->has_subcat)
                                                  {
                                                ?>
                                                        <a href="<?php echo e(url('admin/bsplsubcat/bsplcat/' . $data->bsplcat_id)); ?>"
                                                            class="btn btn-primary btn-xs">BSPL Sub Categories</a>
                                                        <?php
                                                  }
                                               ?>

                                                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('Update BSPL Category')): ?>
                                                            <a href="<?php echo e(url('admin/bsplcat/edit/' . $data->bsplcat_id)); ?>"
                                                                class="btn btn-primary" title="Edit"><i
                                                                    class="feather icon-edit"></i></a>
                                                        <?php endif; ?>
                                                        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('Delete BSPL Category')): ?>
                                                            <?php echo Form::open([
                                                                'method' => 'GET',
                                                                'url' => ['admin/bsplcat/delete', $data->bsplcat_id],
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

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/3psap/resources/views/backend/bsplcat/index.blade.php ENDPATH**/ ?>