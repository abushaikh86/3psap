@extends('backend.layouts.app')
@section('title', 'Purchase Order')

@section('content')
<div class="content-header row">
  <div class="content-header-left col-md-6 col-12 mb-2">
    <h3 class="content-header-title">Purchase Order</h3>
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="{{ route('admin.dashboard')}}">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Purchase Order</li>
        </ol>
      </div>
    </div>
  </div>
  <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
    <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
      <div class="btn-group" role="group">
       
      <a href="{{ url('admin/purchaseorder/create') }}" class="btn  btn-outline-primary"><i class="feather icon-plus"></i> Add</a>
      
      </div>
    </div>
  </div>
</div>

<section id="basic-datatable">
<div class="row">
<div class="col-12">
<div class="card">
<div class="card-content">
  <div class="card-body card-dashboard">
  <div class="row">
<div class="col-sm-12 text-sm-end">
      @can('Create Purchase Order')
      <a href="{{ url('admin/purchaseorder/create') }}" class="btn btn-primary"><i class="icofont icofont-plus"></i> Add</a>
      @endcan
</div>
</div>
      <div class="table-responsive">
          <table class="table zero-configuration" id="tbl-datatable">
              <thead>
                  <tr>
                    <th>#</th>
                    <th>Purchase Order No</th>
                    <th>Date</th>
                    <th>Purchase Order To</th>
                    
                    <th>Action</th>
                  </tr>
              </thead>
              <tbody>
                @if(isset($purchaseorder) && count($purchaseorder)>0)
                  @php $srno = 1; @endphp
                  @foreach($purchaseorder as $item)
                  <tr>
                    <td>{{ $srno }}</td>
                    <td>{{ $item->bill_no }}</td>
                    <td>{{ $item->bill_date }}</td>
                    <td>{{ $item->party_name }}</td>
                    
                    <td>
                       <!-- <a href="{{ url('admin/purchaseorder/download/'.$item->purchase_order_id) }}" class="btn btn-secondary" title="Download"><i class="icofont icofont-download-alt"></i></a> -->
                      <a href="{{ url('admin/purchaseorder/view/'.$item->purchase_order_id) }}" class="btn btn-primary" title="View"><i class="icofont icofont-ui-copy"></i></a>
                    
                      @can('Update Purchase Order')
                      <!-- <a href="{{ url('admin/purchaseorder/edit/'.$item->purchase_order_id) }}" class="btn btn-primary" title="Edit"><i class="icofont icofont-ui-edit"></i></a> -->
                      @endcan
                      {!! Form::open([
                          'method'=>'GET',
                          'url' => ['admin/purchaseorder/delete', $item->purchase_order_id],
                          'style' => 'display:inline'
                      ]) !!}
                     
                          {!! Form::button('<i class="icofont icofont-ui-delete"></i>', ['type' => 'submit', 'class' => 'btn btn-danger','onclick'=>"return confirm('Are you sure you want to Delete this Entry ?')",'title'=>'Delete']) !!}
                     
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
