<?php $__env->startSection('title', 'Pricings'); ?>

<?php $__env->startSection('content'); ?>
<div class="content-header row">
  <div class="content-header-left col-md-6 col-12 mb-2">
    <h3 class="content-header-title">Pricing List</h3>
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Pricing List</li>
        </ol>
      </div>
    </div>
  </div>
  <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
    <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
      <div class="btn-group" role="group">
        <a class="btn btn-outline-primary" href="<?php echo e(route('admin.pricings.create')); ?>">
          <i class="feather icon-plus"></i> Add
        </a>
      </div>
    </div>
  </div>
</div>
<section id="basic-datatable">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Pricing List</h4>
                </div>
                <div class="card-content">
                    <div class="card-body card-dashboard">
                        <div class="table-responsive">
                            <table class="table zero-configuration" id="tbl-datatable">
                                <thead>
                                    <tr>
                                      <th>#</th>
                                      <th>Name</th>
                                      <th>Price Data</th>
                                      <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  <?php if(isset($pricings) && count($pricings)>0): ?>
                                    <?php $srno = 1; ?>
                                    <?php $__currentLoopData = $pricings; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pricing): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                      <td><?php echo e($srno); ?></td>
                                      <td><?php echo e($pricing->pricing_name); ?></td>
                                      <td><a href="<?php echo e(route('admin.pricings.setpricing',['id'=>$pricing->pricing_master_id])); ?>" class="btn btn-sm btn-outline-primary">Update</a></td>
                                      <td>

                                        <a href="<?php echo e(url('admin/pricings/edit/'.$pricing->pricing_master_id)); ?>" class="btn btn-primary" title="Edit"><i class="feather icon-edit"></i></a>
                                       
                                        <?php echo Form::open([
                                            'method'=>'GET',
                                            'url' => ['admin/pricings/delete', $pricing->pricing_master_id],
                                            'style' => 'display:inline'
                                        ]); ?>

                                            <?php echo Form::button('<i class="feather icon-trash"></i>', ['type' => 'submit','title'=>'Delete', 'class' => 'btn btn-danger','onclick'=>"return confirm('Are you sure you want to Delete this Entry ?')"]); ?>

                                        <?php echo Form::close(); ?>

                                      </td>
                                    </tr>
                                    <?php $srno++; ?>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                  <?php endif; ?>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('scripts'); ?>
<script src="<?php echo e(asset('public/backend-assets/vendors/js/tables/datatable/datatables.min.js')); ?>"></script>
<script src="<?php echo e(asset('public/backend-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js')); ?>"></script>
<script src="<?php echo e(asset('public/backend-assets/vendors/js/tables/datatable/dataTables.buttons.min.js')); ?>"></script>

<script>
  $(document).ready(function()
  {

  });
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/3psap/resources/views/backend/pricings/index.blade.php ENDPATH**/ ?>