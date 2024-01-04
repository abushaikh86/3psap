<?php $__env->startSection('title', 'Order Booking'); ?>

<?php $__env->startSection('content'); ?>
<div class="content-header row">
  <div class="content-header-left col-md-6 col-12 mb-2">
    <h3 class="content-header-title">Order Booking</h3>
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Order Booking</li>
        </ol>
      </div>
    </div>
  </div>
  <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
    <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
      <div class="btn-group" role="group">
       
      <a href="<?php echo e(url('admin/orderbooking/create')); ?>" class="btn  btn-outline-primary"><i class="feather icon-plus"></i> Add</a>
      
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
  <div class="row">
</div>
      <div class="table-responsive">
          <table class="table zero-configuration" id="tbl-datatable">
              <thead>
                  <tr>
                    <th>#</th>
                    <th>Order Booking No</th>
                    <th>Date</th>
                    <th>Order Booked To</th>
                    
                    <th>Action</th>
                  </tr>
              </thead>
              <tbody>
       
                <?php if(isset($purchaseorder) && count($purchaseorder)>0): ?>
                  <?php $srno = 1; ?>
                  <?php $__currentLoopData = $purchaseorder; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <tr>
                    <td><?php echo e($srno); ?></td>
                    <td><?php echo e($item->bill_no); ?></td>
                    <td><?php echo e($item->bill_date); ?></td>
                    <td><?php echo e($item->get_partyname->bp_name??''); ?></td>
                    
                    <td>
                       <!-- <a href="<?php echo e(url('admin/orderbooking/download/'.$item->order_booking_id)); ?>" class="btn btn-secondary" title="Download"><i class="icofont icofont-download-alt"></i></a> -->
                      <a href="<?php echo e(url('admin/orderbooking/view/'.$item->order_booking_id)); ?>" class="btn btn-primary" title="View"><i class="feather icon-eye"></i></a>
                      <?php echo Form::open([
                          'method'=>'GET',
                          'url' => ['admin/orderbooking/creategr', $item->order_booking_id],
                          'style' => 'display:inline'
                      ]); ?>

                     
                          <?php echo Form::button('<i class="feather icon-plus"></i>', ['type' => 'submit', 'class' => 'btn btn-info','onclick'=>"return confirm('Are you sure you want to Create Order Fulfillment from this Sale Order ?')",'title'=>'Create Order Fulfillment']); ?>

                     
                      <?php echo Form::close(); ?>

                      
                      
                      <a href="<?php echo e(url('admin/orderbooking/edit/'.$item->order_booking_id)); ?>" class="btn btn-primary" title="Edit"><i class="feather icon-edit"></i></a> 
                      
                      <?php echo Form::open([
                          'method'=>'GET',
                          'url' => ['admin/orderbooking/delete', $item->order_booking_id],
                          'style' => 'display:inline'
                      ]); ?>

                     
                          <?php echo Form::button('<i class="feather icon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger','onclick'=>"return confirm('Are you sure you want to Delete this Entry ?')",'title'=>'Delete']); ?>

                     
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
</div>
</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/3psap/resources/views/backend/orderbooking/index.blade.php ENDPATH**/ ?>