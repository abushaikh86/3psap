@extends('backend.layouts.app')
@section('title', 'Create Company')

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
            <h5 class="content-header-title float-left pr-1 mb-0">Create Company</h5>
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
              <h4 class="card-title">Create Company</h4>
            </div>
            <div class="card-content">
              <div class="card-body">
                @include('backend.includes.errors')
                <form method="POST" action="{{ route('admin.company.store') }}" class="form">
                  {{ csrf_field() }}
                  <div class="form-body">
                    <div class="row">
                      <div class="col-md-12 col-12">
                        <div class="form-group">
                          {{ Form::label('name', 'Company Name *') }}
                          {{ Form::text('name', null, ['class' => 'form-control', 'placeholder' => 'Enter Company Name',
                          'required' => true]) }}
                        </div>
                      </div>
                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          {{ Form::label('email', 'Company Email *') }}
                          {{ Form::text('email', null, ['class' => 'form-control', 'placeholder' => 'Enter Company
                          Email',
                          'required' => true]) }}
                        </div>
                      </div>
                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          {{ Form::label('mobile_no', 'Company Phone Number *') }}
                          {{ Form::text('mobile_no', null, ['class' => 'form-control', 'placeholder' => 'Enter Company
                          Phone Number', 'required' => true]) }}
                        </div>
                      </div>
                      <div class="col-md-12 col-12">
                        <div class="form-group">
                          {{ Form::label('address_line1', 'Address Line 1 *') }}
                          {{ Form::text('address_line1', null, ['class' => 'form-control', 'placeholder' => 'Enter
                          Address Line 1', 'required' => true]) }}
                        </div>
                      </div>
                      <div class="col-md-12 col-12">
                        <div class="form-group">
                          {{ Form::label('address_line2', 'Address Line 2 *') }}
                          {{ Form::text('address_line2', null, ['class' => 'form-control', 'placeholder' => 'Enter
                          Address Line 2', 'required' => true]) }}
                        </div>
                      </div>
                      <div class="col-md-12 col-12">
                        <div class="form-group">
                          {{ Form::label('landmark', 'Landmark *') }}
                          {{ Form::text('landmark', null, ['class' => 'form-control', 'placeholder' => 'Enter Landmark',
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
                      {{-- <div class="col-md-6 col-12">
                        <div class="form-group">
                          {{ Form::label('district', 'District *') }}
                          {{ Form::text('district', null, ['class' => 'form-control', 'placeholder' => 'Enter District',
                          'required' => true]) }}
                        </div>
                      </div>
                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          {{ Form::label('state', 'State *') }}
                          {{ Form::text('state', null, ['class' => 'form-control', 'placeholder' => 'Enter State',
                          'required' => true]) }}
                        </div>
                      </div>
                      <div class="col-md-6 col-12">
                        <div class="form-group">
                          {{ Form::label('country', 'Country *') }}
                          {{ Form::text('country', null, ['class' => 'form-control', 'placeholder' => 'Enter Country',
                          'required' => true]) }}
                        </div>
                      </div> --}}

                      <div class="col-md-6 col-12">
                        <div class="form-label-group">
                          {{-- @php
                          dd($company->country);
                          @endphp --}}
                          {{ Form::label('country', 'Country *') }}
                          {{-- {{dd($address->country)}} --}}
                          {{ Form::select('country', [], null, ['class' => 'form-control', 'required' => true]) }}

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
                          {{ Form::text('pincode', null, ['class' => 'form-control', 'placeholder' => 'Enter Pin Code',
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
                          {{ Form::label('batch_system', 'Does This Company Follow Batch System?
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
                          {{ Form::label('ay_type', 'Academic Year Type *') }}
                          {{ Form::select('ay_type', ['fi_year' => 'Financial Year (1st April-31st
                          March)', 'cal_year' => 'Calender Year'],
                          null, ['class' => 'form-control', 'placeholder' => 'Select Academic Year
                          Type', 'required' => true]) }}
                        </div>
                      </div>

                      {{-- <div class="d-none" id="toggle_div">

                        <div class="col-md-6 col-12 d-inline-flex">

                          <div class="form-group mr-1">
                            {{ Form::label('ac_start_date', 'Start Date *') }}
                            {{ Form::date('ac_start_date', null, ['class' =>
                            'form-control ', 'placeholder' => 'Start Date','required' => true]) }}

                          </div>

                          <div class="form-group">
                            {{ Form::label('ac_end_date', 'End Date *') }}
                            {{ Form::date('ac_end_date', null, ['class' =>
                            'form-control ', 'placeholder' => 'End Date','required' => true]) }}
                          </div>

                        </div>

                      </div> --}}




                      <!--<div class="col-lg-12 col-md-12">-->
                      <!--    {{ Form::label('address', 'Address *') }}-->
                      <!--    <fieldset class="form-group">-->
                      <!--        {{ Form::textarea('address', null, ['class' => 'form-control char-textarea', 'placeholder' => 'Enter Address', 'required' => true, 'rows' => 3]) }}-->
                      <!--    </fieldset>-->
                      <!--</div>-->

                      <!--<div class="col-lg-12 col-md-12">-->
                      <!--    {{ Form::label('bankdetail', 'Bank Detail *') }}-->
                      <!--    <fieldset class="form-group">-->
                      <!--        {{ Form::textarea('bankdetail', null, ['class' => 'form-control char-textarea', 'placeholder' => 'Enter Bank Detail', 'rows' => 3]) }}-->
                      <!--    </fieldset>-->
                      <!--</div>-->

                      <div class="col-12 d-flex justify-content-start">
                        <!-- <button type="submit" class="btn btn-primary mr-1 mb-1">Update</button> -->
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


<script src="{{ asset('public/backend-assets/js/country_state_city.js') }}"></script>


<script>
    // $('#ay_type').change(function() {
    //     var selectedOption = $(this).val();
    //     toggleDateRange(selectedOption);
    // });

    // function toggleDateRange(selectedOption) {
    //     if (selectedOption === 'cust_year') {
    //         $('#toggle_div').removeClass('d-none');
    //         $('#ac_start_date').attr('required', true);
    //         $('#ac_end_date').attr('required', true);
    //     } else {
    //         $('#toggle_div').addClass('d-none');
    //         $('#ac_start_date').removeAttr('required');
    //         $('#ac_end_date').removeAttr('required');
    //         // $('#toggle_div').remove();
    //     }
    // }
</script>

<script>
  var country_selected = `{{ old('country') ?? '' }}`;
        var state_selected = `{{ old('state') ?? '' }}`;
        var district_selected = `{{ old('district') ?? '' }}`;
</script>




@endsection