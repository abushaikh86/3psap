<?php $__env->startSection('title', 'Banking Receipt'); ?>

<?php $__env->startSection('content'); ?>

<div class="content-header row">
  <div class="content-header-left col-md-6 col-12 mb-2">
    <h3 class="content-header-title">Banking Receipt</h3>
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Banking Receipt</li>
        </ol>
      </div>
    </div>
  </div>
  <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
    <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
      <div class="btn-group" role="group">
        <a class="btn btn-outline-primary" href="<?php echo e(route('admin.bankingreceipt.create')); ?>">
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
                    <h4 class="card-title">Banking Receipt</h4>
                </div>
                <div class="card-content">
                    <div class="card-body card-dashboard">

                        
                        <div class="table-responsive">

                            <table class="table zero-configuration" id="tbl-datatable">
                                <thead>
                                    <tr>
                                        <th>Sr. No</th>
                                        <th>Receipt To</th>
                                        <th colspan="3">Action</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if(isset($details) && count($details) > 0): ?>
                                        <?php $srno = 1; ?>
                                        <?php $__currentLoopData = $details; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <tr>
                                                <td><?php echo e($srno); ?></td>
                                                <td><?php echo e($data->beat_number); ?></td>
                                            
                                                <td>
                                   
                                                    <a href="<?php echo e(url('admin/beat/edit/'.$data->beat_id)); ?>" class="btn btn-primary" title="Edit"><i class="feather icon-edit"></i></a>
                                       
                                                    <?php echo Form::open([
                                                        'method'=>'GET',
                                                        'url' => ['admin/beat/delete', $data->beat_id],
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
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\3psap\resources\views/backend/bankingreceipt/index.blade.php ENDPATH**/ ?>