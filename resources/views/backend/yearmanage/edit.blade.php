@extends('backend.layouts.app')
@section('title', 'Update Academic Year')

@section('content')
    @php

    @endphp
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Academic Year</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.yearmanage') }}">Academic Year Management</a>
                        </li>
                        <li class="breadcrumb-item active">Update Academic Year</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a class="btn btn-outline-primary" href="{{ route('admin.yearmanage') }}">
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
                        <h4 class="card-title">Update Academic Year</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            {{-- @include('backend.includes.errors')
                    {!! Form::model($storagelocations, [
                        'method' => 'POST',
                        'url' => ['admin/storagelocations/update'],
                        'class' => 'form'
                    ]) !!} --}}
                            @include('backend.includes.errors')
                            {{-- <form method="POST" action="{{ route('admin.storagelocations.store') }}" class="form"> --}}
                            {!! Form::model($data, [
                                'method' => 'POST',
                                'url' => ['admin/yearmanage/update'],
                                'class' => 'form',
                            ]) !!}
                            {{ csrf_field() }}
                            @include('backend.yearmanage._form', $year_data)
                            </form>

                    
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </div>
    </div>
@endsection
