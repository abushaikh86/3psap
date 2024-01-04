<div class="form-body">
    <div class="row">
        {{-- <div class="col-md-6">
            <div class="form-group">

                {{ Form::label('year_string', 'Year String *') }}
                {{ Form::text('year_string', null, ['class' => 'form-control', 'placeholder' => date('Y'), 'required' => true]) }}

            </div>
        </div> --}}

        <div class="col-md-6">
            <div class="form-group">
          {{ Form::hidden('id', $data->id ?? '') }}

                {{ Form::label('year_id', 'Select Year *') }}
                {{ Form::select('year_id', $year_data, null, ['class' => 'form-control', 'placeholder' => 'Select Year', 'required' => true]) }}
            </div>
        </div>


        <div class="col-12 d-flex justify-content-start">
            <button type="submit" class="btn btn-primary mr-1 mb-1" id="">Submit</button>
            <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
        </div>
    </div>
</div>
