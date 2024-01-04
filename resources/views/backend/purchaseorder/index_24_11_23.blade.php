@extends('backend.layouts.app')
@section('title', 'Purchase Order')

@section('content')
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Purchase Order</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Purchase Order</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">

                    <a href="{{ url('admin/purchaseorder/create') }}" class="btn  btn-outline-primary"><i
                            class="feather icon-plus"></i> Add</a>

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
                                            <th>Purchase Order No</th>
                                            <th>Vendor PO Refrence Number</th>
                                            <th>Date</th>
                                            <th>Purchase Order To</th>
                                            <th>Status</th>

                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        @if (isset($purchaseorder) && count($purchaseorder) > 0)
                                            @php $srno = 1; @endphp
                                            @foreach ($purchaseorder as $item)
                                                <tr>
                                                    <td>{{ $srno }}</td>
                                                    <td>{{ $item->bill_no }}</td>
                                                    <td>{{ $item->vendor_ref_no }}</td>
                                                    <td>{{ $item->bill_date }}</td>
                                                    <td>{{ $item->get_partyname->bp_name ?? '' }}</td>
                                                    <td>{{ $item->status }}</td>

                                                    <td>
                                                        <!-- <a href="{{ url('admin/purchaseorder/download/' . $item->purchase_order_id) }}" class="btn btn-secondary" title="Download"><i class="icofont icofont-download-alt"></i></a> -->
                                                        <a href="{{ url('admin/purchaseorder/view/' . $item->purchase_order_id) }}"
                                                            class="btn btn-primary" title="View"><i
                                                                class="feather icon-eye"></i></a>

                                                        {!! Form::open([
                                                            'method' => 'GET',
                                                            'url' => ['admin/purchaseorder/creategr', $item->purchase_order_id],
                                                            'style' => 'display:inline',
                                                        ]) !!}

                                                        {!! Form::button('<i class="feather icon-plus"></i>', [
                                                            'type' => 'submit',
                                                            'class' => 'btn btn-info',
                                                            'onclick' => "return confirm('Are you sure you want to Create GR from this PO ?')",
                                                            'title' => 'Create GR',
                                                        ]) !!}

                                                        {!! Form::close() !!}


                                                        @can('Update Purchase Order')
                                                            <a href="{{ url('admin/purchaseorder/edit/' . $item->purchase_order_id) }}"
                                                                class="btn btn-primary" title="Edit"><i
                                                                    class="feather icon-edit"></i></a>
                                                        @endcan


                                                        {!! Form::open([
                                                            'method' => 'GET',
                                                            'url' => ['admin/purchaseorder/delete', $item->purchase_order_id],
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
                                    <tbody>

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
@section('scripts')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    {{-- <script>
        $(function() {

            $('#tbl-datatable').DataTable({
                processing: true,
                serverSide: true,
                ajax: "{{ route('admin.purchaseorder') }}",
columns: [{
data: 'DT_RowIndex',
name: 'DT_RowIndex',
orderable: false,
searchable: false,
},
{
data: 'bill_no',
name: 'bill_no'
},
{
data: 'vendor_ref_no',
name: 'vendor_ref_no'
},
{
data: 'bill_date',
name: 'bill_date'
},
{
data: 'get_partyname.bp_name',
name: 'get_partyname.bp_name'
},
{
data: 'status',
name: 'status'
},
{
data: 'action',
name: 'action',
orderable: true,
searchable: true
}
]
})
});
</script> --}}
@endsection
@endsection
