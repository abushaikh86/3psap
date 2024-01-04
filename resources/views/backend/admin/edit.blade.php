@extends('backend.layouts.app')
@section('title', 'Internal Users')
@php
    use Spatie\Permission\Models\Role;
@endphp
@section('content')

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Edit Internal User</h3>
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
                    <a class="btn btn-outline-primary" href="{{ route('admin.users') }}">
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
                            {{ Form::open(['url' => 'admin/user/update']) }}
                            @csrf
                            <div class="form-body">
                                <div class="row">
                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('fullname', 'First Name *') }}
                                            {{ Form::hidden('admin_user_id', $userdata->admin_user_id, ['class' => 'form-control']) }}
                                            {{ Form::text('first_name', $userdata->first_name, [
                                                'class' => 'form-control',
                                                'placeholder' => 'Enter First Name',
                                                'required' => true,
                                            ]) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('fullname', 'Last Name *') }}
                                            {{ Form::text('last_name', $userdata->last_name, [
                                                'class' => 'form-control',
                                                'placeholder' => 'Enter Last Name',
                                                'required' => true,
                                            ]) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('email', 'Email *') }}
                                            {{ Form::text('email', $userdata->email, [
                                                'class' => 'form-control',
                                                'placeholder' => 'Enter Email',
                                                'required' => true,
                                            ]) }}

                                        </div>
                                    </div>

                                    {{-- input for role --}}

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('role_id', 'Role *') }}
                                            <select name="role" id="role" class='form-control'>
                                                @foreach ($role as $value)
                                                    <option value="{{ $value['id'] }}"
                                                        @if ($value['id'] == $userdata->role) selected @endif>
                                                        {{ $value['name'] }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12 company_drp">
                                        <div class="form-group">
                                            {{ Form::label('company_id', 'Compnay *') }}
                                            {{ Form::select('company_id', $company, $userdata->company_id, [
                                                'class' => 'form-control',
                                                'placeholder' => 'Select Company',
                                                'required' => true,
                                            ]) }}

                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div id="parentRolesContainer">
                                        </div>
                                    </div>

                                    {{-- <div class="col-md-6 col-12">
                                    <div class="form-label-group">
                                        {{ Form::label('date of birth', 'Date of birth*') }}
                                        {{ Form::text('dob', $userdata->dob, ['class' => 'form-control', 'placeholder'
                                        => 'Enter date of birth', 'id' => 'dob', 'required' => true]) }}
                                    </div>
                                </div> --}}

                                    <div class="col md-12 ">
                                        <br>
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


            <div class="col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body card-dashboard">
                            @include('backend.includes.errors')
                            {{ Form::open(['url' => 'admin/user/status']) }}
                            @csrf
                            <div class="form-body">
                                <div class="col-12">
                                    <div class="col-md-12">
                                        <div class="form-label-group">
                                            {{ Form::label('fullname', 'Status *') }}
                                            {{ Form::hidden('admin_user_id', $userdata->admin_user_id, ['class' => 'form-control']) }}
                                            {!! Form::select('account_status', ['0' => 'Inactive', '1' => 'Active'], $userdata->account_status, [
                                                'class' => 'form-control',
                                            ]) !!}
                                        </div>
                                        <div class="mt-1 text-center">
                                            {{ Form::submit('Update', ['class' => 'btn btn-primary mr-1 mb-1']) }}
                                            <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                                        </div>
                                        {{ Form::close() }}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        </div>

        </div>

    </section>



    <script>
        function get_parent_roles(role_id) {


            if (role_id == 17) {
                $('.company_drp').remove();
            }

            $.ajax({
                url: "{{ route('admin.get_parent_roles') }}", // Replace with your actual endpoint
                method: 'GET',
                data: {
                    role_id: role_id,
                    admin_user_id: {{ request('id') }}
                },
                success: function(response) {
                    // Handle the response from the server
                    $('#parentRolesContainer').html(response);
                },
                error: function(error) {
                    // Handle errors
                    console.error(error);
                }
            });
        }


        $(document).ready(function() {
            var role_id = {{ $userdata->role ?? '' }};

            get_parent_roles(role_id);

        });

        $('#role_id').on('change', function() {
            get_parent_roles($(this).val());
        });
    </script>

@endsection
