@extends('backend.layouts.app')
@section('title', 'Edit Business Partner')
@php
use Spatie\Permission\Models\Role;
use App\Models\backend\Beat;
use App\Models\backend\AdminUsers;
use App\Models\backend\Country;
use App\Models\backend\Bpgroup;

$sales_manager_dep = AdminUsers::where('admin_user_id', $sales_manager->keys()->first())->first();
$ase_dep = AdminUsers::where('admin_user_id', $ase->keys()->first())->first();
$sales_officer_dep = AdminUsers::where('admin_user_id', $sales_officer->keys()->first())->first();
$salesman_dep = AdminUsers::where('admin_user_id', $salesman->keys()->first())->first();
@endphp
@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">Edit Business Partner</h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                    </li>
                    <li class="breadcrumb-item active">Edit</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
        <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
            <div class="btn-group" role="group">
                <a href={{route('admin.bussinesspartner.address', ['id' => $model->business_partner_id])}} 
                    class="btn btn-outline-primary" title="Address"><i class="feather icon-map"></i></a> 
                <a href={{route('admin.bussinesspartner.contact', ['id' => $model->business_partner_id])}} 
                    class="btn btn-outline-primary" title="Contact"><i class="feather icon-mail"></i></a> 
                <a href={{route('admin.bussinesspartner.banking', ['id' => $model->business_partner_id])}} 
                    class="btn btn-outline-primary" title="Banking"><i class="feather icon-dollar-sign"></i></a>
                <a class="btn btn-outline-secondary" href="{{ route('admin.bussinesspartner')}}">
                    <i class="feather icon-arrow-left"></i> Back
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
                        {{ Form::open(['url' => 'admin/bussinesspartner/update/' . $model->business_partner_id]) }}
                        @csrf
                        <div class="form-body">

                            <div class="row">
                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('Business Partner Type', 'Business Partner Type *') }}

                                        {{ Form::select('business_partner_type', $bussiness_master_type,
                                        $model->business_partner_type, [
                                        'class' => 'form-control',
                                        'id' => 'business_partner_type',
                                        'placeholder' => 'Select Pricing Profile',
                                        'required' => true,
                                        ]) }}

                                        {{ Form::hidden('business_partner_id', $model->business_partner_id, ['class' =>
                                        'form-control']) }}


                                    </div>
                                </div>


                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('bp_name', 'Business Partner Name *') }}
                                        {{ Form::text('bp_name', $model->bp_name, [
                                        'class' => 'form-control',
                                        'placeholder' => 'Business Partner Name',
                                        'required' => true,
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label(
                                        'Business Partner Organization Type',
                                        'Business Partner
                                        Organization Type *',
                                        ) }}

                                        {{ Form::select('bp_organisation_type', $bpOrgType,
                                        $model->bp_organisation_type, [
                                        'class' => 'form-control',
                                        'placeholder' => 'Select Business Partner Organization Type',
                                        'required' => true,
                                        ]) }}

                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('residential_status', 'Residential status') }}
                                        {{ Form::select(
                                        'residential_status',
                                        DB::table('residential_status')->pluck('name','id'),
                                        $model->residential_status,
                                        ['class' => 'form-control',
                                        'placeholder' => 'Select Residential status'],
                                        ) }}
                                    </div>
                                </div>


                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('bp_channel', 'Business Partner Channel *') }}
                                        {{ Form::select('bp_channel', $business_partner_category, $model->bp_channel,
                                        [
                                        'class' => 'form-control select2',
                                        'placeholder' => 'Business Partner Channel',
                                        'required' => true,
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('bp_category', 'Business Partner Category *') }}
                                        {{ Form::select('bp_category', DB::table('bp_category')->pluck('name','id'), $model->bp_category,
                                        [
                                        'class' => 'form-control',
                                        'placeholder' => 'Select Business Partner Category',
                                        'required' => true,
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('bp_group', 'Business Partner group *') }}
                                        {{ Form::select('bp_group', 
                                        Bpgroup::pluck('name','id'),
                                        $model->bp_group, [
                                        'class' => 'form-control select2',
                                        'placeholder' => 'Select Business Partner Group',
                                        'required' => true,
                                        ]) }}
                                    </div>
                                </div>
                                <div class="col-md-6 col-12 d-none sm_dynamic">

                                    <div class="form-label-group">
                                        {{ Form::label('sales_manager', 'ASM *') }}
                                        {{ Form::select('sales_manager', $sales_manager, $model->sales_manager, [
                                        'class' => 'form-control select2',
                                        'placeholder' => 'ASM',
                                        ]) }}
                                    </div>
                                </div>


                                <div class="col-md-6 col-12 d-none sm_dynamic">

                                    <div class="form-label-group">
                                        {{ Form::label('ase', 'ASE *') }}
                                        {{ Form::select('ase', [], $model->ase, [
                                        'class' => 'form-control select2',
                                        'placeholder' => 'ASE',
                                        ]) }}
                                    </div>

                                </div>


                                <div class="col-md-6 col-12 d-none sm_dynamic">

                                    <div class="form-label-group">
                                        {{ Form::label('sales_officer', 'Sales Officer *') }}
                                        {{ Form::select('sales_officer', [], $model->sales_officer, [
                                        'class' => 'form-control select2',
                                        'placeholder' => 'Sales Officer',
                                        ]) }}
                                    </div>
                                </div>


                                <div class="col-md-6 col-12 d-none sm_dynamic">
                                    <div class="form-label-group">
                                        {{ Form::label('salesman', 'Salesman *') }}
                                        {{ Form::select('salesman', [], $model->salesman, [
                                        'class' => 'form-control select2',
                                        'placeholder' => 'Salesman',
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('terms_peyment', 'Terms of Payment *') }}
                                        <select name="payment_terms_id" id="payment_terms_id" class="form-control"
                                            placeholder='Select Terms of Payment' required>
                                            @foreach ($termPayment as $terms)
                                            <option value="{{ $terms->payment_terms_id }}" @if ($model->payment_terms_id
                                                == $terms->payment_terms_id) Selected = selected @endif>
                                                {{ $terms->term_type }}</option>
                                            @endforeach

                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6 col-12 d-none show_credit_days">
                                    <div class="form-label-group">
                                        {{ Form::label('credit_limit', 'Credit Limit *') }}
                                        {{ Form::text('credit_limit', $model->credit_limit, ['class' => 'form-control',
                                        'placeholder' => 'Enter Days']) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('gst_details', 'GST Number *') }}
                                        {{ Form::text('gst_details', $model->gst_details, [
                                        'class' => 'form-control',
                                        'placeholder' => 'GST Number',
                                        'required' => true,
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('gst_reg_type', 'GST Registration Type') }}
                                        {{ Form::select('gst_reg_type',DB::table('gst_reg_type')->pluck('name','id'),
                                        $model->gst_reg_type, [
                                        'class' => 'form-control',
                                        'placeholder' => 'Select GST Registration Type',
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('rcm_app', 'RCM Application') }}
                                        {{ Form::select('rcm_app', ['1' => 'Yes', '0' => 'No'], $model->rcm_app, [
                                        'class' => 'form-control',
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('pricing_profile', 'Pricing Profile') }}
                                        {{ Form::select('pricing_profile', $pricing_data, $model->pricing_profile, [
                                        'class' => 'form-control',
                                        'placeholder' => 'Select Pricing Profile',
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12 d-none shelf_left">
                                    <div class="form-label-group">
                                        {{ Form::label('shelf_life', 'Freshness Requirement') }}
                                        {{ Form::text('shelf_life', $model->shelf_life, [
                                        'class' => 'form-control',
                                        'placeholder' => 'Freshness Requirement',
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12 ">
                                    <div class="form-label-group">
                                        {{ Form::label('msme_reg', 'MSME registration') }}
                                        {{ Form::select('msme_reg', ['1' => 'Yes', '0' => 'No'], $model->msme_reg, [
                                        'class' => 'form-control',
                                        ]) }}
                                    </div>
                                </div>

                                  <!-- added to tagg distributor for thier bp only 28-02-2024 -->
                                  @if(Auth()->guard('admin')->user()->role != 41)
                                  <div class="col-md-6 col-12 company_drp">
                                      <div class="form-group">
                                          {{ Form::label('company_id', 'Distributor *') }}
                                          {{ Form::select('company_id', $company, $model->company_id, [ 'class' => 'form-control', 'placeholder' => 'Select Distributor',]) }}
                                      </div>
                                  </div>
                                  @else 
                                      {{ Form::hidden('company_id',Auth()->guard('admin')->user()->company_id??'')}}
                                  @endif
                                  <hr>

                                 {{-- Address Details --}}

                                 <div class="col-md-12 col-12 mt-3">
                                    <h4><strong>Address Details</strong></h4>
                                </div>
                                <div class="ml-3 mt-2 mb-2">
                                    {{-- <input type="checkbox" id="filladdress" name="filladdress" /> --}}
                                    {{ Form::checkbox('filladdress', null, null, ['id' => 'filladdress']) }}
                                    <span><b>Copy Same Address To Ship Address</b></span>
                                </div>
                                <div class="col-sm-12">

                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class=" col-12">



                                                <select name="address_type" id="address_type"
                                                    class='form-control d-none'>
                                                    <option value="Bill-To/ Bill-From" selected>Bill-To/ Bill-From
                                                    </option>
                                                </select>

                                                <h4>Bill-To/ Bill-From</h4>
                                            </div>
                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('bp_address_name', 'Address Name ') }}
                                                    {{ Form::text('bp_address_name', $business_partner_address[0]->bp_address_name, [
                                                        'class' => 'form-control',
                                                        'placeholder' => 'Address Name',
                                                        'required' => true,
                                                    ]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('building_no_name', 'Building No and Name ') }}
                                                    {{ Form::text('building_no_name', $business_partner_address[0]->building_no_name, [
                                                        'class' => 'form-control',
                                                        'placeholder' => 'Building No and Name',
                                                        'required' => true,
                                                    ]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('street_name', 'Street Name ') }}
                                                    {{ Form::text('street_name', $business_partner_address[0]->street_name, [
                                                        'class' => 'form-control',
                                                        'placeholder' => 'Street Name',
                                                        'required' => true,
                                                    ]) }}
                                                </div>
                                            </div>
                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('landmark', 'Landmark ') }}
                                                    {{ Form::text('landmark', $business_partner_address[0]->landmark, ['class' => 'form-control', 'placeholder' => 'Landmark']) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('country', 'Country') }}
                                                    {{ Form::select('country', Country::pluck('name', 'country_id'), $business_partner_address[0]->country, [
                                                        'class' => 'form-control ',
                                                        'required' => true,
                                                        'placeholder' => 'Select Country',
                                                    ]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('state', 'State') }}
                                                    {{ Form::select('state', [], $business_partner_address[0]->state, ['class' => 'form-control ', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('district', 'District ') }}
                                                    {{ Form::select('district', [], $business_partner_address[0]->district, ['class' => 'form-control ', 'required' => true]) }}
                                                </div>
                                            </div>
                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('city', 'Name of City ') }}
                                                    {{ Form::text('city', $business_partner_address[0]->city, ['class' => 'form-control', 'placeholder' => 'Name of City', 'required' => true]) }}
                                                </div>
                                            </div>


                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('pin_code', 'Pin Code ') }}
                                                    {{ Form::number('pin_code', $business_partner_address[0]->pin_code, [
                                                        'class' => 'form-control',
                                                        'onkeypress' => 'return event.charCode === 0 ||/\d/.test(String.fromCharCode(event.charCode));',
                                                        'placeholder' => 'Pin Code',
                                                        'required' => true,
                                                    ]) }}
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-sm-6">
                                            <div class=" col-12">



                                                <select name="address_type1" id="address_type1"
                                                    class='form-control d-none'>
                                                    <option value="Ship-To/ Ship-From" selected>Ship-To/ Ship-From
                                                    </option>
                                                </select>

                                                <h4>Ship-To/ Ship-From</h4>

                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('bp_address_name1', 'Address Name ') }}
                                                    {{ Form::text('bp_address_name1', $business_partner_address[1]->bp_address_name, [
                                                        'class' => 'form-control',
                                                        'placeholder' => 'Address Name',
                                                        'required' => true,
                                                    ]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('building_no_name1', 'Building No and Name ') }}
                                                    {{ Form::text('building_no_name1',  $business_partner_address[1]->building_no_name, [
                                                        'class' => 'form-control',
                                                        'placeholder' => 'Building No and Name',
                                                        'required' => true,
                                                    ]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('street_name1', 'Street Name ') }}
                                                    {{ Form::text('street_name1',  $business_partner_address[1]->street_name, [
                                                        'class' => 'form-control',
                                                        'placeholder' => 'Street Name',
                                                        'required' => true,
                                                    ]) }}
                                                </div>
                                            </div>
                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('landmark1', 'Landmark ') }}
                                                    {{ Form::text('landmark1',  $business_partner_address[1]->landmark, ['class' => 'form-control', 'placeholder' => 'Landmark']) }}
                                                </div>
                                            </div>
                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('country1', 'Country') }}
                                                    {{ Form::select('country1', Country::pluck('name', 'country_id'),  $business_partner_address[1]->country, [
                                                        'class' => 'form-control ',
                                                        'required' => true,
                                                        'placeholder' => 'Select Country',
                                                    ]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('state1', 'State') }}
                                                    {{ Form::select('state1', [],  $business_partner_address[1]->state, ['class' => 'form-control ', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('district1', 'District ') }}
                                                    {{ Form::select('district1', [],  $business_partner_address[1]->district, ['class' => 'form-control ', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('city1', 'Name of City ') }}
                                                    {{ Form::text('city1',  $business_partner_address[1]->city, ['class' => 'form-control', 'placeholder' => 'Name of City', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('pin_code1', 'Pin Code ') }}
                                                    {{ Form::number('pin_code1',  $business_partner_address[1]->pin_code, [
                                                        'class' => 'form-control',
                                                        'onkeypress' => 'return event.charCode === 0 ||/\d/.test(String.fromCharCode(event.charCode));',
                                                        'placeholder' => 'Pin Code',
                                                        'required' => true,
                                                    ]) }}
                                                </div>
                                            </div>





                                        </div>
                                    </div>

                                    {{-- Address Details --}}

                                </div> {{-- main row --}}

                                <div class="col-md-12 col-12 mt-3">
                                    <h4><strong>Contact Details</strong></h4>
                                    <div class="ml-3 mt-2 mb-2">
                                        {{ Form::checkbox('fillcontactInfo', null, null, ['id' => 'fillcontactInfo']) }}
                                        <span><b>Copy Same Contact Details To Ship-To/Ship-From</b></span>
                                    </div>
                                </div>

                                <div class="col-sm-12">

                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class=" col-12">
                                                {{ Form::select(
                                                    'type',
                                                    [
                                                        'Bill-To/ Bill-From' => 'Bill-To/ Bill-From',
                                                        'Ship-To/ Ship-From' => 'Ship-To/Ship-From',
                                                    ],
                                                    null,
                                                    ['class' => 'form-control d-none', 'required' => true],
                                                ) }}
                                                <h5>Bill-To/ Bill-From</h5>

                                            </div>


                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('contact_person', 'Contact Person Name') }}
                                                    {{ Form::text('contact_person', $business_partner_contact[0]->contact_person??'', [
                                                        'class' => 'form-control',
                                                        'placeholder' => 'Contact Person Name',
                                                        'required' => true,
                                                    ]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('email_id', 'Email') }}
                                                    {{ Form::text('email_id', $business_partner_contact[0]->email_id??'', ['class' => 'form-control', 'placeholder' => 'Email', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('mobile_no', 'Mobile No') }}
                                                    {{ Form::number('mobile_no', $business_partner_contact[0]->mobile_no??'', [
                                                        'class' => 'form-control',
                                                        'onkeypress' => 'return event.charCode === 0 ||/\d/.test(String.fromCharCode(event.charCode));',
                                                        'placeholder' => 'Mobile No',
                                                        'required' => true,
                                                    ]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('landline', 'Landline') }}
                                                    {{ Form::text('landline', $business_partner_contact[0]->landline??'', ['class' => 'form-control', 'placeholder' => 'Landline']) }}
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class=" col-12">
                                                {{ Form::select(
                                                    'type1',
                                                    [
                                                        'Ship-To/ Ship-From' => 'Ship-To/Ship-From',
                                                        'Bill-To/ Bill-From' => 'Bill-To/ Bill-From',
                                                    ],
                                                    null,
                                                    ['class' => 'form-control d-none', 'required' => true],
                                                ) }}
                                                <h5>Ship-To/Ship-From</h5>

                                            </div>


                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('contact_person1', 'Contact Person Name') }}
                                                    {{ Form::text('contact_person1', $business_partner_contact[1]->contact_person??null, [
                                                        'class' => 'form-control',
                                                        'placeholder' => 'Contact Person Name',
                                                        'required' => true,
                                                    ]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('email_id1', 'Email') }}
                                                    {{ Form::text('email_id1', $business_partner_contact[1]->email_id??null, ['class' => 'form-control', 'placeholder' => 'Email', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('mobile_no1', 'Mobile No') }}
                                                    {{ Form::number('mobile_no1', $business_partner_contact[1]->mobile_no??null, [
                                                        'class' => 'form-control',
                                                        'onkeypress' => 'return event.charCode === 0 ||/\d/.test(String.fromCharCode(event.charCode));',
                                                        'placeholder' => 'Mobile No',
                                                        'required' => true,
                                                    ]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('landline1', 'Landline') }}
                                                    {{ Form::text('landline1', $business_partner_contact[1]->landline??null, ['class' => 'form-control', 'placeholder' => 'Landline']) }}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-12 mt-3">
                                        <h4><strong>Banking Details</strong></h4>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('acc_holdername', 'Account Holder Name') }}
                                            {{ Form::text('acc_holdername', $business_partner_banking->acc_holdername??'', [
                                                'class' => 'form-control',
                                                'placeholder' => 'Account Holder Name',
                                                'required' => true,
                                            ]) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('bank_name', 'Bank Name') }}
                                            {{ Form::text('bank_name', $business_partner_banking->bank_name??'', ['class' => 'form-control', 'placeholder' => 'Bank Name', 'required' => true]) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('bank_branch', 'Branch Name') }}
                                            {{ Form::text('bank_branch',  $business_partner_banking->bank_branch??'', [
                                                'class' => 'form-control',
                                                'placeholder' => 'Branch Name',
                                                'required' => true,
                                            ]) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('ifsc', 'IFSC Code') }}
                                            {{ Form::text('ifsc',  $business_partner_banking->ifsc??'', [
                                                'class' => 'form-control',
                                                'maxlength' => '15',
                                                'placeholder' => 'IFSC Code',
                                                'required' => true,
                                            ]) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('ac_number', 'Account No') }}
                                            {{ Form::text('ac_number',  $business_partner_banking->ac_number??'', [
                                                'class' => 'form-control',
                                                'placeholder' => 'Account No',
                                                'required' => true,
                                            ]) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('bank_address', 'Bank Address') }}
                                            {{ Form::text('bank_address', $business_partner_banking->bank_address??'', [
                                                'class' => 'form-control',
                                                'placeholder' => 'Bank Address',
                                                'required' => true,
                                            ]) }}
                                        </div>
                                    </div>

                                    {{-- end of row --}}

                                    <div class="col-md-12 col-12 mt-3 d-none beat_det">
                                        <h4><strong>Beat Details</strong></h4>
                                    </div>





                                    <div class="col-md-6 col-12 d-none beat_det">
                                        <div class="form-group">
                                            {{ Form::label('beat_id', 'Beat *') }}

                                            {{ Form::select('beat_id', Beat::pluck('beat_name', 'beat_id'), $model->beat_id??'', [
                                                'class' => 'form-control select2',
                                                'placeholder' => 'Select Beat',
                                            ]) }}

                                        </div>
                                    </div>


                                </div>

                               




                            </div> {{-- main row --}}
                        </div>
                        <div class="col md-12 text-center mt-3">

                            {{ Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1']) }}
                            <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>

                        </div>

                    </div>


                    {{ Form::close() }}
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

{{-- beat details js --}}

{{-- for category --}}
<div class="modal fade text-left" id="add_bp_cat_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel1">Add Business Partner Channel</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('bp_channel', 'Add Channel *') }}
                            {{ Form::text('bp_channel', null, [
                            'class' => 'form-control',
                            'id' => 'bp_category_modal',
                            'placeholder' => 'Business Partner Channel',
                            'required' => true,
                            ]) }}
                        </div>
                    </div>

                    <div class="col-12 d-flex justify-content-start">
                        <button type="submit" class="btn btn-primary mr-1 mb-1" id="submit_bp_cat">Submit</button>
                        <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

    {{-- for group --}}
    <div class="modal fade text-left" id="add_bp_group_modal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel1" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel1">Add Business Partner Group</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12 col-12">
                            <div class="form-group">
                                {{ Form::label('bp_group', 'Add Group *') }}
                                {{ Form::text('bp_group', null, [
                                    'class' => 'form-control',
                                    'id' => 'bp_group_modal',
                                    'placeholder' => 'Business Partner Group',
                                    'required' => true,
                                ]) }}
                            </div>
                        </div>

                        <div class="col-12 d-flex justify-content-start">
                            <button type="submit" class="btn btn-primary mr-1 mb-1" id="submit_bp_group">Submit</button>
                            <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!-- area modal -->
<div class="modal fade text-left " id="add_area_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel1">Add Area</h4>
                <button type="button" class="close btn_cut" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('area_name', 'Area Name *') }}
                            {{ Form::text('area_name', null, [
                            'class' => 'form-control',
                            'placeholder' => 'Enter Area
                            Name',
                            'required' => true,
                            ]) }}
                        </div>
                    </div>

                    <div class="col-12 d-flex justify-content-start">
                        <button type="submit" class="btn btn-primary mr-1 mb-1 btn_cut" id="submit_area">Submit</button>
                        <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- route modal -->
<div class="modal fade text-left" id="add_route_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel1">Add Route</h4>
                <button type="button" class="close btn_cut" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('area_id', 'Select Area *') }}
                            {{-- <select name="area_id" id="area_id1" class="form-control select2"></select> --}}
                            {{ Form::select('area_id', $area_data, null, [
                            'class' => 'form-control select2 area_id',
                            'placeholder' => 'Select Area',
                            ]) }}

                        </div>
                    </div>

                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('route_name', 'Route Name *') }}
                            {{ Form::text('route_name', null, [
                            'class' => 'form-control',
                            'placeholder' => 'Enter Route
                            Name',
                            'required' => true,
                            ]) }}
                        </div>
                    </div>

                </div>
                <div class="col-12 d-flex justify-content-start">
                    <button type="submit" class="btn btn-primary mr-1 mb-1 btn_cut" id="submit_route">Submit</button>
                    <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                </div>
            </div>
        </div>
    </div>
</div>
</div>


<!-- beat modal -->
<div class="modal fade text-left " id="add_beat_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel1">Add Beat</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('beat_name', 'Beat Name *') }}
                            {{ Form::text('beat_name', null, [
                            'class' => 'form-control',
                            'placeholder' => 'Enter Beat
                            Name',
                            'required' => true,
                            ]) }}
                        </div>
                    </div>


                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('area_id', 'Select Area *') }}
                            {{ Form::select('area_id', $area_data, null, [
                            'class' => 'form-control select2 area_id',
                            'placeholder' => 'Select Area',
                            ]) }}
                        </div>
                    </div>

                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('route_id', 'Select Route *') }}
                            <select name="route_id" id="route_id" class="form-control select2"></select>

                        </div>
                    </div>


                </div>
                <div class="col-12 d-flex justify-content-start">
                    <button type="submit" class="btn btn-primary mr-1 mb-1" id="submit_beat">Submit</button>
                    <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                </div>
            </div>
        </div>
    </div>
</div>

{{-- for category --}}
<div class="modal fade text-left" id="add_bp_cat_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel1">Add Business Partner Category</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('bp_category', 'Add Category *') }}
                            {{ Form::text('bp_category', null, [
                            'class' => 'form-control',
                            'id' => 'bp_category_modal',
                            'placeholder' => 'Business Partner Category',
                            'required' => true,
                            ]) }}
                        </div>
                    </div>

                    <div class="col-12 d-flex justify-content-start">
                        <button type="submit" class="btn btn-primary mr-1 mb-1" id="submit_bp_cat">Submit</button>
                        <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


{{-- for sales manager --}}
<div class="modal fade text-left" id="add_sales_manager_modal" tabindex="-1" role="dialog"
    aria-labelledby="myModalLabel1" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel1">Add Sales Manager</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('first_name', 'First Name *') }}
                            {{ Form::text('first_name', null, [
                            'class' => 'form-control',
                            'id' => 'first_name_modal',
                            'placeholder' => 'First Name',
                            'required' => true,
                            ]) }}
                        </div>
                    </div>
                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('last_name', 'Last Name *') }}
                            {{ Form::text('last_name', null, [
                            'class' => 'form-control',
                            'id' => 'last_name_modal',
                            'placeholder' => 'Last Name',
                            'required' => true,
                            ]) }}
                        </div>
                    </div>
                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('email', 'Email *') }}
                            {{ Form::email('email', null, [
                            'class' => 'form-control',
                            'id' => 'email_modal',
                            'placeholder' => 'email',
                            'required' => true,
                            ]) }}
                        </div>
                    </div>

                    <div class="col-12 d-flex justify-content-start">
                        <button type="submit" class="btn btn-primary mr-1 mb-1"
                            id="submit_sales_manager">Submit</button>
                        <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{{-- for ase --}}
<div class="modal fade text-left" id="add_ase_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel1">Add ASE</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('first_name', 'First Name *') }}
                            {{ Form::text('first_name', null, [
                            'class' => 'form-control',
                            'id' => 'first_name_modal',
                            'placeholder' => 'First Name',
                            'required' => true,
                            ]) }}
                        </div>
                    </div>
                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('last_name', 'Last Name *') }}
                            {{ Form::text('last_name', null, [
                            'class' => 'form-control',
                            'id' => 'last_name_modal',
                            'placeholder' => 'Last Name',
                            'required' => true,
                            ]) }}
                        </div>
                    </div>
                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('email', 'Email *') }}
                            {{ Form::email('email', null, [
                            'class' => 'form-control',
                            'id' => 'email_modal',
                            'placeholder' => 'email',
                            'required' => true,
                            ]) }}
                        </div>
                    </div>

                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('sales_manager', 'ASM *') }}
                            {{ Form::select('sales_manager', $sales_manager, null, [
                            'class' => 'form-control tags',
                            'id' => 'salesManager_ase',
                            'placeholder' => 'Sales Manager',
                            ]) }}
                        </div>
                    </div>



                    <div class="col-12 d-flex justify-content-start">
                        <button type="submit" class="btn btn-primary mr-1 mb-1" id="submit_ase">Submit</button>
                        <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{{-- for sales officer --}}
<div class="modal fade text-left" id="add_sales_officer_modal" tabindex="-1" role="dialog"
    aria-labelledby="myModalLabel1" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel1">Add Sales Officer</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('first_name', 'First Name *') }}
                            {{ Form::text('first_name', null, [
                            'class' => 'form-control',
                            'id' => 'first_name_modal',
                            'placeholder' => 'First Name',
                            'required' => true,
                            ]) }}
                        </div>
                    </div>
                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('last_name', 'Last Name *') }}
                            {{ Form::text('last_name', null, [
                            'class' => 'form-control',
                            'id' => 'last_name_modal',
                            'placeholder' => 'Last Name',
                            'required' => true,
                            ]) }}
                        </div>
                    </div>
                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('email', 'Email *') }}
                            {{ Form::email('email', null, [
                            'class' => 'form-control',
                            'id' => 'email_modal',
                            'placeholder' => 'email',
                            'required' => true,
                            ]) }}
                        </div>
                    </div>

                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('ase', 'ASE *') }}
                            {{ Form::select('ase', $ase, null, [
                            'class' => 'form-control tags',
                            'id' => 'ase_salesoff',
                            'placeholder' => 'ASE',
                            ]) }}
                        </div>
                    </div>

                    <div class="col-12 d-flex justify-content-start">
                        <button type="submit" class="btn btn-primary mr-1 mb-1"
                            id="submit_sales_officer">Submit</button>
                        <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{{-- for salesman --}}
<div class="modal fade text-left" id="add_salesman_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel1">Add Salesman</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('first_name', 'First Name *') }}
                            {{ Form::text('first_name', null, [
                            'class' => 'form-control',
                            'id' => 'first_name_modal',
                            'placeholder' => 'First Name',
                            'required' => true,
                            ]) }}
                        </div>
                    </div>
                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('last_name', 'Last Name *') }}
                            {{ Form::text('last_name', null, [
                            'class' => 'form-control',
                            'id' => 'last_name_modal',
                            'placeholder' => 'Last Name',
                            'required' => true,
                            ]) }}
                        </div>
                    </div>
                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('email', 'Email *') }}
                            {{ Form::email('email', null, [
                            'class' => 'form-control',
                            'id' => 'email_modal',
                            'placeholder' => 'email',
                            'required' => true,
                            ]) }}
                        </div>
                    </div>

                    <div class="col-md-12 col-12">
                        <div class="form-group">
                            {{ Form::label('sales_officer', 'Sales Officer *') }}
                            {{ Form::select('sales_officer', $sales_officer, null, [
                            'class' => 'form-control tags',
                            'id' => 'salesOfficer',
                            'placeholder' => 'Sales Officer',
                            ]) }}
                        </div>
                    </div>

                    <div class="col-12 d-flex justify-content-start">
                        <button type="submit" class="btn btn-primary mr-1 mb-1" id="submit_salesman">Submit</button>
                        <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="{{ asset('public/backend-assets/js/MasterHandler.js') }}"></script>
<script src="{{ asset('public/backend-assets/js/DynamicDropdown.js') }}"></script>


<script src="{{ asset('public/backend-assets/js/DynamicDropdown.js') }}"></script>

<script>
$(document).ready(function() {

   // usama_19-02-2024_get states

   var country = '{{$business_partner_address[0]->country}}';
   var state = '{{$business_partner_address[0]->state}}';
   var district = '{{$business_partner_address[0]->district}}';

   var country1 = '{{$business_partner_address[1]->country}}';
   var state1 = '{{$business_partner_address[1]->state}}';
   var district1 = '{{$business_partner_address[1]->district}}';

   if(country){
        new DynamicDropdown('{{ route('admin.getStates') }}', 
        country, '#state',state);
   }

   if(state){
        new DynamicDropdown('{{ route('admin.getCities') }}', 
        state, '#district',district);
   }


   if(country1){
        new DynamicDropdown('{{ route('admin.getStates') }}', 
        country1, '#state1',state1);
   }

   if(state1){
        new DynamicDropdown('{{ route('admin.getCities') }}', 
        state1, '#district1',district1);
   }


   $('#country').change(function() {       
   new DynamicDropdown('{{ route('admin.getStates') }}', 
   $(this).val(), '#state',null,'#district');
   });

   $('#state').change(function() {       
   new DynamicDropdown('{{ route('admin.getCities') }}', 
   $(this).val(), '#district',null);
   });

   $('#country1').change(function() {       
   new DynamicDropdown('{{ route('admin.getStates') }}', 
   $(this).val(), '#state1',null,'#district1');
   });

   $('#state1').change(function() {       
   new DynamicDropdown('{{ route('admin.getCities') }}', 
   $(this).val(), '#district1',null);
   });

});
</script>
{{-- add data for area,route and beat --}}
<script>
    function fetchmodaldropdown(route,id,selectedValue,append_id,parent_id=null){
            var id = id;
            if(parent_id != null){
                id = parent_id;
            }
            $.ajax({
                    url: route,
                    type: 'get',
                    data: {
                        id: id,
                    },
                    dataType: 'json',
                    success: function(data) {
                        // console.log(data);
                        var html = '';
                        for (var index in data) {
                            if (data.hasOwnProperty(index)) {
                                if(selectedValue == index) {
                                    html += '<option value="' + index + '" selected>' + data[index] + '</option>';
                                }else{
                                    html += '<option value="' + index + '">' + data[index] + '</option>';
                                }
                            }
                        }
                        $(append_id).html(html);
                    }
                });
        } 
    //fetch  asm->ase->sales officer->salesman dependent data and for modal also
        $(document).ready(function() {

            var salesManager = '{{ $model->sales_manager }}';
            var ase = '{{ $model->ase }}';
            var salesOfficer = '{{ $model->sales_officer }}';
            var salesman = '{{ $model->salesman }}';

            if(salesman){
               var manager_id = '{{$asm_users->parent_users??''}}';
               var ase_id = '{{$ase_users->parent_users??''}}';
               var officer_id = '{{$officer_users->parent_users??''}}';
               salesManager = manager_id;
               ase = ase_id;
               salesOfficer = officer_id;
               $('#sales_manager').val(manager_id).trigger('change');
               $('#ase').val(ase_id).trigger('change');
               $('#sales_officer').val(officer_id).trigger('change');
            }


            //get ase from asm
            if(salesManager){
                new DynamicDropdown('{{ route('admin.getAse') }}', 
                salesManager, '#ase',ase);
            }

            //get ase from asm
            $('#sales_manager').change(function() {     
                var selectedValue = $(this).val();

                new DynamicDropdown('{{ route('admin.getAse') }}', 
                selectedValue, '#ase',null,'#sales_officer','#salesman');
                // fetch asm data in ase modal
                fetchmodaldropdown('{{ route('admin.getAsm') }}','{{ $sales_manager_dep->role ?? '' }}',
                  selectedValue,'#salesManager_ase')
            });

            // fetch asm data in ase modal and show default selected
            $('#submit_sales_manager').click(function(){
                setTimeout(() => {
                    fetchmodaldropdown('{{ route('admin.getAsm') }}','{{ $sales_manager_dep->role ?? '' }}',
                        $('#sales_manager').val(),'#salesManager_ase')
                }, 500);
            });

            //get sales officers from ase
            if(ase){
                new DynamicDropdown('{{ route('admin.getSalesOfficers') }}', 
                ase, '#sales_officer',salesOfficer);
            }

            //get sales officers from ase
            $('#ase').change(function() {  
                var selectedValue = $(this).val();
                new DynamicDropdown('{{ route('admin.getSalesOfficers') }}', 
                 $(this).val(), '#sales_officer',null,'#salesman');

                 // fetch ase data in sales officer modal
                 fetchmodaldropdown('{{ route('admin.getAse') }}','{{ $ase_dep->role ?? '' }}',
                        selectedValue,'#ase_salesoff',$('#sales_manager').val())
            });

            // fetch ase data in sales officer modal and show default selected
            $('#submit_ase').click(function(){
                setTimeout(() => {
                    fetchmodaldropdown('{{ route('admin.getAse') }}','{{ $ase_dep->role ?? '' }}',
                        $('#ase').val(),'#ase_salesoff',$('#sales_manager').val())
                }, 800);
            });

            //get salesmans from sales officer
            if(salesOfficer){
                new DynamicDropdown('{{ route('admin.getSalesmen') }}', 
                salesOfficer, '#salesman',salesman);
            }

            //get salesmans from sales officer
            $('#sales_officer').change(function() {  
                var selectedValue = $(this).val();
                new DynamicDropdown('{{ route('admin.getSalesmen') }}', 
                 $(this).val(), '#salesman');

                // fetch sales officer data in salesman modal
                fetchmodaldropdown('{{ route('admin.getSalesOfficers') }}','{{ $sales_officer_dep->role ?? '' }}',
                     selectedValue,'#salesOfficer',$('#ase').val())
            });

            // fetch sales officer data in salesman modal and show default selected
            $('#submit_sales_officer').click(function(){
                setTimeout(() => {
                    fetchmodaldropdown('{{ route('admin.getSalesOfficers') }}','{{ $sales_officer_dep->role ?? '' }}',
                        $('#sales_officer').val(),'#salesOfficer',$('#ase').val())
                }, 800);
            });
           

            new MasterHandler('#bp_channel', '#add_bp_cat_modal', '#submit_bp_cat',
                '{{ url('admin/master/store_category') }}', '', '#bp_category_modal');

            new MasterHandler('#bp_group', '#add_bp_group_modal', '#submit_bp_group',
                '{{ url('admin/master/store_group') }}', '', '#bp_group_modal');
            // for sales manager
            new MasterHandler('#sales_manager', '#add_sales_manager_modal', '#submit_sales_manager',
                '{{ url('admin/master/store_users') }}', {{ $sales_manager_dep->role ?? '' }},
                '#first_name_modal',
                '#last_name_modal', '#email_modal');

            // for ase
            new MasterHandler('#ase', '#add_ase_modal', '#submit_ase',
                '{{ url('admin/master/store_users') }}', {{ $ase_dep->role ?? '' }},
                '#first_name_modal',
                '#last_name_modal', '#email_modal', '#salesManager_ase');

            // for sales officer
            new MasterHandler('#sales_officer', '#add_sales_officer_modal', '#submit_sales_officer',
                '{{ url('admin/master/store_users') }}', {{ $sales_officer_dep->role ?? '' }},
                '#first_name_modal',
                '#last_name_modal', '#email_modal', '#ase_salesoff');

            // for salesman
            new MasterHandler('#salesman', '#add_salesman_modal', '#submit_salesman',
                '{{ url('admin/master/store_users') }}', {{ $salesman_dep->role ?? '' }},
                '#first_name_modal',
                '#last_name_modal', '#email_modal', '#salesOfficer');

            new MasterHandler('.area_id', '#add_area_modal', '#submit_area',
                '{{ url('admin/master/store_area') }}', '',
                '#area_name');

            new MasterHandler('#route_id', '#add_route_modal', '#submit_route',
                '{{ url('admin/master/store_route') }}', '',
                '.area_id', '#route_name');

            new MasterHandler('#beat_id', '#add_beat_modal', '#submit_beat',
                '{{ url('admin/master/store_beat') }}', '',
                '#beat_name', '.area_id', '#route_id');



        });
</script>


<script>
    $(document).ready(function() {
            var bptype = $('#business_partner_type').find('option:selected').text().trim();
            // alert(bptype);

            if (bptype == 'Customer') {
                $('.sm_dynamic').removeClass('d-none');
                $('.shelf_left').removeClass('d-none');
                $('.beat_det').removeClass('d-none');
                new DynamicDropdown('{{ route('admin.getPricing') }}',
                    'sale', '#pricing_profile','{{$model->pricing_profile}}');
            } else {
                $('.sm_dynamic').addClass('d-none');
                $('.shelf_left').addClass('d-none');
                $('.beat_det').addClass('d-none');
                new DynamicDropdown('{{ route('admin.getPricing') }}',
                    'purchase', '#pricing_profile','{{$model->pricing_profile}}');
            }

            var terms_of_payment = $('#payment_terms_id').find('option:selected').text().trim();
            if (terms_of_payment == 'On Credit') {
                $('.show_credit_days').removeClass('d-none');
            } else {
                $('.show_credit_days').addClass('d-none');
            }
        });

        $('#business_partner_type').on('change', function() {
            var bptype = $(this).find('option:selected').text().trim();
            if (bptype == 'Customer') {
                $('.sm_dynamic').removeClass('d-none');
                $('.shelf_left').removeClass('d-none');
                $('.beat_det').removeClass('d-none');
                new DynamicDropdown('{{ route('admin.getPricing') }}',
                    'sale', '#pricing_profile');
            } else {
                $('.sm_dynamic').addClass('d-none');
                $('.shelf_left').addClass('d-none');
                $('.beat_det').addClass('d-none');
                new DynamicDropdown('{{ route('admin.getPricing') }}',
                    'purchase', '#pricing_profile');
            }
        });

        $('#payment_terms_id').on('change', function() {
            var terms_of_payment = $(this).find('option:selected').text().trim();
            if (terms_of_payment == 'On Credit') {
                $('.show_credit_days').removeClass('d-none');
            } else {
                $('.show_credit_days').addClass('d-none');
            }
        });
</script>
@endsection