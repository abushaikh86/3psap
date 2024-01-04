@extends('backend.layouts.app')
@section('title', 'Edit Beat Calender')
@php
use Spatie\Permission\Models\Role;
use Carbon\CarbonPeriod;
@endphp
@section('content')
{{-- {{ dd($bussinesspartner->toArray()) }} --}}

<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">Edit Beat Calender</h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="{{ route('admin.beatcalender') }}">Beat Calender</a>
                    </li>
                    <li class="breadcrumb-item active">Edit</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
        <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
            <div class="btn-group" role="group">
                <a class="btn btn-outline-primary" href="{{ route('admin.beatcalender') }}">
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
                        {{ Form::open(['url' => 'admin/beatcalender/update']) }}
                        @csrf
                        <div class="form-body">
                            <div class="row">
                                {{ Form::hidden('beat_cal_id', $model->beat_cal_id, ['class' => 'form-control']) }}


                                {{-- {{dd($area_data)}} --}}


                                {{-- <div class="col-md-6 col-6">
                                    <div class="form-group">
                                        {{ Form::label('salesman', 'Salesman *') }}
                                        {{ Form::text('salesman', $model->salesman, ['class' => 'form-control',
                                        'placeholder' => 'Salesman', 'required' => true]) }}

                                    </div>
                                </div>

                                <div class="col-md-6 col-6">
                                    <div class="form-group">
                                        {{ Form::label('area_id', 'Area *') }}
                                        {{ Form::select('area_id',$area_data,$model->area_id, array('class' =>
                                        'form-control select2','id'=>'area_field','placeholder'=>'Select
                                        Area','required'=>true)) }}
                                    </div>
                                </div>

                                <div class="col-md-6 col-6">
                                    <div class="form-group">
                                        {{ Form::label('route_id', 'Route *') }}
                                        <select name="route_id" id="routes" class="form-control select2"></select>
                                    </div>
                                </div> --}}

                                <div class="col-md-6 col-6">
                                    <div class="form-group">
                                        {{ Form::label('beat_id', 'Beat *') }}
                                        {{-- <select name="beat_id" id="beat" class="form-control select2"></select>
                                        --}}
                                        {!! Form::select('beat_id',$beats ,
                                        $model->beat_id, ['class' => 'form-control tags','placeholder'=>'Select Beat']) !!}
                                    </div>
                                </div>
                                {{-- <div class="col-md-6 col-6">
                                    <div class="form-group">
                                        @php
                                        $multi_outlet = explode(",", $model->outlet);
                                        @endphp


                                        {{ Form::label('outlet', 'Outlet *') }}
                                        {!! Form::select('outlet[]',['0'=>'Outlet 1','1'=>'Outlet 2'] ,
                                        $multi_outlet, ['class' => 'form-control tags','multiple' => 'multiple']) !!}
                                    </div>
                                </div> --}}
                                {{--
                                <div class="col-md-6 col-6">
                                    <div class="form-group">
                                        {{ Form::label('sales_execu', 'Sales Executive *') }}
                                        {{ Form::select('sales_execu', $sales_execu_data,$model->sales_execu, ['class'
                                        => 'form-control', 'placeholder' => 'Select Sales Executive', 'required' =>
                                        true]) }}
                                    </div>
                                </div>
                                <div class="col-md-6 col-6">
                                    <div class="form-group">
                                        {{ Form::label('ase', 'ASE *') }}
                                        {{ Form::text('ase', $model->ase, ['class' => 'form-control', 'placeholder' =>
                                        'ASE', 'required' => true]) }}
                                    </div>
                                </div>
                                <div class="col-md-6 col-6">
                                    <div class="form-group">
                                        {{ Form::label('asm', 'ASM *') }}
                                        {{ Form::text('asm', $model->asm, ['class' => 'form-control', 'placeholder' =>
                                        'ASM', 'required' => true]) }}
                                    </div>
                                </div> --}}
                                <div class="col-md-6 col-6">
                                    <div class="form-group">

                                        {{ Form::label('beat_week', 'Beat Week *') }}
                                        {{ Form::select('beat_week', $all_data['week'],$model->beat_week, ['class' =>
                                        'form-control ', 'placeholder' => 'Select Beat Week', 'required' => true]) }}
                                    </div>
                                </div>
                                <div class="col-md-6 col-6">
                                    <div class="form-group">
                                        <?php
                                            //   $multi_beat_days = explode(",", $model->beat_day);
                                              ?>
                                        {{ Form::label('beat_day', 'Beat Day *') }}
                                        {!! Form::select('beat_day',$all_data['days'] ,
                                        $model->beat_day, ['class' => 'form-control tags']) !!}
                                        {{-- {{ Form::select('beat_day',$days,$model->beat_day, ['class' =>
                                        'form-control', 'placeholder' => 'Select Beat Day', 'required' => true]) }} --}}
                                    </div>
                                </div>

                                <div class="col-md-6 col-6">
                                    <div class="form-group">
                             
                                        {{ Form::label('beat_month', 'Beat Month *') }}
                                        {{ Form::select('beat_month',$all_data['month'],$model->beat_month, ['class' =>
                                        'form-control tags', 'placeholder' => 'Select Beat Month', 'required' => true])
                                        }}

                                    </div>
                                </div>
                                <div class="col-md-6 col-6">
                                    <div class="form-group">
                                     

                                        {{ Form::label('beat_year', 'Beat Year *') }}
                                        {{ Form::select('beat_year',$all_data['year'],$model->beat_year, ['class' =>
                                        'form-control tags', 'placeholder' => 'Select Beat Year', 'required' => true])
                                        }}

                                    </div>
                                </div>
                            </div>



                            <div class="row mt-3">
                                <div class="col md-12 ">
                                    {{-- <center> --}}
                                        {{ Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1']) }}
                                        <button type="reset" class="btn btn-secondary mr-1 mb-1">Reset</button>
                                        {{--
                                    </center> --}}
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