@extends('backend.layouts.app')
@section('title', 'Expenses')

@section('content')
<div class="content-header row">
  <div class="content-header-left col-md-6 col-12 mb-2">
    <h3 class="content-header-title">Expenses</h3>
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="{{ route('admin.dashboard')}}">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Expenses</li>
        </ol>
      </div>
    </div>
  </div>
  <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
    <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
      <div class="btn-group" role="group">
        <a class="btn btn-outline-primary" href="{{ route('admin.expenses.create') }}">
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
                    <h4 class="card-title">Expenses</h4>
                </div>
                <div class="card-content">
                    <div class="card-body card-dashboard">
                        <div class="table-responsive">
                            <table class="table zero-configuration" id="tbl-datatable">
                                <thead>
                                    <tr>
                                      <th>#</th>
                                      <th>Category</th>
                                      <th>Sub Category</th>
                                      <th>Type</th>
                                      <th>Sub Type</th>
                                      <th>Expense Name</th>
                                      <th>Amount</th>
                                      <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  @if(isset($expenses) && count($expenses)>0)
                                    @php $srno = 1; @endphp
                                    @foreach($expenses as $product)
                                    <tr>
                                      <td>{{ $srno }}</td>
                                      <td><img class="card-img-top img-fluid mb-1" src="{{ asset('public/backend-assets/uploads/product_thumbs/') }}/{{ $product->product_thumb }}" alt="Product Image"></td>
                                      <td>{{ isset($product->item_type)?$product->item_type->item_type_name:"" }}</td>
                                      <td>{{ $product->item_code }}</td>
                                      <td>{{ isset($product->brand)?$product->brand->brand_name:"" }}</td>
                                      <td>{{ isset($product->category)?$product->category->category_name:"" }}</td>
                                      <td>{{ isset($product->sub_category)?$product->sub_category->subcategory_name:"" }}</td>
                                      <td>

                                        <a href="{{ url('admin/expenses/edit/'.$product->expense_master_id) }}" class="btn btn-primary" title="Edit"><i class="feather icon-edit"></i></a>
                                       
                                        {!! Form::open([
                                            'method'=>'GET',
                                            'url' => ['admin/expenses/delete', $product->expense_master_id],
                                            'style' => 'display:inline'
                                        ]) !!}
                                            {!! Form::button('<i class="feather icon-trash"></i>', ['type' => 'submit','title'=>'Delete', 'class' => 'btn btn-danger','onclick'=>"return confirm('Are you sure you want to Delete this Entry ?')"]) !!}
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
