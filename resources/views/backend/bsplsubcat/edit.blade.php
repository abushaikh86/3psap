@extends('backend.layouts.app')
@section('title', 'Edit BSPL Sub-Category')
@php
    use Spatie\Permission\Models\Role;
@endphp
@section('content')

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Edit BSPL Sub-Category</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{ url()->previous() }}">BSPL Sub-Category</a>
                        </li>
                        <li class="breadcrumb-item active">Edit</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a class="btn btn-outline-secondary" href="{{ url()->previous() }}">
                        <i class="feather icon-arrow-left"></i>  Back
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
                            {{ Form::open(['url' => 'admin/bsplsubcat/update']) }}
                            @csrf
                            <div class="form-body">
                                <div class="form-body">
                                    <div class="row">
                                        {{ Form::hidden('bsplsubcat_id', $model->bsplsubcat_id, ['class' => 'form-control']) }}
                                        {{ Form::hidden('route', $_GET['route']) }}
                     
                                        <div class="col-md-6 col-6">
                                            <div class="form-label-group">
                                                {{ Form::label('bsplcat_id', 'BSPL Category *') }}
                                                {{ Form::select('bsplcat_id', $bspl_cat_data,$model->bsplcat_id, ['class' => 'form-control', 'placeholder' => 'Select BSPL Category', 'required' => true]) }}
                                            </div>
                                        </div>

                           
                                        <div class="col-md-6 col-6">
                                            <div class="form-label-group">
                                                {{ Form::label('bspl_subcat_name', 'BSPL Sub-Category *') }}
                                                {{ Form::text('bspl_subcat_name', $model->bspl_subcat_name, ['class' => 'form-control', 'placeholder' => 'BSPL Sub-Category', 'required' => true]) }}
                                            </div>
                                        </div>
    
    
    
                                        
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col md-12 ">
                                            {{-- <center> --}}
                                                {{ Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1']) }}
                                                <button type="reset" class="btn btn-secondary mr-1 mb-1">Reset</button>
                                            {{-- </center> --}}
                                        </div>
                                    </div>
    
                                </div>
                            </div>

                        </div>


                        {{ Form::close() }}
                    </div>
                </div>
            </div>
 
        </div>
    </section>
@endsection
