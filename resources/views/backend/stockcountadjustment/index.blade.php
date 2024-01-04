@extends('backend.layouts.app')
@section('title', 'Stock Count Adjustment')

@section('content')
<div class="content-header row">
  <div class="content-header-left col-md-6 col-12 mb-2">
    <h3 class="content-header-title">Stock Count Adjustment</h3>
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="{{ route('admin.dashboard')}}">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Stock Count Adjustment</li>
        </ol>
      </div>
    </div>
  </div>
  <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
    <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
      <div class="btn-group" role="group">
        <!-- <a class="btn btn-outline-primary" href="{{ route('admin.stockcountadjustment.create') }}">
          <i class="feather icon-plus"></i> Add
        </a> -->
      </div>
    </div>
  </div>
</div>
<section id="basic-datatable">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                  <h4 class="card-title">Stock Count Adjustment</h4>
                </div>
                <div class="card-content">
                    <div class="card-body card-dashboard">
                        <div class="table-responsive">
                            <table class="table zero-configuration" id="tbl-datatable">
                                <thead>
                                    <tr>
                                      <th>#</th>
                                      <th>Storage Location Name</th>
                                      <th>Product</th>
                                      <th>Current Qty</th>
                                      <th>Adjusted Qty</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  @if(isset($stockcountadjustment) && count($stockcountadjustment)>0)
                                    @php $srno = 1; @endphp
                                    @foreach($stockcountadjustment as $stock)
                                    <tr>
                                      <td>{{ $srno }}</td>
                                      <td>{{ $stock->storagelocation->storage_location_name??'' }}</td>
                                      <td>{{ $stock->product->consumer_desc??'' }}</td>
                                      <td>{{ $stock->qty }}</td>
                                      <td><input type="text" name="adjusted_stock[]"></td>
                                    </tr>
                                    @php $srno++; @endphp
                                    @endforeach
                                    <td colspan="5" style="text-align:right;">
                                    
      <button type="submit" class="btn btn-primary mr-1 mb-1" id="submit_uom">Submit</button>
    
</td>
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
