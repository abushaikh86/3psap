<div class="form-body">
  <div class="row">
    <div class="col-md-6">
      <div class="form-group">
        {{ Form::hidden('storage_locations_id', $storagelocations->storage_location_id??'') }}

        {{ Form::label('storage_location_name', 'Warehouse Name *') }}
        {{ Form::text('storage_location_name', null, ['class' => 'form-control', 'placeholder' => 'Warehouse Name', 'required' => true]) }}
      </div>
    </div>

    <div class="col-md-6">
      <div class="form-group">
        {{ Form::label('warehouse_address', 'Warehouse Location *') }}
        {{ Form::select('warehouse_address', $company_ship_add,null, ['class' => 'form-control', 'placeholder' => 'Select Address', 'required' => true]) }}
      </div>
    </div>
    {{-- <div class="col-md-6">
      <div class="form-group">
        {{ Form::label('location', 'Location ') }}
        {{ Form::text('location', null, ['class' => 'form-control', 'placeholder' => 'Bangalore' ,'required' => true]) }}
      </div>
    </div> --}}
    {{-- <div class="col-md-12">
      <div class="form-group">
        {{ Form::label('address', 'Address ') }}
        {{ Form::textarea('location', null, ['class' => 'form-control', 'placeholder' => 'Address' ,'required' => true]) }}
      </div>
    </div>
    <div class="col-md-6">
      <div class="form-group">
        {{ Form::label('zip_code', 'Zip Code ') }}
        {{ Form::text('zip_code', null, ['class' => 'form-control', 'placeholder' => '400002' ,'required' => true]) }}
      </div>
    </div>
    <div class="col-md-6">
      <div class="form-group">
        {{ Form::label('country', 'Country') }}
        {{ Form::text('country', null, ['class' => 'form-control', 'placeholder' => 'India' ,'required' => true]) }}
      </div>
    </div>
    <div class="col-md-6">
      <div class="form-group">
        {{ Form::label('state', 'State') }}
        {{ Form::text('state', null, ['class' => 'form-control', 'placeholder' => 'Maharashtra' ,'required' => true]) }}
      </div>
    </div>
    <div class="col-md-6">
      <div class="form-group">
        {{ Form::label('city', 'City') }}
        {{ Form::text('city', null, ['class' => 'form-control', 'placeholder' => 'Mumbai' ,'required' => true]) }}
      </div>
    </div> --}}

    <div class="col-12 d-flex justify-content-start">
      <button type="submit" class="btn btn-primary mr-1 mb-1" id="submit_uom">Submit</button>
      <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
    </div>
  </div>
</div>