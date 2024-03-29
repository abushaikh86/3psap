<?php $__env->startSection('title', 'Update Distributor'); ?>
<?php
    use App\Models\backend\Country;
    use App\Models\backend\Zones;
    use Spatie\Permission\Models\Role;

$role_id = Role::where(['department_id'=>10])->first();

?>
<?php $__env->startSection('content'); ?>
<?php

?>
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header row">
            <div class="content-header-left col-12 mb-2 mt-1">
                <div class="row breadcrumbs-top">
                    <div class="col-12">
                        <h5 class="content-header-title float-left pr-1 mb-0">Update Distributor</h5>
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb p-0 mb-0">
                                <li class="breadcrumb-item"><a href="<?php echo e(route('admin.dashboard')); ?>"><i
                                            class="bx bx-home-alt"></i></a>
                                </li>
                                <li class="breadcrumb-item active">Update
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <section id="multiple-column-form">
            <div class="row match-height">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <a href="<?php echo e(route('admin.company')); ?>" class="btn btn-outline-secondary float-right"><i
                                    class="bx bx-arrow-back"></i><span class="align-middle ml-25">Back</span></a>
                            <h4 class="card-title">Update Distributor</h4>
                        </div>
                        <div class="card-content">
                            <div class="card-body">
                                <?php echo $__env->make('backend.includes.errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                <?php echo Form::model($company, [
                                'method' => 'POST',
                                'url' => ['admin/company/update'],
                                'class' => 'form',
                                'enctype' => 'multipart/form-data',
                                ]); ?>

                                <div class="form-body">
                                    <div class="row">
                                        <div class="col-md-12 col-12">
                                            <div class="form-group">
                                                <?php echo e(Form::hidden('company_id', $company->company_id)); ?>

                                                <?php echo e(Form::label('name', 'Distributor Name *')); ?>

                                                <?php echo e(Form::text('name', null, ['class' => 'form-control', 'placeholder' =>
                                                'Enter Distributor Name', 'required' => true])); ?>

                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <?php echo e(Form::label('email', 'Distributor Email *')); ?>

                                                <?php echo e(Form::text('email', null, ['class' => 'form-control', 'placeholder'
                                                => 'Enter Distributor Email', 'required' => true])); ?>

                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <?php echo e(Form::label('mobile_no', 'Distributor Phone Number *')); ?>

                                                <?php echo e(Form::text('mobile_no', null, ['class' => 'form-control',
                                                'placeholder' => 'Enter Distributor Phone Number', 'required' => true])); ?>

                                            </div>
                                        </div>
                                        <div class="col-md-12 col-12">
                                            <div class="form-group">
                                                <?php echo e(Form::label('address_line1', 'Address Line 1 *')); ?>

                                                <?php echo e(Form::text('address_line1', null, ['class' => 'form-control',
                                                'placeholder' => 'Enter Address Line 1', 'required' => true])); ?>

                                            </div>
                                        </div>
                                        <div class="col-md-12 col-12">
                                            <div class="form-group">
                                                <?php echo e(Form::label('address_line2', 'Address Line 2 *')); ?>

                                                <?php echo e(Form::text('address_line2', null, ['class' => 'form-control',
                                                'placeholder' => 'Enter Address Line 2', 'required' => true])); ?>

                                            </div>
                                        </div>
                                        <div class="col-md-12 col-12">
                                            <div class="form-group">
                                                <?php echo e(Form::label('landmark', 'Landmark *')); ?>

                                                <?php echo e(Form::text('landmark', null, ['class' => 'form-control',
                                                'placeholder' => 'Enter Landmark', 'required' => true])); ?>

                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <?php echo e(Form::label('city', 'City *')); ?>

                                                <?php echo e(Form::text('city', null, ['class' => 'form-control', 'placeholder' =>
                                                'Enter City', 'required' => true])); ?>

                                            </div>
                                        </div>
                                     

                                        <div class="col-md-6 col-12">
                                            <div class="form-label-group">
                                                
                                                <?php echo e(Form::label('country', 'Country *')); ?>

                                                
                                                <?php echo e(Form::select('country', Country::pluck('name','country_id'), $company->country, ['class' =>
                                                'form-control','placeholder'=>'Select Country', 'required' => true])); ?>


                                            </div>
                                        </div>

                                        <div class="col-md-6 col-12">
                                            <div class="form-label-group">

                                                <?php echo e(Form::label('state', 'State *')); ?>

                                                <?php echo e(Form::select('state', [], $company->state, ['class' =>
                                                'form-control', 'required' => true])); ?>


                                            </div>
                                        </div>

                                        <div class="col-md-6 col-12">
                                            <div class="form-label-group">
                                                <?php echo e(Form::label('district', 'District *')); ?>

                                                <?php echo e(Form::select('district', [], $company->district, ['class' =>
                                                'form-control', 'required' => true])); ?>


                                            </div>
                                        </div>

                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <?php echo e(Form::label('pincode', 'Pin Code *')); ?>

                                                <?php echo e(Form::text('pincode', null, ['class' => 'form-control', 'placeholder'
                                                => 'Enter Pin Code', 'required' => true])); ?>

                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <?php echo e(Form::label('gstno', 'GST No. *')); ?>

                                                <?php echo e(Form::text('gstno', null, ['class' => 'form-control', 'placeholder'
                                                => 'Enter GST No.', 'required' => true])); ?>

                                            </div>
                                        </div>

                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <?php echo e(Form::label('batch_system', 'Does This Distributor Follow Batch System?
                                                *')); ?>

                                                <?php echo e(Form::select('batch_system', ['1' => 'Yes', '0' => 'No'], null,
                                                ['class' => 'form-control',
                                                'required' => true])); ?>

                                            </div>
                                        </div>

                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <?php echo e(Form::label('is_backdated_date', 'Back Dated Entry Allowed?
                                                *')); ?>

                                                <?php echo e(Form::select('is_backdated_date', ['0' => 'No','1' => 'Yes'], null,
                                                ['class' => 'form-control',
                                                'required' => true])); ?>

                                            </div>
                                        </div>


                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <?php echo e(Form::label('db_type', 'DB Type *')); ?>

                                                <?php echo e(Form::select('db_type', ['Distributor' => 'Distributor', 'Supplier'
                                                => 'Supplier'], null, ['class' => 'form-control', 'placeholder' =>
                                                'Select an option', 'required' => true])); ?>

                                            </div>
                                        </div>


                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <?php echo e(Form::label('ay_type', 'Financial Year Type *')); ?>

                                                <?php echo e(Form::select('ay_type', ['fi_year' => 'Financial Year (1st April-31st
                                                March)', 'cal_year' => 'Calender Year'],
                                                null, ['class' => 'form-control', 'required' => true])); ?>

                                            </div>
                                        </div>

                                        <div class="col-md-6 col-12">
                                            <div id="parentRolesContainer">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-12 zone_drp">
                                            <div class="form-group">
                                                <?php echo e(Form::label('zone_id', 'Zone *')); ?>

                                                <?php echo e(Form::select('zone_id', Zones::pluck('zone_name','zone_id'), null, [
                                                'class' => 'form-control',
                                                'placeholder' => 'Select Zone',
                                                'required' => true,
                                                ])); ?>

                                            </div>
                                        </div>

                                        <div class="col-md-12 col-12">
                                            <div class="form-group">
                                                <?php echo e(Form::label('company_logo', 'Distributor Logo')); ?>

                                                <div class="custom-file">
                                                    <?php echo e(Form::file('company_logo', ['class' => 'custom-file-input', 'id' =>
                                                    'company_logo'])); ?>

                                                    <label class="custom-file-label" for="company_logo">Choose file</label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-12 d-flex justify-content-start">
                                            <?php echo e(Form::submit('Update', ['class' => 'btn btn-primary mr-1 mb-1'])); ?>

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
    </div>
</div>


<script src="<?php echo e(asset('public/backend-assets/js/DynamicDropdown.js')); ?>"></script>


<script>
$(document).ready(function() {

   // usama_19-02-2024_get states

   var country = '<?php echo e($company->country); ?>';
   var state = '<?php echo e($company->state); ?>';
   var district = '<?php echo e($company->district); ?>';

   if(country){
        new DynamicDropdown('<?php echo e(route('admin.getStates')); ?>', 
        country, '#state',state);
   }

   if(state){
        new DynamicDropdown('<?php echo e(route('admin.getCities')); ?>', 
        state, '#district',district);
   }


   $('#country').change(function() {       
   new DynamicDropdown('<?php echo e(route('admin.getStates')); ?>', 
   $(this).val(), '#state',null,'#district');
   });

   $('#state').change(function() {       
   new DynamicDropdown('<?php echo e(route('admin.getCities')); ?>', 
   $(this).val(), '#district',null);
   });

    $.ajax({
            url: "<?php echo e(route('admin.get_parent_roles')); ?>", // Replace with your actual endpoint
            method: 'GET',
            data: {
                role_id: <?php echo e($role_id->id); ?>,
                master_id: <?php echo $company->parent_users ? $company->parent_users : 'null'; ?>

            },
            success: function(response) {
                // Handle the response from the server
                if(response){
                    $('#parentRolesContainer').html(response);
                }
            },
            error: function(error) {
                // Handle errors
                console.error(error);
            }
     });

});
</script>



<?php $__env->stopSection(); ?>
<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/eureka/resources/views/backend/company/edit.blade.php ENDPATH**/ ?>