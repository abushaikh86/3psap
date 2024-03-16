<?php $__env->startSection('title', 'Update Menus'); ?>

<?php $__env->startSection('content'); ?>
<?php
use App\Models\backend\BasePermissions;
  $permissions = BasePermissions::get();
?>
<div class="app-content content">
  <div class="content-overlay"></div>
    <div class="content-wrapper">
      <div class="content-header row">
          <div class="content-header-left col-12 mb-2 mt-1">
            <div class="row breadcrumbs-top">
              <div class="col-12">
                <h5 class="content-header-title float-left pr-1 mb-0">Update Menu</h5>
                <div class="breadcrumb-wrapper col-12">
                  <ol class="breadcrumb p-0 mb-0">
                    <li class="breadcrumb-item"><a href="<?php echo e(route('admin.dashboard')); ?>"><i class="bx bx-home-alt"></i></a>
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
                  <h4 class="card-title">Update Menu</h4>
                </div>
                <div class="card-content">
                  <div class="card-body">
                    <?php echo $__env->make('backend.includes.errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php echo Form::model($backendmenu, [
                        'method' => 'POST',
                        'url' => ['admin/backendmenu/update'],
                        'class' => 'form'
                    ]); ?>

                      <div class="form-body">
                        <div class="row">
                          <div class="col-md-6 col-12">
                            <div class="form-label-group">
                              <?php echo e(Form::hidden('menu_id', $backendmenu->menu_id)); ?>

                              <?php echo e(Form::text('menu_name', null, ['class' => 'form-control', 'placeholder' => 'Enter Menu Name', 'required' => true])); ?>

                              <?php echo e(Form::label('menu_name', 'Menu Name *')); ?>

                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-label-group">
                              <?php echo e(Form::text('menu_controller_name', null, ['class' => 'form-control', 'placeholder' => 'Enter Menu Controller Name', 'required' => true])); ?>

                              <?php echo e(Form::label('menu_controller_name', 'Menu Controller Name *')); ?>

                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-label-group">
                              <?php echo e(Form::text('menu_action_name', null, ['class' => 'form-control', 'placeholder' => 'Enter Menu Action Name'])); ?>

                              <?php echo e(Form::label('menu_action_name', 'Menu Action Name *')); ?>

                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-label-group">
                              <?php echo e(Form::text('menu_icon', null, ['class' => 'form-control', 'placeholder' => 'Enter Menu Icon'])); ?>

                              <?php echo e(Form::label('menu_icon', 'Menu Icon *')); ?>

                            </div>
                          </div>
                          <div class="col-md-6 col-6">
                            <?php echo e(Form::label('has_submenu', 'Has Subcategories ?')); ?>

                            <fieldset>
                              <div class="radio radio-success">
                                <?php echo e(Form::radio('has_submenu','1',true,['id'=>'radioyes'])); ?>

                                <?php echo e(Form::label('radioyes', 'Yes')); ?>

                              </div>
                            </fieldset>
                            <fieldset>
                              <div class="radio radio-danger">
                                <?php echo e(Form::radio('has_submenu','0',false,['id'=>'radiono'])); ?>

                                <?php echo e(Form::label('radiono', 'No')); ?>

                              </div>
                            </fieldset>
                          </div>
                          <div class="col-md-6 col-6">
                            <?php echo e(Form::label('visibility', 'Show / Hide')); ?>

                            <fieldset>
                              <div class="radio radio-success">
                                <?php echo e(Form::radio('visibility','1',true,['id'=>'radioshow'])); ?>

                                <?php echo e(Form::label('radioshow', 'Yes')); ?>

                              </div>
                            </fieldset>
                            <fieldset>
                              <div class="radio radio-danger">
                                <?php echo e(Form::radio('visibility','0',false,['id'=>'radiohide'])); ?>

                                <?php echo e(Form::label('radiohide', 'No')); ?>

                              </div>
                            </fieldset>
                          </div>
                          <div class="col-md-6 col-12 mt-2 menu_permissions">
                            <?php echo e(Form::label('permissions', 'Menu Permissions *')); ?>

                            <ul class="list-unstyled mb-0">
                              <?php
                                $backend_permission = explode(',',$backendmenu->permissions);
                              ?>
                              <?php $__currentLoopData = $permissions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $permission): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                              <li class="d-inline-block mr-2 mb-1">
                                <fieldset>
                                  <div class="checkbox checkbox-primary">
                                    <?php echo e(Form::checkbox('permissions[]', $permission->base_permission_id, in_array($permission->base_permission_id,$backend_permission), ['id'=>'permissions['.$permission->base_permission_id.']'])); ?>

                                      <!-- <input type="checkbox" id="colorCheckbox1" checked=""> -->
                                      <!-- <label for="colorCheckbox1"><?php echo e($permission->name); ?></label> -->
                                      <?php echo e(Form::label('permissions['.$permission->base_permission_id.']', $permission->base_permission_name)); ?>

                                  </div>
                                </fieldset>
                              </li>
                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                            <!-- <div class="form-label-group"> -->
                              <!-- <?php echo e(Form::checkbox('permissions[]', null, false)); ?> -->
                              <!-- <?php echo e(Form::text('menu_icon', null, ['class' => 'form-control', 'placeholder' => 'Enter Menu Icon'])); ?> -->
                              <!-- <?php echo e(Form::label('permissions', 'Menu Icon *')); ?> -->
                            <!-- </div> -->
                          </div>
                          <div class="col-12 d-flex justify-content-start mt-2">
                            <?php echo e(Form::submit('Update', array('class' => 'btn btn-primary mr-1 mb-1'))); ?>

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
    <script>
      $(document).ready(function()
      {
        $('input[type=radio][name=has_submenu]').change(function()
        {
          // alert(this.value);
          submenu_permissions(this.value);
        });
        var sub_per_load = $('input[type=radio][name=has_submenu]:checked').val();
        if (sub_per_load != '')
        {
          // alert(sub_per_load);
            submenu_permissions(sub_per_load);
        }
      });
      function submenu_permissions(subcat)
      {
        if (subcat == '1')
        {
            $('.menu_permissions').hide();
        }
        else if (subcat == '0')
        {
            $('.menu_permissions').show();
        }
      }
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\eureka\resources\views/backend/backendmenu/edit.blade.php ENDPATH**/ ?>