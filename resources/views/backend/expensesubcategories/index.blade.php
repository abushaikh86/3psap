@extends('backend.layouts.app')
@section('title', 'Expense Sub Categories')

@section('content')
<div class="content-header row">
  <div class="content-header-left col-md-6 col-12 mb-2">
    <h3 class="content-header-title">Expense Sub Categories</h3>
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="{{ route('admin.dashboard')}}">Dashboard</a>
          </li>
          <li class="breadcrumb-item">
            <a href="{{ route('admin.expensecategories')}}">Expense Categories</a>
          </li>
          <li class="breadcrumb-item active">Expense Sub Categories</li>
        </ol>
      </div>
    </div>
  </div>
  <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
    <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
      <div class="btn-group" role="group">
        <a href="{{ route('admin.expensesubcategories.create') }}/{{ request()->category_id }}" class="btn btn-primary"><i class="feather icon-plus"></i> Add </a>
        <a class="btn btn-outline-secondary ml-25" href="{{ route('admin.expensecategories') }}">
          <i class="feather icon-arrow-left"></i> Back
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
                    <h4 class="card-title">@if(isset($expense_category)){{ $expense_category->expense_category_name }} : @endif Expense Sub Categories</h4>
                </div>
                <div class="card-content">
                    <div class="card-body card-dashboard">
                        <div class="table-responsive">
                            <table class="table zero-configuration" id="tbl-datatable">
                                <thead>
                                    <tr>
                                      <th>#</th>
                                      <th>Expense Sub Category Name</th>
                                      <!-- <th>Has Third Level Categories</th> -->
                                      <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  @if(isset($expense_subcategories) && count($expense_subcategories)>0)
                                    @php $srno = 1; @endphp
                                    @foreach($expense_subcategories as $expense_subcategorie)
                                    <tr>
                                      <td>{{ $srno }}</td>
                                      <td>{{ $expense_subcategorie->expense_subcategory_name }}</td>
                                      <!-- <td>{{ ($expense_subcategorie->has_sub_expense_subcategories==1)?'Yes':'No' }}</td> -->
                                      <td>
                                        <a href="{{ url('admin/expensesubcategories/edit/'.$expense_subcategorie->expense_subcategory_id) }}" class="btn btn-primary" title="Edit"><i class="feather icon-edit"></i></a>
                                        {!! Form::open([
                                            'method'=>'GET',
                                            'url' => ['admin/expensesubcategories/delete', $expense_subcategorie->expense_subcategory_id],
                                            'style' => 'display:inline'
                                        ]) !!}
                                            {!! Form::button('<i class="feather icon-trash"></i>', ['type' => 'submit', 'title'=>'Delete', 'class' => 'btn btn-danger','onclick'=>"return confirm('Are you sure you want to Delete this Entry ?')"]) !!}
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
</div>
</div>

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
