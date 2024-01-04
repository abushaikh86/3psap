@extends('backend.layouts.app')
@section('title', 'Create Expense')

@section('content')
@php

@endphp
<div class="content-header row">
  <div class="content-header-left col-md-6 col-12 mb-2">
    <h3 class="content-header-title">Expenses</h3>
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="{{ route('admin.dashboard')}}">Dashboard</a>
          </li>
          <li class="breadcrumb-item">
            <a href="{{ route('admin.expenses')}}">Expenses</a>
          </li>
          <li class="breadcrumb-item active">Add Expense</li>
        </ol>
      </div>
    </div>
  </div>
  <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
    <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
      <div class="btn-group" role="group">
        <a class="btn btn-outline-primary" href="{{ route('admin.expenses') }}">
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
                  <h4 class="card-title">Create Expense</h4>
                </div>
                <div class="card-content">
                  <div class="card-body">
                    @include('backend.includes.errors')
                    {{ Form::open(array('url' => 'admin/expenses/store','enctype' => 'multipart/form-data')) }}
                      <div class="form-body">
                        <div class="row">
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              {{ Form::label('expense_category_id', 'Expense Category ',['class'=>'']) }}
                              {{ Form::select('expense_category_id', $expense_categories, null,['class'=>'select2 form-control expense_category', 'placeholder' => 'Please Select Expense Category','id'=>'expense_expense_category_id']) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                              {{ Form::label('expense_sub_category_id', 'Sub Category ',['class'=>'']) }}
                              {{ Form::select('expense_sub_category_id', $expense_sub_categories, null,['class'=>'select2 form-control expense_subcategory', 'placeholder' => 'Please Select Expense Sub Category',]) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                                {{ Form::label('expense_type_id', 'Expense Type ',['class'=>'']) }}
                                {{ Form::select('expense_type_id', $expense_types , null,['class'=>'select2 form-control ', 'placeholder' => 'Please Select Expense Type','id'=>'expense_type_id']) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                                {{ Form::label('expense_sub_type_id', 'Expense Sub Type ',['class'=>'']) }}
                                {{ Form::select('expense_sub_type_id', ['1'=>'Fixed Expense','2'=>'Variable Expense'] , null,['class'=>'select2 form-control ', 'placeholder' => 'Please Select Expense Sub Type','id'=>'expense_sub_type_id']) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                                {{ Form::label('service_expense', 'Service Expense ',['class'=>'']) }}
                                {{ Form::select('service_expense', ['1'=>'Accountants fees (Accounting/Compliance/GST/Tax)','2'=>'Solicitors fees','3'=>'Business registration','4'=>'Domain name registration','5'=>'Insurance premiums'] , null,['class'=>'select2 form-control ', 'placeholder' => 'Please Select Service Expense','id'=>'expense_expense']) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                                {{ Form::label('goods_expense', 'Goods Expense ',['class'=>'']) }}
                                {{ Form::select('goods_expense', ['1'=>'Equipments','2'=>'Vehicles','3'=>'Infra Fitout','4'=>'Machineries','5'=>'Utility Connection (Water, Electricity, etc.)'] , null,['class'=>'select2 form-control ', 'placeholder' => 'Please Select Goods Expense','id'=>'expense_expense']) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                                {{ Form::label('rental_deposits_banking', 'Rental, Deposits & Banking Expense ',['class'=>'']) }}
                                {{ Form::select('rental_deposits_banking', ['1'=>'Lease Deposit','2'=>'Utility Connections Deposit','3'=>'Advance Rent','4'=>'Loan Repayment EMI','5'=>'Bank Principle on Loan'] , null,['class'=>'select2 form-control ', 'placeholder' => 'Please Select Rental, Deposits & Banking Expense Expense','id'=>'expense_expense']) }}
                            </div>
                          </div>
                          <div class="col-md-6 col-12">
                            <div class="form-group">
                                {{ Form::label('hr_admin', 'HR & Admin',['class'=>'']) }}
                                {{ Form::select('hr_admin', ['1'=>'Employees Salary','2'=>'Wages','3'=>'Partners Compensation','4'=>'Travel','5'=>'Accomodation'] , null,['class'=>'select2 form-control ', 'placeholder' => 'Please Select HR & Admin Expense','id'=>'expense_expense']) }}
                            </div>
                          </div>

                          <div class="col-md-6 col-12">
                            <div class="form-group">
                                {{ Form::label('Infra_stationary', 'Infra & Stationary',['class'=>'']) }}
                                {{ Form::select('Infra_stationary', ['1'=>'Utilities Bill','2'=>'Printing Papers','3'=>'System Equipments','4'=>'Office Stationary','5'=>'Postage, Telephone & Fax Bill'] , null,['class'=>'select2 form-control ', 'placeholder' => 'Please Select Infra & Stationary Expense','id'=>'expense_expense']) }}
                            </div>
                          </div>

                          <div class="col-md-6 col-12">
                            <div class="form-group">
                                {{ Form::label('miscellaneous', 'Miscellaneous',['class'=>'']) }}
                                {{ Form::select('miscellaneous', [] , null,['class'=>'select2 form-control ', 'placeholder' => 'Please Select Miscellaneous Expense','id'=>'expense_expense']) }}
                            </div>
                          </div>
                          
                          
                          <div class="col-12 d-flex justify-content-start">
                            {{ Form::submit('Save', array('class' => 'btn btn-primary mr-1 mb-1')) }}
                            <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
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

        <div class="modal fade text-left" id="add_expense_category_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
          <div class="modal-dialog" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="myModalLabel1">Add Expense Category</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                      </button>
                  </div>
                  <div class="modal-body">
                      @include('backend.expensecategories._form')
                  </div>
              </div>
          </div>
        </div>
        <div class="modal fade text-left" id="add_expense_sub_category_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
          <div class="modal-dialog" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="myModalLabel1">Add Expense Sub Category</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                      </button>
                  </div>
                  <div class="modal-body">
                      @php $expense_category_list =  $expense_categories; @endphp
                      @include('backend.expensesubcategories._form',compact('expense_category_list'))
                  </div>
              </div>
          </div>
        </div>
    <script>
      $(document).ready(function()
      {
        $('.select2').select2();
        if ($("#expense_expense_category_id").val() != '')
        {
          expensesubcategories($("#expense_expense_category_id").val());
        }
        $("#expense_expense_category_id").change(function(){
          var expense_expense_category_id = $(this).val();
          expensesubcategories(expense_expense_category_id);
        });
        function expensesubcategories(expense_expense_category_id)
        {
          $.ajax({
              url: '{{url("admin/expenses/getexpensesubcategory")}}',
              type: 'post',
              data:
              {
                expense_category_id: expense_expense_category_id ,_token: "{{ csrf_token() }}",
              },
              success: function (data)
              {
                //console.log(data);
                $('.expense_subcategory').html(data);
              }
           });
        }
        var expense_catdropdowncnt = 1;
        $('#expense_expense_category_id').on('select2:open', function () {
            let category_options = $(this).data('select2');
            if (!$('.select2-link').length) 
            {
              if(expense_catdropdowncnt == 1)
              {
                category_options.$results.parents('.select2-results')
                  .append('<div class="select2-link2 select2-close text-right"><button id="open_expense_category_modal" class="btn btn-secondary">Add New Item +</button></div>')
                  .on('click', function (b) {
                  });
                  expense_catdropdowncnt++;
              }
            }
        });
        $(document).on('click','#open_expense_category_modal',function()
        {
          console.log('test in category');
          $('#expense_expense_category_id').select2('close');
          $('#add_expense_category_modal').modal('show');
        });
        $('#submit_expense_category').on('click',function()
        {
          var expense_category_name = $("#expense_category_name",$('#add_expense_category_modal')).val();
          var expense_category_description = $("#expense_category_description",$('#add_expense_category_modal')).val();
          var has_subcategories = $("input[name=has_subcategories]:checked",$('#add_expense_category_modal')).val();
          var visibility = $("input[name=visibility]:checked",$('#add_expense_category_modal')).val();
          if(expense_category_name != '' && expense_category_description != '')
          {
            console.log('in');
            $.ajax({
              url: '{{url("admin/expensecategories/store")}}',
              type: 'post',
              data:
              {
                expense_category_name: expense_category_name, expense_category_description: expense_category_description,
                has_subcategories: has_subcategories, visibility: visibility,
                _token: "{{ csrf_token() }}",form_type: 'expense_category_modal',
              },
              dataType: 'json',
              success: function (data)
              {
                // console.log(data['brands']);
                if (data.flag == 'success')
                {
                  alert(data['message']);
                  $(".expense_category").html(data['expense_categories']);
                  $('#add_expense_category_modal').modal('hide');
                }
                else
                {
                  alert(data['message']);
                  $('#add_expense_category_modal').modal('hide');

                }
              }
            });
            // $('#add_brand_modal').modal('show');
          }
        });
        var subcatdropdowncnt = 1;
        $('#expense_sub_category_id').on('select2:open', function () {
            let sub_category_options = $(this).data('select2');
            if (!$('.select2-link').length) 
            {
              if(subcatdropdowncnt == 1)
              {
                sub_category_options.$results.parents('.select2-results')
                  .append('<div class="select2-link2 select2-close text-right"><button id="open_sub_category_modal" class="btn btn-secondary">Add New Item +</button></div>')
                  .on('click', function (b) {
                    // $('#add_brand_modal').modal('show');
                  });
                  subcatdropdowncnt++;
              }
            }
        });
        $(document).on('click','#open_sub_category_modal',function()
        {
          console.log('test in sub category');
          $('#expense_sub_category_id').select2('close');
          $('#add_sub_category_modal').modal('show');
        });
        $('#submit_sub_category').on('click',function()
        {
          // console.log($(this));
          // console.log($(this).siblings);
          // var category_id = $("#add_sub_category_modal").children().children().children().children().children().children().find("#category_id").val();
          var category_id = $("#category_id", $('#add_sub_category_modal')).val();
          var selection_category_id = $("#product_category_id").val();
          // var subcategory_name = $("#add_sub_category_modal").children().children().children().children().children().children().find("#subcategory_name").val();
          var subcategory_name = $("#subcategory_name", $('#add_sub_category_modal')).val();
          // var subcategory_description = $("#add_sub_category_modal").children().children().children().children().children().children().find("#subcategory_description").val();
          var subcategory_description = $("#subcategory_description", $('#add_sub_category_modal')).val();
          // var visibility = $("#add_sub_category_modal").children().children().children().children().children().children().find("input[name=visibility]:checked").val();
          var visibility = $("#visibility", $('#add_sub_category_modal')).val();
          if(subcategory_name != '' && subcategory_description != '')
          {
            console.log('in');
            $.ajax({
              url: '{{url("admin/subcategories/store")}}',
              type: 'post',
              data:
              {
                subcategory_name: subcategory_name, subcategory_description: subcategory_description,
                visibility: visibility, category_id: category_id,
                _token: "{{ csrf_token() }}",form_type: 'sub_category_modal',selection_category_id: selection_category_id,
              },
              dataType: 'json',
              success: function (data)
              {
                // console.log(data['brands']);
                if (data.flag == 'success')
                {
                  alert(data['message']);
                  $("#expense_sub_category_id").html(data['sub_categories']);
                  $('#add_sub_category_modal').modal('hide');
                }
                else
                {
                  alert(data['message']);
                  // console.log(data);
                  $('#add_sub_category_modal').modal('hide');

                }
              }
            });
            // $('#add_brand_modal').modal('show');
          }
        });
       
        $("#expense_type_id").change(function(){
          var expense_type_id = $(this).val();
          expense_expense(expense_type_id);
        });
        function expense_expense(expense_type_id)
        {
          $.ajax({
              url: '{{url("admin/expenses/getexpenseexpense")}}',
              type: 'post',
              data:
              {
                expense_type_id: expense_type_id ,_token: "{{ csrf_token() }}",
              },
              success: function (data)
              {
                //console.log(data);
                $('#expense_expense').html(data);
              }
           });
        }
        
      });
    </script>
@endsection
