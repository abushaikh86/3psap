<?php $__env->startSection('title', 'Change Password'); ?>
<?php $__env->startSection('content'); ?>


<div class="content-header row">
  <div class="content-header-left col-12 mb-2">
    <h3 class="content-header-title">Change Password</h3>
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Change Password</li>
        </ol>
      </div>
    </div>
  </div>
</div>

<section id="multiple-column-form">
  <div class="row match-height">
    <div class="col-12">
      <div class="card">
        <div class="card-content">
          <div class="card-body">
            <?php echo $__env->make('backend.includes.errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <form class="form" method="POST" action="<?php echo e(route('admin.update_password')); ?>" autocomplete="off">
              <?php echo e(csrf_field()); ?>

              <div class="form-body">
                <div class="row">
                  <div class="col-md-6 col-12">
                    <div class="form-group">
                      <label>Current Password *</label>
                      <input type="password" class="form-control" name="current_password" placeholder="Enter Current Password" required>
                    </div>
                  </div>
                  <div class="col-md-6 col-12">
                    <div class="form-group">
                      <?php echo e(Form::label('new_password', 'New Password *')); ?>

                      <input type="password" class="form-control" id="new_password" name="new_password" placeholder="Enter New Password" required>
                    </div>
                  </div>
                  <div class="col-md-6 col-12">
                    <div class="form-group">
                      <?php echo e(Form::label('new_password_confirmation', 'Confirm New Password *')); ?>

                      <input type="password" class="form-control" name="new_password_confirmation" placeholder="Enter New Password again" required>
                    </div>
                  </div>

                  <div class="col-12 d-flex justify-content-start">
                    <?php echo e(Form::submit('Update', array('class' => 'btn btn-primary mr-1'))); ?>

                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/3psap/resources/views/backend/admin/changepassword.blade.php ENDPATH**/ ?>