@extends('backend.layouts.app')
@section('title', 'A/P Invoice')

@section('content')
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">A/P Invoice</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">A/P Invoice</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">

                    {{-- <a href="{{ url('admin/apinvoice/create') }}" class="btn  btn-outline-primary"><i class="feather icon-plus"></i> Add</a> --}}

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
                            <div class="row">
                            </div>
                            <div class="table-responsive">
                                <table class="table zero-configuration" id="tbl-datatable">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Invoice No</th>
                                            {{-- <th>Vendor Invoice Number </th> --}}
                                            <th>Invoice Number </th>
                                            <th>Date</th>
                                            <th>Invoice For</th>
                                            <th>Status</th>

                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {{-- {{dd($apinvoice->toArray())}} --}}
                                        @if (isset($apinvoice) && count($apinvoice) > 0)
                                            @php $srno = 1; @endphp
                                            @foreach ($apinvoice as $item)
                                                <tr>
                                                    <td>{{ $srno }}</td>
                                                    <td>{{ $item->bill_no }}</td>
                                                    {{-- <td>{{ $item->vendor_inv_no }}</td> --}}
                                                    <td>{{ $item->ap_inv_no }}</td>
                                                    <td>{{ $item->bill_date }}</td>
                                                    <td>{{ $item->get_partyname->bp_name ?? '' }}</td>
                                                    <td>{{ $item->status }}</td>

                                                    <td>
                                                        <!-- <a href="{{ url('admin/apinvoice/download/' . $item->purchase_order_id) }}" class="btn btn-secondary" title="Download"><i class="icofont icofont-download-alt"></i></a> -->
                                                        <a href="{{ url('admin/apinvoice/view/' . $item->goods_service_receipt_id) }}"
                                                            class="btn btn-primary" title="View"><i
                                                                class="feather icon-eye"></i></a>

                                                        @can('Update Goods Receipt PO')
                                                            {{--  <a href="{{ url('admin/apinvoice/edit/'.$item->purchase_order_id) }}" class="btn btn-primary" title="Edit"><i class="feather icon-edit"></i></a>  --}}
                                                            <a href="{{ url('admin/apinvoice/edit/' . $item->goods_service_receipt_id) }}"
                                                                class="btn btn-primary" title="Edit"><i
                                                                    class="feather icon-edit"></i></a>
                                                        @endcan
                                                        {!! Form::open([
                                                            'method' => 'GET',
                                                            'url' => ['admin/apinvoice/delete', $item->goods_service_receipt_id],
                                                            'style' => 'display:inline',
                                                        ]) !!}

                                                        {!! Form::button('<i class="feather icon-trash"></i>', [
                                                            'type' => 'submit',
                                                            'class' => 'btn btn-danger',
                                                            'onclick' => "return confirm('Are you sure you want to Delete this Entry ?')",
                                                            'title' => 'Delete',
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
