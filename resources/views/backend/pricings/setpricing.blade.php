@extends('backend.layouts.app')
@section('title', 'Set Price')


@section('content')

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Set Price For: {{ $pricings->pricing_name }}</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Set Price</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <a href="{{ asset('public/sheets/sample.xlsx') }}" class="btn btn-outline-primary">Sample Sheet</a>
                <a href="{{ route('admin.pricings') }}" class="btn btn-outline-secondary">Back</a>
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
                                {{ Form::open(['url' => 'admin/updatepricings/update', 'class' => 'w-100']) }}

                                <div class="form-body">

                                    <div class="row">

                                        <div class="col-sm-12 mb-3">

                                            <section id="form-repeater-wrapper">
                                                <!-- form default repeater -->

                                                <div class="conatiner-fluid  repeater">
                                                    <button type="button" data-repeater-create
                                                        class="btn btn-primary pull-right mb-2 add_btn_rep">Add</button>


                                                    <table class="table table-bordered " id="repeater">
                                                        <thead class="bg-light" style="font-size:10px;">
                                                            <tr>
                                                                <td class="adjust_col">
                                                                    {{ Form::label('sku', 'SKU') }}
                                                                    {{ Form::hidden('pricing_master_id', $pricings->pricing_master_id, ['class' => 'form-control']) }}
                                                                </td>
                                                                <td class="adjust_col">
                                                                    {{ Form::label('item_code', 'Item Code') }}
                                                                </td>
                                                                <td style="width:100px;">
                                                                    {{ Form::label('product', 'Product') }}
                                                                </td>
                                                                <td style="width:100px;">
                                                                    {{ Form::label('selling_price', 'Selling Price') }}
                                                                </td>
                                                                <td style="width:50px;"></td>


                                                            </tr>
                                                        </thead>
                                                        <tbody data-repeater-list="invoice_items" class="repeater">


                                                            <tr data-repeater-item class="item_row">
                                                   
                                                                <td>
                                                                    {{ Form::text('sku', $row->sku ?? null, ['class' => 'form-control  sku typeahead', 'data-name' => 'sku', 'required' => true]) }}
                                                                </td>

                                                                <td>
                                                                    {{ Form::select('item_code', [], $row->item_code ?? null, ['class' => 'form-control  item_code ', 'data-name' => 'item_code', 'required' => true]) }}
                                                                </td>

                                                                <td>{{ Form::text('item_name', null, ['data-id' => 'item_name', 'class' => 'form-control  item_name ', 'required' => true]) }}
                                                                </td>
                                                                <td>{{ Form::number('selling_price', $row->selling_price ?? null, ['class' => 'form-control  selling_price', 'data-name' => 'selling_price', 'required' => true]) }}
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


                                            </section>
                                        </div>

                                    </div>



                                    <div class="col-sm-12 d-flex justify-content-center">
                                        {{ Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1']) }}
                                        <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                                    </div>
                                    {{ Form::close() }}
                                </div>
                            </div>


                            <h5 class="text-center mb-2">
                                <hr style="width:50% !important;">
                                OR
                            </h5>

                            @include('backend.includes.errors')
                            {{ Form::open(['url' => 'admin/updatepricings/update', 'class' => 'w-100','enctype'=>'multipart/form-data']) }}
                            {{ Form::hidden('pricing_master_id', $pricings->pricing_master_id, ['class' => 'form-control']) }}

                            <div class="row">

                                <div class="col-md-5"></div>

                                <div class="col-md-3 col-sm-3">
                                    <div class="form-group">
                                        {{ Form::label('file', 'Import Data From File') }}
                                        <input type="file" name="file" class="form-control">

                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <br style="margin-top:5px;">
                                        {{ Form::submit('Import', ['class' => 'btn  btn-primary ']) }}
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                </div>

                            </div>

                            {{ Form::close() }}


                            <div class="col-sm-12 mb-3">
                                <hr>
                            </div>

                            <div class="col-12">
                                <h5 class="card-title text-center">
                                    Item Data
                                </h5>
                            </div>


                            <table class="table table-bordered table-striped">
                                <thead class="bg-light">
                                    <tr>
                                        <th>#</th>
                                        <th>SKU</th>
                                        <th>Item Code</th>
                                        <th>Product</th>
                                        <th>Selling Price</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    @if (!$pricing_items->isEmpty())
                                        @foreach ($pricing_items as $row)
                                            <tr>
                                                <td>{{ $loop->index + 1 }}</td>
                                                <td>{{ $row->sku }}</td>
                                                <td>{{ $row->item_code }}</td>
                                                <td>{{ $row->get_product->consumer_desc }}</td>
                                                <td>{{ $row->selling_price }}</td>
                                            </tr>
                                        @endforeach

                                    @endif

                                </tbody>
                            </table>


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
        //get item codes
        $(document).on('blur', '.sku', function() {
            var $input = $(this);
            var toItemcode = $(this).closest('.item_row').find('.item_code');

            setTimeout(function() {
                var sku_code = $input.val();
                if (sku_code.trim() !== '') {
                    // alert(sku_code);
                    $.ajax({
                        url: '{{ route('admin.pricings.item_codes') }}',
                        type: 'GET',
                        data: {
                            sku: sku_code
                        },
                        success: function(data) {
                            if (data) {
                                toItemcode.html(data);
                            }
                        },
                        error: function(error) {
                            console.log(error);
                        }
                    });
                }
            }, 500);
        });
        // get prod basis on item_code
        $(document).on('change', '.item_code', function() {
            var item_code = $(this).val();
            var item_desc = $(this).closest('.item_row').find('.item_name');

            // alert(item_code);
            // Make an AJAX request to get bins for 'to_warehouse'
            $.ajax({
                url: '{{ route('admin.pricings.get_product') }}',
                type: 'GET',
                data: {
                    item_code: item_code
                },
                success: function(data) {
                    // Update the 'to_bin' dropdown with the retrieved data
                    item_desc.val(data);
                },
                error: function(error) {
                    console.log(error);
                }
            });
        });
    </script>

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

            calculate_grand_total();

            $('.repeater').repeater({
                isFirstItemUndeletable: false,
                // initEmpty: false,
            });


            get_invoice_itemnames();

            $('.add_btn_rep').click(function() {
                get_invoice_itemnames();
            });



        });
    </script>





@endsection
