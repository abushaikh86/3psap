@extends('backend.layouts.app')
@section('title', 'Update Company')

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
                        <h5 class="content-header-title float-left pr-1 mb-0">Update Company</h5>
                        <div class="breadcrumb-wrapper col-12">
                            <ol class="breadcrumb p-0 mb-0">
                                <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}"><i
                                            class="bx bx-home-alt"></i></a>
                                </li>
                                <li class="breadcrumb-item active">Update
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
                            <h4 class="card-title">Update Company</h4>
                        </div>
                        <div class="card-content">
                            <div class="card-body">
                                @include('backend.includes.errors')
                                {!! Form::model($company, [
                                'method' => 'POST',
                                'url' => ['admin/company/update'],
                                'class' => 'form',
                                ]) !!}
                                <div class="form-body">
                                    <div class="row">
                                        <div class="col-md-12 col-12">
                                            <div class="form-group">
                                                {{ Form::hidden('company_id', $company->company_id) }}
                                                {{ Form::label('name', 'Company Name *') }}
                                                {{ Form::text('name', null, ['class' => 'form-control', 'placeholder' =>
                                                'Enter Company Name', 'required' => true]) }}
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                {{ Form::label('email', 'Company Email *') }}
                                                {{ Form::text('email', null, ['class' => 'form-control', 'placeholder'
                                                => 'Enter Company Email', 'required' => true]) }}
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                {{ Form::label('mobile_no', 'Company Phone Number *') }}
                                                {{ Form::text('mobile_no', null, ['class' => 'form-control',
                                                'placeholder' => 'Enter Company Phone Number', 'required' => true]) }}
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
                                                'placeholder' => 'Enter Landmark', 'required' => true]) }}
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                {{ Form::label('city', 'City *') }}
                                                {{ Form::text('city', null, ['class' => 'form-control', 'placeholder' =>
                                                'Enter City', 'required' => true]) }}
                                            </div>
                                        </div>
                                     

                                        <div class="col-md-6 col-12">
                                            <div class="form-label-group">
                                                {{-- @php
                                                dd($company->country);
                                                @endphp --}}
                                                {{ Form::label('country', 'Country *') }}
                                                {{-- {{dd($address->country)}} --}}
                                                {{ Form::select('country', [], $company->country, ['class' =>
                                                'form-control', 'required' => true]) }}

                                            </div>
                                        </div>

                                        <div class="col-md-6 col-12">
                                            <div class="form-label-group">

                                                {{ Form::label('state', 'State *') }}
                                                {{ Form::select('state', [], $company->state, ['class' =>
                                                'form-control', 'required' => true]) }}

                                            </div>
                                        </div>

                                        <div class="col-md-6 col-12">
                                            <div class="form-label-group">
                                                {{ Form::label('district', 'District *') }}
                                                {{ Form::select('district', [], $company->district, ['class' =>
                                                'form-control', 'required' => true]) }}

                                            </div>
                                        </div>

                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                {{ Form::label('pincode', 'Pin Code *') }}
                                                {{ Form::text('pincode', null, ['class' => 'form-control', 'placeholder'
                                                => 'Enter Pin Code', 'required' => true]) }}
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                {{ Form::label('gstno', 'GST No. *') }}
                                                {{ Form::text('gstno', null, ['class' => 'form-control', 'placeholder'
                                                => 'Enter GST No.', 'required' => true]) }}
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
                                                {{ Form::select('db_type', ['Distributor' => 'Distributor', 'Supplier'
                                                => 'Supplier'], null, ['class' => 'form-control', 'placeholder' =>
                                                'Select an option', 'required' => true]) }}
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


<script src="{{ asset('public/backend-assets/js/country_state_city.js') }}"></script>



<script>
    var country_selected = `{{ (old('country') ?? $company->country) ?? '' }}`;
      var state_selected = `{{ (old('state') ?? $company->state) ?? '' }}`;
      var district_selected = `{{ (old('district') ?? $company->district) ?? '' }}`;
</script>




@endsection