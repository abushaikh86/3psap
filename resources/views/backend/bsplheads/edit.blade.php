@extends('backend.layouts.app')
@section('title', 'Edit BSPL Heads')
@php
    use Spatie\Permission\Models\Role;
@endphp
@section('content')
    {{-- {{ dd($bussinesspartner->toArray()) }} --}}

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Edit BSPL Heads</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.bsplheads') }}">BSPL Heads</a>
                        </li>
                        <li class="breadcrumb-item active">Edit</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a class="btn btn-outline-primary" href="{{ route('admin.bsplheads') }}">
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
                            {{-- {{ Form::open(['url' => 'admin/bsplcat/update']) }} --}}
                            {!! Form::model($model, [
                                'method' => 'POST',
                                'url' => ['admin/bsplheads/update'],
                                'class' => 'form',
                                'enctype' => 'multipart/form-data'
                            ]) !!}

                            <div class="form-body">
                                <div class="form-body">
                                    <div class="row">
                                        {{ Form::hidden('bsplheads_id', $model->bsplheads_id, ['class' => 'form-control']) }}
                     
                                        <div class="col-md-6 col-6">
                                            <div class="form-label-group">
                                                {{ Form::label('bspl_heads_name', 'BSPL Head *') }}
                                                {{ Form::text('bspl_heads_name', $model->bspl_heads_name, ['class' => 'form-control', 'placeholder' => 'BSPL Head', 'required' => true]) }}
                                            </div>
                                        </div>
    
                                        {{-- <div class="col-md-3 col-6">
                                            {{ Form::label('has_subcat', 'Has Sub Categories ?') }}
                                            <fieldset>
                                              <div class="radio radio-success">
                                                {{ Form::radio('has_subcat','1',true,['id'=>'radioyes']) }}
                                                {{ Form::label('radioyes', 'Yes') }}
                                              </div>
                                            </fieldset>
                                            <fieldset>
                                              <div class="radio radio-danger">
                                                {{ Form::radio('has_subcat','0',false,['id'=>'radiono']) }}
                                                {{ Form::label('radiono', 'No') }}
                                              </div>
                                            </fieldset>
                                          </div> --}}
    
    
                                        
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col md-12 ">
                                            {{-- <center> --}}
                                                {{ Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1']) }}
                                                <button type="reset" class="btn btn-secondary mr-1 mb-1">Reset</button>
                                            {{-- </center> --}}
                                        </div>
                                    </div>
    
                                </div>
                            </div>

                        </div>


                        {{ Form::close() }}
                    </div>
                </div>
            </div>
 
        </div>
    </section>
@endsection
