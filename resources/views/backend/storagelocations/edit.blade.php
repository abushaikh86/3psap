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
                            <a href="{{ route('admin.dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.storagelocations') }}">Warehouse</a>
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

                            @include('backend.includes.errors')
                            {!! Form::model($storagelocations, [
                                'method' => 'POST',
                                'url' => ['admin/storagelocations/update'],
                                'class' => 'form',
                            ]) !!}
                            {{ csrf_field() }}
                            @include('backend.storagelocations._form', $company_ship_add)
                            </form>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </div>
    </div>
@endsection
