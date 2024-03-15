@extends('backend.layouts.app')
@section('title', 'Inventory Report')

@section('content')
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Inventory Report</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Inventory Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <section id="basic-datatable">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Inventory Report</h4>
                    </div>

                    <div class="form-group ml-2">

                        <strong>Filter By Dates: </strong>
                        <input type="text" name="daterange" value="" />
                        {{-- <button class="btn btn-success filter">Filter</button> --}}
                        <button class="btn-sm btn-secondary reset">Reset</button>

                    </div>

                    <div class="card-content">
                        <div class="card-body card-dashboard">
                            <div class="row">
                            </div>
                            <div class="table-responsive">
                                <table class="table zero-configuration" id="tbl-datatable">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Doc Number</th>
                                            <th>Warehouse</th>
                                            <th>Bin</th>
                                            <th>Base Pack</th>
                                            <th>Batch No.</th>
                                            <th>EAN Code</th>
                                            <th>Item Code</th>
                                            <th>Item Description</th>
                                            <th>Brand</th>
                                            <th>Category</th>
                                            <th>Sub Category</th>
                                            <th>Variant</th>
                                            <th>Product</th>
                                            <th>Month</th>
                                            <th>Quantity</th>
                                            <th>Mfg Date</th>
                                            <th>Exp Date</th>
                                            <th>Days To Expire</th>
                                            <th>Freshness (%)</th>
                                            {{-- <th>Stock Status</th> --}}
                                            <th>Billing Price/ Unit (W/O Gst)</th>
                                        </tr>
                                    </thead>
                                    <thead id="search_input">
                                        <tr>
                                            <th></th>
                                            <th><input type="text" id="doc_no"></th>
                                            <th>
                                                <select name="warehouse" id="warehouse"
                                                    class="btn btn-sm border border-dark dropdown-toggle" type="button"
                                                    data-bs-toggle="dropdown" aria-expanded="false">
                                                    <option value="">Select</option>
                                                    @foreach ($storage_locations as $key => $val)
                                                        <option value="{{ $val }}">{{ $val }}</option>
                                                    @endforeach
                                                </select>
                                            </th>
                                            <th>
                                                <select name="bin" id="bin"
                                                    class="btn btn-sm border border-dark dropdown-toggle" type="button"
                                                    data-bs-toggle="dropdown" aria-expanded="false">
                                                    <option value="">Select</option>
                                                    @foreach ($bin_type as $key => $val)
                                                        <option value="{{ $val }}">{{ $val }}</option>
                                                    @endforeach
                                                </select>

                                            </th>
                                            <th><input type="text" id="sku"></th>
                                            <th><input type="text" id="batch_no"></th>
                                            <th><input type="text" id="ean_code"></th>
                                            <th><input type="text" id="item_code"></th>
                                            <th><input type="text" id="item_desc"></th>
                                            <th><input type="text" id="brand"></th>
                                            <th><input type="text" id="cat"></th>
                                            <th><input type="text" id="sub_cat"></th>
                                            <th><input type="text" id="variant"></th>
                                            <th><input type="text" id="product"></th>
                                            <th><input type="text" id="month"></th>
                                            <th><input type="text" id="quantity"></th>
                                            <th><input type="date" id="mfg_date"></th>
                                            <th><input type="date" id="exp_date"></th>
                                            <th><input type="text" id="days_to_expire"></th>
                                            <th><input type="text" id="freshness"></th>
                                            {{-- <th></th> --}}
                                            <th><input type="text" id="unit_price"></th>
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
    </div>
    </div>

@endsection
@section('scripts')


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

    <script src="{{ asset('public/backend-assets/vendors/js/datatables.min.js') }}"></script>
    <script src="{{ asset('public/backend-assets/vendors/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>



    <script>
        $(function() {


            $('input[name="daterange"]').daterangepicker({

                startDate: moment().subtract(1, 'M'),
                endDate: moment(),
                locale: {
                    format: 'DD-MM-YYYY'
                }

            });


            $('.dropdown-toggle').dropdown();

            var table = $('#tbl-datatable').DataTable({
                processing: true,
                serverSide: true,

                ajax: {

                    url: "{{ route('admin.inventory') }}",
                    type: "GET",
                    data: function(d) {

                        d.from_date = $('input[name="daterange"]').data('daterangepicker').startDate
                            .format('YYYY-MM-DD H:i:s');

                        d.to_date = $('input[name="daterange"]').data('daterangepicker').endDate.format(
                            'YYYY-MM-DD  H:i:s');

                    }

                },

                // ajax: "{{ route('admin.inventory') }}",
                columns: [{
                        data: 'DT_RowIndex',
                        name: 'DT_RowIndex'
                    },
                    {
                        data: 'doc_no',
                        name: 'doc_no'
                    },
                    {
                        data: 'warehouse_name',
                        name: 'get_warehouse.storage_location_name'
                    },
                    {
                        data: 'bin_name',
                        name: 'get_bin.get_bin.name'
                    },
                    {
                        data: 'get_unit_price.sku',
                        name: 'get_unit_price.sku'
                    },
                    {
                        data: 'batch_no',
                        name: 'batch_no'
                    },
                    {
                        data: 'get_unit_price.ean_barcode',
                        name: 'get_unit_price.ean_barcode'
                    },
                    {
                        data: 'item_code',
                        name: 'item_code'
                    },
                    {
                        data: 'get_unit_price.product_desc',
                        name: 'get_unit_price.product_desc'
                    },
                    {
                        data: 'brand_name',
                        name: 'get_unit_price.brand.brand_name'
                    },
                    {
                        data: 'category_name',
                        name: 'get_unit_price.category.category_name'
                    },
                    {
                        data: 'sub_category_name',
                        name: 'get_unit_price.sub_category.subcategory_name'
                    },
                    {
                        data: 'variant_name',
                        name: 'get_unit_price.variants.name'
                    },
                    {
                        data: 'get_unit_price.consumer_desc',
                        name: 'get_unit_price.consumer_desc'
                    },
                    {
                        data: 'formatted_created_at',
                        name: 'formatted_created_at'
                    },
                    {
                        data: 'qty',
                        name: 'qty'
                    },
                    {
                        data: 'manufacturing_date',
                        name: 'manufacturing_date'
                    },
                    {
                        data: 'expiry_date',
                        name: 'expiry_date'
                    },
                    {
                        data: 'days_remaining',
                        name: 'days_remaining'
                    },
                    {
                        data: 'freshness_percentage',
                        name: 'freshness_percentage'
                    },
                    {
                        data: 'unit_price',
                        name: 'unit_price'
                    },
                ],
                buttons: [{
                    extend: 'collection',
                    text: 'Export',
                    buttons: [{
                            extend: 'excel',
                            exportOptions: {
                                columns: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
                                    16,
                                    17, 18, 19,20
                                ],
                                modifier: {
                                    page: 'all',
                                    search: 'applied'
                                }
                            },
                            title: 'INVENTORY REPORT',
                        },
                        
                    ],
                }, ],
                dom: 'lBfrtip',
                select: true,
            });

            $('#doc_no').on('keyup', function() {
                table.column(1).search(this.value).draw();
            });

            $('#warehouse').on('change', function() {
                table.column(2).search(this.value).draw();
            });

            $('#bin').on('change', function() {
                table.column(3).search(this.value).draw();
            });

            $('#sku').on('keyup', function() {
                table.column(4).search(this.value).draw();
            });


            $('#batch_no').on('keyup', function() {
                table.column(5).search(this.value).draw();
            });


            $('#ean_code').on('keyup', function() {
                table.column(6).search(this.value).draw();
            });

            $('#item_code').on('keyup', function() {
                table.column(7).search(this.value).draw();
            });
            $('#item_desc').on('keyup', function() {
                table.column(8).search(this.value).draw();
            });
            $('#brand').on('keyup', function() {
                table.column(9).search(this.value).draw();
            });
            $('#cat').on('keyup', function() {
                table.column(10).search(this.value).draw();
            });
            $('#sub_cat').on('keyup', function() {
                table.column(11).search(this.value).draw();
            });
            $('#variant').on('keyup', function() {
                table.column(12).search(this.value).draw();
            });
            $('#product').on('keyup', function() {
                table.column(13).search(this.value).draw();
            });
            $('#month').on('keyup', function() {
                table.column(14).search(this.value).draw();
            });
            $('#quantity').on('keyup', function() {
                table.column(15).search(this.value).draw();
            });

            $('#mfg_date', this).on('keyup change', function() {
                var val = $(this).val();
                var date = new Date(val);
                var newDate = date.toString('dd-MM-yy');
                // console.log(newDate);
                table.column(16).search(this.value).draw();

            });
            $('#exp_date', this).on('keyup change', function() {
                var val = $(this).val();
                var date = new Date(val);
                var newDate = date.toString('dd-MM-yy');
                // console.log(newDate);
                table.column(17).search(this.value).draw();
            });
            $('#days_to_expire').on('keyup', function() {
                table.column(18).search(this.value).draw();
            });
            $('#freshness').on('keyup', function() {
                table.column(19).search(this.value).draw();
            });
            $('#unit_price').on('keyup', function() {
                table.column(20).search(this.value).draw();
            });



            $(".applyBtn").click(function() {

                table.draw();

            });


            $(document).on("click", ".cancelBtn", function(e) {

                window.location.reload();
            });


            $('.reset').on('click', function() {
                // Assuming your date range picker has an ID 'daterange'
                var dateRangePicker = $('input[name="daterange"]');

                // Set the date range picker to its default values
                dateRangePicker.data('daterangepicker').setStartDate(moment().subtract(1, 'M'));
                dateRangePicker.data('daterangepicker').setEndDate(moment());

                // Trigger the change event to apply the new date range
                dateRangePicker.trigger('change');
                table.ajax.reload();
            });


        });
    </script>

@endsection
