@extends('backend.layouts.app')
@section('title', 'Create Distributor')
@php
use App\Models\backend\Country;
use App\Models\backend\Zones;
use Spatie\Permission\Models\Role;

$role_id = Role::where(['department_id'=>10])->first();
@endphp
@section('content')
@php

@endphp
<div class="app-content content">
  <div class="content-overlay"></div>
  <div class="content-wrapper">
    <div class="content-header row">
      <div class="content-header-left col-12 mb-2 mt-1">
        <div class="row breadcrumbs-top">
          <div class="col-12">
            <h5 class="content-header-title float-left pr-1 mb-0">Create Distributor</h5>
            <div class="breadcrumb-wrapper col-12">
              <ol class="breadcrumb p-0 mb-0">
                <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}"><i class="bx bx-home-alt"></i></a>
                </li>
                <li class="breadcrumb-item active">Create
                </li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </div>
    <section id="multiple-column-form">
      <div class="row match-height">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <a href="{{ route('admin.company') }}" class="btn btn-outline-secondary float-right"><i
                  class="bx bx-arrow-back"></i><span class="align-middle ml-25">Back</span></a>
              <h4 class="card-title">Create Distributor</h4>
            </div>
            <div class="card-content">
              <div class="card-body">
                @include('backend.includes.errors')
                <form method="POST" action="{{ route('admin.company.store') }}" class="form" enctype="multipart/form-data">
                  {{ csrf_field() }}
                  <div class="form-body">
                    <div class="row">
                      <div class="col-md-12 col-12">
                        <div class="form-group">
                          {{ Form::label('name', 'Distributor Name *') }}
                          {{ Form::text('name', null, ['class' => 'form-control', 'placeholder' => 'Enter Distributor Name',
                          'required' => true]) }}
                        </div>
                      </div>
                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          {{ Form::label('email', 'Distributor Email *') }}
                          {{ Form::text('email', null, ['class' => 'form-control',
                          'placeholder' => 'Enter Distributor Email',
                          'required' => true]) }}
                        </div>
                      </div>
                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          {{ Form::label('mobile_no', 'Distributor Phone Number *') }}
                          {{ Form::text('mobile_no', null, ['class' => 'form-control',
                          'placeholder' => 'Enter Distributor Phone Number', 'required' => true]) }}
                        </div>
                      </div>
                      <div class="col-md-12 col-12">
                        <div class="form-group">
                          {{ Form::label('address_line1', 'Address Line 1 *') }}
                          {{ Form::text('address_line1', null, ['class' => 'form-control',
                          'placeholder' => 'Enter Address Line 1', 'required' => true]) }}
                        </div>
                      </div>
                      <div class="col-md-12 col-12">
                        <div class="form-group">
                          {{ Form::label('address_line2', 'Address Line 2 *') }}
                          {{ Form::text('address_line2', null, ['class' => 'form-control',
                          'placeholder' => 'Enter Address Line 2', 'required' => true]) }}
                        </div>
                      </div>
                      <div class="col-md-12 col-12">
                        <div class="form-group">
                          {{ Form::label('landmark', 'Landmark *') }}
                          {{ Form::text('landmark', null, ['class' => 'form-control',
                          'placeholder' => 'Enter Landmark',
                          'required' => true]) }}
                        </div>
                      </div>
                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          {{ Form::label('city', 'City *') }}
                          {{ Form::text('city', null, ['class' => 'form-control', 'placeholder' => 'Enter City',
                          'required' => true]) }}
                        </div>
                      </div>

                      <div class="col-md-6 col-12">
                        <div class="form-label-group">

                          {{ Form::label('country', 'Country *') }}
                          {{ Form::select('country', Country::pluck('name', 'country_id'), null, ['class' =>
                          'form-control',
                          'placeholder' => 'Select Country', 'required' => true]) }}

                        </div>
                      </div>

                      <div class="col-md-6 col-12">
                        <div class="form-label-group">

                          {{ Form::label('state', 'State *') }}
                          {{ Form::select('state', [],null, ['class' => 'form-control', 'required' => true]) }}

                        </div>
                      </div>

                      <div class="col-md-6 col-12">
                        <div class="form-label-group">
                          {{ Form::label('district', 'District *') }}
                          {{ Form::select('district', [], null, ['class' => 'form-control', 'required' => true]) }}

                        </div>
                      </div>

                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          {{ Form::label('pincode', 'Pin Code *') }}
                          {{ Form::number('pincode', null, ['class' => 'form-control', 'placeholder' => 'Enter Pin Code',
                          'required' => true]) }}
                        </div>
                      </div>
                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          {{ Form::label('gstno', 'GST No. *') }}
                          {{ Form::text('gstno', null, ['class' => 'form-control', 'placeholder' => 'Enter GST No.',
                          'required' => true]) }}
                        </div>
                      </div>


                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          {{ Form::label('batch_system', 'Does This Distributor Follow Batch System?
                          *') }}
                          {{ Form::select('batch_system', ['1' => 'Yes', '0' => 'No'], null,
                          ['class' => 'form-control',
                          'required' => true]) }}
                        </div>
                      </div>

                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          {{ Form::label('is_backdated_date', 'Back Dated Entry Allowed?
                          *') }}
                          {{ Form::select('is_backdated_date', ['0' => 'No','1' => 'Yes'], null,
                          ['class' => 'form-control',
                          'required' => true]) }}
                        </div>
                      </div>

                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          {{ Form::label('db_type', 'DB Type *') }}
                          {{ Form::select('db_type', ['Distributor' => 'Distributor', 'Supplier' => 'Supplier'], null,
                          ['class' => 'form-control', 'placeholder' => 'Select an option', 'required' => true]) }}
                        </div>
                      </div>



                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          {{ Form::label('ay_type', 'Financial Year*') }}
                          {{ Form::select('ay_type', ['fi_year' => 'Financial Year (1st April-31st
                          March)', 'cal_year' => 'Calender Year'],
                          null, ['class' => 'form-control', 'required' => true]) }}
                        </div>
                      </div>

                      <div class="col-md-6 col-12">
                        <div id="parentRolesContainer">
                        </div>
                      </div>

                      <div class="col-md-6 col-12 zone_drp">
                        <div class="form-group">
                            {{ Form::label('zone_id', 'Zone *') }}
                            {{ Form::select('zone_id', Zones::pluck('zone_name','zone_id'), null, [
                            'class' => 'form-control',
                            'placeholder' => 'Select Zone',
                            'required' => true,
                            ]) }}
                        </div>
                      </div>

                      <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('company_logo', 'Distributor Logo') }}
                            <div class="custom-file">
                                {{ Form::file('company_logo', ['class' => 'custom-file-input', 'id' =>
                                'company_logo']) }}
                                <label class="custom-file-label" for="company_logo">Choose file</label>
                            </div>
                        </div>
                    </div>




                      <div class="col-12 d-flex justify-content-start">
                        {{ Form::submit('Update', ['class' => 'btn btn-primary mr-1 mb-1']) }}
                      </div>
                    </div>
                  </div>
                  {{ Form::close() }}
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</div>

<script src="{{ asset('public/backend-assets/js/DynamicDropdown.js') }}"></script>

<script>
  $(document).ready(function() {
     // usama_19-02-2024_get states
     $('#country').change(function() {
         new DynamicDropdown('{{ route('admin.getStates') }}',
             $(this).val(), '#state', null, '#district');
     });
     $('#state').change(function() {
         new DynamicDropdown('{{ route('admin.getCities') }}',
             $(this).val(), '#district', null);
     });

     $.ajax({
            url: "{{ route('admin.get_parent_roles') }}", // Replace with your actual endpoint
            method: 'GET',
            data: {
                role_id: {{$role_id->id}}
            },
            success: function(response) {
                // Handle the response from the server
                $('#parentRolesContainer').html(response);
            },
            error: function(error) {
                // Handle errors
                console.error(error);
            }
     });
  });
</script>




@endsection