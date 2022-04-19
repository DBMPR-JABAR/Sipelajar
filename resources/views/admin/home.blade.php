@extends('admin.layout.index')

@section('title') Admin Dashboard @endsection

@section('page-header')
<div class="row align-items-end">
    <div class="col-lg-8">
        <div class="page-header-title">
            <div class="d-inline">
                <h4>Selamat Datang di Dashboard Teman Jabar</h4>
                {{-- <span>lorem ipsum dolor sit amet, consectetur adipisicing elit</span> --}}
            </div>
        </div>
    </div>
    <div class="col-lg-4">
        <div class="page-header-breadcrumb">
            <ul class=" breadcrumb breadcrumb-title">
                <li class="breadcrumb-item">
                    <a href="{{ url('admin') }}"> <i class="feather icon-home"></i> </a>
                </li>
                <li class="breadcrumb-item"><a href="#!">Home</a> </li>
            </ul>
        </div>
    </div>
</div>
@endsection

@section('page-body')
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/echarts/5.3.1/echarts.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts@5.3.1/dist/echarts.min.js"></script>

@php
  if (hasAccess(Auth::user()->internal_role_id, "User", "View")) {
     $number = 4;
  }else{
    $number = 6;
  }
@endphp
<div class="col-sm-12">
    <div class="card">
        <div class="card-header">
            <h4 class="card-title">Rekap Pekerjaan Harian</h4>
            {{-- <span>lorem ipsum dolor sit amet, consectetur adipisicing elit</span> --}}
            <div class="card-header-right">
                <ul class="list-unstyled card-option">
                    {{-- <li><i class="feather icon-maximize full-card"></i></li>
                    <li><i class="feather icon-minus minimize-card"></i></li> --}}
                </ul>
            </div>
        </div>
        <div class="card-block">

            <div class="card-deck col-md-12">
                <div class="card w-100">
                    {{-- <a href="{{ url('admin/lapor') }}"> --}}
                    <div class="card-block">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h4 class="text-warning f-w-600">
                                    {{ @$total_report['not_complete'] }}
                                </h4>
                                {{-- <h6 class="text-muted m-b-0">Finish</h6> --}}
                            </div>
                            <div class="col-4 text-right">
                                <i class="feather icon-arrow-down f-28"></i>
                            </div>
                        </div>
                    </div>
                    {{-- </a> --}}
                    <div class="card-footer bg-warning">
                        <div class="row align-items-center">
                            <div class="col-9">
                                <p class="text-white m-b-0">Not Completed</p>
                            </div>
                            <div class="col-3 text-right">
                                <i class="feather icon-trending-up text-white f-16"></i>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card w-100">
                    {{-- <a href="{{ url('admin/lapor') }}"> --}}
                    <div class="card-block">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h4 class="text-success f-w-600">
                                    {{ @$total_report['submit'] }}
                                </h4>
                                {{-- <h6 class="text-muted m-b-0">Finish</h6> --}}
                            </div>
                            <div class="col-4 text-right">
                                <i class="feather icon-arrow-down f-28"></i>
                            </div>
                        </div>
                    </div>
                    {{-- </a> --}}
                    <div class="card-footer bg-success">
                        <div class="row align-items-center">
                            <div class="col-9">
                                <p class="text-white m-b-0">Submitted</p>
                            </div>
                            <div class="col-3 text-right">
                                <i class="feather icon-trending-up text-white f-16"></i>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card w-100">
                    {{-- <a href="{{ url('admin/lapor') }}"> --}}
                    <div class="card-block">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h4 class="text-primary f-w-600">
                                    {{ @$total_report['approve'] }}
                                </h4>
                                {{-- <h6 class="text-muted m-b-0">Finish</h6> --}}
                            </div>
                            <div class="col-4 text-right">
                                <i class="feather icon-arrow-up f-28"></i>
                            </div>
                        </div>
                    </div>
                    {{-- </a> --}}
                    <div class="card-footer bg-primary">
                        <div class="row align-items-center">
                            <div class="col-9">
                                <p class="text-white m-b-0">Approved</p>
                            </div>
                            <div class="col-3 text-right">
                                <i class="feather icon-trending-up text-white f-16"></i>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card w-100">
                    {{-- <a href="{{ url('admin/lapor') }}"> --}}
                    <div class="card-block">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h4 class="text-danger f-w-600">
                                    {{ @$total_report['reject'] }}

                                </h4>
                                {{-- <h6 class="text-muted m-b-0">Finish</h6> --}}
                            </div>
                            <div class="col-4 text-right">
                                <i class="feather icon-clock f-28"></i>
                            </div>
                        </div>
                    </div>
                    {{-- </a> --}}
                    <div class="card-footer bg-danger">
                        <div class="row align-items-center">
                            <div class="col-9">
                                <p class="text-white m-b-0">Rejected</p>
                            </div>
                            <div class="col-3 text-right">
                                <i class="feather icon-trending-up text-white f-16"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-deck col-md-12 mt-3">
                <div class="card w-100">
                    {{-- <a href="{{ url('admin/lapor') }}"> --}}
                    <div class="card-block">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h4 class=" f-w-600">
                                    {{ array_sum($total_report) }}
                                    
                                </h4>
                                {{-- <h6 class="text-muted m-b-0">Finish</h6> --}}
                            </div>
                            <div class="col-4 text-right">
                                {{-- <i class="feather-archive"></i> --}}
                                <i class="feather icon-clipboard f-28"></i>
                            </div>
                        </div>
                    </div>
                    {{-- </a> --}}
                    <div class="card-footer bg-default">
                        <div class="row align-items-center">
                            <div class="col-9">
                                <p class=" m-b-0" style="color: black">Total Laporan</p>
                            </div>
                            <div class="col-3 text-right">
                                <i class="feather icon-trending-up text-white f-16"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
</div>
<div class="col-sm-12">
    <div class="card">
        <div class="card-header">
            <h4 class="card-title">Monitoring Lubang</h4>
            {{-- <span>lorem ipsum dolor sit amet, consectetur adipisicing elit</span> --}}
            <div class="card-header-right">
                <ul class="list-unstyled card-option">
                    {{-- <li><i class="feather icon-maximize full-card"></i></li>
                    <li><i class="feather icon-minus minimize-card"></i></li> --}}
                </ul>
            </div>
        </div>
        <div class="card-block align-items-center justify-content-center">
            <div class="chart has-fixed-height" id="pie_basic" style="width: 800px; height: 600px;"></div>

            <div class="card-deck col-md-12">
                <div class="card w-100">
                    {{-- <a href="{{ url('admin/lapor') }}"> --}}
                    <div class="card-block">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h4 class="text-warning f-w-600">
                                    {{ @$temporari1['jumlah']['potensi'] }} Lubang
                                </h4>
                                <h6 class="text-muted m-b-0">{{ @$temporari1['panjang']['potensi'] }} Lubang</h6>
                            </div>
                            <div class="col-4 text-right">
                                <i class="feather icon-arrow-down f-28"></i>
                            </div>
                        </div>
                    </div>
                    {{-- </a> --}}
                    <div class="card-footer bg-warning">
                        <div class="row align-items-center">
                            <div class="col-9">
                                <p class="text-white m-b-0">Potensi Lubang</p>
                            </div>
                            <div class="col-3 text-right">
                                <i class="feather icon-trending-up text-white f-16"></i>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card w-100">
                    {{-- <a href="{{ url('admin/lapor') }}"> --}}
                    <div class="card-block">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h4 class="text-c-yellow f-w-600">
                                    {{ @$temporari['jumlah']['perencanaan'] }} Lubang
                                </h4>
                                <h6 class="text-muted m-b-0">{{ @$temporari['panjang']['perencanaan'] }} Km</h6>
                            </div>
                            <div class="col-4 text-right">
                                <i class="feather icon-arrow-down f-28"></i>
                            </div>
                        </div>
                    </div>
                    {{-- </a> --}}
                    <div class="card-footer bg-c-yellow">
                        <div class="row align-items-center">
                            <div class="col-9">
                                <p class="text-white m-b-0">Dalam Perencanaan</p>
                            </div>
                            <div class="col-3 text-right">
                                <i class="feather icon-trending-up text-white f-16"></i>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card w-100">
                    {{-- <a href="{{ url('admin/lapor') }}"> --}}
                    <div class="card-block">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h4 class="text-success f-w-600">
                                    {{ @$temporari['jumlah']['penanganan'] }} Lubang
                                </h4>
                                <h6 class="text-muted m-b-0">{{ @$temporari['panjang']['penanganan'] }} Km</h6>

                            </div>
                            <div class="col-4 text-right">
                                <i class="feather icon-arrow-up f-28"></i>
                            </div>
                        </div>
                    </div>
                    {{-- </a> --}}
                    <div class="card-footer bg-success">
                        <div class="row align-items-center">
                            <div class="col-9">
                                <p class="text-white m-b-0">Sudah Ditangani</p>
                            </div>
                            <div class="col-3 text-right">
                                <i class="feather icon-trending-up text-white f-16"></i>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card w-100">
                    {{-- <a href="{{ url('admin/lapor') }}"> --}}
                    <div class="card-block">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h4 class="text-danger f-w-600">
                                    {{ @$temporari['jumlah']['sisa'] }} Lubang

                                </h4>
                                <h6 class="text-muted m-b-0">{{ @$temporari['panjang']['sisa'] }} Km</h6>

                            </div>
                            <div class="col-4 text-right">
                                <i class="feather icon-clock f-28"></i>
                            </div>
                        </div>
                    </div>
                    {{-- </a> --}}
                    <div class="card-footer bg-danger">
                        <div class="row align-items-center">
                            <div class="col-9">
                                <p class="text-white m-b-0">Sisa</p>
                            </div>
                            <div class="col-3 text-right">
                                <i class="feather icon-trending-up text-white f-16"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-deck col-md-12 mt-3">
                <div class="card w-100">
                    {{-- <a href="{{ url('admin/lapor') }}"> --}}
                    <div class="card-block">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h4 class=" f-w-600">
                                    {{ array_sum($temporari['jumlah']) }} Lubang
                                    
                                </h4>
                                <h6 class="text-muted m-b-0">{{ array_sum($temporari['panjang']) }} Km</h6>
                            </div>
                            <div class="col-4 text-right">
                                {{-- <i class="feather-archive"></i> --}}
                                <i class="feather icon-clipboard f-28"></i>
                            </div>
                        </div>
                    </div>
                    {{-- </a> --}}
                    <div class="card-footer bg-default">
                        <div class="row align-items-center">
                            <div class="col-9">
                                <p class=" m-b-0" style="color: black">Total</p>
                            </div>
                            <div class="col-3 text-right">
                                <i class="feather icon-trending-up text-white f-16"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-xl-{{ $number }} col-md-6">
        <div class="card">
            <a href="{{ url('admin/master-data/ruas-jalan') }}">
            <div class="card-block">
                <div class="row align-items-center">
                    <div class="col-8">
                        <h4 class="text-c-yellow f-w-600">
                            @if(Auth::user()->internalRole->uptd == null)
                                {{ count($ruas_jalan_lists) }}
                            @else
                                {{ count($ruas_jalan_lists_uptd) }}
                            @endif
                        </h4>
                        {{-- <h6 class="text-muted m-b-0">Critical Contract</h6> --}}
                    </div>
                    <div class="col-4 text-right">
                        <i class="feather icon-map f-28"></i>
                    </div>
                </div>
            </div>
            </a>
            <div class="card-footer bg-c-yellow">
                <div class="row align-items-center">
                    <div class="col-9">
                        <p class="text-white m-b-0">Ruas Jalan</p>
                    </div>
                    <div class="col-3 text-right">
                        <i class="feather icon-trending-up text-white f-16"></i>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="col-xl-{{ $number }} col-md-6">
        <div class="card">
            <a href="{{ url('admin/master-data/jembatan') }}">
            <div class="card-block">
                <div class="row align-items-center">
                    <div class="col-8">
                        <h4 class="text-c-green f-w-600">
                            @if(Auth::user()->internalRole->uptd == null)
                            {{ count($jembatan_lists) }}
                            @else
                            {{ count($jembatan_lists_uptd) }}
                            @endif

                        </h4>
                        {{-- <h6 class="text-muted m-b-0">On Progress</h6> --}}
                    </div>
                    <div class="col-4 text-right">
                        <i class="feather icon-file-text f-28"></i>
                    </div>
                </div>
            </div>
            </a>
            <div class="card-footer bg-c-green">
                <div class="row align-items-center">
                    <div class="col-9">
                        <p class="text-white m-b-0">Jembatan</p>
                    </div>
                    <div class="col-3 text-right">
                        <i class="feather icon-trending-up text-white f-16"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-{{ $number }} col-md-12 col-sm-12">
        <div class="card">
            <a href="{{ url('admin/master-data/CCTV') }}">
            <div class="card-block">
                <div class="row align-items-center">
                    <div class="col-8">
                        <h4 class="text-warning f-w-600">
                            @if(Auth::user()->internalRole->uptd == null)
                                {{ count($cctv_lists) }}
                            @else
                                {{ count($cctv_lists_uptd) }}
                            @endif
                        </h4>
                        {{-- <h6 class="text-muted m-b-0">Finish</h6> --}}
                    </div>
                    <div class="col-4 text-right">
                        <i class="feather icon-video f-28"></i>
                    </div>
                </div>
            </div>
            </a>
            <div class="card-footer bg-warning">
                <div class="row align-items-center">
                    <div class="col-9">
                        <p class="text-white m-b-0">CCTV</p>
                    </div>
                    <div class="col-3 text-right">
                        <i class="feather icon-trending-up text-white f-16"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-6 col-md-12">
        <div class="card">
            <a href="{{ url('admin/master-data/rawanbencana') }}">
            <div class="card-block">
                <div class="row align-items-center">
                    <div class="col-8">
                        <h4 class="text-danger f-w-600">
                            @if(Auth::user()->internalRole->uptd == null)
                                {{ count($rawan_bencana_lists) }}
                            @else
                                {{ count($rawan_bencana_lists_uptd) }}
                            @endif
                        </h4>
                        {{-- <h6 class="text-muted m-b-0">Finish</h6> --}}
                    </div>
                    <div class="col-4 text-right">
                        <i class="feather icon-bar-chart f-28"></i>
                    </div>
                </div>
            </div>
            </a>
            <div class="card-footer bg-danger">
                <div class="row align-items-center">
                    <div class="col-9">
                        <p class="text-white m-b-0">Rawan Bencana</p>
                    </div>
                    <div class="col-3 text-right">
                        <i class="feather icon-trending-up text-white f-16"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @if (hasAccess(Auth::user()->internal_role_id, "User", "View"))
        <div class="col-xl-6 col-md-12">
            <div class="card">
                <a href="{{ route('getMasterUser') }}">
                <div class="card-block">
                    <div class="row align-items-center">
                        <div class="col-8">
                            <h4 class="text-c-blue f-w-600">@if(Auth::user() && Auth::user()->internalRole->uptd != null){{ count($user_lists_uptd) }}@else {{ count($user_lists) }} @endif

                            </h4>
                            {{-- <h6 class="text-muted m-b-0">Finish</h6> --}}
                        </div>
                        <div class="col-4 text-right">
                            <i class="feather icon-users f-28"></i>
                        </div>
                    </div>
                </div>
                </a>
                <div class="card-footer bg-c-blue">
                    <div class="row align-items-center">
                        <div class="col-9">
                            <p class="text-white m-b-0">Registered Users</p>
                        </div>
                        <div class="col-3 text-right">
                            <i class="feather icon-trending-up text-white f-16"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endif
    @if (hasAccess(Auth::user()->internal_role_id, 'Daftar Laporan', 'View'))
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Pengaduan</h4>
                {{-- <span>lorem ipsum dolor sit amet, consectetur adipisicing elit</span> --}}
                <div class="card-header-right">
                    <ul class="list-unstyled card-option">
                        {{-- {{-- <li><i class="feather icon-maximize full-card"></i></li> --}}
                        <li><i class="feather icon-minus minimize-card"></i></li> --}}
                    </ul>
                </div>
            </div>
            <div class="card-block">

                <div class="card-deck col-md-12">
                    <div class="card w-100">
                        <a href="{{ url('admin/lapor') }}">
                        <div class="card-block">
                            <div class="row align-items-center">
                                <div class="col-8">
                                    <h4 class="text-primary f-w-600">
                                        @if(Auth::user()->internalRole->uptd == null)
                                            {{ count($submitted) }}
                                        @else
                                            {{ count($submitted_uptd) }}
                                        @endif
                                    </h4>
                                    {{-- <h6 class="text-muted m-b-0">Finish</h6> --}}
                                </div>
                                <div class="col-4 text-right">
                                    <i class="feather icon-arrow-down f-28"></i>
                                </div>
                            </div>
                        </div>
                        </a>
                        <div class="card-footer bg-primary">
                            <div class="row align-items-center">
                                <div class="col-9">
                                    <p class="text-white m-b-0">Submitted</p>
                                </div>
                                <div class="col-3 text-right">
                                    <i class="feather icon-trending-up text-white f-16"></i>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card w-100">
                        <a href="{{ url('admin/lapor') }}">
                        <div class="card-block">
                            <div class="row align-items-center">
                                <div class="col-8">
                                    <h4 class="text-c-blue f-w-600">
                                        @if(Auth::user()->internalRole->uptd == null)
                                            {{ count($approved) }}
                                        @else
                                            {{ count($approved_uptd) }}
                                        @endif
                                    </h4>
                                    {{-- <h6 class="text-muted m-b-0">Finish</h6> --}}
                                </div>
                                <div class="col-4 text-right">
                                    <i class="feather icon-arrow-up f-28"></i>
                                </div>
                            </div>
                        </div>
                        </a>
                        <div class="card-footer bg-c-blue">
                            <div class="row align-items-center">
                                <div class="col-9">
                                    <p class="text-white m-b-0">Approved</p>
                                </div>
                                <div class="col-3 text-right">
                                    <i class="feather icon-trending-up text-white f-16"></i>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card w-100">
                        <a href="{{ url('admin/lapor') }}">
                        <div class="card-block">
                            <div class="row align-items-center">
                                <div class="col-8">
                                    <h4 class="text-c-yellow f-w-600">
                                        @if(Auth::user()->internalRole->uptd == null)
                                            {{ count($progress) }}
                                        @else
                                            {{ count($progress_uptd) }}
                                        @endif
                                    </h4>
                                    {{-- <h6 class="text-muted m-b-0">Finish</h6> --}}
                                </div>
                                <div class="col-4 text-right">
                                    <i class="feather icon-clock f-28"></i>
                                </div>
                            </div>
                        </div>
                        </a>
                        <div class="card-footer bg-c-yellow">
                            <div class="row align-items-center">
                                <div class="col-9">
                                    <p class="text-white m-b-0">Progress</p>
                                </div>
                                <div class="col-3 text-right">
                                    <i class="feather icon-trending-up text-white f-16"></i>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card w-100">
                        <a href="{{ url('admin/lapor') }}">
                        <div class="card-block">
                            <div class="row align-items-center">
                                <div class="col-8">
                                    <h4 class="text-c-green f-w-600">
                                        @if(Auth::user()->internalRole->uptd == null)
                                            {{ count($done) }}
                                        @else
                                            {{ count($done_uptd) }}
                                        @endif
                                    </h4>
                                    {{-- <h6 class="text-muted m-b-0">Finish</h6> --}}
                                </div>
                                <div class="col-4 text-right">
                                    <i class="feather icon-check-circle f-28"></i>
                                </div>
                            </div>
                        </div>
                        </a>
                        <div class="card-footer bg-c-green">
                            <div class="row align-items-center">
                                <div class="col-9">
                                    <p class="text-white m-b-0">Done</p>
                                </div>
                                <div class="col-3 text-right">
                                    <i class="feather icon-trending-up text-white f-16"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-deck col-md-12">
                    <div class="card w-100">
                        <a href="{{ url('admin/lapor') }}">
                        <div class="card-block">
                            <div class="row align-items-center">
                                <div class="col-8">
                                    <h4 class="text-danger f-w-600">
                                        @if(Auth::user()->internalRole->uptd == null)
                                            {{ count($total_aduan) }}
                                        @else
                                            {{ count($total_aduan_uptd) }}
                                        @endif
                                    </h4>
                                    {{-- <h6 class="text-muted m-b-0">Finish</h6> --}}
                                </div>
                                <div class="col-4 text-right">
                                    {{-- <i class="feather-archive"></i> --}}
                                    <i class="feather icon-clipboard f-28"></i>
                                </div>
                            </div>
                        </div>
                        </a>
                        <div class="card-footer bg-danger">
                            <div class="row align-items-center">
                                <div class="col-9">
                                    <p class="text-white m-b-0">Total Pengaduan</p>
                                </div>
                                <div class="col-3 text-right">
                                    <i class="feather icon-trending-up text-white f-16"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>
    @endif

    <div class="col-sm-12">
        <div class="card">

            <div class="card-header">
                <h4>Pengumuman</h4>
                {{-- <span>lorem ipsum dolor sit amet, consectetur adipisicing elit</span> --}}
                <div class="card-header-right">
                    <ul class="list-unstyled card-option">
                        {{-- {{-- <li><i class="feather icon-maximize full-card"></i></li> --}}
                        <li><i class="feather icon-minus minimize-card"></i></li> --}}
                    </ul>
                </div>
            </div>
            <div class="card-block">
                <p>
                    <h6>
                        Panduan Penggunaan Teman Jabar : <a href="{{ url('admin/file') }}" style="color: blue; font-weight: bold" target="_blank">File here</a>
                    </h6>
                </p>
                @foreach ($pengumuman_internal as $item)
                    <div class="card w-100 mb-2">
                        <a href="{{ route('announcement.show', $item->slug) }}" target="_blank">
                        <div class="card-block">
                            <div class="row align-items-center">
                                <div class="col-8">
                                    <h6 class="card-title">{{ $item->title }}</h6>
                                    {{-- <h6 class="text-muted m-b-0">Finish</h6> --}}
                                    <span style="color :grey; font-size: 10px;"><i class='icofont icofont-user'></i> {{ $item->nama_user }}|| <i class='icofont icofont-time'></i> {{ Carbon\Carbon::parse($item->created_at)->diffForHumans()}}</span>
                                </div>
                                <div class="col-4 text-right">
                                    <i class="feather icon-arrow-down f-20"></i>
                                </div>
                            </div>
                        </div>
                        </a>
                    </div>
                @endforeach
                {{ $pengumuman_internal->links() }}
            </div>
        </div>
    </div>
</div>

<script>
    var library_uptd = {!! json_encode($library_uptd) !!};
    var data_sisa = {!! json_encode($data_sisa) !!};
    var data_perencanaan = {!! json_encode($data_perencanaan) !!};
    var data_penanganan = {!! json_encode($data_penanganan) !!};
    var data_potensi = {!! json_encode($data_potensi) !!};
    
    var data_total_km = {!! json_encode($data_total_km) !!};
    
    var chartDom = document.getElementById('pie_basic');
    var myChart = echarts.init(chartDom);
    var option;
    
    option = {
        xAxis: {
            type: 'category',
            data: library_uptd
        },
        yAxis: [
            {
                type: 'value'
            }
        ],
        dataGroupId: '',
        animationDurationUpdate: 500,
        tooltip: {
            trigger: 'axis',
            // formatter: '{b}<br />{a0}: {c0} Km<br />{a1}: {c1} Km<br />{a2}: {c2} Km<br />{a3}: {c3} Km<br />{a4}: {c4} Km'
        },
        legend: {
            data: ['POTENSI', 'PERENCANAAN', 'DITANGANI', 'SISA','TOTAL KM'],
            selected: {
                
                POTENSI: true,
                PERENCANAAN: true,
                DITANGANI: true,
                SISA: true

            }
        },
        toolbox: {
            show: true,
            feature: {
            dataView: { show: false, readOnly: false },
            magicType: { show: true, type: ['line', 'bar'] },
            restore: { show: true },
            saveAsImage: { show: true }
            }
        },
        
        calculable: true,

        series: [
            {
                name: 'POTENSI',
                type: 'bar',
                id: 'sales',
                itemStyle: {color: '#ffc107'},
                data: data_potensi,
                universalTransition: {
                    enabled: true,
                    divideShape: 'clone'
                }
            },
            {
                name: 'PERENCANAAN',
                type: 'bar',
                itemStyle: {color: '#ffb64d'},

                data: data_perencanaan,
                universalTransition: {
                    enabled: true,
                    divideShape: 'clone'
                }
            },
            {
                name: 'DITANGANI',
                type: 'bar',
                itemStyle: {color: '#28a745'},

                data: data_penanganan,
                universalTransition: {
                    enabled: true,
                    divideShape: 'clone'
                }
            },
            {
                name: 'SISA',
                type: 'bar',
                itemStyle: {color: '#dc3545'},

                data: data_sisa,
                universalTransition: {
                    enabled: true,
                    divideShape: 'clone'
                }
            },
            {
                name: 'TOTAL KM',
                type: 'bar',
                
                data: data_total_km,
                universalTransition: {
                    enabled: true,
                    divideShape: 'clone'
                }
            }
        ]
    };
// const drilldownData = [
//   {
//     dataGroupId: 'UPTD1',
//     data: [
//       ['Cats', 4],
//       ['Dogs', 2],
//       ['Cows', 1],
//       ['Sheep', 2],
//       ['Pigs', 1]
//     ]
//   },
//   {
//     dataGroupId: 'UPTD2',
//     data: [
//       ['Apples', 4],
//       ['Oranges', 2]
//     ]
//   },
//   {
//     dataGroupId: 'UPTD3',
//     data: [
//       ['Toyota', 4],
//       ['Opel', 2],
//       ['Volkswagen', 2]
//     ]
//   }
// ];
// myChart.on('click', function (event) {
//   if (event.data) {
//     var subData = drilldownData.find(function (data) {
//       return data.dataGroupId === event.data.groupId;
//     });
//     if (!subData) {
//       return;
//     }
//     myChart.setOption({
//       xAxis: {
//         data: subData.data.map(function (item) {
//           return item[0];
//         })
//       },
//       series: {
//         type: 'bar',
//         id: 'sales',
//         dataGroupId: subData.dataGroupId,
//         data: subData.data.map(function (item) {
//           return item[1];
//         }),
//         universalTransition: {
//           enabled: true,
//           divideShape: 'clone'
//         }
//       },
//       graphic: [
//         {
//           type: 'text',
//           left: 50,
//           top: 20,
//           style: {
//             text: 'Back',
//             fontSize: 18
//           },
//           onclick: function () {
//             myChart.setOption(option);
//           }
//         }
//       ]
//     });
//   }
// });

option && myChart.setOption(option);
</script>
@endsection
