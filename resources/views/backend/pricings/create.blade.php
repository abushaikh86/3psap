@extends('backend.layouts.app')
@section('title', 'Create Pricing')

@section('content')
    @php

    @endphp
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Create Pricing</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.pricings') }}">Pricing List</a>
                        </li>
                        <li class="breadcrumb-item active">Create Pricing</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a class="btn btn-outline-primary" href="{{ route('admin.pricings') }}">
                        <i class="feather icon-arrow-left"></i> Back
                    </a>
                </div>
            </div>
        </div>
    </div>
    <section id="multiple-column-form">
        <div class="row match-height">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Create Pricing</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            @include('backend.includes.errors')
                            {{ Form::open(['url' => 'admin/pricings/store', 'enctype' => 'multipart/form-data']) }}
                            <div class="form-body">
                                <div class="row">
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('pricing_name', 'Name ') }}
                                            {{ Form::text('pricing_name', null, ['class' => 'form-control', 'placeholder' => 'Enter Name', 'required' => true, 'id' => 'sku_description']) }}
                                        </div>
                                    </div>


                                    <div class="col-12 d-flex justify-content-start">
                                        {{ Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1']) }}
                                        <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
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

@endsection
