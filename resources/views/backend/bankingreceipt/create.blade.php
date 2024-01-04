@extends('backend.layouts.app')
@section('title', 'Create Banking Receipt ')

@section('content')
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title"> Banking Receipt </h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active"> Banking Receipt </li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a href="{{ route('admin.bankingreceipt') }}" class="btn btn-outline-secondary float-right"><i
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
                                {{ Form::open(['url' => 'admin/bankingreceipt/store']) }}

                                <div class="form-body">


                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="col-md-12 col-sm-12">

                                                    </div>

                                                    <div class="col-md-12 col-sm-12">
                                                        <div class="form-group">
                                                            {{ Form::label('vendor_code', 'Transaction Type *') }}
                                                            {{ Form::select('vendor_code', ['neft' => 'NEFT', 'imps' => 'IMPS', 'rtgs' => 'RTGS'], null, ['class' => 'form-control', 'placeholder' => 'Transaction Type']) }}
                                                        </div>
                                                    </div>
                                                    {{-- <div class="col-md-12 col-sm-12">
                                                        <div class="form-group">
                                                            {{ Form::label('vendor_name', 'Overdue Range') }}
                                                            {{ Form::text('vendor_name', null, ['class' => 'form-control remarks', 'placeholder' => 'Overdue Range', 'required' => true]) }}
                                                        </div>
                                                    </div> --}}
                                                    <div class="col-md-12 col-sm-12">
                                                        <div class="form-group">
                                                            {{ Form::label('invoice_ref_no', 'Receipt Type') }}
                                                            {{ Form::select('invoice_ref_no', ['goods' => 'Goods', 'service' => 'Service'], null, ['class' => 'form-control remarks', 'placeholder' => 'Select Receipt Type', 'required' => true]) }}
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="col-sm-12">
                                                        <div class="col-md-12 col-sm-12">
                                                            <div class="form-group">
                                                                {{ Form::label('party_id', 'Customer *') }}
                                                                {{ Form::select('party_id', $party, null, ['class' => 'form-control select2', 'id' => 'party_id', 'placeholder' => 'Select Customer', 'required' => true]) }}
                                                            </div>
                                                        </div>

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
                                            <div class="form-group">
                                                @php
                                                    use App\Models\backend\SeriesMaster;
                                                    $series_numbers = SeriesMaster::pluck('series_number', 'id');
                                                @endphp
                                                {{ Form::label('series_no', 'Series Number') }}
                                                {{ Form::select('series_no', $series_numbers, null, ['class' => 'form-control ship_from', 'placeholder' => 'Select Series Number', 'required' => true]) }}
                                            </div>
                                            <div class="form-group">
                                                {{ Form::label('doc_no', 'Doc Number') }}
                                                {{ Form::text('doc_no', null, ['class' => 'form-control ship_from', 'placeholder' => 'Doc Number', 'readonly' => true]) }}
                                            </div>
                                            <div class="form-group">

                                                {{ Form::label('posting_date', 'Posting Date') }}
                                                {{ Form::date('posting_date', date('Y-m-d'), ['class' => 'form-control ship_from', 'placeholder' => 'Posting Date', 'required' => true, 'readonly' => true]) }}
                                            </div>
                                        </div>

                                        {{-- </div> --}}
                                    </div>


                                    <section id="form-repeater-wrapper">
                                        <hr>
                                        <div class="repeater">
                                            <button type="button" data-repeater-create
                                                class="btn btn-primary pull-right mb-2 add_btn_rep">Add</button>
                                            <div class="table-responsive">
                                                <table class="table table-bordered table-responsive" id="repeater">
                                                    <thead class="bg-light" style="font-size:10px;">
                                                        <tr>
                                                            <td>{{ Form::label('item_name', 'Particular',['class' => 'd-block', 'style' => 'width:130px']) }}
                                                            </td>
                                                            <td>{{ Form::label('item_name', 'Description',['class' => 'd-block', 'style' => 'width:130px']) }}
                                                            </td>
                                                            <td>{{ Form::label('item_name', 'Ref. Transaction ID',['class' => 'd-block', 'style' => 'width:130px']) }}
                                                            </td>
                                                            <td>{{ Form::label('hsn_sac', 'Paymnet Type',['class' => 'd-block', 'style' => 'width:100px']) }}</td>
                                                            <td>{{ Form::label('qty', 'Expense',['class' => 'd-block', 'style' => 'width:130px']) }}</td>
                                                            <td>{{ Form::label('taxable_amount', 'GL Name',['class' => 'd-block', 'style' => 'width:100px']) }}
                                                            </td>
                                                            <td>{{ Form::label('discount', 'Amount',['class' => 'd-block', 'style' => 'width:70px']) }}</td>
                                                            <td>{{ Form::label('price_af_discount', 'CGST',['class' => 'd-block', 'style' => 'width:70px']) }}
                                                            </td>
                                                            <td>{{ Form::label('total', 'SGST',['class' => 'd-block', 'style' => 'width:70px']) }}</td>

                                                            <td>{{ Form::label('Amount', 'IGST',['class' => 'd-block', 'style' => 'width:70px']) }}</td>
                                                            <td>{{ Form::label('gross_total', 'Total Value',['class' => 'd-block', 'style' => 'width:70px']) }}
                                                            </td>

                                                            <td></td>

                                                        </tr>
                                                    </thead>
                                                    <tbody data-repeater-list="invoice_items">


                                                        <tr data-repeater-item class="item_row">
                                                            {{ Form::hidden('bill_to_state', null, ['class' => 'form-control bill_to_state', 'onchange' => 'calculategst(this)', 'data-name' => 'bill_to_state', 'data-group' => 'invoice_items', 'required' => true]) }}
                                                            {{ Form::hidden('party_state', null, ['class' => 'form-control party_state', 'onchange' => 'calculategst(this)', 'data-name' => 'party_state', 'data-group' => 'invoice_items', 'required' => true]) }}

                                                            {{ Form::hidden('cgst_rate', null, ['class' => 'form-control custom-rate', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'cgst_rate', 'data-group' => 'invoice_items']) }}
                                                            {{ Form::hidden('cgst_amount', null, ['class' => 'form-control custom-amount cgst_amount', 'placeholder' => 'Amt.', 'onchange' => 'calculategst(this)', 'data-name' => 'cgst_amount', 'data-group' => 'invoice_items']) }}

                                                            {{ Form::hidden('sgst_utgst_rate', null, ['class' => 'form-control custom-rate', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'sgst_utgst_rate', 'data-group' => 'invoice_items']) }}
                                                            {{ Form::hidden('sgst_utgst_amount', null, ['class' => 'form-control custom-amount sgst_utgst_amount', 'placeholder' => 'Amt.', 'onchange' => 'calculategst(this)', 'data-name' => 'sgst_utgst_amount', 'data-name' => 'sgst_utgst_amount', 'data-group' => 'invoice_items']) }}

                                                            {{ Form::hidden('igst_rate', null, ['class' => 'form-control custom-rate', 'placeholder' => '%', 'onchange' => 'calculategst(this)', 'data-name' => 'igst_rate', 'data-group' => 'invoice_items']) }}
                                                            {{ Form::hidden('igst_amount', null, ['class' => 'form-control custom-amount igst_amount', 'placeholder' => 'Amt.', 'onchange' => 'calculategst(this)', 'data-name' => 'igst_amount', 'data-group' => 'invoice_items']) }}

                                                            <td>{{ Form::select('particular', [], null, ['data-id' => 'particular', 'id' => 'particular', 'placeholder' => 'Select Particular', 'data-name' => 'particular', 'class' => 'form-control  particular typeahead', 'autocomplete' => 'off', 'required' => true]) }}
                                                            </td>

                                                            <td>{{ Form::text('item_name', null, ['data-id' => 'item_name', 'id' => 'item_name', 'data-name' => 'item_name', 'class' => 'form-control  item_name typeahead', 'autocomplete' => 'off', 'required' => true]) }}
                                                            </td>
                                                            <td>{{ Form::text('item_name', null, ['data-id' => 'item_name', 'id' => 'item_name', 'data-name' => 'item_name', 'class' => 'form-control  item_name typeahead', 'autocomplete' => 'off', 'required' => true]) }}
                                                            </td>
                                                            <td>{{ Form::select('hsn_sac', ['card' => 'Card', 'online' => 'Online', 'cheque' => 'Cheque', 'upi' => 'UPI'], null, ['class' => 'form-control  hsn_sac', 'placeholder' => 'Select Payemnt Type', 'data-name' => 'hsn_sac', 'required' => true]) }}
                                                            </td>
                                                            <td> {{ Form::select('qty', [], null, ['class' => 'form-control  qty', 'placeholder' => 'Select Expense', 'onchange' => 'calculategst(this)', 'data-name' => 'qty', 'data-group' => 'invoice_items', 'required' => true]) }}
                                                            </td>
                                                            <td>{{ Form::select('taxable_amount', [], null, ['class' => 'form-control  taxable_amount', 'placeholder' => 'Select GL', 'onchange' => 'calculategst(this)', 'data-name' => 'taxable_amount', 'data-group' => 'invoice_items', 'required' => true]) }}
                                                            </td>
                                                            <td>{{ Form::text('discount_item', null, ['class' => 'form-control  discount_item', 'id' => 'discount_item', 'onchange' => 'calculategst(this)', 'data-name' => 'discount_item', 'data-group' => 'invoice_items']) }}
                                                            </td>
                                                            <td>{{ Form::text('price_af_discount', null, ['class' => 'form-control  price_af_discount', 'onchange' => 'calculategst(this)', 'data-name' => 'price_af_discount', 'data-group' => 'invoice_items']) }}
                                                            </td>
                                                            <td>{{ Form::text('total', null, ['class' => 'form-control  total', 'onchange' => 'calculategst(this)', 'data-name' => 'total', 'data-group' => 'invoice_items', 'required' => true]) }}
                                                            </td>

                                                            <td>{{ Form::text('gst_amount', null, ['class' => 'form-control  gst_amount', 'onchange' => 'calculategst(this)', 'data-name' => 'gst_amount', 'data-group' => 'invoice_items', 'required' => true]) }}
                                                            </td>
                                                            <td>{{ Form::text('gross_total', null, ['class' => 'form-control gross_total', 'onchange' => 'calculategst(this)', 'data-name' => 'gross_total', 'data-group' => 'invoice_items', 'required' => true]) }}
                                                            </td>

                                                            <td><button type='button'
                                                                    class='btn btn-danger btn-flat btn-xs old_rep_item_del'
                                                                    data-repeater-delete><i
                                                                        class='fa fa-fw fa-remove'></i></button>
                                                            </td>


                                                        </tr>





                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </section>

                         

                                <div class="row">


                                    <div class="col-md-2 col-sm-12">
                                        <p>Net Total <strong><span class="">0</span></strong></p>
                                    </div>
                                    <div class="col-md-2 col-sm-12">
                                        <p>Tax: <strong><span class="">0</span></strong></p>
                                    </div>
                                    <div class="col-md-2 col-sm-12">
                                        <p>Gross Total: <strong><span class="">0</span></strong></p>
                                    </div>
                                </div>


                                <hr>
                                <h3>Banking Details</h3>
                                <br>


                                <div class="col-md-3 col-sm-12">
                                    <div class="form-group">
                                        {{ Form::label('bank', 'Select Bank') }}
                                        {{ Form::select('bank', $banks, null, ['class' => 'form-control', 'id' => 'bank_id', 'placeholder' => 'Select Bank', 'data-name' => 'hsn_sac', 'required' => true]) }}
                                    </div>
                                </div>



                                <div class="col-md-3 col-sm-12">
                                    <div class="form-group">
                                        {{ Form::label('account_no', 'Account Number') }}
                                        {{-- <select name="account_no" id="account_no" class="form-control"></select> --}}
                                        <input type="text" name="account_no" id="account_no" class="form-control"
                                            placeholder="Account Number" readonly>
                                        {{-- {{ Form::text('gl_name', null, ['class' => 'form-control', 'placeholder' => 'Acoount Number', 'data-name' => 'hsn_sac', 'required' => true]) }} --}}
                                    </div>
                                </div>


                                <div class="col-md-3 col-sm-12">
                                    <div class="form-group">
                                        {{ Form::label('bank_branch', 'Bank Branch') }}
                                        <input type="text" name="bank_branch" id="bank_branch" class="form-control"
                                            placeholder="Bank Branch" readonly>
                                        {{-- {{ Form::text('gl_name', null, ['class' => 'form-control', 'placeholder' => 'Bank Branch', 'data-name' => 'hsn_sac', 'required' => true]) }} --}}
                                    </div>
                                </div>


                                <div class="col-md-3 col-sm-12">
                                    <div class="form-group">
                                        {{ Form::label('bank_ifsc', 'Bank IFSC') }}
                                        <input type="text" name="bank_ifsc" id="bank_ifsc" class="form-control"
                                            placeholder="Bank IFSC" readonly>

                                        {{-- {{ Form::text('gl_name', null, ['class' => 'form-control', 'placeholder' => 'Bank IFSC', 'data-name' => 'hsn_sac', 'required' => true]) }} --}}
                                    </div>
                                </div>







                                <div class="col-sm-12">
                                    {{-- <hr> --}}
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
                var customer_id = $(this).val();
                // alert(customer_id);
                if (customer_id != '') {
                    get_data_display(customer_id);
                }
            });

            // $("#bill_to").on('change',function() {
            //     var customer_id = $(this).val();
            //     if (customer_id != '') {
            //         $.get(APP_URL + '/admin/goodsservicereceipts/partydetails/' + customer_id, {}, function(
            //             response) {
            //             var customer_details = $.parseJSON(response);
            //             $(".party").html(customer_details.party_detail);

            //             $(".party_input").val(customer_details.party_detail);
            //             $(".bill_to_state").val(customer_details.bill_to_state);
            //             $(".party_state").val(customer_details.party_state);
            //             $(".bill_to_gst_no").val(customer_details.bill_to_gst_no);
            //         });
            //     } else {
            //         $(".party").html("");

            //         $(".party_input").val('');
            //         $(".bill_to_state").val('');
            //         $(".party_state").val('');
            //     }
            // });
            $(document).on('change', '.storage_locations', function() {
                var parent_div = $(this).parents()[2];
                var suffix = $(this).attr('name');
                // $('.modal').modal('show');
                // console.log('item-content', $(this).closest('.item-content'));
                $(this).closest('.item-content').find('.modal').modal('show');
                // console.log('modal', $(this).closest('.item-content').find('.modal'));
            });

            //old row delete button
            $('.old_row_delete').click(function() {
                let delete_row_id = $(this).attr('id');
                // alert(delete_row_id);
                let cnf = confirm('are you sure, do you want to delete these records');
                if (cnf) {
                    $('#old_row_' + delete_row_id).remove();
                    // &('.data-repeater-item').hide();
                }
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            /* Create Repeater */
            $("#repeater").createRepeater({
                showFirstItemToDefault: true,
            });
            console.log('test');
            calculate_grand_total();
        });

        $("#discount").on('change', function() {
            calculate_grand_total();
        });
    </script>

    <script>
        $(document).ready(function() {
            $('.repeater').repeater({
                isFirstItemUndeletable: true,
                // initEmpty: false,
            });


        });
    </script>

    {{-- dependent dropdown for head,cat,sub-cat,type --}}
    <script>
        // area_field
        function get_all_bspl_data(route, id, appendid, placeholder, edit_id = null, old_val = null) {
            // alert(id);

            $('#account_no').val('');
            $('#bank_branch').val('');
            $('#bank_ifsc').val('');
            if (appendid == 'account_no') {

                $.ajax({
                    method: 'post',
                    headers: {
                        'X-CSRF-Token': '{{ csrf_token() }}',
                    },
                    url: route,
                    data: {
                        id: id
                    },
                    dataType: 'json',
                    success: function(data) {
                        console.log(data);
                        if (data != '') {
                            // $.each(data, function(key, value) {
                            $('#' + appendid).val(data.ac_number);
                            $('#bank_branch').val(data.bank_branch);
                            $('#bank_ifsc').val(data.ifsc);
                            // });
                        } else {
                            $('#' + appendid).html('<option value="">' + placeholder + '</option>');
                        }

                    }
                });
            } else {
                $('#' + appendid).html('<option value="">' + placeholder + '</option>');
                $.ajax({
                    method: 'post',
                    headers: {
                        'X-CSRF-Token': '{{ csrf_token() }}',
                    },
                    url: route,
                    data: {
                        id: id
                    },
                    dataType: 'json',
                    success: function(data) {
                        console.log(data);
                        if (data != '') {
                            $.each(data, function(key, value) {

                                if (old_val == key) {
                                    $("#" + appendid).append('<option value="' + old_val +
                                        '" selected>' + value + '</option>');
                                } else if (edit_id == key) {
                                    $("#" + appendid).append('<option value="' + edit_id +
                                        '" selected>' + value + '</option>');
                                } else {
                                    $("#" + appendid).append('<option value="' + key +
                                        '">' + value + '</option>');
                                }
                            });
                        } else {
                            $('#' + appendid).html('<option value="">' + placeholder + '</option>');
                        }

                    }
                });
            }
        }
        $(document).ready(function() {
            // $('#bank_id').html('<option value="">Select Bank</option>');
            $('#account_no').html('<option value="">Select Acoount Number</option>');


            //on edit data for area and route
            var party_id = $('#party_id :selected').val();
            var bank_id = <?php echo isset($model->bank_id) ? $model->bank_id : 0; ?>;
            var account_no = <?php echo isset($model->account_no) ? $model->account_no : 0; ?>;

            var old_bank_id = <?php echo json_encode(old('bank_id')); ?>;
            var old_account_no = <?php echo json_encode(old('account_no')); ?>;

            var old_val = '';
            var route = '';
            var appendid = '';
            var placeholder = '';
            var edit_id = '';

            // get details on edit
            // if (party_id || old_bank_id) {
            //     route = '{{ route('admin.bank') }}';
            //     appendid = 'bank_id';
            //     placeholder = 'Select Bank';
            //     edit_id = bank_id;
            //     old_val = old_bank_id;
            //     if (bank_id == 0) {
            //         bank_id = old_bank_id;
            //     }

            //     get_all_bspl_data(route, party_id, appendid, placeholder, edit_id, old_val);
            // }
            if (bank_id || old_account_no) {
                route = '{{ route('admin.bankacc') }}';
                appendid = 'account_no';
                placeholder = 'Select Account Number';
                edit_id = account_no;
                old_val = old_account_no;
                if (account_no == 0) {
                    account_no = old_account_no;
                }

                get_all_bspl_data(route, account_no, appendid, placeholder, edit_id, old_val);
            }



            //on create data 
            $('#bank_id').on('change', function() {
                var id = $(this).val();
                var idname = this.id;

                if (idname == 'party_id') {
                    route = '{{ route('admin.bank') }}';
                    appendid = 'bank_id';
                    placeholder = 'Select Bank';
                } else if (idname == 'bank_id') {
                    route = '{{ route('admin.bankacc') }}';
                    appendid = 'account_no';
                    placeholder = 'Select Account Number';
                }

                // if (id) {
                get_all_bspl_data(route, id, appendid, placeholder);
                // }

            });







        });
    </script>


    @include('backend.purchaseorder.autocomplete_typeahead_script')

@endsection
