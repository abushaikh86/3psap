<div class="form-body">
  <div class="row">
    <div class="col-md-6">
      <div class="form-group">
        <?php echo e(Form::hidden('storage_locations_id', $storagelocations->storage_location_id??'')); ?>


        <?php echo e(Form::label('storage_location_name', 'Warehouse Name *')); ?>

        <?php echo e(Form::text('storage_location_name', null, ['class' => 'form-control', 'placeholder' => 'Warehouse Name', 'required' => true])); ?>

      </div>
    </div>

    <div class="col-md-6">
      <div class="form-group">
        <?php echo e(Form::label('warehouse_address', 'Warehouse Location *')); ?>

        <?php echo e(Form::select('warehouse_address', $company_ship_add,null, ['class' => 'form-control', 'placeholder' => 'Select Address', 'required' => true])); ?>

      </div>
    </div>
   
    <div class="col-12 d-flex justify-content-start">
      <button type="submit" class="btn btn-primary mr-1 mb-1" id="submit_uom">Submit</button>
      <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
    </div>
  </div>
</div><?php /**PATH /home/parasigh/public_html/3psap/resources/views/backend/storagelocations/_form.blade.php ENDPATH**/ ?>