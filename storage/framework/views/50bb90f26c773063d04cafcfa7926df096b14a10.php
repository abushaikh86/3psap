<?php $__env->startSection('title', 'Create Warehouse'); ?>

<?php $__env->startSection('content'); ?>
<?php

?>
<div class="content-header row">
  <div class="content-header-left col-md-6 col-12 mb-2">
    <h3 class="content-header-title">Warehouses</h3>
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
          </li>
          <li class="breadcrumb-item">
            <a href="<?php echo e(route('admin.storagelocations')); ?>">Warehouses</a>
          </li>
          <li class="breadcrumb-item active">Create Warehouse</li>
        </ol>
      </div>
    </div>
  </div>
  <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
    <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
      <div class="btn-group" role="group">
        <a class="btn btn-outline-secondary" href="<?php echo e(route('admin.storagelocations')); ?>">
           Back
        </a>
      </div>
    </div>
  </div>
</div>
<section id="multiple-column-form">
          <div class="row match-height">
            <div class="col-12">
              <div class="card">
                <div class="card-header">
                  <h4 class="card-title">Create Warehouse</h4>
                </div>
                <div class="card-content">
                  <div class="card-body">
                    <?php echo $__env->make('backend.includes.errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <form method="POST" action="<?php echo e(route('admin.storagelocations.store')); ?>" class="form">
                      <?php echo e(csrf_field()); ?>

                      <?php echo $__env->make('backend.storagelocations._form',$company_ship_add, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      
      </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\eureka\resources\views/backend/storagelocations/create.blade.php ENDPATH**/ ?>