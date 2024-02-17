@extends('backend.layouts.app')
@section('title', 'Business Partner')
@php
use Spatie\Permission\Models\Role;
use App\Models\backend\Beat;
use App\Models\backend\AdminUsers;

$sales_manager_dep = AdminUsers::where('admin_user_id', $sales_manager->keys()->first())->first();
$ase_dep = AdminUsers::where('admin_user_id', $ase->keys()->first())->first();
$sales_officer_dep = AdminUsers::where('admin_user_id', $sales_officer->keys()->first())->first();
$salesman_dep = AdminUsers::where('admin_user_id', $salesman->keys()->first())->first();
@endphp
@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">Create Business Partner</h3>
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
                                    

                                        {{ Form::label('business_partner_type', 'Business Partner Type *') }}
                                        {{ Form::select('business_partner_type', $bussinesstype, null, [
                                        'class' => 'form-control',
                                        'placeholder' => 'Select Business Partner Type',
                                        'required' => true,
                                        ]) }}
                                    </div>
                                </div>
                               

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('bp_name', 'Business Partner Name *') }}
                                        {{ Form::text('bp_name', null, [
                                        'class' => 'form-control',
                                        'placeholder' => 'Business Partner Name',
                                        'required' => true,
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                      
                                        {{ Form::label('bp_organisation_type', 'Business Partner Organization Type *')
                                        }}
                                        {{ Form::select('bp_organisation_type', $bpOrgType, null, [
                                        'class' => 'form-control',
                                        'placeholder' => 'Select Business Partner Organization Type',
                                        'required' => true,
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('residential_status', 'Residential status *') }}
                                        {{ Form::select(
                                        'residential_status',
                                        DB::table('residential_status')->pluck('name'),
                                        null,
                                        [
                                        'class' => 'form-control',
                                        'placeholder' => 'Select Residential status',
                                        'required' => true,
                                        ],
                                        ) }}
                                    </div>
                                </div>


                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{-- {{dd($admin_users)}} --}}
                                        {{ Form::label('bp_category', 'Business Partner Category *') }}
                                        <!-- {{ Form::text('bp_category', null, ['class' => 'form-control', 'placeholder' => 'Business Partner Category', 'required' => true]) }} -->
                                        {{ Form::select('bp_category', $business_partner_category, null, [
                                        'class' => 'form-control select2 ',
                                        'placeholder' => 'Business Partner Category',
                                        'required' => true,
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('bp_group', 'Business Partner group *') }}
                                        {{ Form::text('bp_group', null, [
                                        'class' => 'form-control',
                                        'placeholder' => 'Business Partner Group',
                                        'required' => true,
                                        ]) }}
                                    </div>
                                </div>


                                <div class="col-md-6 col-12 d-none sm_dynamic">

                                    <div class="form-label-group">
                                        {{ Form::label('sales_manager', 'ASM *') }}
                                        {{ Form::select('sales_manager', $sales_manager, null, [
                                        'class' => 'form-control select2',
                                        'placeholder' => 'ASM',
                                        ]) }}
                                    </div>

                                </div>

                                <div class="col-md-6 col-12 d-none sm_dynamic">

                                    <div class="form-label-group">
                                        {{ Form::label('ase', 'ASE *') }}
                                        {{ Form::select('ase', [], null, [
                                        'class' => 'form-control select2',
                                        'placeholder' => 'ASE',
                                        ]) }}
                                    </div>

                                </div>

                                <div class="col-md-6 col-12 d-none sm_dynamic">

                                    <div class="form-label-group">
                                        {{ Form::label('sales_officer', 'Sales Officer *') }}
                                        {{ Form::select('sales_officer', [], null, [
                                        'class' => 'form-control select2',
                                        'placeholder' => 'Sales Officer',
                                        ]) }}
                                    </div>

                                </div>

                                <div class="col-md-6 col-12 d-none sm_dynamic">
                                    <div class="form-label-group">
                                        {{ Form::label('salesman', 'Salesman *') }}
                                        {{ Form::select('salesman', [], null, ['class' => 'form-control select2',
                                        'placeholder' => 'Salesman']) }}
                                    </div>

                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                              

                                        {{ Form::label('payment_terms_id', 'Terms of Payment *') }}
                                        {{ Form::select('payment_terms_id', $termPayment, null, [
                                        'class' => 'form-control',
                                        'placeholder' => 'Select Terms of Payment',
                                        'required' => true,
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12 d-none show_credit_days">
                                    <div class="form-label-group">
                                        {{ Form::label('credit_limit', 'Credit Limit *') }}
                                        {{ Form::text('credit_limit', null, ['class' => 'form-control', 'placeholder' =>
                                        'Enter Days']) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('gst_details', 'GST Number *') }}
                                        {{ Form::text('gst_details', null, [
                                        'class' => 'form-control',
                                        'placeholder' => 'GST Number',
                                        'required' => true,
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('gst_reg_type', 'GST Registration Type *') }}
                                        {{ Form::select('gst_reg_type', ['composite' => 'Composite', 'regular' =>
                                        'Regular'], null, [
                                        'class' => 'form-control',
                                        'placeholder' => 'Select GST
                                        Registration Type',
                                        'required' => true,
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('rcm_app', 'RCM Application *') }}
                                        {{ Form::select('rcm_app', ['1' => 'Yes', '0' => 'No'], null, ['class' =>
                                        'form-control', 'required' => true]) }}
                                    </div>
                                </div>


                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('pricing_profile', 'Pricing Profile *') }}
                                        {{ Form::select('pricing_profile', $pricing_data, null, [
                                        'class' => 'form-control',
                                        'placeholder' => 'Select Pricing Profile',
                                        'required' => true,
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12 d-none shelf_left">
                                    <div class="form-label-group">
                                        {{ Form::label('shelf_life', 'Freshness Requirement') }}
                                        {{ Form::text('shelf_life', null, ['class' => 'form-control', 'placeholder' =>
                                        'Freshness Requirement']) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12 ">
                                    <div class="form-label-group">
                                        {{ Form::label('msme_reg', 'MSME registration *') }}
                                        {{ Form::select('msme_reg', ['1' => 'Yes', '0' => 'No'], null, ['class' =>
                                        'form-control', 'required' => true]) }}
                                    </div>
                                </div>

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

                                                <div class="form-label-group">
                                                    
                                                    {{ Form::label('address_type', 'Address Type') }}
                                                    <select name="address_type" id="address_type" class='form-control'>
                                                        <option value="Bill-To/ Bill-From" selected>Bill-To/ Bill-From
                                                        </option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('bp_address_name', 'Address Name ') }}
                                                    {{ Form::text('bp_address_name', null, [
                                                    'class' => 'form-control',
                                                    'placeholder' => 'Address Name',
                                                    'required' => true,
                                                    ]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('building_no_name', 'Building No and Name ') }}
                                                    {{ Form::text('building_no_name', null, [
                                                    'class' => 'form-control',
                                                    'placeholder' => 'Building No and Name',
                                                    'required' => true,
                                                    ]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('street_name', 'Street Name ') }}
                                                    {{ Form::text('street_name', null, [
                                                    'class' => 'form-control',
                                                    'placeholder' => 'Street Name',
                                                    'required' => true,
                                                    ]) }}
                                                </div>
                                            </div>
                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('landmark', 'Landmark ') }}
                                                    {{ Form::text('landmark', null, ['class' => 'form-control',
                                                    'placeholder' => 'Landmark', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('country', 'Country') }}
                                                    {{ Form::select('country', [], null, ['class' => 'form-control ',
                                                    'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('state', 'State') }}
                                                    {{ Form::select('state', [], null, ['class' => 'form-control ',
                                                    'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('district', 'District ') }}
                                                    {{ Form::select('district', [], null, ['class' => 'form-control ',
                                                    'required' => true]) }}
                                                </div>
                                            </div>
                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('city', 'Name of City ') }}
                                                    {{ Form::text('city', null, ['class' => 'form-control',
                                                    'placeholder' => 'Name of City', 'required' => true]) }}
                                                </div>
                                            </div>


                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('pin_code', 'Pin Code ') }}
                                                    {{ Form::number('pin_code', null, [
                                                    'class' => 'form-control',
                                                    'onkeypress' => 'return event.charCode === 0 ||
                                                    /\d/.test(String.fromCharCode(event.charCode));',
                                                    'placeholder' => 'Pin Code',
                                                    'required' => true,
                                                    ]) }}
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-sm-6">
                                            <div class=" col-12">

                                                <div class="form-label-group">
                                                   
                                                    {{ Form::label('address_type1', 'Address Type') }}
                                                    <select name="address_type1" id="address_type1"
                                                        class='form-control'>
                                                        <option value="Ship-To/ Ship-From" selected>Ship-To/ Ship-From
                                                        </option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('bp_address_name1', 'Address Name ') }}
                                                    {{ Form::text('bp_address_name1', null, [
                                                    'class' => 'form-control',
                                                    'placeholder' => 'Address Name',
                                                    'required' => true,
                                                    ]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('building_no_name1', 'Building No and Name ') }}
                                                    {{ Form::text('building_no_name1', null, [
                                                    'class' => 'form-control',
                                                    'placeholder' => 'Building No and Name',
                                                    'required' => true,
                                                    ]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('street_name1', 'Street Name ') }}
                                                    {{ Form::text('street_name1', null, [
                                                    'class' => 'form-control',
                                                    'placeholder' => 'Street Name',
                                                    'required' => true,
                                                    ]) }}
                                                </div>
                                            </div>
                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('landmark1', 'Landmark ') }}
                                                    {{ Form::text('landmark1', null, ['class' => 'form-control',
                                                    'placeholder' => 'Landmark', 'required' => true]) }}
                                                </div>
                                            </div>
                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('country1', 'Country') }}
                                                    {{ Form::select('country1', [], null, ['class' => 'form-control ',
                                                    'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('state1', 'State') }}
                                                    {{ Form::select('state1', [], null, ['class' => 'form-control ',
                                                    'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('district1', 'District ') }}
                                                    {{ Form::select('district1', [], null, ['class' => 'form-control ',
                                                    'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('city1', 'Name of City ') }}
                                                    {{ Form::text('city1', null, ['class' => 'form-control',
                                                    'placeholder' => 'Name of City', 'required' => true]) }}
                                                </div>
                                            </div>

                                            <div class=" col-12">
                                                <div class="form-label-group">
                                                    {{ Form::label('pin_code1', 'Pin Code ') }}
                                                    {{ Form::number('pin_code1', null, [
                                                    'class' => 'form-control',
                                                    'onkeypress' => 'return event.charCode === 0 ||
                                                    /\d/.test(String.fromCharCode(event.charCode));',
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
                                </div>
                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('type', 'Address Type') }}


                                        {{ Form::select(
                                        'type',
                                        [
                                        'Bill-To/ Bill-From' => 'Bill-To/ Bill-From',
                                        'Ship-To/ Ship-From' => 'Ship-To/
                                        Ship-From',
                                        ],
                                        null,
                                        ['class' => 'form-control 2', 'required' => true],
                                        ) }}

                                    </div>
                                </div>


                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('contact_person', 'Contact Person Name') }}
                                        {{ Form::text('contact_person', null, [
                                        'class' => 'form-control',
                                        'placeholder' => 'Contact Person Name',
                                        'required' => true,
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('email_id', 'Email') }}
                                        {{ Form::text('email_id', null, ['class' => 'form-control', 'placeholder' =>
                                        'Email', 'required' => true]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('mobile_no', 'Mobile No') }}
                                        {{ Form::number('mobile_no', null, [
                                        'class' => 'form-control',
                                        'onkeypress' => 'return event.charCode === 0 ||
                                        /\d/.test(String.fromCharCode(event.charCode));',
                                        'placeholder' => 'Mobile No',
                                        'required' => true,
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('landline', 'Landline') }}
                                        {{ Form::text('landline', null, ['class' => 'form-control', 'placeholder' =>
                                        'Landline', 'required' => true]) }}
                                    </div>
                                </div>
                                <div class="col-md-12 col-12 mt-3">
                                    <h4><strong>Banking Details</strong></h4>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('acc_holdername', 'Account Holder Name') }}
                                        {{ Form::text('acc_holdername', null, [
                                        'class' => 'form-control',
                                        'placeholder' => 'Account Holder Name',
                                        'required' => true,
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('bank_name', 'Bank Name') }}
                                        {{ Form::text('bank_name', null, ['class' => 'form-control', 'placeholder' =>
                                        'Bank Name', 'required' => true]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('bank_branch', 'Branch Name') }}
                                        {{ Form::text('bank_branch', null, [
                                        'class' => 'form-control',
                                        'placeholder' => 'Branch Name',
                                        'required' => true,
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('ifsc', 'IFSC Code') }}
                                        {{ Form::text('ifsc', null, [
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
                                        {{ Form::text('ac_number', null, [
                                        'class' => 'form-control',
                                        'placeholder' => 'Account No',
                                        'required' => true,
                                        ]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('bank_address', 'Bank Address') }}
                                        {{ Form::text('bank_address', null, [
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
                                        {{-- <select name="beat_id" id="beat" class="form-control select2"></select>
                                        --}}
                                        {{ Form::select('beat_id', Beat::pluck('beat_name', 'beat_id'), null, [
                                        'class' => 'form-control select2',
                                        'placeholder' => 'Select Beat',
                                        ]) }}

                                    </div>
                                </div>


                            </div>
                            <div class="row mt-3">
                                <div class="col md-12 text-center">
                                    {{-- <center> --}}
                                        {{ Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1']) }}
                                        <button type="reset" class="btn btn-secondary mr-1 mb-1">Reset</button>
                                        {{--
                                    </center> --}}
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
                            {{-- {{dd($area_data)}} --}}
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


<script src="{{ asset('public/backend-assets/js/country_state_city.js') }}"></script>
<script src="{{ asset('public/backend-assets/js/MasterHandler.js') }}"></script>
<script src="{{ asset('public/backend-assets/js/DynamicDropdown.js') }}"></script>


{{-- add data for area,route and beat --}}
<script>
    $(document).ready(function() {

           
            //get ase from asm
            $('#sales_manager').change(function() {       
            new DynamicDropdown('{{ route('admin.getAse') }}', 
             $(this).val(), '#ase',null,'#sales_officer','#salesman');
            });

            //get sales officers from ase
            $('#ase').change(function() {       
            new DynamicDropdown('{{ route('admin.getSalesOfficers') }}', 
             $(this).val(), '#sales_officer',null,'#salesman');
            });

            //get salesmans from sales officer
            $('#sales_officer').change(function() {       
            new DynamicDropdown('{{ route('admin.getSalesmen') }}', 
             $(this).val(), '#salesman');
            });


            new MasterHandler('#bp_category', '#add_bp_cat_modal', '#submit_bp_cat',
                '{{ url('admin/master/store_category') }}', '', '#bp_category_modal');

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
                '{{ url('admin/master/store_users') }}', {{ $salesman_dep->role ?? '' }}, '#first_name_modal',
                '#last_name_modal', '#email_modal', '#salesOfficer');

            // for area
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

            if (bptype == 'Customer') {
                $('.sm_dynamic').removeClass('d-none');
                $('.shelf_left').removeClass('d-none');
                $('.beat_det').removeClass('d-none');
            } else {
                $('.sm_dynamic').addClass('d-none');
                $('.shelf_left').addClass('d-none');
                $('.beat_det').addClass('d-none');
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
            } else {
                $('.sm_dynamic').addClass('d-none');
                $('.shelf_left').addClass('d-none');
                $('.beat_det').addClass('d-none');
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


        var country_selected = `{{ old('country') ?? '' }}`;
        var state_selected = `{{ old('state') ?? '' }}`;
        var district_selected = `{{ old('district') ?? '' }}`;
</script>




@endsection