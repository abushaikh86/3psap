@extends('backend.layouts.app')
@section('title', 'Add Users')
@php
use Spatie\Permission\Models\Role;
@endphp
@section('content')
    <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-12 mb-2 mt-1">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h5 class="content-header-title float-left pr-1 mb-0">Internal Users</h5>
                            <div class="breadcrumb-wrapper col-12">
                                <ol class="breadcrumb p-0 mb-0">
                                    <li class="breadcrumb-item"><a href="{{ route('admin.internalusers') }}"><i
                                                class="bx bx-home-alt"></i></a>
                                    </li>
                                    <li class="breadcrumb-item active">Internal Users
                                    </li>
                                </ol>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <section id="basic-datatable">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Internal Users</h4>
                            </div>
                            <div class="card-content">
                                <div class="card-body card-dashboard">


                                    <div class="col-12 text-right">
                                        <a href="{{ route('admin.internalusers') }}" class="btn btn-primary"><i
                                                class="bx bx-users"></i> View </a>
                                    </div>
                                    <br>
                                    @include('backend.includes.errors')
                                    {{ Form::open(['url' => 'admin/internaluser/store']) }}
                                    @csrf
                                    <div class="form-body">
                                        <div class="row">
                                            <div class="col-md-6 col-12">
                                                <div class="form-label-group">
                                                    {{ Form::text('fullname', null, ['class' => 'form-control', 'placeholder' => 'Enter  Name', 'required' => true]) }}
                                                    {{ Form::label('fullname', 'First Name *') }}
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-12">
                                                <div class="form-label-group">
                                                    {{ Form::text('email', null, ['class' => 'form-control', 'placeholder' => 'Enter Email', 'required' => true]) }}
                                                    {{ Form::label('email', 'Email *') }}

                                                    {{-- Hidden PassWord field --}}
                                                    {{ Form::hidden('password', 'Pass@123', ['class' => 'form-control', 'placeholder' => 'Enter First Name', 'required' => true]) }}
                                                </div>
                                            </div>

                                            {{-- input for role --}}
                                            <div class="col-md-6 col-12">
                                                <div class="form-label-group">
                                                    <select name="role_id" id="role_id" class='form-control'>
                                                        @foreach ($role as $index => $value)
                                                            <option value="{{ $value['id'] }}"> {{ $value['name'] }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    {{ Form::label('first_name', 'First Name *') }}
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-12">
                                                <div class="form-label-group">
                                                    {{ Form::text('dob', null, ['class' => 'form-control', 'placeholder' => 'Enter date of birth', 'id' => 'dob', 'required' => true]) }}
                                                    {{ Form::label('date of birth', 'Date if birth*') }}
                                                </div>
                                            </div>
                                            <div class="col md-12 center">
                                                <center>
                                                    {{ Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1']) }}
                                                    <button type="reset"
                                                        class="btn btn-light-secondary mr-1 mb-1">Reset</button>
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
        </div>
    </div>


@endsection
