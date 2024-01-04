@extends('backend.layouts.app')
@section('title', 'Update Warehouse')

@section('content')
@php

@endphp
<div class="content-header row">
  <div class="content-header-left col-md-6 col-12 mb-2">
    <h3 class="content-header-title">Warehouse</h3>
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="{{ route('admin.dashboard')}}">Dashboard</a>
          </li>
          <li class="breadcrumb-item">
            <a href="{{ route('admin.storagelocations')}}">Warehouse</a>
          </li>
          <li class="breadcrumb-item active">Update Warehouse</li>
        </ol>
      </div>
    </div>
  </div>
  <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
    <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
      <div class="btn-group" role="group">
        <a class="btn btn-outline-primary" href="{{ route('admin.storagelocations') }}">
          <i class="feather icon-arrow-left"></i> Back
        </a>
      </div>
    </div>
  </div>
</div>
        <section id="multiple-column-form">
          <div class="row match-height">
            <div class="col-12">
              <div class="card">
                <div class="card-header">
                  <h4 class="card-title">Update Warehouse</h4>
                </div>
                <div class="card-content">
                  <div class="card-body">
                    {{-- @include('backend.includes.errors')
                    {!! Form::model($storagelocations, [
                        'method' => 'POST',
                        'url' => ['admin/storagelocations/update'],
                        'class' => 'form'
                    ]) !!} --}}
                                        @include('backend.includes.errors')
                                        {{-- <form method="POST" action="{{ route('admin.storagelocations.store') }}" class="form"> --}}
                                          {!! Form::model($storagelocations, [
                                            'method' => 'POST',
                                            'url' => ['admin/storagelocations/update'],
                                            'class' => 'form'
                                        ]) !!}
                                          {{ csrf_field() }}
                                          @include('backend.storagelocations._form',$company_ship_add)
                                        </form>
                                        
                      {{-- <div class="form-body">
                        <div class="row">
                          <div class="col-md-12 col-12">
                            <div class="form-group">
                              {{ Form::hidden('storage_locations_id', $storagelocations->storage_location_id) }}
                              {{ Form::label('storage_location_name', 'Storage Location Name *') }}
                                {{ Form::text('storage_location_name', null, ['class' => 'form-control', 'placeholder' => 'Enter Storage Location Name', 'required' => true]) }}
                              </div>
                            </div>
                            <div class="col-md-12"> --}}
      {{-- <div class="form-group">
        {{ Form::label('address', 'Address ') }}
        {{ Form::textarea('location', null, ['class' => 'form-control', 'placeholder' => 'Address', 'required' => true]) }}
      </div>
    </div>
    <div class="col-md-6">
      <div class="form-group">
        {{ Form::label('zip_code', 'Zip Code ') }}
        {{ Form::text('zip_code', null, ['class' => 'form-control', 'placeholder' => '400002', 'required' => true]) }}
      </div>
    </div>
    <div class="col-md-6">
      <div class="form-group">
        {{ Form::label('country', 'Country') }}
        {{ Form::text('country', null, ['class' => 'form-control', 'placeholder' => 'India', 'required' => true]) }}
      </div>
    </div>
    <div class="col-md-6">
      <div class="form-group">
        {{ Form::label('state', 'State') }}
        {{ Form::text('state', null, ['class' => 'form-control', 'placeholder' => 'Maharashtra', 'required' => true]) }}
      </div>
    </div>
    <div class="col-md-6">
      <div class="form-group">
        {{ Form::label('city', 'City') }}
        {{ Form::text('city', null, ['class' => 'form-control', 'placeholder' => 'Mumbai', 'required' => true]) }}
      </div>
    </div> --}}
                          {{-- <div class="col-12 d-flex justify-content-start">
                            <!-- <button type="submit" class="btn btn-primary mr-1 mb-1">Update</button> -->
                            {{ Form::submit('Update', array('class' => 'btn btn-primary mr-1 mb-1')) }}
                          </div>
                        </div>
                      </div>
                    {{ Form::close() }} --}}
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
    </div>
@endsection
