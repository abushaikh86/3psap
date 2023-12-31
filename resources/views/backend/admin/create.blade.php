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
                            {{ Form::open(['url' => 'admin/user/store']) }}
                            @csrf
                            <div class="form-body">
                                <div class="row">
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('first_name', 'First Name *') }}
                                            {{ Form::text('first_name', null, [
                                                'class' => 'form-control',
                                                'placeholder' => 'Enter First Name',
                                                'required' => true,
                                            ]) }}
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('last_name', 'Last Name *') }}
                                            {{ Form::text('last_name', null, [
                                                'class' => 'form-control',
                                                'placeholder' => 'Enter Last Name',
                                                'required' => true,
                                            ]) }}
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('email', 'Email *') }}
                                            {{ Form::text('email', null, ['class' => 'form-control', 'placeholder' => 'Enter Email', 'required' => true]) }}
                                            {{-- Hidden PassWord field --}}
                                            {{ Form::hidden('password', 'Pass@123', [
                                                'class' => 'form-control',
                                                'placeholder' => 'Enter First
                                                                Name',
                                                'required' => true,
                                            ]) }}
                                            {{ Form::hidden('account_status', 1, [
                                                'class' => 'form-control',
                                                'placeholder' => 'Enter First
                                                                Name',
                                                'required' => true,
                                            ]) }}
                                        </div>
                                    </div>


                                    {{-- input for role --}}
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            {{ Form::label('role', 'Role *') }}
                                            <select name="role" id="role_id" class='form-control'>
                                       
                                                @foreach ($role as $index => $value)
                                                    <option value="{{ $value['id'] }}"> {{ $value['name'] }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12 company_drp">
                                        <div class="form-group">
                                            {{ Form::label('company_id', 'Compnay *') }}
                                            {{ Form::select('company_id', $company, null, [
                                                'class' => 'form-control',
                                                'placeholder' => 'Select
                                                                Company',
                                                'required' => true,
                                            ]) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div id="parentRolesContainer">
                                        </div>
                                    </div>

                                    {{-- <div class="col-md-6 col-12">
                  <div class="form-group">
                    {{ Form::label('date of birth', 'Date of birth*') }}
                    {{ Form::text('dob', null, ['class' => 'form-control', 'placeholder' => 'Enter date of birth',
                    'id'=>'dob' , 'required' => true]) }}
                  </div> --}}
                                </div>
                                <div class="col md-12">
                                    {{ Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1']) }}
                                    <button type="reset" class="btn btn-dark mr-1 mb-1">Reset</button>
                                </div>
                            </div>
                            {{ Form::close() }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <script>
        $('#role_id').on('change', function() {
            var role_id = $(this).val();
            if (role_id == 17) {
                $('.company_drp').remove();
            }

            $.ajax({
                url: "{{ route('admin.get_parent_roles') }}", // Replace with your actual endpoint
                method: 'GET',
                data: {
                    role_id: role_id
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

        });
    </script>

@endsection
