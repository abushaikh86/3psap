@extends('backend.layouts.app')
@section('title', 'Sales Report')

@section('content')
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Sales Report</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Sales Report</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">

                </div>
            </div>
        </div>
    </div>
    <section id="basic-datatable">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Sales Report</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body card-dashboard">
                            <div class="table-responsive">
                                <table class="table zero-configuration" id="tbl-datatable">
                                    <thead>
                                        <tr>
                                            <th>Sr.No</th>
                                            <th>SKU</th>
                                            <th>Customer</th>
                                            <th>Customer Name</th>
                                            <th>Custimer Tag</th>
                                            <th>City</th>
                                            <th>Customer Type</th>
                                            <th>Cluster</th>
                                            <th>Region</th>
                                            <th>Country</th>
                                            <th>Invoice No.</th>
                                            <th>Invoice Date</th>
                                            <th>Month</th>
                                            <th>Quarter</th>
                                            <th>Year</th>
                                            <th>UAPL Code</th>
                                            <th>Product</th>
                                            <th>Brand</th>
                                            <th>Category</th>
                                            <th>Sub-Category</th>
                                            <th>Variant</th>
                                            <th>Format Pack Size</th>
                                            <th>Product</th>
                                            <th>MRP</th>
                                            <th>Unit/Case</th>
                                            <th>Qty(Case)</th>
                                            <th>Qty(Pcs)(System)</th>
                                            <th>Qty(Pcs)(Single Units)</th>
                                            <th>NSV/Unit</th>
                                            <th>CGST</th>
                                            <th>SGST</th>
                                            <th>IGST</th>
                                            <th>Gross Value</th>
                                        </tr>
                                    </thead>
                                    <tbody>
     

                                        <tr>
                                   

                                        </tr>
                        
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
