@extends('backend.layouts.app')
@section('title', 'Internal Users')

@section('content')

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Internal User</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Internal User</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    @can('Create External Users')
                    <a class="btn btn-outline-primary" href="{{ route('admin.create') }}">
                        <i class="feather icon-plus"></i> Add
                    </a>
                    @endcan
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
                            <div class="table-responsive">
                                <table class="table zero-configuration" id="tbl-datatable">
                                    <thead>
                                        <tr>
                                            <th>Sr. No</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Role</th>
                                            <th></th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if (isset($adminusers) && count($adminusers) > 0)
                                            @php $srno = 1; @endphp
                                            @foreach ($adminusers as $users)
                                                @if (!empty($users->userrole) && $users->userrole->department_id != 1)
                                                    <tr>
                                                        <td>{{ $srno }}</td>
                                                        <td>{{ $users->first_name }}</td>
                                                        <td>{{ $users->email }}</td>
                                                        <td>{{ $users->userrole->name }}</td>
                                                        <td>
                                                            @can('Update External Users')
                                                                <a href="{{ url('admin/user/edit/' . $users->admin_user_id) }}"
                                                                    class="btn btn-primary"><i
                                                                        class="feather icon-edit-2"></i></a>
                                                            @endcan
                                                            @can('Delete External Users')
                                                                {!! Form::open([
                                                                    'method' => 'GET',
                                                                    'url' => ['admin/user/delete', $users->admin_user_id],
                                                                    'style' => 'display:inline',
                                                                ]) !!}
                                                                {!! Form::button('<i class="feather icon-trash"></i>', [
                                                                    'type' => 'submit',
                                                                    'class' => 'btn btn-danger',
                                                                    'onclick' => "return confirm('Are you sure you want to Delete this Entry ?')",
                                                                ]) !!}
                                                                {!! Form::close() !!}
                                                            @endcan

                                                        </td>
                                                    </tr>
                                                @endif
                                                @php $srno++; @endphp
                                            @endforeach
                                        @endif
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection

