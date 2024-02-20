@extends('backend.layouts.app')
@section('title', 'Sale Pricing')

@section('content')
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Sale Pricing</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Sale Pricing</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    @can('Create Sale Pricing')
                        <a class="btn btn-outline-primary" href="{{ route('admin.sellingpricing.create') }}">
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
                    <div class="card-header">
                        <h4 class="card-title">Sale Pricing</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body card-dashboard">
                            <div class="table-responsive">
                                <table class="table zero-configuration" id="tbl-datatable">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            {{-- <th>Type</th> --}}
                                            <th>Name</th>
                                            <th>Price Data</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if (isset($pricings) && count($pricings) > 0)
                                            @php $srno = 1; @endphp
                                            @foreach ($pricings as $pricing)
                                                <tr>
                                                    <td>{{ $srno }}</td>
                                                    {{-- <td>{{ ucFirst($pricing->pricing_type)}}</td> --}}
                                                    <td>{{ $pricing->pricing_name }}</td>
                                                    <td><a href="{{ route('admin.sellingpricing.setpricing', ['id' => $pricing->pricing_master_id]) }}"
                                                            class="btn btn-sm btn-outline-primary">Update</a></td>
                                                    <td>
                                                        @can('Update Sale Pricing')
                                                            <a href="{{ url('admin/sellingpricing/edit/' . $pricing->pricing_master_id) }}"
                                                                class="btn btn-primary" title="Edit"><i
                                                                    class="feather icon-edit"></i></a>
                                                        @endcan
                                                        @can('Delete Sale Pricing')
                                                            {!! Form::open([
                                                                'method' => 'GET',
                                                                'url' => ['admin/sellingpricing/delete', $pricing->pricing_master_id],
                                                                'style' => 'display:inline',
                                                            ]) !!}
                                                            {!! Form::button('<i class="feather icon-trash"></i>', [
                                                                'type' => 'submit',
                                                                'title' => 'Delete',
                                                                'class' => 'btn btn-danger',
                                                                'onclick' => "return confirm('Are you sure you want to Delete this Entry ?')",
                                                            ]) !!}
                                                            {!! Form::close() !!}
                                                        @endcan
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

@endsection

