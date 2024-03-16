@extends('backend.layouts.app')
@section('title', 'Add Sales Return / Credit Note')

@section('content')
    @php
        use App\Models\backend\Company;
        use App\Models\backend\Products;
    @endphp
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Add Sales Return / Credit Note</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Add Sales Return / Credit Note</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a class="btn btn-outline-secondary" href="{{ route('admin.returninvoice') }}">
                        Back
                    </a>
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
                                {{ Form::model([], ['url' => 'admin/returninvoice/update', 'class' => 'w-100']) }}
                                {{ Form::hidden('bill_to_state', null, ['class' => 'bill_to_state']) }}
                                {{ Form::hidden('party_state', null, ['class' => 'party_state']) }}
                                {{ Form::hidden('bill_to_gst_no', null, ['class' => 'bill_to_gst_no']) }}
                                <div class="form-body">

                                <div class="row">
                                    <div class="col-md-4 col-sm-4">
                                        <div class="form-group">
                                        {{ Form::label('bp_id', 'Business Partner') }}
                                        {{ Form::select('bp_id', $bp_data, null, [
                                            'class' => 'form-control select2',
                                            'placeholder' => 'Select Business Partner',
                                            'required' => true,
                                            ]) }}
                                        </div>
                                    </div>
                                    <div class="col-md-4"></div>

                                    <div class="col-md-4 col-sm-4">
                                        <div class="form-group">
                                            {{ Form::label('doc_date', 'Document Date *') }}
                                            {{ Form::date('doc_date', date('Y-m-d'), [
                                            'class' => 'form-control',
                                            'required' => true,
                                            ]) }}
                                        </div>
                                    </div>

                                </div>
                                <div class="row">

                                    <div class="col-md-4 col-sm-4">
                                        <div class="form-group">
                                            {{ Form::label('inv_no', 'Invoice *') }}
                                            {{ Form::select('inv_no', $invocies, null, [
                                            'class' => 'form-control select2',
                                            'placeholder' => 'Select Invoice',
                                            'required' => true,
                                            ]) }}
                                        </div>
                                    </div>
                                    <div class="col-md-4"></div>

                                    <div class="col-md-4 col-sm-4">
                                        <div class="form-group">
                                            {{ Form::label('return_no', 'Credit Invoice Number *') }}
                                            {{ Form::text('return_no', null, [
                                            'class' => 'form-control',
                                            'placeholder' => 'Enter Invoice Number',
                                            'required' => true,
                                            ]) }}
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-4 col-sm-4">
                                        <div class="form-group">
                                            {{ Form::label('t_type', 'Transaction Type *') }}
                                            {{ Form::select('t_type', ['with_inv'=>'With Inventory',
                                            'without_inv'=>'Without Inventory'], null, [
                                            'class' => 'form-control select2',
                                            'required' => true,
                                            ]) }}
                                        </div>
                                    </div>
                                    <div class="col-md-4"></div>

                                    <div class="col-md-4 col-sm-4 d-none doc_no">
                                        <div class="form-group">
                                            {{ Form::label('doc_no', 'Doc Numer *') }}
                                            {{ Form::text('doc_no', null, [
                                            'class' => 'form-control ',
                                            'readonly' => true,
                                            ]) }}
                                        </div>
                                    </div>
                                </div>
                                    

                                    <h5 class="text-center">Invoice Items</h5>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-12 mb-3">
                                            <section id="form-repeater-wrapper">
                                                <!-- form default repeater -->
                                                <div class="row">
                                                    <div class="col-12">


                                                        {{-- This is Repeater --}}
                                                        <div class="conatiner-fluid table-responsive repeater">
                                                         
                                                            <div class="table-responsive">
                                                                <table class="table table-bordered " id="repeater"
                                                                    style="width:100%;">
                                                                    <thead class="bg-light" style="font-size:10px;">
                                                                        <tr>
                                                                            <td>
                                                                                {{ Form::label('item_code', 'Item Code') }}
                                                                            </td>
                                                                            <td>
                                                                                {{ Form::label('item_name', 'Item Description') }}
                                                                            </td>
                                                                            <td>
                                                                                {{ Form::label('hsn_sac', 'HSN/SAC') }}
                                                                            </td>
                                                                            <td>{{ Form::label('qty', 'Quantity') }}</td>
                                                                            <td>{{ Form::label('taxable_amount', 'Unit Price') }}
                                                                            </td>
                                                                            <td>{{ Form::label('total', 'Total INR') }}
                                                                            </td>
                                                                            <td>{{ Form::label('GST', 'GST (%)') }}</td>
                                                                            <td>{{ Form::label('CGST', 'CGST (%)') }}</td>
                                                                            <td>{{ Form::label('SGST', 'SGST (%)') }}</td>
                                                                            <td>{{ Form::label('IGST', 'IGST (%)') }}</td>
                                                                            <td>{{ Form::label('Amount', 'GST Amount') }}
                                                                            </td>
                                                                            <td>{{ Form::label('gross_total', 'Gross Total') }}
                                                                            </td>
                                                                            <td>{{ Form::label('storage_location_id', 'Warehouse') }}
                                                                            </td>
                                                                            <td>{{ Form::label('bacth_id', 'Batch Details') }}
                                                                            </td>
                                                                          

                                                                        </tr>
                                                                    </thead>
                                                                    <tbody data-repeater-list="old_invoice_items">
                                                                       
                                                                    </tbody>

                                                                </table>
                                                            </div>
                                                        </div>



                                                    </div>
                                                </div>

                                            </section>

                                        </div>




                                        <div class="col-sm-12">
                                            <hr>
                                        </div>
                                    </div>
                                    {{-- <hr> --}}

                                    <div class="row">


                                        <div class="col-md-3 col-sm-3">
                                            <div class="form-group">
                                                {{ Form::label('remarks', 'Remarks') }}
                                                {{ Form::textarea('remarks', null, ['class' => 'form-control remarks', 'placeholder' => 'Remarks', 'style' => 'height:100px;']) }}
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-6">
                                        </div>
                                        
                                    </div>

                                    <div class="col-sm-12 d-flex justify-content-center">
                                        {{ Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1', 'id' => 'custom_form']) }}
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




    <script>
        $(document).ready(function() {

            // usama_13-03-2024-fetch inv items
            $('#inv_no').change(function() {

                $.get(APP_URL + '/admin/returninvoice/inv_data/' + $(this).val(), {}, function(
                    response) {
                    var data = $.parseJSON(response);
                    var invoice_data = data.inv_data;
                    var invoice_items = data.inv_items;
                    // console.log(invoice_data);
                    $('tbody[data-repeater-list="old_invoice_items"]').empty();
                    $.each(invoice_items, function(index, item) {
                    var newRow = '<tr data-repeater-item class="item_row item-content">';
                    newRow += '<td><input type="number" name="old_invoice_items[' + index + '][item_code]" value="' + item.item_code + '" class="form-control item_code typeahead readonly"  readonly></td>';
                    newRow += '<td><input type="text" name="old_invoice_items[' + index + '][item_name]" value="' + item.item_name + '" class="form-control item_name typeahead readonly"  readonly></td>';
                    newRow += '<td><input type="text" name="old_invoice_items[' + index + '][hsn_sac]" value="' + item.hsn_sac + '" class="form-control readonly"  readonly></td>';
                    newRow += '<td><input type="number" name="old_invoice_items[' + index + '][qty]" value="' + item.qty + '" class="form-control qty" required></td>';
                    newRow += '<td><input type="number" name="old_invoice_items[' + index + '][taxable_amount]" value="' + item.taxable_amount + '" class="form-control taxable_amount readonly" required readonly></td>';
                    newRow += '<td><input type="number" name="old_invoice_items[' + index + '][total]" value="' + item.total + '" class="form-control total readonly"  readonly></td>';
                    
                    newRow += '<td><input type="number" name="old_invoice_items[' + index + '][gst_rate]" value="' + item.gst_rate + '" class="form-control gst_rate "  readonly></td>';
                    newRow += '<td><input type="number" name="old_invoice_items[' + index + '][cgst_rate]" value="' + item.cgst_rate + '" class="form-control cgst_rate "  readonly></td>';
                    newRow += '<td><input type="number" name="old_invoice_items[' + index + '][sgst_utgst_rate]" value="' + item.sgst_utgst_rate + '" class="form-control sgst_utgst_rate "  readonly></td>';
                    newRow += '<td><input type="number" name="old_invoice_items[' + index + '][igst_rate]" value="' + item.igst_rate + '" class="form-control igst_rate "  readonly></td>';
                    newRow += '<td><input type="number" name="old_invoice_items[' + index + '][gst_amount]" value="' + item.gst_amount + '" class="form-control gst_amount "  readonly></td>';
                    newRow += '<td><input type="number" name="old_invoice_items[' + index + '][gross_total]" value="' + item.gross_total + '" class="form-control gross_total "  readonly></td>';
                    newRow += '<td><input type="number" name="old_invoice_items[' + index + '][storage_location_id]" value="' + item.storage_location_id + '" class="form-control storage_location_id "  readonly></td>';
                    newRow += '<td><input type="number" name="old_invoice_items[' + index + '][batch_no]" value="' + item.batch_no + '" class="form-control batch_no "  readonly></td>';
                    // Add more columns as needed

                    // Append the new row to the tbody
                    $('tbody[data-repeater-list="old_invoice_items"]').append(newRow);

                    $('#bp_id').val(invoice_data.party_name);
                });
                
                });
            });
       

            let itemIndex;

            $('#custom_form').click(function(e) {
                let items = $('.item_row');
                let flag;

                for (let i = 0; i < items.length; i++) {
                    var batchNo = document.querySelector(`#old_invoice_items_${i}_batch_no`);
                    var manufacturing_date = document.querySelector(
                        `#old_invoice_items_${i}_manufacturing_date`);
                    var expiry_date = document.querySelector(`#old_invoice_items_${i}_expiry_date`);

                    if (batchNo || manufacturing_date || expiry_date) {
                        if (batchNo.value === '') {
                            flag = 'Batch Number';
                            itemIndex = i;
                            break;
                        } else if (manufacturing_date.value === '') {
                            flag = 'Manufacturing Date';
                            itemIndex = i;
                            break;
                        } else if (expiry_date.value === '') {
                            flag = 'Expiry Date';
                            itemIndex = i;
                            break;
                        }
                    }
                }
                ++itemIndex;
                if (flag) {
                    // alert(`${flag} required for item ${itemIndex}`);
                    Swal.fire({
                        position: "top-end",
                        icon: "error",
                        title: `${flag} required for item ${itemIndex}`,
                        showConfirmButton: false,
                        timer: 1500
                    });
                }
            });

        });
    </script>


    <script>
        function get_data_display(customer_id) {

            // alert(customer_id);

            $.get(APP_URL + '/admin/goodsservicereceipts/partydetails/' + customer_id, {}, function(
                response) {
                var customer_details = $.parseJSON(response);
                // console.log(customer_details);
                if (customer_details) {
                    $(".party").html(customer_details.party_detail);
                    $(".party_input").val(customer_details.party_detail);
                    $(".bill_to_state").val(customer_details.bill_to_state);
                    $(".party_state").val(customer_details.party_state);
                    $(".bill_to_gst_no").val(customer_details.bill_to_gst_no);
                } else {
                    alert('nop res');
                    $(".pary").html("");
                    $(".party_input").val('');
                    $(".bill_to_state").val('');
                    $(".party_state").val('');
                }
            });

        }
        $(document).ready(function() {

            var customer_id = $('#bp_id option:selected').val();
            // alert(customer_id);
            if (customer_id) {
                get_data_display(customer_id);
            }
            $("#bp_id").on('change', function() {

                 // usama_12-03-2024-fetch company of party and then make doc number
                $('.doc_no').removeClass('d-none');
                $.ajax({
                    method: 'post',
                    headers: {
                        'X-CSRF-Token': '{{ csrf_token() }}',
                    },
                    url: '{{ route('admin.get_doc_number') }}',
                    data: {
                        id: '{{$series_no}}',
                                party_id: $(this).val(),
                    },
                    // dataType: 'json',
                    success: function(data) {
                        var matches = data.match(/(\d+)$/);
                        var currentNumber = matches ? parseInt(matches[1], 10) : 0;
                        var newNumber = currentNumber + 1;
                        var newDocNumber = data.replace(/\d+$/, newNumber);
                        $('#doc_no').val(newDocNumber);

                    }
                });

                var customer_id = $(this).val();
                // alert(customer_id);
                if (customer_id != '') {
                    get_data_display(customer_id);
                }
            });

            $(document).on('click', '.batch-details-button', function(e) {
                $(this).closest('.item_row').find('.modal').modal('show');
            });


        });
    </script>


    {{-- repeater, bactches concept --}}
    <script>
        var generateId = function(string) {
            return string
                .replace(/\[/g, '_')
                .replace(/\]/g, '')
                .toLowerCase();
        };

        function getFirstNumber(string) {
            // alert(string);
            const regex = /[1-9]/; // Regular expression to match any number from 1 to 9
            const match = string.match(regex);

            if (match) {
                return match[0];
            }

            return null; // If no match found
        }


        function get_invoice_itemnames() {
            setTimeout(() => {
                var itemContent = $('.modal');
                // var group = itemContent.data("group");

                var item = itemContent;
                var input = item.find('.modal_items');

                // console.log(input);
                input.each(function(index, el) {
                    // console.log(el.name);
                    var attrName = $(el).attr('name');
                    var dataName = $(el).data('name');
                    // alert(attrName);
                    // console.log(attrName);
                    var key = attrName.match(/\d+/)[0];
                    // alert(key);
                    var skipName = $(el).data('skip-name');
                    // console.log('attrName',attrName);
                    var group = $(el).data("group");
                    // alert(group);


                    if (key == 0) {
                        $(el).attr("name", group + "[" + key + "]" + "[" + dataName + "]");
                    } else {
                        var key = getFirstNumber(attrName);
                        $(el).attr("name", group + "[" + key + "]" + "[" + dataName + "]");
                    }


                    $(el).attr('id', generateId($(el).attr('name')));
                    $(el).parent().find('label').attr('for', generateId($(el).attr('name')));
                });
            }, 200);
        }




        $(document).ready(function() {
            /* Create Repeater */
            calculate_grand_total();

            $('.repeater').repeater({
                isFirstItemUndeletable: false,
                // initEmpty: false,
            });

            // console.log('test');

            //practice code
            get_invoice_itemnames();

            $('.add_btn_rep').click(function() {
                get_invoice_itemnames();
            });





        });

        $("#discount").on('change', function() {
            calculate_grand_total();
        });
    </script>

    <script>
        function validateInputZero(input) {
            // Get the entered value
            var value = input.value;

            // If the value is 0, prevent it and set the value to an empty string
            if (value === '0') {
                input.value = '';
                return false;
            }

            return true;
        }
    </script>







@endsection
