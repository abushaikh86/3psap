<?php $__env->startSection('title', 'Edit Group'); ?>
<?php
    use Spatie\Permission\Models\Role;
?>
<?php $__env->startSection('content'); ?>
    

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Edit Group</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="<?php echo e(route('admin.bpgroup')); ?>">BUSINESS PARTNER GROUP</a>
                        </li>
                        <li class="breadcrumb-item active">Edit</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a class="btn btn-outline-primary" href="<?php echo e(route('admin.bpgroup')); ?>">
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
                            <?php echo $__env->make('backend.includes.errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <?php echo e(Form::open(['url' => 'admin/bpgroup/update'])); ?>

                            <?php echo csrf_field(); ?>
                            <div class="form-body">
                                <div class="form-body">
                                    <div class="row">
                                        <?php echo e(Form::hidden('id', $model->id, ['class' => 'form-control'])); ?>

                     
                                        <div class="col-md-6 col-6">
                                            <div class="form-label-group">
                                                <?php echo e(Form::label('name', 'Group Name *')); ?>

                                                <?php echo e(Form::text('name', $model->name, ['class' => 'form-control', 'placeholder' => 'Group Name', 'required' => true])); ?>

                                            </div>
                                        </div>
    
    
    
                                        
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col md-12 ">
                                            
                                                <?php echo e(Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1'])); ?>

                                                <button type="reset" class="btn btn-secondary mr-1 mb-1">Reset</button>
                                            
                                        </div>
                                    </div>
    
                                </div>
                            </div>

                        </div>


                        <?php echo e(Form::close()); ?>

                    </div>
                </div>
            </div>
 
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\eureka\resources\views/backend/bpgroup/edit.blade.php ENDPATH**/ ?>