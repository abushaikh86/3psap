
<?php $__env->startSection('title', 'Bussiness Partner Address'); ?>

<?php $__env->startSection('content'); ?>
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Bussiness Partner Address</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Bussiness Partner Address</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a class="btn btn-outline-primary"
                        href="<?php echo e(route('admin.bussinesspartner.createaddress', ['id' => $id])); ?>">
                        <i class="feather icon-plus"></i> Add
                    </a>
                    <?php
                        $previousController = session('previous_controller');

                        if ($previousController == 'CompanyController@index') {
                            $url_back = route('admin.company');
                        } elseif ($previousController == 'BussinessParatnerController@index') {
                            $url_back = route('admin.bussinesspartner');
                        }

                    ?>
                    <a class="btn btn-outline-dark" href="<?php echo e($url_back); ?>"> Back</a>
                </div>
            </div>
        </div>
    </div>


    <section id="basic-datatable">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Bussiness Partner</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body card-dashboard">

                            <div class="table-responsive">

                                <table class="table zero-configuration" id="tbl-datatable">
                                    <thead>
                                        <tr>
                                            <th>Sr. No</th>
                                            <th>Address Type</th>
                                            <th>Address Name</th>
                                            <th>Address</th>
                                            <th>Landmark</th>
                                            <th>City</th>
                                            <th>Pin Code</th>
                                            <th>District</th>
                                            <th>State</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <?php if(isset($addresses) && count($addresses) > 0): ?>
                                            <?php $srno = 1; ?>
                                            <?php $__currentLoopData = $addresses; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <tr>
                                                    <td><?php echo e($srno); ?></td>
                                                    <td><?php echo e($data->address_type); ?></td>
                                                    <td><?php echo e($data->bp_address_name); ?></td>
                                                    <td><?php echo e($data->building_no_name); ?> <br>
                                                        <?php echo e($data->street_name); ?>

                                                    </td>
                                                    <td><?php echo e($data->landmark); ?></td>
                                                    <td><?php echo e($data->city); ?></td>
                                                    <td><?php echo e($data->pin_code); ?></td>
                                                    <td><?php echo e($data->district); ?></td>
                                                    <td><?php echo e($data->state); ?></td>
                                                    <td>

                                                        
                                                        <a href="<?php echo e(url('admin/bussinesspartner/editaddress/' . $data->bp_address_id)); ?>"
                                                            class="btn btn-primary"><i class="feather icon-edit-2"></i></a>

                                                        
                                                        <?php echo Form::open([
                                                            'method' => 'GET',
                                                            'url' => ['admin/bussinesspartner/deleteaddress', $data->bp_address_id],
                                                        ]); ?>

                                                        <?php echo Form::button('<i class="feather icon-trash"></i>', [
                                                            'type' => 'submit',
                                                            'class' => 'btn btn-danger',
                                                            'onclick' => "return confirm('Are you sure you want to Delete this Entry ?')",
                                                        ]); ?>

                                                        <?php echo Form::close(); ?>


                                                    </td>
                                                </tr>
                                                <?php $srno++; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php else: ?>
                                            <tr>
                                                <td colspan=10>Address Not Found</td>
                                            </tr>
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

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\3psap\resources\views/backend/bussinesspartner/address.blade.php ENDPATH**/ ?>