@extends('backend.layouts.app')
@section('title', 'Bussiness Partner')

@section('content')

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Bussiness Partner</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Bussiness Partner</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a class="btn btn-outline-primary" href="{{ route('admin.bussinesspartner.create') }}">
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
                        <h4 class="card-title">Bussiness Partner</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body card-dashboard">

                            {{--  {{ dd($details->toArray()) }}  --}}
                            <div class="table-responsive">

                                <table class="table zero-configuration" id="tbl-datatable">
                                    <thead>
                                        <tr>
                                            <th>Sr. No</th>
                                            <th>Bussines Partner Type</th>
                                            {{-- <th>Partner Code</th> --}}
                                            <th>Partner Name</th>
                                            <th>Organization Type</th>
                                            <th>Category</th>
                                            <th>Group</th>

                                            <th>Payment Terms</th>
                                            <th>credit Limit</th>
                                            <th>Gst details</th>
                                            {{--  <th>Email</th>  --}}
                                            <th colspan="3">Action</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        {{-- {{dd($details->toArray())}} --}}
                                        @if (isset($details) && count($details) > 0)
                                            @php $srno = 1; @endphp
                                            @foreach ($details as $data)
                                                <tr>
                                                    <td>{{ $srno }}</td>
                                                    <td>{{ $data->get_partnerTypeName->bussiness_master_type ?? '' }}</td>
                                                    <td>{{ $data->bp_name }} </td>
                                                    <td>{{ $data->get_org_type->bp_organisation_type }} </td>
                                                    <td>{{ $data->get_category->business_partner_category_name }} </td>
                                                    <td>{{ $data->bp_group }} </td>

                                                    <td>{{ $data->paymentterms->term_type }} </td>
                                                    <td>{{ $data->credit_limit }} </td>
                                                    <td>{{ $data->gst_details }} </td>
                                                    {{--  <td>{{ $data->banking_details }} </td>  --}}
                                                    <td>
                                                        <!-- @can('Update')
        -->
                                                            <!--
    @endcan -->
                                                        <a href="{{ url('admin/bussinesspartner/edit/' . $data->business_partner_id) }}"
                                                            class="btn btn-primary"><i class="feather icon-edit-2"></i></a>
                                                        <!-- @can('Delete')
        -->
                                                            <!--
    @endcan -->
                                                        {{--  delete button  --}}
                                                        {!! Form::open([
                                                            'method' => 'GET',
                                                            'url' => ['admin/bussinesspartner/delete', $data->business_partner_id],
                                                        ]) !!}
                                                        {!! Form::button('<i class="feather icon-trash"></i>', [
                                                            'type' => 'submit',
                                                            'class' => 'btn btn-danger',
                                                            'onclick' => "return confirm('Are you sure you want to Delete this Entry ?')",
                                                        ]) !!}
                                                        {!! Form::close() !!}
                                                    </td>
                                                    <td>
                                                        {{--  address button  --}}
                                                        <a href="{{ url('admin/bussinesspartner/address/' . $data->business_partner_id) }}"
                                                            class="btn btn-primary"><i class="feather icon-map"></i></a>

                                                        {{--  contact details button  --}}
                                                        <a href="{{ url('admin/bussinesspartner/contact/' . $data->business_partner_id) }}"
                                                            class="btn btn-secondary"><i class="feather icon-mail"></i></a>

                                                    </td>
                                                    <td>
                                                        {{-- banking details --}}
                                                        <a href="{{ url('admin/bussinesspartner/banking/' . $data->business_partner_id) }}"
                                                            class="btn btn-secondary"><i
                                                                class="feather icon-dollar-sign"></i></a>
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
@section('scripts')
    <script src="{{ asset('public/backend-assets/vendors/js/tables/datatable/datatables.min.js') }}"></script>
    <script src="{{ asset('public/backend-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('public/backend-assets/vendors/js/tables/datatable/dataTables.buttons.min.js') }}"></script>
@endsection
