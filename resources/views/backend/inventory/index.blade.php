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
                    <input type="text" name="selectedDate" value="" />
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
                                        <th>Units per case</th>
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
                                        <th><input type="text" id="unit_case"></th>
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



<script>
    $(function() {


            $('input[name="selectedDate"]').daterangepicker({
                singleDatePicker: true,
                startDate: moment(),
                locale: {
                    format: 'DD-MM-YYYY'
                }
            });


            $('.dropdown-toggle').dropdown();

            var table = $('#tbl-datatable').DataTable({
                processing: true,
                serverSide: false,

                ajax: {

                    url: "{{ route('admin.inventory') }}",
                    type: "GET",
                    data: function(d) {
                        // d.date = $('input[name="selectedDate"]').data('daterangepicker').startDate.format('YYYY-MM-DD');
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
                        data: 'sku',
                        name: 'sku'
                    },
                    {
                        data: 'batch_no',
                        name: 'batch_no'
                    },
                    {
                        data: 'ean_barcode',
                        name: 'ean_barcode'
                    },
                    {
                        data: 'item_code',
                        name: 'item_code'
                    },
                    {
                        data: 'product_desc',
                        name: 'product_desc'
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
                        data: 'consumer_desc',
                        name: 'consumer_desc'
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
                        data: 'unit_case',
                        name: 'unit_case'
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
                buttons: [
                    {
                        extend: 'csv',
                        text: 'Export CSV',
                        exportOptions: {
                            columns: ':visible'
                        },
                        autoSize: true // Automatically adjust column width
                    }
                ],
                dom: 'lBfrtip',
                select: true,
            });

            function applySearch(columnIndex, value) {
                table.column(columnIndex).search(value).draw();
            }

            $('#warehouse, #bin').on('change', function() {
                var columnIndex = $(this).closest('th').index();
                var filterValue = $(this).find(':selected').text();
                applySearch(columnIndex, filterValue);
            });

            $('#doc_no,#sku,#batch_no,#ean_code,#item_code,#item_desc,#brand,#cat,#sub_cat,#variant,#product,#month,#quantity,#days_to_expire,#freshness,#unit_price').on('keyup', function() {
                var columnIndex = $(this).closest('th').index();
                applySearch(columnIndex, this.value);
            });

            $('#mfg_date', this).on('keyup change', function() {
                var val = $(this).val();
                var date = new Date(val);
                var newDate = date.toString('dd-MM-yy');
                // console.log(newDate);
                table.column(17).search(this.value).draw();

            });
            $('#exp_date', this).on('keyup change', function() {
                var val = $(this).val();
                var date = new Date(val);
                var newDate = date.toString('dd-MM-yy');
                // console.log(newDate);
                table.column(18).search(this.value).draw();
            });

            $(".applyBtn").click(function() {
                var selectedDate = $('input[name="selectedDate"]').data('daterangepicker').startDate.format('YYYY-MM-DD');        
                table.ajax.url("{{ route('admin.inventory') }}?date=" + selectedDate).load();

            });


            $(document).on("click", ".cancelBtn", function(e) {

                window.location.reload();
            });


            $('.reset').on('click', function() {
                // Assuming your date range picker has an ID 'daterange'
                var dateRangePicker = $('input[name="selectedDate"]');
                dateRangePicker.val('');
                // Set the date range picker to its default values
                dateRangePicker.data('daterangepicker').setStartDate(moment());
                dateRangePicker.data('daterangepicker').setEndDate(moment());
                // Trigger the change event to apply the new date range
                dateRangePicker.trigger('change');
                table.ajax.url("{{ route('admin.inventory') }}").load();
            });


        });
</script>

@endsection