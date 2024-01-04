@extends('backend.layouts.app')
@section('title', 'Order Fulfilment')

@section('content')
<div class="content-header row">
  <div class="content-header-left col-md-6 col-12 mb-2">
    <h3 class="content-header-title">Order Fulfilment</h3>
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="{{ route('admin.dashboard')}}">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Order Fulfilment</li>
        </ol>
      </div>
    </div>
  </div>
  <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
    <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
      <div class="btn-group" role="group">

      {{-- <a href="{{ url('admin/goodsservicereceipts/create') }}" class="btn  btn-outline-primary"><i class="feather icon-plus"></i> Add</a> --}}

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
</div>
      <div class="table-responsive">
          <table class="table zero-configuration" id="tbl-datatable">
              <thead>
                  <tr>
                    <th>#</th>
                    <th>Order Fulfilment No</th>
                    <th>Date</th>
                    <th>Order Fulfilment To</th>

                    <th>Action</th>
                  </tr>
              </thead>
              <tbody>
                @if(isset($goodsservicereceipts) && count($goodsservicereceipts)>0)
                  @php $srno = 1; @endphp
                  @foreach($goodsservicereceipts as $item)
                  <tr>
                    <td>{{ $srno }}</td>
                    <td>{{ $item->bill_no }}</td>
                    <td>{{ $item->bill_date }}</td>
                    <td>{{ $item->get_partyname->bp_name??'' }}</td>

                    <td>
                       <!-- <a href="{{ url('admin/orderfulfilment/download/'.$item->order_fulfillment_id) }}" class="btn btn-secondary" title="Download"><i class="icofont icofont-download-alt"></i></a> -->
                      <a href="{{ url('admin/orderfulfilment/view/'.$item->order_fulfillment_id) }}" class="btn btn-primary" title="View"><i class="feather icon-eye"></i></a>

                      {!! Form::open([
                          'method'=>'GET',
                          'url' => ['admin/orderfulfilment/createarinvoice', $item->order_fulfillment_id],
                          'style' => 'display:inline'
                      ]) !!}
                     
                          {!! Form::button('<i class="feather icon-plus"></i>', ['type' => 'submit', 'class' => 'btn btn-info','onclick'=>"return confirm('Are you sure you want to Create A/r Invoice from this Order Fulfilment ?')",'title'=>'Create A/r Invoice']) !!}
                     
                      {!! Form::close() !!}

                      @can('Update Goods Receipt PO')
                      {{--  <a href="{{ url('admin/goodsservicereceipts/edit/'.$item->purchase_order_id) }}" class="btn btn-primary" title="Edit"><i class="feather icon-edit"></i></a>  --}}
                      <a href="{{ url('admin/orderfulfilment/edit/'.$item->order_fulfillment_id) }}" class="btn btn-primary" title="Edit"><i class="feather icon-edit"></i></a>
                      @endcan
                      {!! Form::open([
                          'method'=>'GET',
                          'url' => ['admin/orderfulfilment/delete', $item->order_fulfillment_id],
                          'style' => 'display:inline'
                      ]) !!}

                          {!! Form::button('<i class="feather icon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger','onclick'=>"return confirm('Are you sure you want to Delete this Entry ?')",'title'=>'Delete']) !!}

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
