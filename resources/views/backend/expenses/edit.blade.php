@extends('backend.layouts.app')
@section('title', 'Edit Product')

@section('content')
@php
$status = ['No'=>'No','Yes'=>'Yes'];
$product_types = ['simple'=>'Simple','configurable'=>'Configurable'];

@endphp
<style>
  
</style>
<div class="content-header row">
  <div class="content-header-left col-md-6 col-12 mb-2">
    <h3 class="content-header-title">Products</h3>
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="{{ route('admin.dashboard')}}">Dashboard</a>
          </li>
          <li class="breadcrumb-item">
            <a href="{{ route('admin.products')}}">Products</a>
          </li>
          <li class="breadcrumb-item active">Edit Product</li>
        </ol>
      </div>
    </div>
  </div>
  <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
    <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
      <div class="btn-group" role="group">
        <a class="btn btn-outline-primary" href="{{ route('admin.products') }}">
          <i class="feather icon-arrow-left"></i> Back
        </a>
      </div>
    </div>
  </div>
</div>
        <section id="multiple-column-form">
          <div class="row match-height">
            <div class="col-12">
              <div class="card">
                <div class="card-header">
                  <h4 class="card-title">Edit Product</h4>
                </div>
                <div class="card-content">
                  <div class="card-body">
                    @include('backend.includes.errors')
                    {!! Form::model($products, [
                        'method' => 'POST',
                        'url' => ['admin/products/update'],
                        'class' => 'form',
                        'enctype' => 'multipart/form-data'
                    ]) !!}
                    {{ Form::hidden('product_item_id', null, ['required' => true,'id'=>'product_item_id']) }}
                      <div class="form-body">
                        <!-- <h2>General</h2> -->
                        <div class="row">
                        <div class="col-md-6 col-12">
                            <div class="form-group">
                                {{ Form::label('item_type_id', 'Type ',['class'=>'']) }}
                                {{ Form::select('item_type_id', $item_types , null,['class'=>'select2 form-control ', 'placeholder' => 'Please Select Type','id'=>'item_type_id']) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              {{ Form::label('item_code', 'Item Code ') }}
                              {{ Form::text('item_code', null, ['class' => 'form-control', 'placeholder' => 'Enter Item Code', 'required' => true,'id'=>'item_code']) }}
                            </div>
                          </div>
                          <div class="col-md-12 col-12">
                            <div class="form-group">
                              {{ Form::label('product_desc', 'Product Description ') }}
                              {{ Form::textarea('product_desc', null, ['class' => 'form-control', 'placeholder' => 'Enter Product Description', 'id'=>'product_desc']) }}
                            </div>
                          </div>
                          <div class="col-md-12 col-12">
                            <div class="form-group">
                              {{ Form::label('consumer_desc', 'Consumer Description ') }}
                              {{ Form::textarea('consumer_desc', null, ['class' => 'form-control', 'placeholder' => 'Enter Consumer Description', 'id'=>'consumer_desc']) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              {{ Form::label('brand_id', 'Brand ',['class'=>'']) }}
                              {{ Form::select('brand_id', $brands, null,['class'=>'select2 form-control ', 'placeholder' => 'Please Select Brand','id'=>'brand_id',]) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              {{ Form::label('category_id', 'Category ',['class'=>'']) }}
                              {{ Form::select('category_id', $categories, null,['class'=>'select2 form-control category', 'placeholder' => 'Please Select Category','id'=>'category_id']) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              {{ Form::label('sub_category_id', 'Sub Category ',['class'=>'']) }}
                              {{ Form::select('sub_category_id', $sub_categories, null,['class'=>'select2 form-control subcategory', 'placeholder' => 'Please Select Sub Category',]) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              {{ Form::label('variant', 'Variant ') }}
                              {{ Form::text('variant', null, ['class' => 'form-control', 'placeholder' => 'Enter Variant','id'=>'variant', ]) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              {{ Form::label('buom_pack_size', 'BUoM/ Pack Size ') }}
                              {{ Form::text('buom_pack_size', null, ['class' => 'form-control', 'placeholder' => 'Enter BUoM/ Pack Size','id'=>'buom_pack_size', ]) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              {{ Form::label('uom_id', 'UoM ',['class'=>'']) }}
                              {{ Form::select('uom_id', $uoms , null,['class'=>'select2 form-control uom_id', 'placeholder' => 'Please Select UoM']) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              {{ Form::label('unit_case', 'Units/ Case Or Case Config ') }}
                              {{ Form::text('unit_case', null, ['class' => 'form-control', 'placeholder' => 'Enter Units/ Case Or Case Config','id'=>'unit_case', ]) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              {{ Form::label('hsn_code_id', 'HSN Code ',['class'=>'']) }}
                              {{ Form::select('hsn_code_id', $hsncodes , null,['class'=>'select2 form-control hsncode_id', 'placeholder' => 'Please Select HSN Code']) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              {{ Form::label('batch', 'Batch ') }}
                              {{ Form::text('batch', null, ['class' => 'form-control', 'placeholder' => 'Enter Batch','id'=>'batch', ]) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              {{ Form::label('expiry_date', 'Expiry Date ') }}
                              {{ Form::date('expiry_date', null, ['class' => 'form-control pickadate', 'placeholder' => 'Enter Expiry Date','id'=>'expiry_date', ]) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              {{ Form::label('shelf_life', 'Self Life ',['class'=>'']) }}
                              {{ Form::select('shelf_life', ['month'=>'Month','days'=>'Days'] , null,['class'=>'select2 form-control ','id'=>'shelf_life']) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              {{ Form::label('sourcing', 'Sourcing Unit/ Source ') }}
                              {{ Form::text('sourcing', null, ['class' => 'form-control', 'placeholder' => 'Enter Sourcing Unit/ Source','required' => true,'id'=>'sourcing', ]) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              {{ Form::label('case_pallet', 'Case/ Pallet ') }}
                              {{ Form::text('case_pallet', null, ['class' => 'form-control', 'placeholder' => 'Enter Case/ Pallet','id'=>'case_pallet', ]) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              {{ Form::label('layer_pallet', 'Layer/ Pallet ') }}
                              {{ Form::text('layer_pallet', null, ['class' => 'form-control', 'placeholder' => 'Enter Layer/ Pallet','id'=>'layer_pallet', ]) }}
                            </div>
                          </div>
                          <div class="col-md-2 col-12" id="">
                            <div class="form-group">
                              {{ Form::label('dimensions_unit_pack', 'Unit/ Pack ') }}
                              {{ Form::text('dimensions_unit_pack', null, ['class' => 'form-control', 'placeholder' => 'Enter Unit/ Pack', ]) }}
                            </div>
                          </div>
                          <div class="col-md-2 col-12">
                            <div class="form-group">
                              {{ Form::label('dimensions_length', 'Length ') }}
                              {{ Form::text('dimensions_length', null, ['class' => 'form-control', 'placeholder' => 'Enter Length', ]) }}
                            </div>
                          </div>
                          <div class="col-md-2 col-12">
                            <div class="form-group">
                              {{ Form::label('dimensions_width', 'Width') }}
                              {{ Form::text('dimensions_width', null, ['class' => 'form-control', 'placeholder' => 'Enter Width', ]) }}
                            </div>
                          </div>
                          <div class="col-md-2 col-12">
                            <div class="form-group">
                              {{ Form::label('dimensions_height', 'Height') }}
                              {{ Form::text('dimensions_height', null, ['class' => 'form-control', 'placeholder' => 'Enter Height', ]) }}
                            </div>
                          </div>
                          <div class="col-md-2 col-12">
                            <div class="form-group">
                              {{ Form::label('dimensions_net_weight', 'Net Weight') }}
                              {{ Form::text('dimensions_net_weight', null, ['class' => 'form-control', 'placeholder' => 'Enter Net Weight', ]) }}
                            </div>
                          </div>
                          <div class="col-md-2 col-12">
                            <div class="form-group">
                              {{ Form::label('dimensions_gross_weight', 'Gross Weight') }}
                              {{ Form::text('dimensions_gross_weight', null, ['class' => 'form-control', 'placeholder' => 'Enter Gross Weight', ]) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              {{ Form::label('ean_barcode', 'EAN/ Barcode') }}
                              {{ Form::text('ean_barcode', null, ['class' => 'form-control', 'placeholder' => 'Enter EAN/ Barcode', ]) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              {{ Form::label('mrp', 'MRP') }}
                              {{ Form::text('mrp', null, ['class' => 'form-control', 'placeholder' => 'Enter MRP', ]) }}
                            </div>
                          </div>
                          
                          <div class="col-md-6 col-6">
                            {{ Form::label('visibility', 'Show / Hide') }}
                            <fieldset class="">
                              <div class="radio radio-success">
                                {{ Form::radio('visibility','1',true,['id'=>'radioshow']) }}
                                {{ Form::label('radioshow', 'Yes') }}
                              </div>
                            <!-- </fieldset>
                            <fieldset> -->
                              <div class="radio radio-danger">
                                {{ Form::radio('visibility','0',false,['id'=>'radiohide']) }}
                                {{ Form::label('radiohide', 'No') }}
                              </div>
                            </fieldset>
                          </div>
                          
                          <div class="col-md-12 col-12">
                            <div class="form-group">
                              {{ Form::label('product_thumb', 'Product Thumbnail *') }}
                              <div class="custom-file">
                                {{ Form::file('product_thumb', ['class' => 'custom-file-input','id'=>'product_thumb']) }}
                                <label class="custom-file-label" for="product_thumb">Choose file</label>
                              </div>
                            </div>
                          </div>
                          <div class="col-12 d-flex justify-content-start">
                            {{ Form::submit('Update', array('class' => 'btn btn-primary mr-1 mb-1')) }}
                          </div>
                        </div>
                      </div>
                    {{ Form::close() }}
                    
                  </div>

                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
    </div>
    <div class="modal fade text-left" id="image_delete_toast" tabindex="-1" role="dialog"
                              aria-labelledby="myModalLabel120" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
        <div class="modal-content">
          <div class="modal-header bg-danger">
            <h5 class="modal-title white" id="myModalLabel120">Warning</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <i class="bx bx-x"></i>
            </button>
          </div>
          <div class="modal-body" id="delete_image_toast_content">
            Please Select Product Images To Delete.
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-light-secondary" data-dismiss="modal">
              <i class="bx bx-x d-block d-sm-none"></i>
              <span class="d-none d-sm-block">Close</span>
            </button>
          </div>
        </div>
      </div>
    </div>
    <script>
      $(document).ready(function()
      {
        // if ($(".category").val() != '')
        // {
        //   subcategories($(".category").val());
        // }
        $(".category").change(function(){
          var category_id = $(this).val();
          subcategories(category_id);
          getfilters(category_id);
          getfrequentlybrought(category_id);
          getmightprefer(category_id);
        });
        $(".subcategory").change(function(){
          var subcategory_id = $(this).val();
          var category_id = $(".category").val();
          console.log(subcategory_id);
          subsubcategories(category_id,subcategory_id);
        });
        $(".subsubcategory").change(function(){
          
          $('.hsncode_id').html('');
          $('.material_id').trigger('change');
        });
        $(".material_id").change(function(){
          var material_id = $(this).val();
          var sub_subcategory_id = $(".subsubcategory").val();
          var subcategory_id = $(".subcategory").val();
          var category_id = $(".category").val();
          // console.log(subcategory_id);
          if (material_id && sub_subcategory_id && subcategory_id && category_id) 
          {
            hsncodes(category_id,subcategory_id,sub_subcategory_id,material_id);
          }
          
        });
        function subcategories(category_id)
        {
          $.ajax({
              url: '{{url("admin/products/getsubcategory")}}',
              type: 'post',
              data:
              {
                category_id: category_id ,_token: "{{ csrf_token() }}",
              },
              success: function (data)
              {
                //console.log(data);
                $('.subcategory').html(data);
                $('.subsubcategory').html('');
                $('.hsncode_id').html('');
              }
           });
        }
        function getfilters(category_id)
        {
          $.ajax({
              url: '{{url("admin/products/getfilters")}}',
              type: 'post',
              data:
              {
                category_id: category_id ,_token: "{{ csrf_token() }}",
              },
              success: function (data)
              {
                //console.log(data);
                $('#filter_list').html(data);
              }
           });
        }
        function getmightprefer(category_id)
        {
          $.ajax({
              url: '{{url("admin/products/getmightprefer")}}',
              type: 'post',
              data:
              {
                category_id: category_id ,_token: "{{ csrf_token() }}",
              },
              success: function (data)
              {
                //console.log(data);
                $('#mightprefer_list').html(data);
              }
           });
        }
        function getfrequentlybrought(category_id)
        {
          $.ajax({
              url: '{{url("admin/products/getfrequentlybrought")}}',
              type: 'post',
              data:
              {
                category_id: category_id ,_token: "{{ csrf_token() }}",
              },
              success: function (data)
              {
                //console.log(data);
                $('#frequentlybrought_list').html(data);
              }
           });
        }
        function subsubcategories(category_id,subcategory_id)
        {
          $.ajax({
              url: '{{url("admin/products/getsubsubcategory")}}',
              type: 'post',
              data:
              {
                category_id: category_id, subcategory_id: subcategory_id, _token: "{{ csrf_token() }}",
              },
              success: function (data)
              {
                //console.log(data);
                $('.subsubcategory').html(data);
                $('.hsncode_id').html('');
                $('.material_id').trigger('change');

              }
           });
        }
        function hsncodes(category_id,subcategory_id,sub_subcategory_id,material_id)
        {
          $.ajax({
              url: '{{url("admin/products/gethsncodes")}}',
              type: 'post',
              data:
              {
                category_id: category_id, subcategory_id: subcategory_id,
                sub_subcategory_id : sub_subcategory_id, material_id : material_id,
                 _token: "{{ csrf_token() }}",
              },
              success: function (data)
              {
                //console.log(data);
                $('.hsncode_id').html(data);
              }
           });
        }
        var load_size_id = $("#config_size_id").val();
        var load_color_id = $("#config_color_id").val();

        var load_product_sku = $("#product_sku").val();
        var load_product_type = $("#product_type").val();
        var load_product_price = $("#product_price").val();
        if(load_product_type !='' && load_product_sku !='' && load_product_price !='')
        {
          // alert('tet');
          productconfiguration(load_product_type,load_product_sku);
        }

        $("#product_type").change(function()
        {
          var product_type = $(this).val();
          var product_sku = $("#product_sku").val();
          var product_price = $("#product_price").val();
          // console.log(product_type);
          if(product_type !='' && product_sku !='' && product_price !='')
          {
            productconfiguration(product_type,product_sku);
          }
        });
        $("#product_sku").change(function()
        {
          var product_sku = $(this).val();
          var product_type = $("#product_type").val();
          var product_discounted_price = $("#product_discounted_price").val();
          // console.log(product_type);
          if(product_type !='' && product_sku !='' && product_discounted_price !='')
          {
            productconfiguration(product_type,product_sku);
          }
        });

        $("#product_discounted_price").change(function()
        {
          var product_sku = $("#product_sku").val();
          var product_type = $("#product_type").val();
          var product_discounted_price = $(this).val();
          // console.log(product_type);
          if(product_type !='' && product_sku !='' && product_discounted_price !='')
          {
            productconfiguration(product_type,product_sku);
          }
        });
        function productconfiguration(product_type,product_sku)
        {
          // alert('in');
          if (product_type == 'configurable')
          {
            $('#config_color_div').show();
            $('#config_size_div').show();
            $('#variantsdiv').show();
            $('#config_product_qty').hide();
            $('#sim_color_div_edit').hide();
            $('#sim_size_div_edit').hide();
          }
          else
          {
            $('#config_color_div').hide();
            $('#config_size_div').hide();
            $('#variantsdiv').hide();
            $('#variantstable').html('');
            $('#sim_color_div_edit').show();
            $('#sim_size_div_edit').show();
            $('#config_product_qty').show();
          }
        }

        $("#config_color_id").change(function()
        {
          var color_id = $(this).val();
          var size_id = $("#config_size_id").val();
          var product_type = $("#product_type").val();
          var product_sku = $("#product_sku").val();
          var product_discounted_price = $("#product_discounted_price").val();
          // console.log(color_id);
          if(color_id !='' && size_id !='' && product_type !='' && product_sku !='' && product_discounted_price !='')
          {
            getproductvariants(color_id,size_id,product_type,product_sku,product_discounted_price);
          }
        });
        $("#config_size_id").change(function()
        {
          var size_id = $(this).val();
          var color_id = $("#config_color_id").val();
          var product_type = $("#product_type").val();
          var product_sku = $("#product_sku").val();
          var product_discounted_price = $("#product_discounted_price").val();
          // console.log(color_id);
          if(color_id !='' && size_id !='' && product_type !='' && product_sku !='' && product_discounted_price !='')
          {
            getproductvariants(color_id,size_id,product_type,product_sku,product_discounted_price);
          }
        });
        function getproductvariants(color_id,size_id,product_type,product_sku,product_discounted_price)
        {
          if (product_type == 'configurable')
          {
            $.ajax({
                url: '{{url("admin/products/getproductvariants")}}',
                type: 'post',
                data:
                {
                  color_id: color_id, size_id: size_id,product_type: product_type,
                  product_sku: product_sku,product_discounted_price: product_discounted_price, _token: "{{ csrf_token() }}",
                },
                success: function (data)
                {
                  //console.log(data);
                  $('#variantsdiv').show();
                  $('#variantstable').html(data);
                  $('#sim_color_div').hide();
                  $('#sim_size_div').hide();
                  $('#config_product_qty').hide();
                }
             });
          }
          else
          {
            $('#variantsdiv').hide();
            $('#variantstable').html('');
            $('#config_color_div').hide();
            $('#config_size_div').hide();
            $('#sim_color_div').show();
            $('#sim_size_div').show();
            $('#config_product_qty').show();

          }
        }
        // $('#onshowbtn').on('click',function(){
        //   // console.log('done');
        //   // $('#onshow').removeData();
        //   // $("#onshow").val(null).trigger("change");
        // });
        var variants_cnt = 0 ;
        $('#modal_add_variants').on('click',function(){
          // $('#onshow').removeData();
          var color_id = $("#variant_color_id").val();
          var size_id = $("#variant_size_id").val();
          var product_type = $("#product_type").val();
          var product_sku = $("#product_sku").val();
          var product_id = $("#product_id").val();
          var product_discounted_price = $("#product_discounted_price").val();
          var added_variants = $('input[name^="variants"]').serialize();
          // var added_variants1 = $('input[name^="variants"]').toArray();
          // $("input[name^='variants']").each(function() {
          //   console.log('test'+$(this).product_sku+'-'+$(this).val());
          // });
          console.log(added_variants);
          // for (key in added_variants1) {
          //   // console.log(key);
          // }
          if (color_id !='' && size_id !='')
          {
            $.ajax({
                url: '{{url("admin/products/addproductvariants")}}',
                type: 'post',
                data:
                {
                  id: product_id, color_id: color_id, size_id: size_id,
                  variants_cnt: variants_cnt, product_sku: product_sku,
                  added_variants: added_variants,product_discounted_price: product_discounted_price, _token: "{{ csrf_token() }}",
                },
                dataType: 'json',
                success: function (data)
                {
                  console.log(data['flag']);
                  // $('#variantsdiv').show();
                  // $('#variantstable').html(data);
                  // $('#sim_color_div').hide();
                  // $('#sim_size_div').hide();
                  if (data.flag == "new")
                  {

                    console.log(data);
                    $('#variantstable').append(data['table']);
                    variants_cnt++;
                  }
                  else
                  {
                    console.log(data);
                    // $('#variant_toast').toast("show");
                    // toastr.warning("Variant with same attribute options already exists.");
                    $('#variant_toast').modal('show');

                  }
                }
             });
          }
          else
          {
            alert('Please Select Variants');
          }
          $('#onshow').modal('hide');
        });

        $("#manufacturer_id").change(function(){
          var manufacturer_id = $(this).val();
          brands(manufacturer_id);
        });

        function brands(manufacturer_id)
        {
          $.ajax({
              url: '{{url("admin/products/getbrands")}}',
              type: 'post',
              data:
              {
                manufacturer_id: manufacturer_id ,_token: "{{ csrf_token() }}",
              },
              success: function (data)
              {
                //console.log(data);
                $('#brand_id').html(data);
              }
           });
        }

        //product discount price calculation
        $("#product_price,#product_discount,#product_discount_type").change(function()
        {
          var product_price = $("#product_price").val();
          var product_discount = $("#product_discount").val();
          var product_discount_type = $("#product_discount_type").val();
          // console.log(product_discount);
          var product_discounted_price = 0;
          if(product_price !='' && product_discount !='')
          {
            if (product_discount_type=='percent')
            {
              product_discounted_price = product_price - ((product_price*product_discount)/100);
            }
            else
            {
              product_discounted_price = product_price - product_discount;
            }

            if (product_discounted_price <= 0)
            {
              alert('Product Discount cannot be greater than or equals to Product Price');
              // alert('Product Discount Price cannot be less than or equals to Zero');
              $("#product_discounted_price").val('');
            }
            else
            {
              product_discounted_price = Math.round(product_discounted_price);
              $("#product_discounted_price").val(product_discounted_price);
            }
          }
          else if(product_price !='' && product_discount =='')
          {
            $("#product_discounted_price").val(product_price);
          }
          else
          {

          }
        });

        $('#delete_selected_images').on('click',function(){
          // $('#onshow').removeData();
          var product_id = $("#product_id").val();
          var product_image_ids = [];//$('input[name^="product_image_id"]').serialize();
          // var product_image_ids = $('input[name^="product_image_id"]:checked').val();
          $('input[name="product_image_id"]:checked').each(function(index) {
            product_image_ids[index] = this.value;
          });
          console.log(product_image_ids);
          
          if (product_image_ids !='')
          {
            var confirm_result = confirm('Are you sure you want to Delete this Entry ?');
            if(!confirm_result)
            {
              return true;
            }
            $.ajax({
                url: '{{url("admin/products/delete_product_images")}}',
                type: 'post',
                data:
                {
                  id: product_id, product_image_ids: product_image_ids,
                  _token: "{{ csrf_token() }}",
                },
                dataType: 'json',
                success: function (data)
                {
                  console.log(data['flag']);
                  if (data.flag == true)
                  {
                    $.each(product_image_ids, function (key, val_ids) {
                      $( "#remove_image_card_"+val_ids ).remove();
                    });
                    $('#delete_image_toast_content').text('Images Deleted Successfully');
                    $('#image_delete_toast').modal('show');
                  }
                  else
                  {
                    console.log(data);
                    $('#delete_image_toast_content').text('Something went wrong!');
                    $('#image_delete_toast').modal('show');

                  }
                }
             });
          }
          else
          {
            // alert('Please Select Product Images To Delete');
            $('#delete_image_toast_content').text('Please Select Product Images To Delete');
            $('#image_delete_toast').modal('show');
          }
          $('#image_delete_toast').modal('hide');
        });


      });
    </script>
@endsection
