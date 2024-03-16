@extends('backend.layouts.app')
@section('title', 'BSPL Category')

@section('content')

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">BSPL Category</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">BSPL Category</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    @can('Create BSPL Category')
                        <a class="btn btn-outline-primary" href="{{ route('admin.bsplcat.create') }}">
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
                        <h4 class="card-title">BSPL Category</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body card-dashboard">

                            <div class="table-responsive">

                                <table class="table zero-configuration" id="tbl-datatable">
                                    <thead>
                                        <tr>
                                            <th>Sr. No</th>
                                            <th>BSPL Head</th>
                                            <th>BSPL Category</th>
                                            <th colspan="3">Action</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if (isset($details) && count($details) > 0)
                                            @php $srno = 1; @endphp
                                            @foreach ($details as $data)
                                                <tr>
                                                    <td>{{ $srno }}</td>
                                                    <td>{{ $data->bspl_head_name->bspl_heads_name }}</td>
                                                    <td>{{ $data->bspl_cat_name }}</td>

                                                    <td>
                                                        <?php
                                                  if($data->has_subcat)
                                                  {
                                                ?>
                                                        <a href="{{ url('admin/bsplsubcat/bsplcat/' . $data->bsplcat_id) }}"
                                                            class="btn btn-primary btn-xs">BSPL Sub Categories</a>
                                                        <?php
                                                  }
                                               ?>

                                                        @can('Update BSPL Category')
                                                            <a href="{{ url('admin/bsplcat/edit/' . $data->bsplcat_id) }}"
                                                                class="btn btn-primary" title="Edit"><i
                                                                    class="feather icon-edit"></i></a>
                                                        @endcan
                                                        @can('Delete BSPL Category')
                                                            {!! Form::open([
                                                                'method' => 'GET',
                                                                'url' => ['admin/bsplcat/delete', $data->bsplcat_id],
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
