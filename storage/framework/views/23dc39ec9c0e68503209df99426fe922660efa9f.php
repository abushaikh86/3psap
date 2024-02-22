<div class="form-body">
  <div class="row">

        <?php echo e(Form::hidden('storage_locations_id', $storagelocations->bin_id??'')); ?>




    <div class="col-md-6">
      <div class="form-group">
        <?php echo e(Form::label('bin_type', 'Bin  *')); ?>

        <?php echo e(Form::select('bin_type', $bin_type,null, ['class' => 'form-control', 'placeholder' => 'Select Type', 'required' => true])); ?>

      </div>
    </div>
    
    <div class="col-md-6">
      <div class="form-group">
        <?php echo e(Form::label('warehouse_id', 'Warehouse *')); ?>

        <?php echo e(Form::select('warehouse_id', $warehouses,null, ['class' => 'form-control', 'placeholder' => 'Select Warehouse', 'required' => true])); ?>

      </div>
    </div>





    <div class="col-12 d-flex justify-content-start">
      <button type="submit" class="btn btn-primary mr-1 mb-1" id="submit_uom">Submit</button>
      <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
    </div>
  </div>
</div><?php /**PATH /var/www/html/3psap/resources/views/backend/binmanagement/_form.blade.php ENDPATH**/ ?>