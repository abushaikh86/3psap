@extends('backend.layouts.app')
@section('title', 'Expense Categories')

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
          <li class="breadcrumb-item active">Expense Categories</li>
        </ol>
      </div>
    </div>
  </div>
  <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
    <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
      <div class="btn-group" role="group">
        <a class="btn btn-outline-primary" href="{{ route('admin.expensecategories.create') }}">
          <i class="feather icon-plus"></i> Add
        </a>
      </div>
    </div>
  </div>
</div>
<section id="basic-datatable">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Expense Categories</h4>
                </div>
                <div class="card-content">
                    <div class="card-body card-dashboard">
                        <div class="table-responsive">
                            <table class="table zero-configuration" id="tbl-datatable">
                                <thead>
                                    <tr>
                                      <th>#</th>
                                      <th>Expense Category Name</th>
                                      <th>Visibility</th>
                                      <th>Has Expense Sub Categories</th>
                                      <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  @if(isset($expensecategories) && count($expensecategories)>0)
                                    @php $srno = 1; @endphp
                                    @foreach($expensecategories as $expense_category)
                                    <tr>
                                      <td>{{ $srno }}</td>
                                      <td>{{ $expense_category->expense_category_name }}</td>
                                      <td>{{ ($expense_category->visibility==1)?'Yes':'No' }}</td>
                                      <td>{{ ($expense_category->has_subexpensecategories==1)?'Yes':'No' }}</td>
                                      <td>
                                        @php
                                          if($expense_category->has_subexpensecategories)
                                          {
                                        @endphp
                                            <a href="{{ url('admin/expensesubcategories/expensecategory/' . $expense_category->expense_category_id) }}" class="btn btn-primary btn-xs">Expense Sub Categories</a>
                                        @php
                                          }
                                        @endphp
                                        <a href="{{ url('admin/expensecategories/edit/'.$expense_category->expense_category_id) }}" class="btn btn-primary" title="Edit"><i class="feather icon-edit"></i></a>
                                        {!! Form::open([
                                            'method'=>'GET',
                                            'url' => ['admin/expensecategories/delete', $expense_category->expense_category_id],
                                            'style' => 'display:inline'
                                        ]) !!}
                                            {!! Form::button('<i class="feather icon-trash"></i>', ['type' => 'submit', 'title'=>'Delete','class' => 'btn btn-danger','onclick'=>"return confirm('Are you sure you want to Delete this Entry ?')"]) !!}
                                        {!! Form::close() !!}
                                      </td>
                                    </tr>
                                    @php $srno++; @endphp
                                    @endforeach
                                  @endif
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection
@section('scripts')
<script src="{{ asset('public/backend-assets/vendors/js/tables/datatable/datatables.min.js') }}"></script>
<script src="{{ asset('public/backend-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js') }}"></script>
<script src="{{ asset('public/backend-assets/vendors/js/tables/datatable/dataTables.buttons.min.js') }}"></script>

<script>
  $(document).ready(function()
  {

  });
</script>
@endsection
