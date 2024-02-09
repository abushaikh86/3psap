@extends('backend.layouts.app')
@section('title', 'Products')

@section('content')
<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">Products</h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                    </li>
                    <li class="breadcrumb-item active">Products</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
        <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
            <div class="btn-group" role="group">
                <a class="btn btn-outline-primary" href="{{ route('admin.products.create') }}">
                    <i class="feather icon-plus"></i> Add
                </a>
                @if (is_superAdmin())
                <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal"
                    data-bs-target="#importModal">
                    <i class="feather icon-download"></i>
                    Import
                </button>
                @endif
            </div>
        </div>
    </div>
</div>

{{-- import modal --}}

<div class="modal fade" id="importModal" tabindex="-1" aria-labelledby="importModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="importModalLabel">Import Data</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- Form for importing data -->
                {{ Form::open(['url' => 'admin/updateProduct/update', 'class' => 'w-100', 'enctype' =>
                'multipart/form-data']) }}


                <div class="form-group mb-3">
                    {{ Form::label('file', 'Select File') }}
                    <input type="file" name="file" class="form-control">
                </div>
                <div class="d-flex mb-1">
                    <a href="{{ asset('public/sheets/sample-product.xlsx') }}"
                        class="btn btn-sm btn-outline-primary mr-1">Sample Sheet
                        (Product)</a>
                </div>

                <button type="submit" class="btn btn-primary">Submit</button>
                {{ Form::close() }}
            </div>
        </div>
    </div>
</div>

<section id="basic-datatable">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Products</h4>
                </div>
                <div class="card-content">
                    <div class="card-body card-dashboard">
                        <div class="table-responsive">
                            <table class="table zero-configuration" id="tbl-datatable">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Image</th>
                                        <th>Item Type</th>
                                        <th>Item Code</th>
                                        <th>SKU</th>
                                        <th>Brand</th>
                                        <th>Category</th>
        
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if (isset($products) && count($products) > 0)
                                    @php $srno = 1; @endphp
                                    @foreach ($products as $product)
                                    <tr>
                                        <td>{{ $srno }}</td>
                                        <td>
                                            @if (!empty($product->product_thumb))
                                            <a href="{{ asset('public/backend-assets/images/') }}/{{ $product->product_thumb }}"
                                                target="_blank"><img class="card-img-top img-fluid mb-1"
                                                    src="{{ asset('public/backend-assets/images/') }}/{{ $product->product_thumb }}"
                                                    alt="Product Image" style="width:50px"></a>
                                            @endif
                                        </td>
                                        </td>
                                        <td>{{ isset($product->item_type) ? $product->item_type->item_type_name : '' }}
                                        </td>
                                        <td>{{ $product->item_code }}</td>
                                        <td>{{ $product->sku }}</td>
                                        <td>{{ isset($product->brand) ? $product->brand->brand_name : '' }}
                                        </td>
                                        <td>{{ isset($product->category) ? $product->category->category_name : '' }}
                                        </td>
                                   
                                        <td>

                                            <a href="{{ url('admin/products/edit/' . $product->product_item_id) }}"
                                                class="btn btn-primary" title="Edit"><i
                                                    class="feather icon-edit"></i></a>

                                            {!! Form::open([
                                            'method' => 'GET',
                                            'url' => ['admin/products/delete', $product->product_item_id],
                                            'style' => 'display:inline',
                                            ]) !!}
                                            {!! Form::button('<i class="feather icon-trash"></i>', [
                                            'type' => 'submit',
                                            'title' => 'Delete',
                                            'class' => 'btn btn-danger',
                                            'onclick' => "return confirm('Are you sure you want to Delete this Entry
                                            ?')",
                                            ]) !!}
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
