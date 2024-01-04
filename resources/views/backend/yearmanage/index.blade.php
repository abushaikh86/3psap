@extends('backend.layouts.app')
@section('title', 'Academic Year Management')

@section('content')
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Academic Year Management</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Academic Year Management</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a class="btn btn-outline-primary" href="{{ route('admin.yearmanage.create') }}">
                        <i class="feather icon-plus"></i> Add
                    </a>

                </div>
            </div>
        </div>
    </div>
    <section id="basic-datatable">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Academic Year Management</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body card-dashboard">
                            <div class="table-responsive">
                                <table class="table zero-configuration" id="tbl-datatable">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                            
                                            <th>Year</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if (isset($data) && count($data) > 0)
                                            @php $srno = 1; @endphp
                                            @foreach ($data as $row)
                                                <tr>
                                                    <td>{{ $srno }}</td>
                             
                                                    <td>
                                                        {{ $row->year_id }}
                                                    </td>

                                                    <td>
                                                        <!-- @can('Update')
        -->
                                                            <!--
    @endcan -->
                                                        <a href="{{ url('admin/yearmanage/edit/' . $row->id) }}"
                                                            class="btn btn-primary" title="Edit"><i
                                                                class="feather icon-edit"></i></a>
                                                        <!-- @can('Delete')
        -->
                                                            <!--
    @endcan -->
                                                        {!! Form::open([
                                                            'method' => 'GET',
                                                            'url' => ['admin/yearmanage/delete', $row->id],
                                                            'style' => 'display:inline',
                                                        ]) !!}
                                                        {!! Form::button('<i class="feather icon-trash"></i>', [
                                                            'type' => 'submit',
                                                            'title' => 'Delete',
                                                            'class' => 'btn btn-danger',
                                                            'onclick' => "return confirm('Are you sure you want to Delete this Entry ?')",
                                                        ]) !!}
                                                        {!! Form::close() !!}
                                                    </td>
                                                </tr>
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
    </div>
    </div>

@endsection
@section('scripts')
    <script src="{{ asset('public/backend-assets/vendors/js/tables/datatable/datatables.min.js') }}"></script>
    <script src="{{ asset('public/backend-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('public/backend-assets/vendors/js/tables/datatable/dataTables.buttons.min.js') }}"></script>

    <script>
        $(document).ready(function() {

        });
    </script>
@endsection
