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
                                    <div class="col-12 text-right">
                                        <a href="{{ route('admin.bussinesspartner.create') }}" class="btn btn-primary"><i
                                                class="bx bx-plus"></i> Add </a>
                                    </div>
                                    {{--  {{ dd($details->toArray()) }}  --}}
                                    <div class="table-responsive">

                                        <table class="table zero-configuration" id="tbl-datatable">
                                            <thead>
                                                <tr>
                                                    <th>Sr. No</th>
                                                    <th>Bussines Partner Type</th>
                                                    <th>Partner Code</th>
                                                    <th>Partner Name</th>
                                                    <th>Organization Type</th>
                                                    <th>Category</th>
                                                    <th>Group</th>
                                                    <th>Sales Manager</th>
                                                    <th>Sales Officer</th>
                                                    <th>Salesman</th>
                                                    <th>Payment Terms</th>
                                                    <th>credit Limit</th>
                                                    <th>Gst details</th>
                                                    {{--  <th>Email</th>  --}}

                                                </tr>
                                            </thead>
                                            <tbody>
                                                @if (isset($details) && count($details) > 0)
                                                    @php $srno = 1; @endphp
                                                    @foreach ($details as $data)
                                                        <tr>
                                                            <td>{{ $srno }}</td>
                                                            <td>{{ $data->business_partner_type }}</td>
                                                            <td>{{ $data->bp_code }} </td>
                                                            <td>{{ $data->bp_name }} </td>
                                                            <td>{{ $data->bp_organisation_type }} </td>
                                                            <td>{{ $data->bp_category }} </td>
                                                            <td>{{ $data->bp_group }} </td>
                                                            <td>{{ $data->sales_manager }} </td>
                                                            <td>{{ $data->sales_officer }} </td>
                                                            <td>{{ $data->salesman }} </td>
                                                            <td>{{ $data->payment_terms }} </td>
                                                            <td>{{ $data->credit_limit }} </td>
                                                            <td>{{ $data->gst_details }} </td>
                                                            {{--  <td>{{ $data->banking_details }} </td>  --}}
                                                            <td>
                                                                <!-- @can('Update')
                                                                            -->
                                                                    <!--
                                                                            @endcan -->
                                                                <a href="{{ url('admin/internaluser/edit/' . $data->business_partner_id) }}"
                                                                    class="btn btn-primary"><i class="bx bx-pencil"></i></a>
                                                                <!-- @can('Delete')
                                                                            -->
                                                                    <!--
                                                                        @endcan -->
                                                                {!! Form::open([
                                                                    'method' => 'GET',
                                                                    'url' => ['admin/bussinesspartner/delete', $data->business_partner_id],
                                                                    'style' => 'display:inline',
                                                                ]) !!}
                                                                {!! Form::button('<i class="bx bx-trash"></i>', [
                                                                    'type' => 'submit',
                                                                    'class' => 'btn btn-danger',
                                                                    'onclick' => "return confirm('Are you sure you want to Delete this Entry ?')",
                                                                ]) !!}
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
    {{-- <script>
    $(document).ready(function(){
        $( function() {
            $( "#dob" ).datepicker();
          } );
    });
</script> --}}

@endsection
