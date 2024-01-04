<div class="form-body">
  <div class="row">
    {{-- <div class="col-md-6"> --}}
      {{-- <div class="form-group"> --}}
        {{ Form::hidden('storage_locations_id', $storagelocations->bin_type_id??'') }}

        {{-- {{ Form::label('bin_name', 'Bin Name *') }}
        {{ Form::text('bin_name', null, ['class' => 'form-control', 'placeholder' => 'Bin Name', 'required' => true]) }}
      </div>
    </div> --}}

    <div class="col-md-6">
      <div class="form-group">
        {{ Form::label('name', 'Name *') }}
        {{ Form::text('name',null, ['class' => 'form-control', 'placeholder' => 'Enter Type', 'required' => true]) }}
      </div>
    </div>
    





    <div class="col-12 d-flex justify-content-start">
      <button type="submit" class="btn btn-primary mr-1 mb-1" id="submit_uom">Submit</button>
      <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
    </div>
  </div>
</div>