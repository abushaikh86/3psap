@extends('backend.layouts.app')
@section('title', 'Bill Booking')

@section('content')

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Bill Booking</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Bill Booking</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    @can('Create Bill Booking')
                        <a class="btn btn-outline-primary" href="{{ route('admin.billbooking.create') }}">
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
                        <h4 class="card-title">Bill Booking</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body card-dashboard">

                            {{--  {{ dd($details->toArray()) }}  --}}
                            <div class="table-responsive">

                                <table class="table zero-configuration" id="tbl-datatable">
                                    <thead>
                                        <tr>
                                            <th>Sr. No</th>
                                            <th>Bill To</th>
                                            <th>Doc Number</th>
                                            {{-- <th>Series Number</th> --}}
                                            <th>Posting Date</th>
                                            <th>Type</th>


                                            <th colspan="3">Action</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if (isset($data) && count($data) > 0)
                                            @php $srno = 1; @endphp
                                            @foreach ($data as $row)
                                                <tr>
                                                    <td>{{ $srno }}</td>
                                                    <td>{{ $row->get_partyname->bp_name ?? '' }}</td>
                                                    <td>{{ $row->doc_no }}</td>
                                                    {{-- <td>{{ $row->get_series_data->series_number }}</td> --}}
                                                    <td>{{ $row->posting_date }}</td>
                                                    <td>{{ $row->type }}</td>

                                                    <td>
                                                        @can('Update Bill Booking')
                                                            <a href="{{ url('admin/billbooking/edit/' . $row->bill_booking_id) }}"
                                                                class="btn btn-primary" title="Edit"><i
                                                                    class="feather icon-edit"></i></a>
                                                        @endcan
                                                        @can('Delete Bill Booking')
                                                            {!! Form::open([
                                                                'method' => 'GET',
                                                                'url' => ['admin/billbooking/delete', $row->bill_booking_id],
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
@section('scripts')
    <script src="{{ asset('public/backend-assets/vendors/js/tables/datatable/datatables.min.js') }}"></script>
    <script src="{{ asset('public/backend-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('public/backend-assets/vendors/js/tables/datatable/dataTables.buttons.min.js') }}"></script>
@endsection
