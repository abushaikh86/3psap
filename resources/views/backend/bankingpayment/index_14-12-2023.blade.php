@extends('backend.layouts.app')
@section('title', 'Banking Payment')

@section('content')
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Banking Payment</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Banking Payment</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">

                    @can('Create Banking Payments')
                        <a class="btn btn-outline-primary" href="{{ route('admin.bankingpayment.create') }}">
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
                        <h4 class="card-title">Banking Payment</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body card-dashboard">

                            {{--  {{ dd($details->toArray()) }}  --}}
                            <div class="table-responsive">

                                <table class="table zero-configuration" id="tbl-datatable">
                                    <thead>
                                        <tr>
                                            <th>Sr. No</th>
                                            <th></th>
                                            <th>Banking Payment To</th>
                                            <th>Doc Number</th>
                                            <th>Gross Total</th>
                                            <th>Posting Date</th>
                                            <th>Action</th>

                                        </tr>
                                    </thead>
                                    <thead id="search_input">
                                        <tr>
                                            <th></th>
                                            <th></th>
                                            <th><input type="text" id="banking_payment_to"></th>
                                            <th><input type="text" id="doc_no"></th>
                                            <th><input type="text" id="gorss_total"></th>
                                            <th><input type="date" id="posting_date"></th>
                                            <th></th>
                                        </tr>
                                    </thead>
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
@endsection
@section('scripts')
    <script>
        $(function() {

            var table = $('#tbl-datatable').DataTable({
                processing: true,
                serverSide: true,
                ajax: "{{ route('admin.bankingpayment') }}",
                columns: [{
                        data: 'DT_RowIndex',
                        name: 'DT_RowIndex'
                    },
                    {
                        data: 'new_action',
                        name: 'new_action'
                    },
                    {
                        data: 'get_partyname.bp_name',
                        name: 'get_partyname.bp_name'
                    },
                    {
                        data: 'doc_no',
                        name: 'doc_no'
                    },
                    {
                        data: 'gorss_total',
                        name: 'gorss_total'
                    },
                    {
                        data: 'posting_date',
                        name: 'posting_date'
                    },
                    {
                        data: 'action',
                        name: 'action',
                        orderable: true,
                        searchable: false
                    }
                ],
                buttons: [{
                    extend: 'collection',
                    text: 'Export',
                    buttons: [{
                            extend: 'excel',
                            exportOptions: {
                                columns: [0, 2, 3, 4, 5],
                                modifier: {
                                    page: 'all',
                                    search: 'applied'
                                }
                            },
                            title: function() {
                                var pageTitle = 'BANKING PAYMENT';
                                return pageTitle
                            }
                        },
                        {
                            extend: 'pdf',
                            exportOptions: {
                                columns: [0, 2, 3, 4, 5],
                                modifier: {
                                    page: 'all',
                                    search: 'applied'
                                }
                            },
                            title: function() {
                                var pageTitle = 'BANKING PAYMENT';
                                return pageTitle
                            }
                        },
                        // {
                        //     extend: 'print',
                        //     exportOptions: {
                        //         columns: [0, 2, 3, 4, 5],
                        //         modifier: {
                        //             page: 'all',
                        //             search: 'applied'
                        //         }
                        //     },
                        //     title: function() {
                        //         var pageTitle = 'BANKING PAYMENT';
                        //         return pageTitle
                        //     }
                        // }
                    ]
                }],
                dom: 'lBfrtip',
                select: true
            });

            $('#banking_payment_to').on('keyup', function() {
                table.column(2).search(this.value).draw();
                // console.log(v);
            });

            $('#doc_no').on('keyup', function() {
                table.column(3).search(this.value).draw();
            });

            $('#gorss_total').on('keyup', function() {
                table.column(4).search(this.value).draw();
            });
            // var flag = false;
            $('#posting_date', this).on('keyup change', function() {
                var val = $(this).val();
                var date = new Date(val);
                var newDate = date.toString('dd-MM-yy');
                console.log(newDate);
                table.column(5).search(this.value).draw();

            });

        });
    </script>
@endsection
