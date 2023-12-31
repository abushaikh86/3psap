<?php $__env->startSection('title', 'Create Company'); ?>

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
            <h5 class="content-header-title float-left pr-1 mb-0">Create Company</h5>
            <div class="breadcrumb-wrapper col-12">
              <ol class="breadcrumb p-0 mb-0">
                <li class="breadcrumb-item"><a href="<?php echo e(route('admin.dashboard')); ?>"><i class="bx bx-home-alt"></i></a>
                </li>
                <li class="breadcrumb-item active">Create
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
              <h4 class="card-title">Create Company</h4>
            </div>
            <div class="card-content">
              <div class="card-body">
                <?php echo $__env->make('backend.includes.errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <form method="POST" action="<?php echo e(route('admin.company.store')); ?>" class="form">
                  <?php echo e(csrf_field()); ?>

                  <div class="form-body">
                    <div class="row">
                      <div class="col-md-12 col-12">
                        <div class="form-group">
                          <?php echo e(Form::label('name', 'Company Name *')); ?>

                          <?php echo e(Form::text('name', null, ['class' => 'form-control', 'placeholder' => 'Enter Company Name',
                          'required' => true])); ?>

                        </div>
                      </div>
                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          <?php echo e(Form::label('email', 'Company Email *')); ?>

                          <?php echo e(Form::text('email', null, ['class' => 'form-control', 'placeholder' => 'Enter Company
                          Email',
                          'required' => true])); ?>

                        </div>
                      </div>
                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          <?php echo e(Form::label('mobile_no', 'Company Phone Number *')); ?>

                          <?php echo e(Form::text('mobile_no', null, ['class' => 'form-control', 'placeholder' => 'Enter Company
                          Phone Number', 'required' => true])); ?>

                        </div>
                      </div>
                      <div class="col-md-12 col-12">
                        <div class="form-group">
                          <?php echo e(Form::label('address_line1', 'Address Line 1 *')); ?>

                          <?php echo e(Form::text('address_line1', null, ['class' => 'form-control', 'placeholder' => 'Enter
                          Address Line 1', 'required' => true])); ?>

                        </div>
                      </div>
                      <div class="col-md-12 col-12">
                        <div class="form-group">
                          <?php echo e(Form::label('address_line2', 'Address Line 2 *')); ?>

                          <?php echo e(Form::text('address_line2', null, ['class' => 'form-control', 'placeholder' => 'Enter
                          Address Line 2', 'required' => true])); ?>

                        </div>
                      </div>
                      <div class="col-md-12 col-12">
                        <div class="form-group">
                          <?php echo e(Form::label('landmark', 'Landmark *')); ?>

                          <?php echo e(Form::text('landmark', null, ['class' => 'form-control', 'placeholder' => 'Enter Landmark',
                          'required' => true])); ?>

                        </div>
                      </div>
                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          <?php echo e(Form::label('city', 'City *')); ?>

                          <?php echo e(Form::text('city', null, ['class' => 'form-control', 'placeholder' => 'Enter City',
                          'required' => true])); ?>

                        </div>
                      </div>
                      

                      <div class="col-md-6 col-12">
                        <div class="form-label-group">
                          
                          <?php echo e(Form::label('country', 'Country *')); ?>

                          
                          <?php echo e(Form::select('country', [], null, ['class' => 'form-control', 'required' => true])); ?>


                        </div>
                      </div>

                      <div class="col-md-6 col-12">
                        <div class="form-label-group">

                          <?php echo e(Form::label('state', 'State *')); ?>

                          <?php echo e(Form::select('state', [],null, ['class' => 'form-control', 'required' => true])); ?>


                        </div>
                      </div>

                      <div class="col-md-6 col-12">
                        <div class="form-label-group">
                          <?php echo e(Form::label('district', 'District *')); ?>

                          <?php echo e(Form::select('district', [], null, ['class' => 'form-control', 'required' => true])); ?>


                        </div>
                      </div>

                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          <?php echo e(Form::label('pincode', 'Pin Code *')); ?>

                          <?php echo e(Form::text('pincode', null, ['class' => 'form-control', 'placeholder' => 'Enter Pin Code',
                          'required' => true])); ?>

                        </div>
                      </div>
                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          <?php echo e(Form::label('gstno', 'GST No. *')); ?>

                          <?php echo e(Form::text('gstno', null, ['class' => 'form-control', 'placeholder' => 'Enter GST No.',
                          'required' => true])); ?>

                        </div>
                      </div>


                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          <?php echo e(Form::label('batch_system', 'Does This Company Follow Batch System?
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

                          <?php echo e(Form::select('db_type', ['Distributor' => 'Distributor', 'Supplier' => 'Supplier'], null,
                          ['class' => 'form-control', 'placeholder' => 'Select an option', 'required' => true])); ?>

                        </div>
                      </div>



                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          <?php echo e(Form::label('ay_type', 'Academic Year Type *')); ?>

                          <?php echo e(Form::select('ay_type', ['fi_year' => 'Financial Year (1st April-31st
                          March)', 'cal_year' => 'Calender Year','cust_year'=>'Custom Year'],
                          null, ['class' => 'form-control', 'placeholder' => 'Select Academic Year
                          Type', 'required' => true])); ?>

                        </div>
                      </div>

                      <div class="d-none" id="toggle_div">

                        <div class="col-md-6 col-12 d-inline-flex">

                          <div class="form-group mr-1">
                            <?php echo e(Form::label('ac_start_date', 'Start Date *')); ?>

                            <?php echo e(Form::date('ac_start_date', null, ['class' =>
                            'form-control ', 'placeholder' => 'Start Date','required' => true])); ?>


                          </div>

                          <div class="form-group">
                            <?php echo e(Form::label('ac_end_date', 'End Date *')); ?>

                            <?php echo e(Form::date('ac_end_date', null, ['class' =>
                            'form-control ', 'placeholder' => 'End Date','required' => true])); ?>

                          </div>

                        </div>

                      </div>




                      <!--<div class="col-lg-12 col-md-12">-->
                      <!--    <?php echo e(Form::label('address', 'Address *')); ?>-->
                      <!--    <fieldset class="form-group">-->
                      <!--        <?php echo e(Form::textarea('address', null, ['class' => 'form-control char-textarea', 'placeholder' => 'Enter Address', 'required' => true, 'rows' => 3])); ?>-->
                      <!--    </fieldset>-->
                      <!--</div>-->

                      <!--<div class="col-lg-12 col-md-12">-->
                      <!--    <?php echo e(Form::label('bankdetail', 'Bank Detail *')); ?>-->
                      <!--    <fieldset class="form-group">-->
                      <!--        <?php echo e(Form::textarea('bankdetail', null, ['class' => 'form-control char-textarea', 'placeholder' => 'Enter Bank Detail', 'rows' => 3])); ?>-->
                      <!--    </fieldset>-->
                      <!--</div>-->

                      <div class="col-12 d-flex justify-content-start">
                        <!-- <button type="submit" class="btn btn-primary mr-1 mb-1">Update</button> -->
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


<script src="<?php echo e(asset('public/backend-assets/js/country_state_city.js')); ?>"></script>


<script>
    $('#ay_type').change(function() {
        var selectedOption = $(this).val();
        toggleDateRange(selectedOption);
    });

    function toggleDateRange(selectedOption) {
        if (selectedOption === 'cust_year') {
            $('#toggle_div').removeClass('d-none');
            $('#ac_start_date').attr('required', true);
            $('#ac_end_date').attr('required', true);
        } else {
            $('#toggle_div').addClass('d-none');
            $('#ac_start_date').removeAttr('required');
            $('#ac_end_date').removeAttr('required');
        }
    }
</script>

<script>
  var country_selected = `<?php echo e(old('country') ?? ''); ?>`;
        var state_selected = `<?php echo e(old('state') ?? ''); ?>`;
        var district_selected = `<?php echo e(old('district') ?? ''); ?>`;
</script>




<?php $__env->stopSection(); ?>
<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/3psap/resources/views/backend/company/create.blade.php ENDPATH**/ ?>