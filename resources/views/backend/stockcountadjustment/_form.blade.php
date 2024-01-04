<div class="form-body">
  <div class="row">
    <div class="col-md-6">
      <div class="form-group">
        {{ Form::label('storage_location_name', 'Storage Location Name *') }}
        {{ Form::text('storage_location_name', null, ['class' => 'form-control', 'placeholder' => 'Warehouse 1', 'required' => true]) }}
      </div>
    </div>
    <div class="col-md-6">
      <div class="form-group">
        {{ Form::label('location', 'Location ') }}
        {{ Form::text('location', null, ['class' => 'form-control', 'placeholder' => 'Bangalore']) }}
      </div>
    </div>
    <div class="col-md-12">
      <div class="form-group">
        {{ Form::label('address', 'Address ') }}
        {{ Form::textarea('location', null, ['class' => 'form-control', 'placeholder' => 'Address']) }}
      </div>
    </div>
    <div class="col-md-6">
      <div class="form-group">
        {{ Form::label('zip_code', 'Zip Code ') }}
        {{ Form::text('zip_code', null, ['class' => 'form-control', 'placeholder' => '400002']) }}
      </div>
    </div>
    <div class="col-md-6">
      <div class="form-group">
        {{ Form::label('country', 'Country') }}
        {{ Form::text('country', null, ['class' => 'form-control', 'placeholder' => 'India']) }}
      </div>
    </div>
    <div class="col-md-6">
      <div class="form-group">
        {{ Form::label('state', 'State') }}
        {{ Form::text('state', null, ['class' => 'form-control', 'placeholder' => 'Maharashtra']) }}
      </div>
    </div>
    <div class="col-md-6">
      <div class="form-group">
        {{ Form::label('city', 'City') }}
        {{ Form::text('city', null, ['class' => 'form-control', 'placeholder' => 'Mumbai']) }}
      </div>
    </div>

    <div class="col-12 d-flex justify-content-start">
      <button type="submit" class="btn btn-primary mr-1 mb-1" id="submit_uom">Submit</button>
      <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
    </div>
  </div>
</div>