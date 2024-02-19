<?php $__env->startSection('title', 'Edit State'); ?>

<?php $__env->startSection('content'); ?>

<div class="content-header row">
  <div class="content-header-left col-md-6 col-12 mb-2">
    <h3 class="content-header-title">Edit State</h3>
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
          </li>

          <li class="breadcrumb-item">
            <a href="<?php echo e(route('admin.state',['id'=>request('id')])); ?>">States</a>
          </li>

          <li class="breadcrumb-item active">Edit</li>
        </ol>
      </div>
    </div>
  </div>
  <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
    <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
      <div class="btn-group" role="group">
        <a class="btn btn-outline-primary add-btn" href="<?php echo e(route('admin.state',['id'=>request('id')])); ?>">
          <i class="feather icon-arrow-left"></i> Back
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
                <?php echo e(Form::model($state,['url' => 'admin/state/update'])); ?>

                <?php echo csrf_field(); ?>
                <div class="form-body">
                    <div class="row">
                        <div class="col-md-6 col-12">
                            <div class="form-group">
                                <?php echo e(Form::label('name', 'State Name *')); ?>

                                <?php echo e(Form::text('name', null, ['class' => 'form-control', 'required' => true, 'placeholder' => 'Enter State Name'])); ?>

                                <?php echo e(Form::hidden('id', null, ['class' => 'form-control', 'required' => true, 'placeholder' => 'Enter State Name'])); ?>

                            </div>
                        </div>

                        <div class="col-md-6 col-12 pt-2">
                            <?php echo e(Form::submit('Update', ['class' => 'btn btn-primary mr-1 mb-1'])); ?>

                            <input type="reset" name='Reset' value="Reset" class='btn btn-secondary mr-1 mb-1'>
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
<?php $__env->startSection('scripts'); ?>

<script>
    $(document).ready(function(){

    });
</script>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/3psap/resources/views/backend/states/edit.blade.php ENDPATH**/ ?>