<?php $__env->startSection('title', 'City Master'); ?>

<?php $__env->startSection('content'); ?>

<div class="content-header row">
  <div class="content-header-left col-md-6 col-12 mb-2">
    <h3 class="content-header-title">City Master</h3>
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
          </li>

          <li class="breadcrumb-item">
            <a href="<?php echo e(route('admin.state',['id'=>request('id')])); ?>">States</a>
          </li>

          <li class="breadcrumb-item active">City</li>
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
                <?php echo e(Form::open(['url' => 'admin/states/city/store'])); ?>

                <?php echo csrf_field(); ?>
                <div class="form-body">
                    <div class="row">
                        <div class="col-md-6 col-12">
                            <div class="form-group">
                                <?php echo e(Form::label('name', 'City Name *')); ?>

                                <?php echo e(Form::text('city_name', null, ['class' => 'form-control', 'required' => true, 'placeholder' => 'Enter City Name'])); ?>

                                <?php echo e(Form::hidden('state_id', $id, ['class' => 'form-control', 'required' => true, 'placeholder' => 'Enter Name'])); ?>

                            </div>
                        </div>

                        <div class="col-md-6 col-12 pt-2">
                            <?php echo e(Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1'])); ?>

                        </div>
                    </div>
                    <?php echo e(Form::close()); ?>

            </div>
          </div>
        </div>
      </div>
    </div>
  </section>



<section id="basic-datatable">
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-content">
          <div class="card-body card-dashboard">
            <div class="table-responsive">
              <table class="table zero-configuration" id="tbl-datatable" style="white-space: nowrap;">
                <thead>
                  <tr>
                    <th class="col-1 text-center">Sr. No</th>
                    <th>City Name</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>

                  <?php if(isset($cities) && count($cities)>0): ?>
                  <?php $srno = 1; ?>
                  <?php $__currentLoopData = $cities; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <tr>
                    <td class="text-center"><?php echo e($srno); ?></td>
                    <td><?php echo e($data->city_name); ?></td>
                    <td>
                        <a href="<?php echo e(url('admin/states/city/edit/'.$data->city_id.'?state_id='.request('id'))); ?>" class="btn btn-primary"><i class="feather icon-edit-2"></i></a>
                        <a href="<?php echo e(url('admin/states/city/delete/'.$data->city_id)); ?>" class="btn btn-danger" onclick = "return confirm('Are you sure you want to Delete this Entry ?')"><i class="feather icon-trash"></i></a>
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

<script>
    $(document).ready(function(){
        $('#tbl-datatable').DataTable({
            dom: 'Bfrtip',
            scrollX: true,
            fixedHeader: true,
            buttons: [
                {
                    text: '<i class="feather icon-printer"></i> Print',
                    extend: 'print',
                    exportOptions: {
                        columns: [0,1]
                    },
                    title: function(){
                      var printTitle = 'City Master';
                      return printTitle
                  },
                  className: 'btn btn-info pb-0 pt-0 px-1 text-white font-weight-bold',
                },
                {
                    text: '<i class="feather icon-download-cloud"></i> Excel',
                    extend: 'excel',
                    exportOptions: {
                        columns: [0,1]
                    },
                    title: function(){
                      var printTitle = 'City Master';
                      return printTitle
                    },
                    className: 'btn btn-success text-white font-weight-bold pb-0 pt-0 px-1',
                },
        ],
        });
    });
</script>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/3psap/resources/views/backend/city/index.blade.php ENDPATH**/ ?>