@extends('backend.layouts.app')
@section('title', 'Goods Issue')

@section('content')
    @php
        use App\Models\backend\Company;
        use App\Models\backend\Products;
    @endphp
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Goods Issue</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Goods Issue</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">

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
                                {{ Form::model([], ['url' => 'admin/goodsissue/update', 'class' => 'w-100']) }}

                                <div class="form-body">


                                    <div class="row">

                                        <div class="col-sm-12 mb-3">
                                            <section id="form-repeater-wrapper">
                                                <!-- form default repeater -->
                                                <div class="row">
                                                    <div class="col-12">

                                                        {{-- This is Repeater --}}
                                                        <div class="conatiner-fluid table-responsive repeater">
                                                            <button type="button" data-repeater-create
                                                                class="btn btn-primary pull-right mb-2 add_btn_rep">Add</button>
                                                            <div class="table-responsive">
                                                                <table class="table table-bordered " id="repeater">
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

                                                                            <td>{{ Form::label('storage_location_id', 'Warehouse') }}
                                                                            </td>
                                                                            <td>{{ Form::label('bacth_id', 'Batch Details') }}
                                                                            </td>
                                                                            <td></td>

                                                                        </tr>
                                                                    </thead>
                                                                    <tbody data-repeater-list="old_invoice_items">
                                                                        {{-- @if (isset($model->purchaseorder_items) && count($model->purchaseorder_items) > 0) --}}
                                                                        {{-- @foreach ($model->goodsservicereceipts_items as $items) --}}
                                                                        <?php
                                                                  
                                                                        for ($i=0; $i < count(old('invoice_items')??['1']); $i++){ 
                                                                        ?>
                                                                        {{-- {{dd($items->toArray())}} --}}
                                                                        <tr data-repeater-item class="item_row item-content"
                                                                            id="old_row_{{ $i }}">

                                                                            <td>{{ Form::number('old_invoice_items[' . $i . '][item_code]', null, ['data-name' => 'item_code', 'class' => 'form-control item_code typeahead', 'required' => true]) }}
                                                                            </td>

                                                                            <td>{{ Form::text('old_invoice_items[' . $i . '][item_name]', null, ['data-name' => 'item_name', 'class' => 'form-control item_name typeahead', 'required' => true, 'oninput' => 'validateInput(this)']) }}
                                                                            </td>
                                                                            <td>
                                                                                {{ Form::text('old_invoice_items[' . $i . '][hsn_sac]', null, ['class' => 'form-control', 'data-name' => 'hsn_sac', 'required' => true]) }}
                                                                            </td>
                                                                            <td>
                                                                                {{ Form::number('old_invoice_items[' . $i . '][qty]', null, ['class' => 'form-control qty', 'oninput' => 'validateInputZero(this)', 'data-name' => 'qty', 'required' => true]) }}
                                                                            </td>
                                                                            <td>
                                                                                {{ Form::number('old_invoice_items[' . $i . '][taxable_amount]', null, ['class' => 'form-control taxable_amount', 'data-name' => 'taxable_amount', 'required' => true]) }}
                                                                            </td>

                                                                            <td>
                                                                                {{ Form::select('old_invoice_items[' . $i . '][storage_location_id]', $storage_locations, null, ['class' => 'form-control ', 'placeholder' => 'Warehouse', 'data-name' => 'storage_location_id', 'required' => true]) }}

                                                                            </td>

                                                                            @php
                                                                                $company = Company::first();
                                                                            @endphp
                                                                            @if ($company->batch_system)
                                                                                <td>
                                                                                    <button type="button"
                                                                                        id="batchDetailsModal{{ $i }}"
                                                                                        class="btn btn-primary batch-details-button">
                                                                                        Batch
                                                                                    </button>

                                                                                    {{--  Modal starts Here  --}}
                                                                                    <div class="modal fade text-left"
                                                                                        id="batchDetailsModal{{ $i }}"
                                                                                        tabindex="-1" role="dialog"
                                                                                        aria-labelledby="myModalLabel1"
                                                                                        aria-hidden="true">
                                                                                        <div class="modal-dialog modal-lg"
                                                                                            role="document">
                                                                                            <div class="modal-content">
                                                                                                <div class="modal-header">
                                                                                                    <h4 class="modal-title"
                                                                                                        id="myModalLabel1">
                                                                                                        Assign Batch
                                                                                                    </h4>
                                                                                                    <button type="button"
                                                                                                        class="close"
                                                                                                        data-dismiss="modal"
                                                                                                        aria-label="Close">
                                                                                                        <span
                                                                                                            aria-hidden="true">&times;</span>
                                                                                                    </button>
                                                                                                </div>
                                                                                                <div class="modal-body">
                                                                                                    <div class="row">
                                                                                                        <div
                                                                                                            class="col-md-12 table-responsive">
                                                                                                            <table
                                                                                                                class="table table-sm">
                                                                                                                <!-- inner repeater -->
                                                                                                                <tr>
                                                                                                                    <td>Batch
                                                                                                                        no
                                                                                                                    </td>
                                                                                                                    <td>Mfg.
                                                                                                                        Date
                                                                                                                    </td>
                                                                                                                    <td>Exp.
                                                                                                                        Date
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td>
                                                                                                                        <input
                                                                                                                            type="text"
                                                                                                                            value=""
                                                                                                                            name="batch_no"
                                                                                                                            data-name="batch_no"
                                                                                                                            class='form-control modal_items '
                                                                                                                            data-group="old_invoice_items"
                                                                                                                            id="">
                                                                                                                    </td>
                                                                                                                    <td>
                                                                                                                        <input
                                                                                                                            type="date"
                                                                                                                            value=""
                                                                                                                            name="manufacturing_date"
                                                                                                                            data-name="manufacturing_date"
                                                                                                                            class='form-control modal_items'
                                                                                                                            data-group="old_invoice_items"
                                                                                                                            id="">
                                                                                                                    </td>
                                                                                                                    <td>
                                                                                                                        <input
                                                                                                                            type="date"
                                                                                                                            value=""
                                                                                                                            name="expiry_date"
                                                                                                                            data-name="expiry_date"
                                                                                                                            class='form-control modal_items'
                                                                                                                            data-group="old_invoice_items"
                                                                                                                            id="">
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                            </table>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div
                                                                                                        class="modal-footer">
                                                                                                        <button
                                                                                                            type="button"
                                                                                                            class="btn grey btn-outline-secondary"
                                                                                                            onclick="closeBatchDetailsModal()">Ok</button>
                                                                                                    </div>

                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    {{--  Modal ends Here  --}}
                                                                                </td>
                                                                            @else
                                                                                {{ Form::hidden('old_invoice_items[' . i . '][batch_no]', null, ['class' => 'form-control  def_batch_no', 'data-name' => 'batch_no', 'data-group' => 'old_invoice_items']) }}
                                                                            @endif





                                                                            <td><button type='button'
                                                                                    class='btn btn-danger btn-flat btn-xs old_rep_item_del'
                                                                                    id="{{ $i }}"
                                                                                    data-repeater-delete><i
                                                                                        class='fa fa-fw fa-remove'></i></button>
                                                                            </td>
                                                                        </tr>
                                                                        <?php
                                                                        }
                                                                        ?>
                                                                        {{-- @endforeach --}}
                                                                        {{-- @endif --}}

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

    <script>
        function closeBatchDetailsModal() {
            $('#batchDetailsModal').modal('hide');
        }

        function get_data_display(customer_id) {

            // alert(customer_id);

            $.get(APP_URL + '/admin/goodsservicereceipts/partydetails/' + customer_id, {}, function(
                response) {
                var customer_details = $.parseJSON(response);
                console.log(customer_details);
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





            // warehouse change event 

            //for new bacthes click
            // $(document).on('click', '.storage_locations', function(e) {
            //     // if ($(this).val() != '') {
            //         // var parent_div = $(this).parents()[2];
            //         // var suffix = $(this).attr('name');
            //         $(this).closest('.item_row').find('.modal').modal('show');
            //     // }
            // });
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


    <script>
        // $(document).ready(function() {
        //     function processItems(index) {
        //         if (index < $('.sku').length) {
        //             var sku = $('.sku').eq(index).val();
        //             var $batchNoInput = $('[data-name="batch_no"][data-group="old_invoice_items"]').eq(index);

        //             // Make a separate AJAX call for each element
        //             $.ajax({
        //                 url: '{{ route('admin.autocomplete') }}',
        //                 type: 'GET',
        //                 success: function(data) {
        //                     // Ensure that the counter is unique for each item
        //                     var defBatchNo = data.counter + '-Batch-' + sku;

        //                     // Assuming you have a unique identifier for each item, update the value of the hidden input
        //                     $batchNoInput.val(defBatchNo);

        //                     // Process the next item
        //                     processItems(index + 1);
        //                 },
        //                 error: function(error) {
        //                     console.log(error);

        //                     // Process the next item even on error
        //                     processItems(index + 1);
        //                 }
        //             });
        //         }
        //     }

        //     var is_batch_system = '{{ $company->batch_system }}';

        //     if(!is_batch_system){
        //         processItems(0);
        //     }
        // });
    </script>





@endsection
