@extends('backend.layouts.app')
@section('title', 'Bussiness Partner')
@php
use Spatie\Permission\Models\Role;
@endphp
@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">Create Bussiness Partner</h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                    </li>
                    <li class="breadcrumb-item active">Create</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
        <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
            <div class="btn-group" role="group">
                <a class="btn btn-outline-primary" href="{{ route('admin.bussinesspartner') }}">
                    Back
                </a>
            </div>
        </div>
    </div>
</div>


<section id="basic-datatable">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-content">
                    <div class="card-body card-dashboard">
                        @include('backend.includes.errors')
                        {{ Form::open(['url' => 'admin/bussinesspartner/store']) }}
                        @csrf
                        <div class="form-body">
                            <div class="row">
                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('Bussness Partner Type', 'Bussness Partner Type *') }}
                                        <select name="business_partner_type" id="business_partner_type" class="form-control" placeholder='Select Bussiness Partner Type'>
                                            <option value="">Select Bussiness Partner Type</option>
                                            @foreach ($bussinesstype as $btype)
                                            <option value="{{ $btype->bussiness_master_type_id }}">
                                                {{ $btype->bussiness_master_type }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('bp_code', 'Bussiness Partner Code *') }}
                                        {{ Form::text('bp_code', null, ['class' => 'form-control', 'placeholder' => 'Bussiness Partner Code', 'required' => true]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('bp_name', 'Bussiness Partner Name *') }}
                                        {{ Form::text('bp_name', null, ['class' => 'form-control', 'placeholder' => 'Bussiness Partner Name', 'required' => true]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('Bussness Partner Type', 'Bussness Partner Type *') }}
                                        <select name="bp_organisation_type" id="bp_organisation_type" class="form-control" placeholder='Select Bussiness Organization Type'>
                                            <option value="">Select Bussiness Partner Organization</option>
                                            @foreach ($bpOrgType as $OrgType)
                                            <option value="{{ $OrgType->bp_organisation_type_id }}">
                                                {{ $OrgType->bp_organisation_type }}</option>
                                            @endforeach

                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('bp_category', 'Bussiness Partner Category *') }}
                                        <!-- {{ Form::text('bp_category', null, ['class' => 'form-control', 'placeholder' => 'Bussiness Partner Category', 'required' => true]) }} -->
                                        {{ Form::select('bp_category', $business_partner_category,null, ['class' => 'form-control', 'placeholder' => 'Bussiness Partner Category', 'required' => true]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('bp_group', 'Bussiness Partner group *') }}
                                        {{ Form::text('bp_group', null, ['class' => 'form-control', 'placeholder' => 'Bussiness Partner Group', 'required' => true]) }}
                                    </div>
                                </div>




                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('sales_manager', 'Sales Manager *') }}
                                        {{ Form::text('sales_manager', null, ['class' => 'form-control', 'placeholder' => 'Sales Manager', 'required' => true]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('sales_officer', 'Sales Officer *') }}
                                        {{ Form::text('sales_officer', null, ['class' => 'form-control', 'placeholder' => 'Sales Officer', 'required' => true]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('salesman', 'Salesman *') }}
                                        {{ Form::text('salesman', null, ['class' => 'form-control', 'placeholder' => 'Salesman', 'required' => true]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('terms_peyment', 'Terms of Payment *') }}
                                        <select name="payment_terms_id" id="payment_terms" class="form-control" placeholder='Select Terms of Payment'>
                                            <option value="">Select Terms of Payment</option>
                                            @foreach ($termPayment as $terms)
                                            <option value="{{ $terms->payment_terms_id }}">
                                                {{ $terms->term_type }} </option>
                                            @endforeach

                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('credit_limit', 'Credit Limit *') }}
                                        {{ Form::text('credit_limit', null, ['class' => 'form-control', 'placeholder' => 'Credit limit', 'required' => true]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('gst_details', 'GST Details ') }}
                                        {{ Form::text('gst_details', null, ['class' => 'form-control', 'placeholder' => 'GST Deatils', 'required' => true]) }}
                                    </div>
                                </div>


                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('pricing_profile', 'Pricing Profile *') }}
                                        {{ Form::select('pricing_profile',['0'=>'dummy data'], null, ['class' => 'form-control', 'placeholder' => 'Select Pricing Profile', 'required' => true]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('shelf_life', 'Shelf Life *') }}
                                        {{ Form::text('shelf_life', null, ['class' => 'form-control', 'placeholder' => 'Shelf Life', 'required' => true]) }}
                                    </div>
                                </div>

                                <hr>

                                {{-- Address Details --}}

                                <div class="col-md-12 col-12 mt-3">
                                    <h4><strong>Address Details</strong></h4>
                                </div>
                                <div class="col-sm-12">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class=" col-12">

                                                <div class="form-label-group">
                                                    {{-- {{ Form::text('address_type', null, ['class' => 'form-control', 'placeholder' => 'Address Type', 'required' => true]) }} --}}
                                                    {{ Form::label('address_type', 'Address Type') }}
                                                    <select name="address_type" id="address_type" class='form-control'>
                                                        <option value="Official">Official</option>
                                                        <option value="Bill-To/ Bill-From">Bill-To/ Bill-From</option>
                                                        <!-- <option value="Ship-To/ Ship-From">Ship-To/ Ship-From</option> -->
                                                    </select>
                                                </div>
                                            </div>
                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('building_no_name', 'Building No and Name ') }}
                                                    {{ Form::text('building_no_name', null, ['class' => 'form-control', 'placeholder' => 'Building No and Name', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('street_name', 'Street Name ') }}
                                                    {{ Form::text('street_name', null, ['class' => 'form-control', 'placeholder' => 'Street Name', 'required' => true]) }}
                                                </div>
                                            </div>
                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('landmark', 'Landmark ') }}
                                                    {{ Form::text('landmark', null, ['class' => 'form-control', 'placeholder' => 'Landmark', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('city', 'Name of City ') }}
                                                    {{ Form::text('city', null, ['class' => 'form-control', 'placeholder' => 'Name of City', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('pin_code', 'Pin Code ') }}
                                                    {{ Form::text('pin_code', null, ['class' => 'form-control', 'placeholder' => 'Pin Code', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('district', 'District ') }}
                                                    {{ Form::text('district', null, ['class' => 'form-control', 'placeholder' => 'District', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('state', 'State') }}
                                                    {{ Form::text('state', null, ['class' => 'form-control', 'placeholder' => 'State', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('country', 'Country') }}
                                                    {{ Form::text('country', null, ['class' => 'form-control', 'placeholder' => 'Country', 'required' => true]) }}
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class=" col-12">

                                                <div class="form-label-group">
                                                    {{-- {{ Form::text('address_type', null, ['class' => 'form-control', 'placeholder' => 'Address Type', 'required' => true]) }} --}}
                                                    {{ Form::label('address_type', 'Address Type') }}
                                                    <select name="address_type" id="address_type" class='form-control'>
                                                        <option value="Official">Official</option>
                                                        <!-- <option value="Bill-To/ Bill-From">Bill-To/ Bill-From</option> -->
                                                        <option value="Ship-To/ Ship-From">Ship-To/ Ship-From</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('building_no_name', 'Building No and Name ') }}
                                                    {{ Form::text('building_no_name', null, ['class' => 'form-control', 'placeholder' => 'Building No and Name', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('street_name', 'Street Name ') }}
                                                    {{ Form::text('street_name', null, ['class' => 'form-control', 'placeholder' => 'Street Name', 'required' => true]) }}
                                                </div>
                                            </div>
                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('landmark', 'Landmark ') }}
                                                    {{ Form::text('landmark', null, ['class' => 'form-control', 'placeholder' => 'Landmark', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('city', 'Name of City ') }}
                                                    {{ Form::text('city', null, ['class' => 'form-control', 'placeholder' => 'Name of City', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('pin_code', 'Pin Code ') }}
                                                    {{ Form::text('pin_code', null, ['class' => 'form-control', 'placeholder' => 'Pin Code', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('district', 'District ') }}
                                                    {{ Form::text('district', null, ['class' => 'form-control', 'placeholder' => 'District', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('state', 'State') }}
                                                    {{ Form::text('state', null, ['class' => 'form-control', 'placeholder' => 'State', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('country', 'Country') }}
                                                    {{ Form::text('country', null, ['class' => 'form-control', 'placeholder' => 'Country', 'required' => true]) }}
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    {{-- Address Details --}}

                                    <div class="col-md-12 col-12 mt-3">
                                        <h4><strong>Contact Details</strong></h4>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('country', 'Address Type') }}
                                            <select name="type" id="address_type" class='form-control'>
                                                <option value="Official">Official</option>
                                                <option value="Bill-To/ Bill-From">Bill-To/ Bill-From</option>
                                                <option value="Ship-To/ Ship-From">Ship-To/ Ship-From</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('email_id', 'Email') }}
                                            {{ Form::text('email_id', null, ['class' => 'form-control', 'placeholder' => 'Email', 'required' => true]) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('mobile_no', 'Mobile No') }}
                                            {{ Form::text('mobile_no', null, ['class' => 'form-control', 'placeholder' => 'Mobile No', 'required' => true]) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('landline', 'Landline') }}
                                            {{ Form::text('landline', null, ['class' => 'form-control', 'placeholder' => 'Landline', 'required' => true]) }}
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-12 mt-3">
                                        <h4><strong>Banking Details</strong></h4>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('bank_name', 'bank Name') }}
                                            {{ Form::text('bank_name', null, ['class' => 'form-control', 'placeholder' => 'bank Name', 'required' => true]) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('bank_branch', 'Branch Name') }}
                                            {{ Form::text('bank_branch', null, ['class' => 'form-control', 'placeholder' => 'Branch Name', 'required' => true]) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('ifsc', 'IFSC Code') }}
                                            {{ Form::text('ifsc', null, ['class' => 'form-control', 'placeholder' => 'IFSC Code', 'required' => true]) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('ac_number', 'Account No') }}
                                            {{ Form::text('ac_number', null, ['class' => 'form-control', 'placeholder' => 'Account No', 'required' => true]) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('bank_address ', 'Bank Address') }}
                                            {{ Form::text('bank_address ', null, ['class' => 'form-control', 'placeholder' => 'Bank Address', 'required' => true]) }}
                                        </div>
                                    </div>



                                </div> {{-- main row --}}


                                {{-- end of row --}}




                            </div>
                            <div class="col md-12 center">
                                <center>
                                    {{ Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1']) }}
                                    <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                                </center>
                            </div>

                        </div>


                        {{ Form::close() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
