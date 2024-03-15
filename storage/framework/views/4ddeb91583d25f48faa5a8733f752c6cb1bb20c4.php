<?php $__env->startSection('title'); ?>
Create New Scheme
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">Create Offer</h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
                    </li>
                    <li class="breadcrumb-item active">Create</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
        <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
            <div class="btn-group" role="group">
                <a class="btn btn-outline-secondary" href="<?php echo e(route('admin.schemes')); ?>">
                    <i class="feather icon-arrow-left"></i> Back

                </a>
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

              <form method="POST" action="<?php echo e(route('admin.schemes.store')); ?>" class="form">
                <?php echo e(csrf_field()); ?>

           <div class="row">
            <div class="form-group col-lg-12 <?php echo e($errors->has('scheme_title') ? 'has-error' : ''); ?>">
                <?php echo Form::label('scheme_title', 'Scheme Title: ', ['class' => ' control-label']); ?>

                <div class="">
                    <?php echo Form::text('scheme_title', null, ['class' => 'form-control']); ?>

                    <?php echo $errors->first('scheme_title', '<p class="help-block">:message</p>'); ?>

                </div>
            </div>
                <div class="form-group col-lg-6 col-md-6 <?php echo e($errors->has('min_product_qty') ? 'has-error' : ''); ?>">
                <?php echo Form::label('min_product_qty', 'Mininum Product Qty: ', ['class' => ' control-label']); ?>

                <div class="">
                    <?php echo Form::number('min_product_qty', null, ['class' => 'form-control']); ?>

                    <?php echo $errors->first('min_product_qty', '<p class="help-block">:message</p>'); ?>

                </div>
            </div>
            <div class="form-group col-lg-6 col-md-6 <?php echo e($errors->has('free_product_qty') ? 'has-error' : ''); ?>">
                <?php echo Form::label('free_product_qty', 'Free Product Qty: '); ?>

                <div class="">
                    <?php echo Form::number('free_product_qty', null, ['class' => 'form-control']); ?>

                    <?php echo $errors->first('free_product_qty', '<p class="help-block">:message</p>'); ?>

                </div>
            </div>

            <div class="form-group col-lg-2 col-md-2 col-3 col-sm-2 mt-2">
                <?php echo Form::submit('Create', ['class' => 'btn btn-primary ']); ?>

            </div>
    </div>
    <?php echo Form::close(); ?>


<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\eureka\resources\views/backend/schemes/create.blade.php ENDPATH**/ ?>