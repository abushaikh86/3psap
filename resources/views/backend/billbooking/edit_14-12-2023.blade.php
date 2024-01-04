@extends('backend.layouts.app')
@section('title', 'Update Bill Booking ')

@section('content')
    <style>
        .adjust_col {
            width: 115px;
        }
    </style>
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title"> Bill Booking </h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active"> Bill Booking </li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a href="{{ route('admin.billbooking') }}" class="btn btn-outline-secondary float-right"><i
                            class="bx bx-arrow-back"></i><span class="align-middle ml-25">Back</span></a>
                </div>
            </div>
        </div>
    </div>

    <section id="multiple-column-form">
        <div class="row match-height">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="content-header row">

                                @include('backend.includes.errors')
                                {{-- {{ Form::open(['url' => 'admin/billbooking/store']) }} --}}
                                {{ Form::model($model, ['url' => 'admin/billbooking/update', 'files' => true, 'class' => 'w-100']) }}
                                {{ Form::hidden('bill_booking_id', $model->bill_booking_id) }}
                                {{ Form::hidden('bill_to_state', '', ['class' => 'bill_to_state']) }}
                                {{ Form::hidden('party_name', '', ['class' => 'party_name']) }}
                                {{ Form::hidden('party_state', '', ['class' => 'party_state']) }}
                                {{ Form::hidden('bill_to_gst_no', '', ['class' => 'bill_to_gst_no']) }}
                                @csrf

                                <div class="form-body">


                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="col-md-12 col-sm-12">

                                                    </div>

                                                    <div class="col-md-12 col-sm-12">
                                                        <div class="form-group">
                                                            {{ Form::label('vendor_id', 'Vendor *') }}
                                                            {{ Form::select('vendor_id', $party, null, ['class' => 'form-control select2', 'id' => 'party_id', 'placeholder' => 'Select Vendor', 'required' => true]) }}
                                                        </div>
                                                    </div>

                                                    <div class="col-md-12 col-sm-12">
                                                        <div class="form-group">
                                                            {{ Form::label('invoice_ref_date', 'Invoice Refrence Date') }}
                                                            {{ Form::date('invoice_ref_date', null, ['class' => 'form-control remarks', 'placeholder' => 'Invoice Refrence Date', 'required' => true]) }}
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="col-sm-12">


                                                    </div>
                                                </div>

                                            </div>

                                        </div>
                                        {{-- <div class="col-sm-6"> --}}

                                        {{-- <div class="col-md-12 col-sm-12">
                                                <div class="form-group">
                                                    {{ Form::label('po_document', 'Upload Goods Service Receipts Photocopy') }}
                                                    {{ Form::file('po_document', ['class' => 'form-control', 'id' => 'po_document']) }}
                                                </div>
                                            </div> --}}


                                        <div class="col-md-3 col-sm-3">


                                        </div>
                                        <div class="col-md-3 col-sm-3">
                                            {{-- <div class="form-group">
                                                @php
                                                    use App\Models\backend\SeriesMaster;
                                                    $series_numbers = SeriesMaster::pluck('series_number', 'id');
                                                @endphp
                                                {{ Form::label('series_no', 'Series Number') }}
                                                {{ Form::select('series_no', $series_numbers, null, ['class' => 'form-control ship_from', 'placeholder' => 'Select Series Number']) }}

                                            </div>
                                            <div class="form-group">
                                                {{ Form::label('doc_no', 'Doc Number') }}
                                                {{ Form::text('doc_no', null, ['class' => 'form-control ship_from', 'placeholder' => 'Doc Number']) }}
                                            </div> --}}
                                            <div class="form-group">

                                                {{ Form::label('posting_date', 'Posting Date') }}
                                                {{ Form::date('posting_date', date('Y-m-d'), ['class' => 'form-control ship_from', 'placeholder' => 'Posting Date', 'required' => true, 'readonly' => true]) }}
                                            </div>
                                        </div>

                                        {{-- </div> --}}
                                    </div>


                                    <div class="col-sm-12">
                                        <section id="form-repeater-wrapper">

                                            <div class="row">

                                                <div class="col-sm-12">
                                                    <hr>
                                                </div>


                                                <div class="conatiner-fluid table-responsive repeater">
                                                    <button type="button" data-repeater-create
                                                        class="btn btn-primary pull-right mb-2 add_btn_rep">Add</button>
                                                    <div class="table-responsive">
                                                        <table class="table table-bordered " id="repeater"
                                                            style="width:120%;">
                                                            <thead class="bg-light" style="font-size:10px;">
                                                                <tr>
                                                                    <td>{{ Form::label('sr_no', 'Sr No.') }}
                                                                    </td>
                                                                    <td class="adjust_col">{{ Form::label('item_name', 'Description') }}
                                                                    </td>

                                                                    <td class="adjust_col">{{ Form::label('invoice_ref_no', 'Invoice Ref No.') }}
                                                                    </td>

                                                                    <td>{{ Form::label('expense_id', 'Expense Name') }}
                                                                    </td>


                                                                    <td>{{ Form::label('bsplstype_id', 'Type') }}
                                                                    </td>
                                                                    <td>{{ Form::label('bsplsubcat_id', 'Expense Sub-Category') }}
                                                                    </td>
                                                                    <td>{{ Form::label('bsplcat_id', 'Expense Category') }}
                                                                    </td>
                                                                    <td>{{ Form::label('bsplheads_id', 'Heads') }}</td>

                                                                    <td>{{ Form::label('gl_code', 'GL Code') }}
                                                                    </td>
                                                                    <td>{{ Form::label('amount', 'Amount',['class' => 'd-block', 'style' => 'width:70px']) }}</td>
                                                                    <td class="">{{ Form::label('gst_rate', 'GST',['class' => 'd-block', 'style' => 'width:130px']) }}</td>
                                                                    {{-- <td>{{ Form::label('GST', 'GST (%)') }}</td> --}}
                                                                    <td>{{ Form::label('CGST', 'CGST (%)',['class' => 'd-block', 'style' => 'width:70px']) }}</td>
                                                                    <td>{{ Form::label('SGST', 'SGST (%)',['class' => 'd-block', 'style' => 'width:70px']) }}</td>
                                                                    <td>{{ Form::label('IGST', 'IGST (%)',['class' => 'd-block', 'style' => 'width:70px']) }}</td>
                                                                    <td>{{ Form::label('total_value', 'Total Value',['class' => 'd-block', 'style' => 'width:70px']) }}
                                                                    </td>

                                                                    <td></td>

                                                                </tr>
                                                            </thead>
                                                            <tbody data-repeater-list="invoice_items">

                                                                @foreach ($model->billbooking_items as $items)
                                                                    <tr data-repeater-item class="item_row item-content"
                                                                        id="old_row_{{ $loop->index }}">

                                                                        {{ Form::hidden('old_invoice_items[' . $loop->index . '][bill_booking_item_id]', $items->bill_booking_item_id, ['data-name' => 'bill_booking_item_id', 'class' => 'form-control item_name typeahead', 'placeholder' => 'Description', 'required' => true, 'autocomplete' => 'off']) }}


                                                                        {{-- {{ Form::hidden('old_invoice_items[' . $loop->index . '][cgst_rate]', $items->cgst_rate, ['class' => 'form-control custom-rate', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'cgst_rate', 'data-group' => 'old_invoice_items']) }} --}}
                                                                        {{ Form::hidden('old_invoice_items[' . $loop->index . '][cgst_amount]', $items->cgst_amount, ['class' => 'form-control custom-amount cgst_amount', 'placeholder' => 'Amt.', 'onchange' => 'calculategst(this)', 'data-name' => 'cgst_amount', 'data-group' => 'old_invoice_items']) }}

                                                                        {{-- {{ Form::hidden('old_invoice_items[' . $loop->index . '][sgst_utgst_rate]', $items->sgst_utgst_rate, ['class' => 'form-control custom-rate', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'sgst_utgst_rate', 'data-group' => 'old_invoice_items']) }} --}}
                                                                        {{ Form::hidden('old_invoice_items[' . $loop->index . '][sgst_utgst_amount]', $items->sgst_utgst_amount, ['class' => 'form-control custom-amount sgst_utgst_amount', 'placeholder' => 'Amt.', 'onchange' => 'calculategst(this)', 'data-name' => 'sgst_utgst_amount', 'data-group' => 'old_invoice_items']) }}

                                                                        {{-- {{ Form::hidden('old_invoice_items[' . $loop->index . '][igst_rate]', $items->igst_rate, ['class' => 'form-control custom-rate', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'igst_rate', 'data-group' => 'old_invoice_items']) }} --}}
                                                                        {{ Form::hidden('old_invoice_items[' . $loop->index . '][igst_amount]', $items->igst_amount, ['class' => 'form-control custom-amount igst_amount', 'placeholder' => 'Amt.', 'onchange' => 'calculategst(this)', 'data-name' => 'igst_amount', 'data-group' => 'old_invoice_items']) }}


                                                                        <td class="sr_no"></td>

                                                                        <td>{{ Form::text('old_invoice_items[' . $loop->index . '][description]', $items->description, ['data-id' => 'description', 'id' => 'description', 'data-name' => 'description', 'class' => 'form-control  description ', 'autocomplete' => 'off', 'required' => true]) }}
                                                                        </td>

                                                                        <td class="adjust_col">
                                                                            {{ Form::text('old_invoice_items[' . $loop->index . '][invoice_ref_no]', $items->invoice_ref_no, ['class' => 'form-control  invoice_ref_no', 'id' => 'invoice_ref_no', 'placeholder' => 'Refrence Number', 'onchange' => 'calculategst(this)', 'data-name' => 'invoice_ref_no', 'data-group' => 'invoice_items', 'required' => true]) }}
                                                                        </td>

                                                                        <td class="adjust_col">
                                                                            {{ Form::select('expense_id', $expense_data, old('invoice_items')[$loop->index]['expense_id'] ?? $items->expense_id, ['data-id' => 'particular', 'id' => 'expense_id', 'placeholder' => 'Select Particular', 'data-name' => 'particular', 'class' => 'form-control  particular typeahead', 'autocomplete' => 'off', 'required' => true]) }}
                                                                        </td>


                                                                        <td class="adjust_col">
                                                                            {{ Form::select('bsplstype_id', [], old('invoice_items')[$loop->index]['bsplstype_id'] ?? $items->bsplstype_id, ['class' => 'form-control  bsplstype_id', 'placeholder' => 'Select Type', 'onchange' => 'calculategst(this)', 'data-name' => 'bsplstype_id', 'data-group' => 'invoice_items', 'readonly' => true]) }}
                                                                        </td>
                                                                        <td class="adjust_col">
                                                                            {{ Form::select('bsplsubcat_id', [], old('invoice_items')[$loop->index]['bsplsubcat_id'] ?? $items->bsplsubcat_id, ['class' => 'form-control  bsplsubcat_id', 'placeholder' => 'Select Expense Sub-Categroy', 'data-name' => 'bsplsubcat_id', 'readonly' => true]) }}
                                                                        </td>
                                                                        <td class="adjust_col">
                                                                            {{ Form::select('bsplcat_id', [], old('invoice_items')[$loop->index]['bsplcat_id'] ?? $items->bsplcat_id, ['class' => 'form-control  bsplcat_id', 'placeholder' => 'Select Expense Category', 'onchange' => 'calculategst(this)', 'data-name' => 'bsplcat_id', 'data-group' => 'invoice_items', 'readonly' => true]) }}
                                                                        </td>

                                                                        <td class="adjust_col">
                                                                            {{ Form::select('bsplheads_id', [], old('invoice_items')[$loop->index]['bsplheads_id'] ?? $items->bsplheads_id, ['class' => 'form-control  bsplheads_id', 'id' => 'bsplheads_id', 'placeholder' => 'Select Head', 'onchange' => 'calculategst(this)', 'data-name' => 'bsplheads_id', 'data-group' => 'invoice_items', 'readonly' => true]) }}
                                                                        </td>

                                                                        <td class="adjust_col">
                                                                            {{ Form::select('gl_code', [], old('invoice_items')[$loop->index]['gl_code'] ?? $items->gl_code, ['class' => 'form-control  gl_code', 'id' => 'gl_code', 'onchange' => 'calculategst(this)', 'placeholder' => 'Select GL Code', 'data-name' => 'gl_code', 'data-group' => 'invoice_items', 'readonly' => true]) }}
                                                                        </td>
                                                                        <td>{{ Form::text('old_invoice_items[' . $loop->index . '][amount]', $items->amount, ['class' => 'form-control  total', 'onchange' => 'calculategst(this)', 'data-name' => 'total', 'data-group' => 'invoice_items', 'required' => true]) }}
                                                                        </td>
                                                                        <td style="width: 130px;">
                                                                            @php
                                                                                $disable = true;
                                                                                if (old('party_id')) {
                                                                                    $disable = false;
                                                                                }
                                                                            @endphp
                                                                            {{ Form::select('gst_rate', $gst, old('invoice_items')[$loop->index]['gst_rate'] ?? $items->gst_rate, ['class' => 'form-control gst_type gst_dropdown', 'placeholder' => 'Select GST', 'onchange' => 'calculategst(this)', 'data-name' => 'gst_rate', 'data-group' => 'invoice_items', 'required' => true]) }}
                                                                        </td>

                                                                        <td>
                                                                            {{ Form::text('old_invoice_items[' . $loop->index . '][cgst_rate]', $items->cgst_rate, ['class' => 'form-control custom-rate all_gst', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'cgst_rate', 'data-group' => 'old_invoice_items', 'readonly' => true]) }}
                                                                        </td>
                                                                        <td>
                                                                            {{ Form::text('old_invoice_items[' . $loop->index . '][sgst_utgst_rate]', $items->sgst_utgst_rate, ['class' => 'form-control custom-rate all_gst', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'sgst_utgst_rate', 'data-group' => 'old_invoice_items', 'readonly' => true]) }}
                                                                        </td>
                                                                        <td>
                                                                            {{ Form::text('old_invoice_items[' . $loop->index . '][igst_rate]', $items->igst_rate, ['class' => 'form-control custom-rate all_gst', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'igst_rate', 'data-group' => 'old_invoice_items', 'readonly' => true]) }}
                                                                        </td>

                                                                        <td class="d-none">
                                                                            {{ Form::text('gst_amount', old('invoice_items')[$loop->index]['gst_amount'] ?? null, ['class' => 'form-control  gst_amount', 'onchange' => 'calculategst(this)', 'data-name' => 'gst_amount', 'data-group' => 'invoice_items', 'required' => true, 'readonly' => true]) }}
                                                                        </td>

                                                                        <td>{{ Form::text('old_invoice_items[' . $loop->index . '][total_value]', $items->total_value, ['class' => 'form-control gross_total', 'onchange' => 'calculategst(this)', 'data-name' => 'gross_total', 'data-group' => 'invoice_items', 'readonly' => true]) }}
                                                                        </td>

                                                                        <td><button type='button'
                                                                                class='btn btn-danger btn-flat btn-xs old_rep_item_del'
                                                                                data-repeater-delete><i
                                                                                    class='fa fa-fw fa-remove'></i></button>
                                                                        </td>


                                                                    </tr>
                                                                @endforeach





                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </section>

                                    </div>





                                    <div class="col-sm-12">
                                        {{-- <hr> --}}
                                    </div>
                                </div>

                                <div class="row">


                                    <div class="col-md-2 col-sm-12">
                                        <p>Net Total <strong><span class="total_amount">0</span></strong></p>
                                    </div>
                                    <div class="col-md-2 col-sm-12">
                                        <p>Tax: <strong><span class="gst_total">0</span></strong></p>
                                    </div>
                                    <div class="col-md-2 col-sm-12">
                                        <p>Gross Total: <strong><span class="gross_total">0</span></strong></p>
                                    </div>
                                </div>


                                <div class="col-sm-12 d-flex justify-content-center">
                                    {{ Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1']) }}
                                    <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                                </div>
                                {{ Form::close() }}
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
    </div>
    </div>

    @include('backend.autocomplete_typeahead_script')

    {{-- dependent dropdown for head,cat,sub-cat,type --}}
    {{-- dependent dropdown for head,cat,sub-cat,type --}}

    <script>
        // Function to get expense data and populate dropdowns for a given row
        function getExpenseData(expense_id, $currentRow) {
            $.ajax({
                method: 'POST',
                headers: {
                    'X-CSRF-Token': '{{ csrf_token() }}',
                },
                url: '{{ route('admin.get_expense') }}',
                data: {
                    id: expense_id
                },
                dataType: 'json',
                success: function(data) {

                    if (data) {
                        // alert('asf');
                        var expenseData = data; // Assuming data is in the expected format

                        populateDropdowns($currentRow, expenseData);
                    } else {
                        // Handle server response errors
                    }
                },
                error: function(xhr, status, error) {
                    // Handle AJAX errors
                }
            });
        }

        // Function to populate dropdowns for a given row
        function populateDropdowns($currentRow, expenseData) {
            // Populate dropdowns directly as in your original code
            $currentRow.find('.bsplstype_id').html('<option value=' + expenseData.get_type.bsplstype_id +
                ' selected>' + expenseData.get_type.bspl_type_name + '</option>');
            $currentRow.find('.bsplsubcat_id').html('<option value=' + expenseData.get_sub_cat.bsplsubcat_id +
                ' selected>' + expenseData.get_sub_cat.bspl_subcat_name + '</option>');
            $currentRow.find('.bsplcat_id').html('<option value=' + expenseData.get_cat.bsplcat_id +
                ' selected>' + expenseData.get_cat.bspl_cat_name + '</option>');
            $currentRow.find('.bsplheads_id').html('<option value=' + expenseData.get_heads.bsplheads_id +
                ' selected>' + expenseData.get_heads.bspl_heads_name + '</option>');
            $currentRow.find('#gl_code').html('<option value=' + expenseData.get_gl.gl_code + ' selected>' +
                expenseData.get_gl.gl_code + '</option>');
        }

        // Iterate through each row on page load (ready)
        $(document).ready(function() {

            calculate_grand_total();

            $('.item_row').each(function() {
                var $currentRow = $(this);
                var expense_id = $currentRow.find('.particular').val();
                getExpenseData(expense_id, $currentRow);
            });
        });

        $(document).on('change', '.item_row .particular', function() {
            var expense_id = $(this).val();
            var $currentRow = $(this).closest('.item_row'); // Get the current row

            // Find the dependent dropdown within the current row
            var $bsplstypeDropdown = $currentRow.find('.bsplstype_id');
            var $bsplsubcatDropdown = $currentRow.find('.bsplsubcat_id');
            var $bsplcatDropdown = $currentRow.find('.bsplcat_id');
            var $bsplheadsDropdown = $currentRow.find('.bsplheads_id');
            var $glCodeDropdown = $currentRow.find('#gl_code');

            getExpenseData(expense_id, $currentRow);
        });
    </script>

    <script>
        $(document).ready(function() {
            $('.repeater').repeater({
                isFirstItemUndeletable: false,
                // initEmpty: false,
            });



        });
    </script>




    <script>
        function get_data_display(customer_id) {

            // alert(customer_id);

            $.get(APP_URL + '/admin/purchaseorder/partydetails/' + customer_id, {}, function(
                response) {
                var customer_details = $.parseJSON(response);
                // console.log(customer_details);
                if (customer_details) {
                    $(".party").html(customer_details.party_detail);
                    $(".party_input").val(customer_details.party_detail);
                    $(".bill_to_state").val(customer_details.bill_to_state);
                    $(".party_state").val(customer_details.party_state);
                    $(".bill_to_gst_no").val(customer_details.bill_to_gst_no);
                    $(".party_name").val(customer_details.party_name);

                    // alert(customer_details.bill_to_state);
                    // alert(customer_details.party_state);
                    if (customer_details.bill_to_state != '' && customer_details.party_state != '') {
                        $(".gst_dropdown").prop('disabled', false);
                    }

                } else {
                    // alert('nop res');
                    $(".pary").html("");
                    $(".party_input").val('');
                    $(".bill_to_state").val('');
                    $(".party_state").val('');
                }
            });

        }
        $(document).ready(function() {


            var customer_id = $('#party_id option:selected').val();
            if (customer_id != "") {
                get_data_display(customer_id);
            }
            $("#party_id").on('change', function() {
                $(".gst_dropdown").val('');
                $(".all_gst").val('');
                var customer_id = $(this).val();
                // alert(customer_id);
                if (customer_id != '') {
                    get_data_display(customer_id);
                }
            });


        });
    </script>

@endsection
