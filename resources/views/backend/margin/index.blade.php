@extends('backend.layouts.app')
@section('title', 'Set Price')


@section('content')

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Set Price</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                {{-- <a href="{{ asset('public/sheets/sample.xlsx') }}" class="btn btn-outline-primary">Sample Sheet</a>
            --}}
                <a href="{{ route('admin.sellingpricing') }}" class="btn btn-outline-secondary">Back</a>
            </div>
        </div>
    </div>

    <section id="multiple-column-form">
        <div class="row match-height">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">


                            @include('backend.includes.errors')
                            {{ Form::open(['url' => 'admin/updatepricings/update', 'class' => 'w-100', 'enctype' => 'multipart/form-data']) }}
                            {{-- {{ Form::hidden('pricing_master_id', $pricings->pricing_master_id, ['class' => 'form-control']) }} --}}

                            <div class="row">

                                <div class="col-md-5"></div>

                                <div class="col-md-3 col-sm-3">
                                    <div class="form-group">
                                        {{ Form::label('file', 'Import Data From File') }}
                                        <input type="file" name="file" class="form-control">

                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <br style="margin-top:5px;">
                                        {{ Form::submit('Import', ['class' => 'btn btn-primary ']) }}

                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                </div>

                            </div>

                            {{ Form::close() }}
                            <hr>


                            <table class="table table-bordered table-striped" id="tbl-datatable">
                                <thead class="bg-light">
                                    <tr>
                                        <th>#</th>  
                                        <th>Brand</th>
                                        <th>Format</th>
                                        <th>Margin %</th>
                                    </tr>
                                </thead>
                                <tbody>



                                </tbody>
                            </table>


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


    <script>
        var table = $('#tbl-datatable').DataTable({
            processing: true,
            serverSide: true,
            ajax: {
                url: "{{ route('admin.margin') }}", // Replace with your server-side endpoint
                type: "GET",
            },
            columns: [{
                    data: 'DT_RowIndex',
                    name: 'DT_RowIndex'
                },
                {
                    data: 'brand_name',
                    name: 'brand_name'
                },
                {
                    data: 'sub_category.subcategory_name',
                    name: 'sub_category.subcategory_name'
                },
                {
                    data: 'margin',
                    name: 'margin',
                    render: function(data, type, row) {
                        // return data==0?0:data;
                        return '<input type="number" name="margin" class="selling-price-input" value="' +
                            data + '">';
                    }
                },
            ],
            buttons: [{
                extend: 'excel',
                exportOptions: {
                    columns: [0, 1, 2, 3],
                    modifier: {
                        page: 'all',
                        search: 'applied'
                    }
                },
                title: 'Product Data',
            }],
            dom: 'lBfrtip',
            select: true,
            lengthMenu: [
                [-1],
                ['All']
            ],
        });
    </script>

@endsection
