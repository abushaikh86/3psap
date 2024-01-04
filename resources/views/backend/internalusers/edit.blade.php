@extends('backend.layouts.app')
@section('title', 'Internal Users')
@php
use Spatie\Permission\Models\Role;
@endphp
@section('content')

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Create Internal User</h3>
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
                    <a class="btn btn-outline-primary" href="{{ route('admin.internalusers') }}">
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
                            {{ Form::open(['url' => 'admin/internaluser/update']) }}
                            @csrf
                            <div class="form-body">
                                <div class="row">
                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('fullname', 'First Name *') }}
                                            {{ Form::hidden('user_id', $userdata->user_id, ['class' => 'form-control']) }}
                                            {{ Form::text('fullname', $userdata->fullname, ['class' => 'form-control', 'placeholder' => 'Enter  Name', 'required' => true]) }}
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('email', 'Email *') }}
                                            {{ Form::text('email', $userdata->email, ['class' => 'form-control', 'placeholder' => 'Enter Email', 'required' => true]) }}

                                        </div>
                                    </div>

                                    {{-- input for role --}}

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('role_id', 'Role *') }}
                                            <select name="role_id" id="role_id" class='form-control'>
                                                @foreach ($role as $value)
                                                    <option value="{{ $value['id'] }}"
                                                        @if ($value['id'] == $userdata->role_id) selected @endif>
                                                        {{ $value['name'] }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('date of birth', 'Date of birth*') }}
                                            {{ Form::text('dob', $userdata->dob, ['class' => 'form-control', 'placeholder' => 'Enter date of birth', 'id' => 'dob', 'required' => true]) }}
                                        </div>
                                    </div>

                                    <div class="col md-12 center">
                                        <center>
                                            {{ Form::submit('Update', ['class' => 'btn btn-primary mr-1 mb-1']) }}
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
