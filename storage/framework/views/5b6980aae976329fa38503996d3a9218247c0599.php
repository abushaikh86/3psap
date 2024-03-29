<div class="form-body">
  <div class="row">
    <div class="col-md-12 col-12">
      <div class="form-group">
        <?php echo e(Form::label('name', 'Variant Name *')); ?>

        <?php echo e(Form::text('name', null, ['class' => 'form-control', 'placeholder' => 'Enter Variant Name', 'required' => true])); ?>

      </div>
    </div>
    
    <div class="col-12 d-flex justify-content-start">
      <button type="submit" class="btn btn-primary mr-1 mb-1" id="submit_variant">Submit</button>
      <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
    </div>
  </div>
</div><?php /**PATH /var/www/html/eureka/resources/views/backend/variant/_form.blade.php ENDPATH**/ ?>