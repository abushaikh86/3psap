@extends('backend.layouts.app')
@section('title', 'Edit Expense Category')

@section('content')
<div class="content-header row">
  <div class="content-header-left col-md-6 col-12 mb-2">
    <h3 class="content-header-title">Expense Categories</h3>
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="{{ route('admin.dashboard')}}">Dashboard</a>
          </li>
          <li class="breadcrumb-item">
            <a href="{{ route('admin.expensecategories')}}">Expense Categories</a>
          </li>
          <li class="breadcrumb-item active">Edit Expense Category</li>
        </ol>
      </div>
    </div>
  </div>
  <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
    <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
      <div class="btn-group" role="group">
        <a class="btn btn-outline-primary" href="{{ route('admin.expensecategories') }}">
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
                  <h4 class="card-title">Edit Expense Category</h4>
                </div>
                <div class="card-content">
                  <div class="card-body">
                    @include('backend.includes.errors')
                    {!! Form::model($expensecategories, [
                        'method' => 'POST',
                        'url' => ['admin/expensecategories/update'],
                        'class' => 'form',
                        'enctype' => 'multipart/form-data'
                    ]) !!}
                      <div class="form-body">
                        <div class="row">
                          <div class="col-md-12 col-12">
                            <div class="form-group">
                              {{ Form::hidden('expense_category_id', $expensecategories->expense_category_id) }}
                              {{ Form::label('expense_category_name',  'Expense Category Name *') }}
                              {{ Form::text('expense_category_name', null, ['class' => 'form-control', 'placeholder' => 'Enter Expense Category Name', 'required' => true]) }}
                            </div>
                          </div>
                          <div class="col-md-3 col-6">
                            {{ Form::label('has_subexpensecategories', 'Has Expense Sub Categories ?') }}
                            <fieldset>
                              <div class="radio radio-success">
                                {{ Form::radio('has_subexpensecategories','1',true,['id'=>'radioyes']) }}
                                {{ Form::label('radioyes', 'Yes') }}
                              </div>
                            </fieldset>
                            <fieldset>
                              <div class="radio radio-danger">
                                {{ Form::radio('has_subexpensecategories','0',false,['id'=>'radiono']) }}
                                {{ Form::label('radiono', 'No') }}
                              </div>
                            </fieldset>
                          </div>
                          <div class="col-md-3 col-6">
                            {{ Form::label('visibility', 'Show / Hide') }}
                            <fieldset>
                              <div class="radio radio-success">
                                {{ Form::radio('visibility','1',true,['id'=>'radioshow']) }}
                                {{ Form::label('radioshow', 'Yes') }}
                              </div>
                            </fieldset>
                            <fieldset>
                              <div class="radio radio-danger">
                                {{ Form::radio('visibility','0',false,['id'=>'radiohide']) }}
                                {{ Form::label('radiohide', 'No') }}
                              </div>
                            </fieldset>
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
@endsection
