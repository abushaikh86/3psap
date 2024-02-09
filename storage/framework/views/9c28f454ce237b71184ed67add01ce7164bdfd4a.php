<?php $__env->startSection('title', 'Edit Route'); ?>
<?php
    use Spatie\Permission\Models\Role;
?>
<?php $__env->startSection('content'); ?>
    

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Edit Route</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="<?php echo e(route('admin.route')); ?>">Route</a>
                        </li>
                        <li class="breadcrumb-item active">Edit</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a class="btn btn-outline-primary" href="<?php echo e(route('admin.route')); ?>">
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
                            <?php echo e(Form::open(['url' => 'admin/route/update'])); ?>

                            <?php echo csrf_field(); ?>
                            <div class="form-body">
                                <div class="form-body">
                                    <div class="row">
                                        <?php echo e(Form::hidden('route_id', $model->route_id, ['class' => 'form-control'])); ?>

                     
                                        <div class="col-md-6 col-6">
                                            <div class="form-label-group">
                                                <?php echo e(Form::label('area_id', 'Area *')); ?>

                                                <?php echo e(Form::select('area_id',$area_data,$model->area_id, array('class' => 'form-control select2','id'=>'','placeholder'=>'Select Area','required'=>true))); ?>

                                            </div>
                                        </div>
                 
                                        
                                        <div class="col-md-6 col-6">
                                            <div class="form-label-group">
                                                <?php echo e(Form::label('route_name', 'Route Name *')); ?>

                                                <?php echo e(Form::text('route_name', $model->route_name, ['class' => 'form-control', 'placeholder' => 'Route Name', 'required' => true])); ?>

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

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/parasigh/public_html/3psap/resources/views/backend/route/edit.blade.php ENDPATH**/ ?>