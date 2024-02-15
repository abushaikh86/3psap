<div class="form-body">
  <div class="row">
    <div class="col-md-12 col-12">
      <div class="form-group">
        {{ Form::label('subcategory_name', 'Sub Category Name *') }}
        {{ Form::text('subcategory_name', null, ['class' => 'form-control', 'placeholder' => 'Enter Sub Category Name', 'required' => true]) }}
      </div>
    </div>
    {{-- <div class="col-md-12 col-12">
      <div class="form-group">
        {{ Form::label('subcategory_description', 'Sub Category Description *') }}
        {{ Form::text('subcategory_description', null, ['class' => 'form-control', 'placeholder' => 'Enter Sub Category Description', 'required' => true]) }}
      </div>
    </div> --}}
    {{-- <div class="col-md-6 col-12">
      <div class="form-group">
        {{ Form::select('category_id', $categories, request()->category_id, ['class'=>'select2 form-control','id'=>'category_id']) }}
      </div>
    </div> --}}
    <div class="col-md-3 col-6">
      {{ Form::label('visibility', 'Show / Hide') }}
      <fieldset>
        <div class="radio radio-success">
          {{ Form::radio('visibility','1',true,['id'=>'radioshow']) }}
          {{ Form::label('radioshow', 'Yes') }}
        </div>
      </fieldset>
      <fieldset>
        <div class="radio radio-danger">
          {{ Form::radio('visibility','0',false,['id'=>'radiohide']) }}
          {{ Form::label('radiohide', 'No') }}
        </div>
      </fieldset>
    </div>


    <div class="col-12 d-flex justify-content-start mt-2">
      {{ Form::submit('Save', array('class' => 'btn btn-primary mr-1 mb-1','id'=>'submit_sub_category')) }}
      <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
    </div>
  </div>
</div>
