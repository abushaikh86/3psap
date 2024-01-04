@extends('backend.layouts.app')
@section('title', 'Invoice')

@section('content')
<div class="content-header row">
  <div class="content-header-left col-md-6 col-12 mb-2">
    <h3 class="content-header-title">Invoice</h3>
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="{{ route('admin.dashboard')}}">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Invoice</li>
        </ol>
      </div>
    </div>
  </div>
  <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
    <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
      <div class="btn-group" role="group">
       
      <a href="{{ url('admin/invoice/create') }}" class="btn  btn-outline-primary"><i class="feather icon-plus"></i> Add</a>
      
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

      <div class="table-responsive">
          <table class="table zero-configuration" id="tbl-datatable">
              <thead>
                  <tr>
                    <th>#</th>
                    <th>Invoice No</th>
                    <th>Date</th>
                    <th>Invoice To</th>
                    <th>Action</th>
                  </tr>
              </thead>
              <tbody>
                {{-- {{dd($invoice)}} --}}
                @if(isset($invoice) && count($invoice)>0)
                  @php $srno = 1; @endphp
                  @foreach($invoice as $item)
                  <tr>
                    <td>{{ $srno }}</td>
                    <td>{{ $item->bill_no }}</td>
                    <td>{{ $item->bill_date }}</td>
                    <td>
                      <?php
                      foreach($party as $row){
                        if($row['business_partner_id'] == $item->party_id){
                          echo $row['bp_name'];
                        }
                      }
                      ?>
                    </td>

                    <td>
                      <!-- <a href="{{ url('admin/invoice/download/'.$item->invoice_id) }}" class="btn btn-secondary" title="Download"><i class="icofont icofont-download-alt"></i></a> -->
                      <a href="{{ url('admin/invoice/view/'.$item->invoice_id) }}" class="btn btn-primary" title="View"><i class="feather icon-eye"></i></a>
                     
                     <a href="{{ url('admin/invoice/edit/'.$item->invoice_id) }}" class="btn btn-primary" title="Edit"><i class="feather icon-edit"></i></a>
                     
                      {!! Form::open([
                          'method'=>'GET',
                          'url' => ['admin/invoice/delete', $item->invoice_id],
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
