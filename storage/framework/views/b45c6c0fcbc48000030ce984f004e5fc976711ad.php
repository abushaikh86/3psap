<?php $__env->startSection('title', ' Bank Details'); ?>
<?php
use Spatie\Permission\Models\Role;
?>
<?php $__env->startSection('content'); ?>
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Add Bank Details</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Create</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a class="btn btn-outline-primary" href="<?php echo e(url()->previous()); ?>">
                        Back
                    </a>
                </div>
            </div>
        </div>
    </div>


    <section id="basic-datatable">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body card-dashboard">
                            <?php
                                $role = Role::get(['id', 'name'])->toArray();
                            ?>
                            <?php echo $__env->make('backend.includes.errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <?php echo e(Form::open(['url' => 'admin/bussinesspartner/storebank'])); ?>

                            <?php echo csrf_field(); ?>
                            <div class="form-body">
                                <div class="row">
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::hidden('bussiness_partner_id', $id, ['class' => 'form-control'])); ?>

                                            <?php echo e(Form::label('bank_name', 'Bank Name *')); ?>

                                            <?php echo e(Form::text('bank_name', null, ['class' => 'form-control', 'placeholder' => 'Enter Bank Name', 'required' => true])); ?>

                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('bank_branch', 'Branch Name *')); ?>

                                            <?php echo e(Form::text('bank_branch', null, ['class' => 'form-control', 'placeholder' => 'Enter Branch Name', 'required' => true])); ?>

                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('acc_holdername', 'Account Holder *')); ?>

                                            <?php echo e(Form::text('acc_holdername', null, ['class' => 'form-control', 'placeholder' => 'Enter Account Holder', 'required' => true])); ?>

                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('ifsc', 'IFSC Code *')); ?>

                                            <?php echo e(Form::text('ifsc', null, ['class' => 'form-control', 'placeholder' => 'Enter IFSC Code', 'required' => true])); ?>

                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('ac_number', 'Account No *')); ?>

                                            <?php echo e(Form::text('ac_number', null, ['class' => 'form-control', 'placeholder' => 'Enter Account No.', 'required' => true])); ?>

                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('bank_address', 'Bank Address *')); ?>

                                            <?php echo e(Form::text('bank_address', null, ['class' => 'form-control', 'placeholder' => 'Enter Bank Address.', 'required' => true, 'rows' => 2, 'cols' => 5, 'id' => 'bank_address', 'style' => "resize:none"  ])); ?>

                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col md-12">
                                        <?php echo e(Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1'])); ?>

                                        <button type="reset" class="btn btn-dark mr-1 mb-1">Reset</button>
                                    </div>
                                </div>
                                <?php echo e(Form::close()); ?>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/eureka/resources/views/backend/bussinesspartner/add_bank.blade.php ENDPATH**/ ?>