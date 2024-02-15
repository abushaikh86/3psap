<?php $__env->startSection('title', 'Create Outlet'); ?>
<?php
use Spatie\Permission\Models\Role;
?>
<?php $__env->startSection('content'); ?>

<?php if(!request()->is('api/*') ): ?>
<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">Create Outlet</h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="<?php echo e(route('admin.outlet')); ?>">Outlets</a>
                    </li>
                    <li class="breadcrumb-item active">Create Outlet</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
        <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">

            <div class="btn-group" role="group">
                <a class="btn btn-outline-secondary" href="<?php echo e(route('admin.outlet')); ?>">
                    <i class="feather icon-arrow-left"></i> Back
                </a>
            </div>

        </div>
    </div>
</div>
<?php endif; ?>


<section id="basic-datatable">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-content">
                    <div class="card-body card-dashboard">
                        <?php if(!request()->is('api/*') ): ?>
                        <?php echo $__env->make('backend.includes.errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <?php endif; ?>
                        <?php echo e(Form::open(['url' => 'admin/outlet/store'])); ?>

                        <?php echo csrf_field(); ?>
                        <div class="form-body">


                            <div class="row">


                                <div class="col-md-6 col-6">
                                    <div class="form-label-group">
                                        <?php echo e(Form::label('outlet_name', 'Outlet')); ?>

                                        <?php echo e(Form::text('outlet_name', null, ['class' => 'form-control', 'placeholder' =>
                                        'Enter Name', 'required' => true])); ?>

                                    </div>
                                </div>


                                <div class="col-md-6 col-6">
                                    <div class="form-label-group">
                                        <?php echo e(Form::label('building_no_name', 'Building No and Name ')); ?>

                                        <?php echo e(Form::text('building_no_name', null, ['class' => 'form-control',
                                        'placeholder' => 'Building No and Name', 'required' => true])); ?>

                                    </div>
                                </div>

                                <div class="col-md-6 col-6">
                                    <div class="form-label-group">
                                        <?php echo e(Form::label('street_name', 'Street Name ')); ?>

                                        <?php echo e(Form::text('street_name', null, ['class' => 'form-control', 'placeholder' =>
                                        'Street Name', 'required' => true])); ?>

                                    </div>
                                </div>
                                <div class="col-md-6 col-6">
                                    <div class="form-label-group">
                                        <?php echo e(Form::label('landmark', 'Landmark ')); ?>

                                        <?php echo e(Form::text('landmark', null, ['class' => 'form-control', 'placeholder' =>
                                        'Landmark', 'required' => true])); ?>

                                    </div>
                                </div>

                                <div class="col-md-6 col-6">
                                    <div class="form-label-group">
                                        <?php echo e(Form::label('country', 'Country')); ?>

                                        <?php echo e(Form::select('country', [], null, ['class' => 'form-control ', 'required' =>
                                        true])); ?>

                                    </div>
                                </div>

                                <div class="col-md-6 col-6">
                                    <div class="form-label-group">
                                        <?php echo e(Form::label('state', 'State')); ?>

                                        <?php echo e(Form::select('state', [], null, ['class' => 'form-control ', 'required' =>
                                        true])); ?>

                                    </div>
                                </div>

                                <div class="col-md-6 col-6">
                                    <div class="form-label-group">
                                        <?php echo e(Form::label('district', 'District ')); ?>

                                        <?php echo e(Form::select('district', [], null, ['class' => 'form-control ', 'required' =>
                                        true])); ?>

                                    </div>
                                </div>
                                <div class="col-md-6 col-6">
                                    <div class="form-label-group">
                                        <?php echo e(Form::label('city', 'Name of City ')); ?>

                                        <?php echo e(Form::text('city', null, ['class' => 'form-control',
                                        'placeholder' => 'Name of City', 'required' => true])); ?>

                                    </div>
                                </div>


                                <div class="col-md-6 col-6">
                                    <div class="form-label-group">
                                        <?php echo e(Form::label('pin_code', 'Pin Code ')); ?>

                                        <?php echo e(Form::number('pin_code', null, ['class' => 'form-control', 'onkeypress' =>
                                        'return event.charCode === 0 ||
                                        /\d/.test(String.fromCharCode(event.charCode));', 'placeholder' => 'Pin Code',
                                        'required' => true])); ?>

                                    </div>
                                </div>

                          
                            </div>

                            <hr>
                            <div class="row">



                                <div class="col-md-6 col-6">
                                    <div class="form-group">
                                        <?php echo e(Form::label('area_id', 'Area *')); ?>

                                        <?php echo e(Form::select('area_id', $area_data, '', ['class' => 'form-control select2',
                                        'id' => 'area_field', 'placeholder' => 'Select Area', 'required' => true])); ?>

                                    </div>
                                </div>

                                <div class="col-md-6 col-6">
                                    <div class="form-group">
                                        <?php echo e(Form::label('routes', 'Route *')); ?>

                                        <select name="route_id" id="routes" class="form-control select2 "
                                            required></select>
                                    </div>
                                </div>

                                <div class="col-md-6 col-6">
                                    <div class="form-group">
                                        <?php echo e(Form::label('beat_id', 'Beat *')); ?>

                                        <select name="beat_id" id="beat" class="form-control select2"></select>
                                    </div>
                                </div>





                                <div class="col-md-6 col-6">
                                    <div class="form-group">
                                        <?php echo e(Form::label('salesman', 'Salesman *')); ?>

                                        <?php echo e(Form::select('salesman', $salesman,
                                        Auth::user()->admin_user_id??request()->segment(3, 'default'), ['class' =>
                                        'form-control tags', 'placeholder' => 'Select Salesman', 'required' => true])); ?>

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


                        <?php echo e(Form::close()); ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="<?php echo e(asset('public/backend-assets/js/country_state_city.js')); ?>"></script>

<script>
    var country_selected = `<?php echo e(old('country') ?? ''); ?>`;
        var state_selected = `<?php echo e(old('state') ?? ''); ?>`;
        var district_selected = `<?php echo e(old('district') ?? ''); ?>`;
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make(request()->is('api/*') ? 'backend.layouts.appempty' : 'backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\3psap\resources\views/backend/outlet/create.blade.php ENDPATH**/ ?>