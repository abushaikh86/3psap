@extends('backend.layouts.app')
@section('title', 'Bussiness Partner')
@section('content')
    <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-header row">
                <div class="content-header-left col-12 mb-2 mt-1">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h5 class="content-header-title float-left pr-1 mb-0">Bussiness Partner</h5>
                            <div class="breadcrumb-wrapper col-12">
                                <ol class="breadcrumb p-0 mb-0">
                                    <li class="breadcrumb-item"><a href="{{ route('admin.internalusers') }}"><i
                                                class="bx bx-home-alt"></i></a>
                                    </li>
                                    <li class="breadcrumb-item active">Bussiness Partner
                                    </li>
                                </ol>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <section id="basic-datatable">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Bussiness Partner</h4>
                            </div>
                            <div class="card-content">
                                <div class="card-body card-dashboard">

                                    @include('backend.includes.errors')
                                    {{ Form::open(['url' => 'admin/bussinesspartner/store']) }}
                                    @csrf
                                    <div class="form-body">
                                        <div class="row">
                                            <div class="col-md-6 col-12">
                                                <div class="form-label-group">
                                                    <select name="business_partner_type" id="business_partner_type"
                                                        class="form-control" placeholder='Select Bussiness Partner Type'>
                                                        <option value="">Select Bussiness Partner Type</option>
                                                        @foreach ($bussinesstype as $btype)
                                                            <option value="{{ $btype->bussiness_master_type_id }}"> {{ $btype->bussiness_master_type }}</option>
                                                        @endforeach
                                                    </select>
                                                    {{ Form::label('Bussness Partner Type', 'Bussness Partner Type *') }}
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-12">
                                                <div class="form-label-group">
                                                    {{ Form::text('bp_code', null, ['class' => 'form-control', 'placeholder' => 'Bussiness Partner Code', 'required' => true]) }}
                                                    {{ Form::label('bp_code', 'Bussiness Partner Code *') }}
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-12">
                                                <div class="form-label-group">
                                                    {{ Form::text('bp_name', null, ['class' => 'form-control', 'placeholder' => 'Bussiness Partner Name', 'required' => true]) }}
                                                    {{ Form::label('bp_name', 'Bussiness Partner Name *') }}
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-12">
                                                <div class="form-label-group">
                                                    <select name="bp_organisation_type" id="bp_organisation_type"
                                                        class="form-control" placeholder='Select Bussiness Organization Type'>
                                                        <option value="">Select Bussiness Partner Organization</option>
                                                    @foreach ($bpOrgType as $OrgType)
                                                    <option value="{{ $OrgType->bp_organisation_type_id }}">{{ $OrgType->bp_organisation_type }}</option>
                                                    @endforeach

                                                    </select>
                                                    {{ Form::label('Bussness Partner Type', 'Bussness Partner Type *') }}
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-12">
                                                <div class="form-label-group">
                                                    {{ Form::text('bp_category', null, ['class' => 'form-control', 'placeholder' => 'Bussiness Partner Category', 'required' => true]) }}
                                                    {{ Form::label('bp_category', 'Bussiness Partner Category *') }}
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-12">
                                                <div class="form-label-group">
                                                    {{ Form::text('bp_group', null, ['class' => 'form-control', 'placeholder' => 'Bussiness Partner Group', 'required' => true]) }}
                                                    {{ Form::label('bp_group', 'Bussiness Partner group *') }}
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-12">
                                                <div class="form-label-group">
                                                    {{ Form::text('sales_manager', null, ['class' => 'form-control', 'placeholder' => 'Sales Manager', 'required' => true]) }}
                                                    {{ Form::label('sales_manager', 'Sales Manager *') }}
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-12">
                                                <div class="form-label-group">
                                                    {{ Form::text('sales_officer', null, ['class' => 'form-control', 'placeholder' => 'Sales Officer', 'required' => true]) }}
                                                    {{ Form::label('sales_officer', 'Sales Officer *') }}
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-12">
                                                <div class="form-label-group">
                                                    {{ Form::text('salesman', null, ['class' => 'form-control', 'placeholder' => 'Salesman', 'required' => true]) }}
                                                    {{ Form::label('salesman', 'Salesman *') }}
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-12">
                                                <div class="form-label-group">
                                                    <select name="payment_terms" id="payment_terms"
                                                        class="form-control" placeholder='Select Terms of Payment'>
                                                        <option value="">Select Terms of Payment</option>
                                                        @foreach ($termPayment as $terms)
                                                        <option value="{{ $terms->payment_terms_id }}"> {{ $terms->term_type }} </option>
                                                        @endforeach

                                                    </select>
                                                    {{ Form::label('terms_peyment', 'Terms of Payment *') }}
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-12">
                                                <div class="form-label-group">
                                                    {{ Form::text('credit_limit', null, ['class' => 'form-control', 'placeholder' => 'Credit limit', 'required' => true]) }}
                                                    {{ Form::label('credit_limit', 'Credit Limit *') }}
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-12">
                                                <div class="form-label-group">
                                                    {{ Form::text('gst_details', null, ['class' => 'form-control', 'placeholder' => 'GST Deatils', 'required' => true]) }}
                                                    {{ Form::label('gst_details', 'GST Details ') }}
                                                </div>
                                            </div>




                                        </div>
                                        <div class="col md-12 center">
                                            <center>
                                                {{ Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1']) }}
                                                <button type="reset"
                                                    class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                                            </center>
                                        </div>

                                    </div>


                                    {{ Form::close() }}
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
    {{-- <script>
    $(document).ready(function(){
        $( function() {
            $( "#dob" ).datepicker();
          } );
    });
</script> --}}

@endsection
