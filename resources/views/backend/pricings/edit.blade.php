@extends('backend.layouts.app')
@section('title', 'Edit Pricing')

@section('content')
    @php
        $status = ['No' => 'No', 'Yes' => 'Yes'];
        $product_types = ['simple' => 'Simple', 'configurable' => 'Configurable'];

    @endphp
    <style>

    </style>
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Edit Pricing</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.pricings') }}">Pricing List</a>
                        </li>
                        <li class="breadcrumb-item active">Edit Pricing</li>
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
                        <h4 class="card-title">Edit Pricing</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            @include('backend.includes.errors')
                            {!! Form::model($pricings, [
                                'method' => 'POST',
                                'url' => ['admin/pricings/update'],
                                'class' => 'form',
                                'enctype' => 'multipart/form-data',
                            ]) !!}
                            {{ Form::hidden('pricing_master_id', null, ['required' => true, 'id' => 'pricing_master_id']) }}
                            <div class="form-body">
                                <!-- <h2>General</h2> -->
                                <div class="row">

                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('pricing_name', 'Name ') }}
                                            {{ Form::text('pricing_name', null, ['class' => 'form-control', 'placeholder' => 'Enter Name', 'required' => true, 'id' => 'sku_description']) }}
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
@endsection
