<?php $__env->startSection('title', 'Update Sub Menus'); ?>

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
                <h5 class="content-header-title float-left pr-1 mb-0">Update Sub Menu</h5>
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
                  <h4 class="card-title">Update Sub Menu</h4>
                </div>
                <div class="card-content">
                  <div class="card-body">
                    <?php echo $__env->make('backend.includes.errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php echo Form::model($backendsubmenu, [
                        'method' => 'POST',
                        'url' => ['admin/backendsubmenu/update'],
                        'class' => 'form'
                    ]); ?>

                      <div class="form-body">
                        <div class="row">
                          <div class="col-md-6 col-12">
                            <div class="form-label-group">
                              <?php echo e(Form::hidden('submenu_id', $backendsubmenu->submenu_id)); ?>

                              <?php echo e(Form::text('submenu_name', null, ['class' => 'form-control', 'placeholder' => 'Enter Sub Menu Name', 'required' => true])); ?>

                              <?php echo e(Form::label('submenu_name', 'Sub Menu Name *')); ?>

                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-label-group">
                              <?php echo e(Form::text('submenu_controller_name', null, ['class' => 'form-control', 'placeholder' => 'Enter Sub Menu Controller Name', 'required' => true])); ?>

                              <?php echo e(Form::label('submenu_controller_name', 'Sub Menu Controller Name *')); ?>

                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-label-group">
                              <?php echo e(Form::text('submenu_action_name', null, ['class' => 'form-control', 'placeholder' => 'Enter Sub Menu Action Name'])); ?>

                              <?php echo e(Form::label('submenu_action_name', 'Sub Menu Action Name *')); ?>

                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              <?php echo e(Form::select('menu_id', $menu_list, request()->menu_id, ['class'=>'select2 form-control'])); ?>

                            </div>
                          </div>
                          <div class="col-md-3 col-6">
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
                            <?php echo e(Form::label('submenu_permissions', 'Menu Permissions *')); ?>

                            <ul class="list-unstyled mb-0">
                              <?php
                                $backend_permission = explode(',',$backendsubmenu->submenu_permissions);
                              ?>
                              <?php $__currentLoopData = $permissions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $permission): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                              <li class="d-inline-block mr-2 mb-1">
                                <fieldset>
                                  <div class="checkbox checkbox-primary">
                                    <?php echo e(Form::checkbox('submenu_permissions[]', $permission->base_permission_id, in_array($permission->base_permission_id,$backend_permission), ['id'=>'submenu_permissions['.$permission->base_permission_id.']'])); ?>

                                    <?php echo e(Form::label('submenu_permissions['.$permission->base_permission_id.']', $permission->base_permission_name)); ?>

                                  </div>
                                </fieldset>
                              </li>
                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                          </div>
                          <div class="col-12 d-flex justify-content-start">
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
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\eureka\resources\views/backend/backendsubmenu/edit.blade.php ENDPATH**/ ?>