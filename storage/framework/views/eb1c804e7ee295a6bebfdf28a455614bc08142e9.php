
<?php $__env->startSection('title', 'Bussiness Partner Address'); ?>
<?php
    use Spatie\Permission\Models\Role;
?>

<?php $__env->startSection('content'); ?>
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Update Bussiness Partner Address</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Update</li>
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
    <?php if(isset($address) || count($address->toArray()) > 0): ?>
        <section id="basic-datatable">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-content">

                            <div class="card-body card-dashboard">
                                <?php echo $__env->make('backend.includes.errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                <?php echo e(Form::open(['url' => 'admin/bussinesspartner/storeaddress'])); ?>

                                <?php echo csrf_field(); ?>
                                <div class="form-body">
                                    <div class="row">

                                        <div class="col-md-12 col-12">
                                            <h4><br>Address Details<br></h4>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-label-group">
                                                <?php echo e(Form::label('address_type', 'Address Type')); ?>

                                                <?php echo e(Form::hidden('bp_address_id', $address->bp_address_id, ['class' => 'form-control', 'placeholder' => 'Address Type', 'required' => true])); ?>

                                                <select name="address_type" id="address_type" class='form-control'>
                                                    <option value="Official"
                                                        <?php if($address->address_type == 'Official'): ?> selected="selected" <?php endif; ?>>
                                                        Official</option>
                                                    <option value="Bill-To/ Bill-From"
                                                        <?php if($address->address_type == 'Bill-To/ Bill-From'): ?> selected="selected" <?php endif; ?>>
                                                        Bill-To/ Bill-From</option>
                                                    <option value="Ship-To/ Ship-From"
                                                        <?php if($address->address_type == 'Ship-To/ Ship-From'): ?> selected="selected" <?php endif; ?>>
                                                        Ship-To/ Ship-From</option>
                                                </select>

                                            </div>
                                        </div>

                                        <div class="col-md-6 col-12">
                                            <div class="form-label-group">
                                                <?php echo e(Form::label('bp_address_name', 'Name ')); ?>

                                                <?php echo e(Form::text('bp_address_name', $address->bp_address_name, ['class' => 'form-control', 'placeholder' => 'Name', 'required' => true])); ?>


                                            </div>
                                        </div>

                                        <div class="col-md-6 col-12">
                                            <div class="form-label-group">
                                                <?php echo e(Form::label('building_no_name', 'Building No and Name ')); ?>

                                                <?php echo e(Form::text('building_no_name', $address->building_no_name, ['class' => 'form-control', 'placeholder' => 'Building No and Name', 'required' => true])); ?>


                                            </div>
                                        </div>

                                        <div class="col-md-6 col-12">
                                            <div class="form-label-group">
                                                <?php echo e(Form::label('street_name', 'Street Name ')); ?>

                                                <?php echo e(Form::text('street_name', $address->street_name, ['class' => 'form-control', 'placeholder' => 'Street Name', 'required' => true])); ?>


                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-label-group">
                                                <?php echo e(Form::label('landmark', 'Landmark ')); ?>

                                                <?php echo e(Form::text('landmark', $address->landmark, ['class' => 'form-control', 'placeholder' => 'Landmark', 'required' => true])); ?>


                                            </div>
                                        </div>

                                        <div class="col-md-6 col-12">
                                            <div class="form-label-group">
                                                <?php echo e(Form::label('country', 'Country')); ?>

                                                
                                                <?php echo e(Form::select('country', [], $address->country, ['class' => 'form-control', 'required' => true])); ?>


                                            </div>
                                        </div>

                                        <div class="col-md-6 col-12">
                                            <div class="form-label-group">
                                                <?php echo e(Form::label('state', 'State')); ?>

                                                <?php echo e(Form::select('state', [], $address->state, ['class' => 'form-control', 'required' => true])); ?>


                                            </div>
                                        </div>

                                        <div class="col-md-6 col-12">
                                            <div class="form-label-group">
                                                <?php echo e(Form::label('district', 'District ')); ?>

                                                <?php echo e(Form::select('district', [], $address->district, ['class' => 'form-control', 'required' => true])); ?>


                                            </div>
                                        </div>


                                        <div class="col-md-6 col-12">
                                            <div class="form-label-group">
                                                <?php echo e(Form::label('city', 'Name of City ')); ?>

                                                <?php echo e(Form::text('city', $address->city, ['class' => 'form-control', 'placeholder' => 'Name of City', 'required' => true])); ?>


                                            </div>
                                        </div>

                                        <div class="col-md-6 col-12">
                                            <div class="form-label-group">
                                                <?php echo e(Form::label('pin_code', 'Pin Code ')); ?>

                                                <?php echo e(Form::text('pin_code', $address->pin_code, ['class' => 'form-control', 'placeholder' => 'Pin Code', 'pattern' => '[0-9]{6}', 'required' => true])); ?>


                                            </div>
                                        </div>


                                    </div> 

                                </div>
                                <div class="col md-12 center mt-3">
                                    <center>
                                        <?php echo e(Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1'])); ?>

                                        <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                                    </center>
                                </div>
                            </div>
                            <?php echo e(Form::close()); ?>

                        </div>
                    </div>
                </div>
            </div>
            </div>
        </section>
    <?php endif; ?>

    <script src="<?php echo e(asset('public/backend-assets/js/country_state_city.js')); ?>"></script>
    
    <script>
        var country_selected = `<?php echo e((old('country') ?? $address->country) ?? ''); ?>`;
        var state_selected = `<?php echo e((old('state') ?? $address->state) ?? ''); ?>`;
        var district_selected = `<?php echo e((old('district') ?? $address->district) ?? ''); ?>`;
    </script>



<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\3psap\resources\views/backend/bussinesspartner/updateaddress.blade.php ENDPATH**/ ?>