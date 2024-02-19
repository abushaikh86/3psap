<?php $__env->startSection('title', 'Country'); ?>

<?php $__env->startSection('content'); ?>

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Country</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Country</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a class="btn btn-outline-primary" href="<?php echo e(route('admin.country.create')); ?>">
                        <i class="feather icon-plus"></i> Add
                    </a>
                </div>
            </div>
        </div>
    </div>


    <section id="basic-datatable">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Country</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body card-dashboard">

                            
                            <div class="table-responsive">

                                <table class="table zero-configuration" id="tbl-datatable">
                                    <thead>
                                        <tr>
                                            <th>Sr. No</th>
                                            <th>Name</th>
                                            <th colspan="3">Action</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if(isset($details) && count($details) > 0): ?>
                                            <?php $srno = 1; ?>
                                            <?php $__currentLoopData = $details; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <tr>
                                                    <td><?php echo e($srno); ?></td>
                                                    <td><?php echo e($data->name); ?></td>

                                                    <td>
                                                        <a href="<?php echo e(url('admin/state/' . $data->country_id)); ?>"
                                                            class="btn btn-warning">States</i></a>


                                                        <a href="<?php echo e(url('admin/country/edit/' . $data->country_id)); ?>"
                                                            class="btn btn-primary" title="Edit"><i
                                                                class="feather icon-edit"></i></a>

                                                        <?php echo Form::open([
                                                            'method' => 'GET',
                                                            'url' => ['admin/country/delete', $data->country_id],
                                                            'style' => 'display:inline',
                                                        ]); ?>

                                                        <?php echo Form::button('<i class="feather icon-trash"></i>', [
                                                            'type' => 'submit',
                                                            'title' => 'Delete',
                                                            'class' => 'btn btn-danger',
                                                            'onclick' => "return confirm('Are you sure you want to Delete this Entry ?')",
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

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/3psap/resources/views/backend/country/index.blade.php ENDPATH**/ ?>