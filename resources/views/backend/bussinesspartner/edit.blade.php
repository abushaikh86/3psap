@extends('backend.layouts.app')
@section('title', 'Edit Business Partner')
@php
    use Spatie\Permission\Models\Role;
    use App\Models\backend\Beat;
@endphp
@section('content')
    {{-- {{ dd($bussinesspartner->toArray()) }} --}}

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Edit Business Partner</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Edit</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a class="btn btn-outline-primary" href="{{ route('admin.bussinesspartner') }}">
                        Back
                    </a>
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
                            @include('backend.includes.errors')
                            {{ Form::open(['url' => 'admin/bussinesspartner/update/'.$model->business_partner_id]) }}
                            @csrf
                            <div class="form-body">

                                <div class="row">
                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('Business Partner Type', 'Business Partner Type *') }}
                                            {{-- <select name="business_partner_type" id="business_partner_type"
                                                class="form-control" placeholder='Select Business Partner Type' required>
                                                @foreach ($bussinesstype as $btype)
                                                    <option value="{{ $btype->bussiness_master_type_id }}"
                                                        @if ($bussinesspartner->bussiness_master_type_id == $btype->bussiness_master_type_id) Selected @endif>
                                                        {{ $btype->bussiness_master_type }}</option>
                                                @endforeach
                                            </select> --}}
                                            {{ Form::select('business_partner_type', $bussiness_master_type, $model->business_partner_type, ['class' => 'form-control', 'id' => 'business_partner_type', 'placeholder' => 'Select Pricing Profile', 'required' => true]) }}

                                            {{-- hidden field for bussiness partner id  --}}
                                            {{ Form::hidden('business_partner_id', $model->business_partner_id, ['class' => 'form-control']) }}
                                            {{-- {{ Form::hidden('bp_address_id1', $business_partner_address[0]->bp_address_id, ['class' => 'form-control']) }}
                                            {{ Form::hidden('bp_address_id2', $business_partner_address[1]->bp_address_id, ['class' => 'form-control']) }} --}}

                                        </div>
                                    </div>
                                    {{-- <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('bp_code', 'Business Partner Code *') }}
                                            {{ Form::text('bp_code', $model->bp_code, ['class' => 'form-control', 'placeholder' => 'Business Partner Code', 'required' => true]) }}
                                        </div>
                                    </div> --}}

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('bp_name', 'Business Partner Name *') }}
                                            {{ Form::text('bp_name', $model->bp_name, ['class' => 'form-control', 'placeholder' => 'Business Partner Name', 'required' => true]) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('Business Partner Organization Type', 'Business Partner Organization Type *') }}
                                            {{-- <select name="bp_organisation_type" id="bp_organisation_type"
                                            <select name="business_partner_type" id="business_partner_type"
                                                class="form-control" placeholder='Select Business Organization Type' required>
                                                @foreach ($bpOrgType as $OrgType)
                                                    <option value="{{ $OrgType->bp_organisation_type_id }}"
                                                        @if ($model->bp_organisation_type_id == $OrgType->bp_organisation_type_id) selected @endif>
                                                        {{ $OrgType->bp_organisation_type }}</option>
                                                @endforeach

                                            </select> --}}
                                            {{ Form::select('bp_organisation_type', $bpOrgType, $model->bp_organisation_type, ['class' => 'form-control', 'placeholder' => 'Select Business Partner Organization Type', 'required' => true]) }}

                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('residential_status', 'Residential status *') }}
                                            {{ Form::select('residential_status', ['resident' => 'Resident', 'non-resident' => 'Non Resident', 'indian-company' => 'Indian company', 'foriegn-company' => 'Foriegn company'], $model->residential_status, ['class' => 'form-control', 'placeholder' => 'Select Residential status', 'required' => true]) }}
                                        </div>
                                    </div>


                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('bp_category', 'Business Partner Category *') }}
                                            {{ Form::select('bp_category', $business_partner_category, $model->bp_category, ['class' => 'form-control select2', 'placeholder' => 'Business Partner Category', 'required' => true]) }}

                                            {{-- {{ Form::text('bp_category', $model->bp_category, ['class' => 'form-control', 'placeholder' => 'Business Partner Category', 'required' => true]) }} --}}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('bp_group', 'Business Partner group *') }}
                                            {{ Form::text('bp_group', $model->bp_group, ['class' => 'form-control', 'placeholder' => 'Business Partner Group', 'required' => true]) }}
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12 d-none sm_dynamic">
                                        {{ Form::label('Sales Manager', 'Sales Manager *') }}
                                        <select name="sales_manager" id="sales_manager" class="form-control select2"
                                            placeholder='Select Manager'>
                                            <option value="">Select</option>
                                            @foreach ($admin_users as $btype)
                                                @if ($btype->role == 12)
                                                    <option value="{{ $btype->admin_user_id }}"
                                                        @if ($model->sales_manager == $btype->admin_user_id) Selected @endif>
                                                        {{ $btype->first_name }}</option>
                                                @endif
                                            @endforeach
                                        </select>


                                        {{-- <div class="form-label-group">
                                            {{ Form::label('sales_manager', 'Sales Manager *') }}
                                            {{ Form::text('sales_manager', $model->sales_manager, ['class' => 'form-control', 'placeholder' => 'Sales Manager', 'required' => true]) }}
                                        </div>  --}}
                                    </div>

                                    <div class="col-md-6 col-12 d-none sm_dynamic">
                                        {{ Form::label('Sales Officer', 'Sales Officer *') }}
                                        <select name="sales_officer" id="sales_officer" class="form-control select2"
                                            placeholder='Select Officer'>
                                            <option value="">Select</option>
                                            @foreach ($admin_users as $btype)
                                                @if ($btype->role == 10)
                                                    <option value="{{ $btype->admin_user_id }}"
                                                        @if ($model->sales_officer == $btype->admin_user_id) Selected @endif>
                                                        {{ $btype->first_name }}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                        {{-- <div class="form-label-group">
                                            {{ Form::label('sales_officer', 'Sales Officer *') }}
                                            {{ Form::text('sales_officer', $model->sales_officer, ['class' => 'form-control', 'placeholder' => 'Sales Officer', 'required' => true]) }}
                                        </div> --}}
                                    </div>

                                    <div class="col-md-6 col-12 d-none sm_dynamic">

                                        {{ Form::label('Salesman', 'Salesman *') }}
                                        <select name="salesman" id="salesman" class="form-control select2"
                                            placeholder='Select Salesman'>
                                            <option value="">Select</option>
                                            @foreach ($admin_users as $btype)
                                                @if ($btype->role == 11)
                                                    <option value="{{ $btype->admin_user_id }}"
                                                        @if ($model->salesman == $btype->admin_user_id) Selected @endif>
                                                        {{ $btype->first_name }}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                        {{-- <div class="form-label-group">
                                            {{ Form::label('salesman', 'Salesman *') }}
                                            {{ Form::text('salesman', $model->salesman, ['class' => 'form-control', 'placeholder' => 'Salesman', 'required' => true]) }}
                                        </div> --}}
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('terms_peyment', 'Terms of Payment *') }}
                                            <select name="payment_terms_id" id="payment_terms_id" class="form-control"
                                                placeholder='Select Terms of Payment' required>
                                                @foreach ($termPayment as $terms)
                                                    <option value="{{ $terms->payment_terms_id }}"
                                                        @if ($model->payment_terms_id == $terms->payment_terms_id) Selected = selected @endif>
                                                        {{ $terms->term_type }}</option>
                                                @endforeach

                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12 d-none show_credit_days">
                                        <div class="form-label-group">
                                            {{ Form::label('credit_limit', 'Credit Limit *') }}
                                            {{ Form::text('credit_limit', $model->credit_limit, ['class' => 'form-control', 'placeholder' => 'Enter Days']) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('gst_details', 'GST Number *') }}
                                            {{ Form::text('gst_details', $model->gst_details, ['class' => 'form-control', 'placeholder' => 'GST Number', 'required' => true]) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('gst_reg_type', 'GST Registration Type *') }}
                                            {{ Form::select('gst_reg_type', ['composite' => 'Composite', 'regular' => 'Regular'], $model->gst_reg_type, ['class' => 'form-control', 'placeholder' => 'Select GST Registration Type', 'required' => true]) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('rcm_app', 'RCM Application *') }}
                                            {{ Form::select('rcm_app', ['1' => 'Yes', '0' => 'No'], $model->rcm_app, ['class' => 'form-control', 'required' => true]) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            {{ Form::label('pricing_profile', 'Pricing Profile *') }}
                                            {{ Form::select('pricing_profile',$pricing_data, $model->pricing_profile, ['class' => 'form-control', 'placeholder' => 'Select Pricing Profile', 'required' => true]) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12 d-none shelf_left">
                                        <div class="form-label-group">
                                            {{ Form::label('shelf_life', 'Freshness Requirement') }}
                                            {{ Form::text('shelf_life', $model->shelf_life, ['class' => 'form-control', 'placeholder' => 'Freshness Requirement']) }}
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12 ">
                                        <div class="form-label-group">
                                            {{ Form::label('msme_reg', 'MSME registration *') }}
                                            {{ Form::select('msme_reg', ['1' => 'Yes', '0' => 'No'], $model->msme_reg, ['class' => 'form-control', 'required' => true]) }}
                                        </div>
                                    </div>



                                    <div class="col-md-12 col-12 mt-3 d-none beat_det">
                                        <h4><strong>Beat Details</strong></h4>
                                    </div>

                                   
                                    <div class="col-md-6 col-12 d-none beat_det">
                                        <div class="form-group">
                                            {{ Form::label('beat_id', 'Beat *') }}
                                            {{-- <select name="beat_id" id="beat" class="form-control select2"></select> --}}
                                            {{ Form::select('beat_id', Beat::pluck('beat_name', 'beat_id'), $model->beat_id, ['class' => 'form-control select2', 'placeholder' => 'Select Beat']) }}

                                        </div>
                                    </div>




                                </div> {{-- main row --}}
                            </div>
                            <div class="col md-12 text-center mt-3">

                                {{ Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1']) }}
                                <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>

                            </div>

                        </div>


                        {{ Form::close() }}
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>

    {{-- beat details js --}}

    {{-- for category --}}
    <div class="modal fade text-left" id="add_bp_cat_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel1">Add Business Partner Category</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12 col-12">
                            <div class="form-group">
                                {{ Form::label('bp_category', 'Add Category *') }}
                                {{ Form::text('bp_category', null, ['class' => 'form-control', 'id' => 'bp_category_modal', 'placeholder' => 'Business Partner Category', 'required' => true]) }}
                            </div>
                        </div>

                        <div class="col-12 d-flex justify-content-start">
                            <button type="submit" class="btn btn-primary mr-1 mb-1" id="submit_bp_cat">Submit</button>
                            <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

     <!-- area modal --> 
     <div class="modal fade text-left " id="add_area_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
     aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header">
                 <h4 class="modal-title" id="myModalLabel1">Add Area</h4>
                 <button type="button" class="close btn_cut" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <div class="row">
                     <div class="col-md-12 col-12">
                         <div class="form-group">
                             {{ Form::label('area_name', 'Area Name *') }}
                             {{ Form::text('area_name', null, ['class' => 'form-control', 'placeholder' => 'Enter Area Name', 'required' => true]) }}
                         </div>
                     </div>

                     <div class="col-12 d-flex justify-content-start">
                         <button type="submit" class="btn btn-primary mr-1 mb-1 btn_cut" id="submit_area">Submit</button>
                         <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </div>


  <!-- route modal -->
  <div class="modal fade text-left" id="add_route_modal" tabindex="-1" role="dialog"
  aria-labelledby="myModalLabel1" aria-hidden="true">
  <div class="modal-dialog" role="document">
      <div class="modal-content">
          <div class="modal-header">
              <h4 class="modal-title" id="myModalLabel1">Add Route</h4>
              <button type="button" class="close btn_cut" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
              </button>
          </div>

          <div class="modal-body">
              <div class="row">
                 <div class="col-md-12 col-12">
                     <div class="form-group">
                         {{ Form::label('area_id', 'Select Area *') }}
                         {{-- <select name="area_id" id="area_id1" class="form-control select2"></select> --}}
                             {{ Form::select('area_id', $area_data, null, ['class' => 'form-control select2 area_id', 'placeholder' => 'Select Area']) }}

                     </div>
                 </div>

                  <div class="col-md-12 col-12">
                      <div class="form-group">
                          {{ Form::label('route_name', 'Route Name *') }}
                          {{ Form::text('route_name', null, ['class' => 'form-control', 'placeholder' => 'Enter Route Name', 'required' => true]) }}
                      </div>
                  </div>
                
              </div>
              <div class="col-12 d-flex justify-content-start">
                  <button type="submit" class="btn btn-primary mr-1 mb-1 btn_cut" id="submit_route">Submit</button>
                  <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
              </div>
          </div>
      </div>
  </div>
</div>
</div>


 <!-- beat modal -->
 <div class="modal fade text-left " id="add_beat_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
     aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header">
                 <h4 class="modal-title" id="myModalLabel1">Add Beat</h4>
                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>

             <div class="modal-body">
                 <div class="row">
                     <div class="col-md-12 col-12">
                         <div class="form-group">
                             {{ Form::label('beat_name', 'Beat Name *') }}
                             {{ Form::text('beat_name', null, ['class' => 'form-control', 'placeholder' => 'Enter Beat Name', 'required' => true]) }}
                         </div>
                     </div>


                     <div class="col-md-12 col-12">
                         <div class="form-group">
                             {{-- {{dd($area_data)}} --}}
                             {{ Form::label('area_id', 'Select Area *') }}
                             {{-- <a href="{{ route('admin.area.create') }}">Click Here To Add New Route</a> --}}
                             {{ Form::select('area_id', $area_data, null, ['class' => 'form-control select2 area_id', 'placeholder' => 'Select Area']) }}
                         </div>
                     </div>

                     <div class="col-md-12 col-12">
                         <div class="form-group">
                             {{ Form::label('route_id', 'Select Route *') }}
                             {{-- <a href="{{ route('admin.route.create') }}">Click Here To Add New Route</a> --}}
                             <select name="route_id" id="route_id" class="form-control select2"></select>
                             {{-- {{ Form::select('route_id', $route_data, request()->route_id, ['class'=>'select2 form-control','id'=>'route_id']) }} --}}
                         </div>
                     </div>


                 </div>
                 <div class="col-12 d-flex justify-content-start">
                     <button type="submit" class="btn btn-primary mr-1 mb-1" id="submit_beat">Submit</button>
                     <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                 </div>
             </div>
         </div>
     </div>
 </div>

    {{-- for category --}}
    <div class="modal fade text-left" id="add_bp_cat_modal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel1" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel1">Add Business Partner Category</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12 col-12">
                            <div class="form-group">
                                {{ Form::label('bp_category', 'Add Category *') }}
                                {{ Form::text('bp_category', null, ['class' => 'form-control', 'id' => 'bp_category_modal', 'placeholder' => 'Business Partner Category', 'required' => true]) }}
                            </div>
                        </div>

                        <div class="col-12 d-flex justify-content-start">
                            <button type="submit" class="btn btn-primary mr-1 mb-1" id="submit_bp_cat">Submit</button>
                            <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    {{-- for sales manager --}}
    <div class="modal fade text-left" id="add_sales_manager_modal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel1" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel1">Add Sales Manager</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12 col-12">
                            <div class="form-group">
                                {{ Form::label('first_name', 'First Name *') }}
                                {{ Form::text('first_name', null, ['class' => 'form-control', 'id' => 'first_name_modal', 'placeholder' => 'First Name', 'required' => true]) }}
                            </div>
                        </div>
                        <div class="col-md-12 col-12">
                            <div class="form-group">
                                {{ Form::label('last_name', 'Last Name *') }}
                                {{ Form::text('last_name', null, ['class' => 'form-control', 'id' => 'last_name_modal', 'placeholder' => 'Last Name', 'required' => true]) }}
                            </div>
                        </div>
                        <div class="col-md-12 col-12">
                            <div class="form-group">
                                {{ Form::label('email', 'Email *') }}
                                {{ Form::email('email', null, ['class' => 'form-control', 'id' => 'email_modal', 'placeholder' => 'email', 'required' => true]) }}
                            </div>
                        </div>

                        <div class="col-12 d-flex justify-content-start">
                            <button type="submit" class="btn btn-primary mr-1 mb-1"
                                id="submit_sales_manager">Submit</button>
                            <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- for sales officer --}}
    <div class="modal fade text-left" id="add_sales_officer_modal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel1" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel1">Add Sales Officer</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12 col-12">
                            <div class="form-group">
                                {{ Form::label('first_name', 'First Name *') }}
                                {{ Form::text('first_name', null, ['class' => 'form-control', 'id' => 'first_name_modal', 'placeholder' => 'First Name', 'required' => true]) }}
                            </div>
                        </div>
                        <div class="col-md-12 col-12">
                            <div class="form-group">
                                {{ Form::label('last_name', 'Last Name *') }}
                                {{ Form::text('last_name', null, ['class' => 'form-control', 'id' => 'last_name_modal', 'placeholder' => 'Last Name', 'required' => true]) }}
                            </div>
                        </div>
                        <div class="col-md-12 col-12">
                            <div class="form-group">
                                {{ Form::label('email', 'Email *') }}
                                {{ Form::email('email', null, ['class' => 'form-control', 'id' => 'email_modal', 'placeholder' => 'email', 'required' => true]) }}
                            </div>
                        </div>

                        <div class="col-12 d-flex justify-content-start">
                            <button type="submit" class="btn btn-primary mr-1 mb-1"
                                id="submit_sales_officer">Submit</button>
                            <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- for salesman --}}
    <div class="modal fade text-left" id="add_salesman_modal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel1" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel1">Add Salesman</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12 col-12">
                            <div class="form-group">
                                {{ Form::label('first_name', 'First Name *') }}
                                {{ Form::text('first_name', null, ['class' => 'form-control', 'id' => 'first_name_modal', 'placeholder' => 'First Name', 'required' => true]) }}
                            </div>
                        </div>
                        <div class="col-md-12 col-12">
                            <div class="form-group">
                                {{ Form::label('last_name', 'Last Name *') }}
                                {{ Form::text('last_name', null, ['class' => 'form-control', 'id' => 'last_name_modal', 'placeholder' => 'Last Name', 'required' => true]) }}
                            </div>
                        </div>
                        <div class="col-md-12 col-12">
                            <div class="form-group">
                                {{ Form::label('email', 'Email *') }}
                                {{ Form::email('email', null, ['class' => 'form-control', 'id' => 'email_modal', 'placeholder' => 'email', 'required' => true]) }}
                            </div>
                        </div>

                        <div class="col-12 d-flex justify-content-start">
                            <button type="submit" class="btn btn-primary mr-1 mb-1" id="submit_salesman">Submit</button>
                            <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script src="{{ asset('public/backend-assets/js/MasterHandler.js') }}"></script>
    {{-- add data for area,route and beat --}}
    <script>
        $(document).ready(function() {


            new MasterHandler('#bp_category', '#add_bp_cat_modal', '#submit_bp_cat',
                '{{ url('admin/master/store_category') }}', '', '#bp_category_modal');

            new MasterHandler('#sales_manager', '#add_sales_manager_modal', '#submit_sales_manager',
                '{{ url('admin/master/store_users') }}', 12, '#first_name_modal',
                '#last_name_modal', '#email_modal');
            new MasterHandler('#sales_officer', '#add_sales_officer_modal', '#submit_sales_officer',
                '{{ url('admin/master/store_users') }}', 10, '#first_name_modal',
                '#last_name_modal', '#email_modal');
            new MasterHandler('#salesman', '#add_salesman_modal', '#submit_salesman',
                '{{ url('admin/master/store_users') }}', 11, '#first_name_modal',
                '#last_name_modal', '#email_modal');

                new MasterHandler('.area_id', '#add_area_modal', '#submit_area', '{{ url('admin/master/store_area') }}', '',
                '#area_name');

            new MasterHandler('#route_id', '#add_route_modal', '#submit_route', '{{ url('admin/master/store_route') }}', '',
            '.area_id','#route_name');

            new MasterHandler('#beat_id', '#add_beat_modal', '#submit_beat', '{{ url('admin/master/store_beat') }}', '',
                '#beat_name', '.area_id', '#route_id');



        });
    </script>


    <script>
        $(document).ready(function() {
            var bptype = $('#business_partner_type').find('option:selected').text();
            // alert(bptype);

            if (bptype == 'Customer') {
                $('.sm_dynamic').removeClass('d-none');
                $('.shelf_left').removeClass('d-none');
                $('.beat_det').removeClass('d-none');
            } else {
                $('.sm_dynamic').addClass('d-none');
                $('.shelf_left').addClass('d-none');
                $('.beat_det').addClass('d-none');
            }

            var terms_of_payment = $('#payment_terms_id').find('option:selected').text();
            // alert(terms_of_payment);
            if (terms_of_payment == 'On Credit') {
                $('.show_credit_days').removeClass('d-none');
            } else {
                $('.show_credit_days').addClass('d-none');
            }
        });

        $('#business_partner_type').on('change', function() {
            var bptype = $(this).find('option:selected').text();
            if (bptype == 'Customer') {
                $('.sm_dynamic').removeClass('d-none');
                $('.shelf_left').removeClass('d-none');
                $('.beat_det').removeClass('d-none');
            } else {
                $('.sm_dynamic').addClass('d-none');
                $('.shelf_left').addClass('d-none');
                $('.beat_det').addClass('d-none');
            }
        });

        $('#payment_terms_id').on('change', function() {
            var terms_of_payment = $(this).find('option:selected').text();
            if (terms_of_payment == 'On Credit') {
                $('.show_credit_days').removeClass('d-none');
            } else {
                $('.show_credit_days').addClass('d-none');
            }
        });
    </script>
@endsection
