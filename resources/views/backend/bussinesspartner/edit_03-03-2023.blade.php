@extends('backend.layouts.app')
@section('title', 'Edit Bussiness Partner')
@php
use Spatie\Permission\Models\Role;
@endphp
@section('content')
{{-- {{ dd($bussinesspartner->toArray()) }} --}}

<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">Edit Bussiness Partner</h3>
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
                        {{ Form::open(['url' => 'admin/bussinesspartner/update']) }}
                        @csrf
                        <div class="form-body">

                            <div class="row">
                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('Bussness Partner Type', 'Bussness Partner Type *') }}
                                        <select name="business_partner_type" id="business_partner_type" class="form-control" placeholder='Select Bussiness Partner Type'>
                                            @foreach ($bussinesstype as $btype)
                                            <option value="{{ $btype->bussiness_master_type_id }}" @if ($bussinesspartner->bussiness_master_type_id == $btype->bussiness_master_type_id)
                                                Selected
                                                @endif
                                                >
                                                {{ $btype->bussiness_master_type }}</option>
                                            @endforeach
                                        </select>

                                        {{-- hidden field for bussiness partner id  --}}
                                        {{ Form::hidden('business_partner_id', $bussinesspartner->business_partner_id, ['class' => 'form-control']) }}

                                    </div>
                                </div>
                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('bp_code', 'Bussiness Partner Code *') }}
                                        {{ Form::text('bp_code', $bussinesspartner->bp_code, ['class' => 'form-control', 'placeholder' => 'Bussiness Partner Code', 'required' => true]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('bp_name', 'Bussiness Partner Name *') }}
                                        {{ Form::text('bp_name', $bussinesspartner->bp_name, ['class' => 'form-control', 'placeholder' => 'Bussiness Partner Name', 'required' => true]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('Bussness Partner Type', 'Bussness Partner Type *') }}
                                        <select name="bp_organisation_type" id="bp_organisation_type" class="form-control" placeholder='Select Bussiness Organization Type'>
                                            @foreach ($bpOrgType as $OrgType)
                                            <option value="{{ $OrgType->bp_organisation_type_id }}" @if ($bussinesspartner->bp_organisation_type_id == $OrgType->bp_organisation_type_id)
                                                selected
                                                @endif>
                                                {{ $OrgType->bp_organisation_type }}</option>
                                            @endforeach

                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('bp_category', 'Bussiness Partner Category *') }}
                                        {{ Form::text('bp_category', $bussinesspartner->bp_category, ['class' => 'form-control', 'placeholder' => 'Bussiness Partner Category', 'required' => true]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('bp_group', 'Bussiness Partner group *') }}
                                        {{ Form::text('bp_group', $bussinesspartner->bp_group, ['class' => 'form-control', 'placeholder' => 'Bussiness Partner Group', 'required' => true]) }}
                                    </div>
                                </div>
                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('sales_manager', 'Sales Manager *') }}
                                        {{ Form::text('sales_manager', $bussinesspartner->sales_manager, ['class' => 'form-control', 'placeholder' => 'Sales Manager', 'required' => true]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('sales_officer', 'Sales Officer *') }}
                                        {{ Form::text('sales_officer', $bussinesspartner->sales_officer, ['class' => 'form-control', 'placeholder' => 'Sales Officer', 'required' => true]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('salesman', 'Salesman *') }}
                                        {{ Form::text('salesman', $bussinesspartner->salesman, ['class' => 'form-control', 'placeholder' => 'Salesman', 'required' => true]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('terms_peyment', 'Terms of Payment *') }}
                                        <select name="payment_terms_id" id="payment_terms" class="form-control" placeholder='Select Terms of Payment'>
                                            @foreach ($termPayment as $terms)
                                            <option value="{{ $terms->payment_terms_id }}" @if ($bussinesspartner->payment_terms_id == $terms->payment_terms_id) Selected = selected @endif>
                                                {{ $terms->term_type }} </option>
                                            @endforeach

                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('credit_limit', 'Credit Limit *') }}
                                        {{ Form::text('credit_limit', $bussinesspartner->credit_limit, ['class' => 'form-control', 'placeholder' => 'Credit limit', 'required' => true]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('gst_details', 'GST Details ') }}
                                        {{ Form::text('gst_details', $bussinesspartner->gst_details, ['class' => 'form-control', 'placeholder' => 'GST Deatils', 'required' => true]) }}
                                    </div>
                                </div>
                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('pricing_profile', 'Pricing Profile *') }}
                                        {{ Form::select('pricing_profile',['0'=>'dummy data'], $bussinesspartner->pricing_profile, ['class' => 'form-control', 'placeholder' => 'Select Pricing Profile', 'required' => true]) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('shelf_life', 'Shelf Life *') }}
                                        {{ Form::text('shelf_life', $bussinesspartner->shelf_life, ['class' => 'form-control', 'placeholder' => 'Shelf Life', 'required' => true]) }}
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
@endsection
