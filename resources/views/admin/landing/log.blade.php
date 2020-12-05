@extends('admin.t_index')

@section('title') Admin Dashboard @endsection

@section('head')
<link rel="stylesheet" type="text/css" href="{{ asset('assets/vendor/datatables.net/css/dataTables.bootstrap4.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/vendor/datatables.net/css/buttons.dataTables.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/vendor/data-table/extensions/responsive/css/responsive.dataTables.css') }}">
@endsection

@section('page-header')
<div class="row align-items-end">
    <div class="col-lg-8">
        <div class="page-header-title">
            <div class="d-inline">
                <h4>Log</h4>
                <span>Log Autentikasi User</span>
            </div>
        </div>
    </div>
    <div class="col-lg-4">
        <div class="page-header-breadcrumb">
            <ul class="breadcrumb-title">
                <li class="breadcrumb-item">
                    <a href="{{ url('admin') }}"> <i class="feather icon-home"></i> </a>
                </li>
                <li class="breadcrumb-item"><a href="#!">Log</a> </li>
            </ul>
        </div>
    </div>
</div>
@endsection

@section('page-body')

<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h5>User Log</h5>
                <div class="card-header-right">
                    <ul class="list-unstyled card-option">
                        <li><i class="feather icon-maximize full-card"></i></li>
                        <li><i class="feather icon-minus minimize-card"></i></li>
                    </ul>
                </div>
            </div>
            <div class="card-block">

                <table id="dttable" class="table table-bordered table-responsive">
                    <thead>
                        <tr>
                            <th>Aktivitas</th>
                            <th>Deskripsi</th>
                            <th>Timestamp</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($logs as $log)
                        <tr>
                            <td>{{$log->activity}}</td>
                            <td>{{$log->description}}</td>
                            <td>{{Carbon\Carbon::parse($log->created_at)->format('d/m/Y H:i')}}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

@endsection
@section('script')
<script src="{{ asset('assets/vendor/datatables.net/js/jquery.dataTables.min.js') }}" ></script>
<script src="{{ asset('assets/vendor/datatables.net/js/dataTables.buttons.min.js') }}" ></script>
<script src="{{ asset('assets/vendor/datatables.net/js/dataTables.bootstrap4.min.js') }}" ></script>

<script src="{{ asset('assets/vendor/data-table/extensions/responsive/js/dataTables.responsive.min.js') }}"></script>
<script src="{{ asset('assets/vendor/data-table/extensions/responsive/js/responsive.bootstrap4.min.js') }}"></script>
<script>
    $(document).ready(function () {
        $("#dttable").DataTable();
    });
</script>
@endsection
