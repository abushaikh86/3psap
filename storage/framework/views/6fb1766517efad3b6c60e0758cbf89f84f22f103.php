<?php $__env->startSection('title', 'Company'); ?>

<?php $__env->startSection('content'); ?>
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header row">
            <div class="content-header-left col-md-6 col-12 mb-2">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h5 class="content-header-title float-left pr-1 mb-0">Company</h5>
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb p-0 mb-0">
                                <li class="breadcrumb-item"><a href="<?php echo e(route('admin.dashboard')); ?>"><i
                                            class="bx bx-home-alt"></i></a>
                                </li>
                                <li class="breadcrumb-item active">Company
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

            <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
                <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                    <div class="btn-group" role="group">
                        <a class="btn btn-outline-primary" href="<?php echo e(route('admin.company.create')); ?>">
                            Add
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
                            <h4 class="card-title">Company</h4>
                        </div>
                        <div class="card-content">
                            <div class="card-body card-dashboard">
                                <div class="table-responsive">
                                    <table class="table zero-configuration" id="tbl-datatable">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Name</th>
                                                <th>Email</th>
                                                <th>Mobile Number</th>
                                                <th>Pin Code</th>
                                                <th>GST No.</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $srno = 1; ?>
                                            <?php if(isset($company)): ?>
                                            <?php $__currentLoopData = $company; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>


                                            <tr>
                                                <td><?php echo e($srno); ?></td>
                                                <td><?php echo e($row->name??''); ?></td>
                                                <td><?php echo e($row->email); ?></td>
                                                <td><?php echo e($row->mobile_no); ?></td>
                                                <td><?php echo e($row->pincode); ?></td>
                                                <td><?php echo e($row->gstno); ?></td>
                                                <td>
                                                    <a href="<?php echo e(url('admin/company/edit/' . $row->company_id)); ?>"
                                                        class="btn btn-primary"><i class="fa fa-pencil"></i></a>

                                                    
                                                    <a href="<?php echo e(url('admin/bussinesspartner/address/' . $row->company_id)); ?>"
                                                        class="btn btn-primary"><i class="feather icon-map"></i></a>


                                                    
                                                    <a href="<?php echo e(url('admin/bussinesspartner/banking/' . $row->company_id)); ?>"
                                                        class="btn btn-primary"><i
                                                            class="feather icon-dollar-sign"></i></a>

                                                    <?php if(count($company->toArray()) != 1): ?>
                                                    <?php echo Form::open([
                                                    'method'=>'GET',
                                                    'url' => ['admin/company/delete', $row->company_id],
                                                    'style' => 'display:inline'
                                                    ]); ?>

                                                    <?php echo Form::button('<i class="feather icon-trash"></i>', ['type' =>
                                                    'submit', 'class' => 'btn btn-danger','onclick'=>"return
                                                    confirm('Are you sure you want to Delete this Entry ?')"]); ?>

                                                    <?php echo Form::close(); ?>

                                                    <?php endif; ?>

                                                </td>

                                            </tr>
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
    </div>
</div>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('scripts'); ?>
<script src="<?php echo e(asset('public/backend-assets/vendors/js/tables/datatable/datatables.min.js')); ?>"></script>
<script src="<?php echo e(asset('public/backend-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js')); ?>"></script>
<script src="<?php echo e(asset('public/backend-assets/vendors/js/tables/datatable/dataTables.buttons.min.js')); ?>"></script>

<script>
    $(document).ready(function() {

        });
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/3psap/resources/views/backend/company/index.blade.php ENDPATH**/ ?>