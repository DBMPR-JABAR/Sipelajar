@extends('admin.layout.index')

@section('title')Sapu Lobang @endsection
@section('head')
<link rel="stylesheet" type="text/css" href="{{ asset('assets/vendor/datatables.net/css/dataTables.bootstrap4.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/vendor/datatables.net/css/buttons.dataTables.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/vendor/data-table/extensions/responsive/css/responsive.dataTables.css') }}">
<link rel="stylesheet" href="{{ asset('assets/vendor/chosen_v1.8.7/chosen.css') }}">
<link rel="stylesheet" href="https://js.arcgis.com/4.17/esri/themes/light/main.css">

<style>
.chosen-container.chosen-container-single {
    width: 300px !important; /* or any value that fits your needs */
}

    table.table-bordered tbody td {
        word-break: break-word;
        vertical-align: top;
    }
</style>
@endsection

@section('page-header')
<div class="row align-items-end">
    <div class="col-lg-8">
        <div class="page-header-title">
            <div class="d-inline">
                <h4>Sapu Lobang </h4>

            </div>
        </div>
    </div>
    <div class="col-lg-4">
        <div class="page-header-breadcrumb">
            <ul class=" breadcrumb breadcrumb-title">
                <li class="breadcrumb-item">
                    <a href="{{url('admin')}}"> <i class="feather icon-home"></i> </a>
                </li>
                <li class="breadcrumb-item"><a href="#!">Sapu Lobang</a> </li>
            </ul>
        </div>
    </div>
</div>
@endsection

@section('page-body')

<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-block accordion-block">
                <div id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="accordion-panel">
                        <div class="accordion-heading" role="tab" id="headingOne">
                            <h3 class="card-title accordion-title">
                                <a class="accordion-msg" data-toggle="collapse" data-parent="#accordion"
                                    href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    Filter
                                </a>
                            </h3>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in show" role="tabpanel"
                            aria-labelledby="headingOne">
                            <div class="accordion-content accordion-desc">
                                <div class="card-block w-100">
                                    <form  enctype="multipart/form-data">
                                        @csrf
                                        <div class="row col-12">
                                            @php
                                                $grid = 5;
                                            @endphp
                                            @if (Auth::user()->internalRole->uptd == null)
                                            <div class="col-sm-12 col-xl-2">
                                                <h4 class="sub-title">UPTD</h4>
                                                <select class="form-control" style="width: 100%" name="uptd_filter">
                                                    <option value="">Pilih Semua</option>
                                                    <option value="1" @if(@$filter['uptd_filter'] == 1 ) selected @endif>UPTD 1</option>
                                                    <option value="2" @if(@$filter['uptd_filter'] == 2 ) selected @endif>UPTD 2</option>
                                                    <option value="3" @if(@$filter['uptd_filter'] == 3 ) selected @endif>UPTD 3</option>
                                                    <option value="4" @if(@$filter['uptd_filter'] == 4 ) selected @endif>UPTD 4</option>
                                                    <option value="5" @if(@$filter['uptd_filter'] == 5 ) selected @endif>UPTD 5</option>
                                                    <option value="6" @if(@$filter['uptd_filter'] == 6 ) selected @endif>UPTD 6</option>
                                                </select>
                                            </div>
                                            @php
                                                $grid = 4;
                                            @endphp
                                            @endif
                                            <div class="col-sm-12 col-xl-{{ $grid }} col-md-{{ $grid }} ">
                                                <h4 class="sub-title">Tanggal </h4>
                                                <input required name="tanggal_akhir" type="date"
                                                    class="form-control form-control-primary" value="{{ @$filter['tanggal_akhir'] }}">
                                            </div>
                                            
                                            {{-- <input name="filter" value="true" style="display: none" /> --}}

                                            <div class="mt-3 col-sm-12 col-xl-4">
                                                {{-- <button type="submit" class="mt-4 btn btn-primary waves-effect waves-light">Filter</button> --}}
                                                <button class="mt-4 btn btn-primary waves-effect waves-light" type="submit" formmethod="get" formaction="{{ route('sapu-lobang.index') }}">Filter</button>
                                                <button class="mt-4 btn btn-mat btn-success " formmethod="post" type="submit" formaction="{{ route('sapu-lobang.rekapitulasi') }}">Cetak Rekap Entry</button>
                                            </div>
                                            
                                        </div>
                                    </form>
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
                <div class="card-header-right">
                    <ul class="list-unstyled card-option">
                        {{-- <li><i class="feather icon-maximize full-card"></i></li> --}}
                        <li><i class="feather icon-minus minimize-card"></i></li>
                    </ul>
                </div>
            </div>
            <div class="card-block">
                {{-- <a data-toggle="modal" href="#addModal" class="btn btn-mat btn-primary mb-3">Cetak Rekapitulasi</a> --}}
                <div class="dt-responsive table-responsive">
                    <table id="dttable" class="table table-striped table-bordered able-responsive">
                        <thead>
                            <tr>
                                <th></th>
                                <th style="vertical-align: top;text-align: center;">SUP</th>
                                <th style="vertical-align: top;text-align: center;">Jumlah Lubang<br>{{ $filter['tanggal_sebelum'] }}</th>
                                <th style="vertical-align: top;text-align: center;">Penambahan Lubang Baru<br>{{ $filter['tanggal_awal'] }}<br>s.d<br>{{ $filter['tanggal_akhir'] }}</th>
                                <th style="vertical-align: top;text-align: center;">Total Lubang<br>{{ $filter['tanggal_akhir'] }}</th>
                                <th style="vertical-align: top;text-align: center;">Yang Sudah Ditangani<br>{{ $filter['tanggal_awal'] }}<br>s.d<br>{{ $filter['tanggal_akhir'] }}</th>
                                <th style="vertical-align: top;text-align: center;">Sisa Yang Belum Ditangani<br>{{ $filter['tanggal_awal'] }}<br>s.d<br>{{ $filter['tanggal_akhir'] }}</th>
                                <th style="vertical-align: top;text-align: center;">Panjang Ruas<br>{{ $filter['tanggal_akhir'] }}</th>
                               
                            </tr>
                        </thead>
                        <tbody id="bodyJembatan">
                            @php
                                $no =0;
                            @endphp
                            @foreach ($data as $uptd)
                                @if(@$filter['uptd_filter'] == null )
                                <tr>
                                    <td colspan="8">UPTD Pengelolaan Jalan dan Jembatan Wilayah Pelayanan - {{ $uptd->id }}</td>
                                </tr>
                                @endif
                                @foreach($uptd->library_sup as $sup)
                                @php
                                    $jumlah = $sup->survei_lubang()->where('tanggal','<=',$filter['tanggal_sebelum'])->sum('jumlah') - $sup->penanganan_lubang()->where('tanggal','<=',$filter['tanggal_sebelum'])->sum('jumlah');
                                    $penanganan = $sup->penanganan_lubang()->whereBetween('tanggal', [$filter['tanggal_awal'] , $filter['tanggal_akhir'] ])->sum('jumlah');
                                    $sisa = $jumlah-$penanganan;
                                    $lubang_baru = $sup->survei_lubang()->whereBetween('tanggal', [$filter['tanggal_awal'] , $filter['tanggal_akhir'] ])->sum('jumlah');
                                    $total = $sisa+$lubang_baru;
                                    
                                    $total2 = $jumlah+$lubang_baru;
                                    $sisa2 = $total2-$penanganan;

                          

                                @endphp
                                <tr>
                                    <td>    
                                        <a data-toggle="modal" href="#addModal{{ ++$no }}">
                                            <span class="pcoded-micon">
                                                <i class="feather icon-search"></i>
                                            </span>
                                        </a>
                                    </td>
                                    <td>{{ $sup->name }}</td>
                                    <td>{{ $jumlah }}</td>
                                    <td>{{ $lubang_baru }}</td>
                                    <td>{{ $total2 }}</td>
                                    <td>{{ $penanganan }}</td>
                                    <td>{{ $sisa2 }}</td>
                                    <td>{{ round($sup->library_ruas->sum('panjang')/1000,2) }}</td>
                                </tr>    
                                @endforeach
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal-only">
    @php
        $index =0;
    @endphp
    @foreach ($data as $uptd)
        @foreach($uptd->library_sup as $sup)
        
        <div class="modal fade" id="addModal{{ ++$index }}" tabindex="-1" role="dialog" >
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
    
                    <div class="modal-header">
                        <h4 class="modal-title">Detail Lobang {{ $sup->name }}</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        <div class="dt-responsive table-responsive">
                            <table id="dttable" class="table table-striped table-bordered able-responsive">
                                <thead>
                                    <tr >
                                        
                                        <th style="vertical-align: top;text-align: center;">Ruas</th>
                                        <th style="vertical-align: top;text-align: center;">Panjang Ruas</th>
                                        <th style="vertical-align: top;text-align: center;">Jumlah Lubang<br>{{ $filter['tanggal_sebelum'] }}</th>
                                        <th style="vertical-align: top;text-align: center;">Penambahan Lubang Baru<br>{{ $filter['tanggal_awal'] }}<br>s.d<br>{{ $filter['tanggal_akhir'] }}</th>
                                        <th style="vertical-align: top;text-align: center;">Total Lubang<br>{{ $filter['tanggal_akhir'] }}</th>  
                                        <th style="vertical-align: top;text-align: center;">Sudah Ditangani<br>{{ $filter['tanggal_awal'] }}<br>s.d<br>{{ $filter['tanggal_akhir'] }}</th>
                                        <th style="vertical-align: top;text-align: center;">Belum Ditangani<br>{{ $filter['tanggal_awal'] }}<br>s.d<br>{{ $filter['tanggal_akhir'] }}</th>
                                    </tr>
                                </thead>
                                <tbody id="bodyJembatan">
                                    
                                   
                                    @foreach($sup->library_ruas as $ruas)
                                        @php
                                            $jumlah = $ruas->survei_lubang()->where('tanggal','<=',$filter['tanggal_sebelum'])->sum('jumlah') - $ruas->penanganan_lubang()->where('tanggal','<=',$filter['tanggal_sebelum'])->sum('jumlah');
                                            $penanganan = $ruas->penanganan_lubang()->whereBetween('tanggal', [$filter['tanggal_awal'] , $filter['tanggal_akhir'] ])->sum('jumlah');
                                            
                                            $sisa = $jumlah-$penanganan;
                                            $lubang_baru = $ruas->survei_lubang()->whereBetween('tanggal', [$filter['tanggal_awal'] , $filter['tanggal_akhir'] ])->sum('jumlah');
                                            $total = $sisa+$lubang_baru;

                                            $total2 = $jumlah+$lubang_baru;
                                            $sisa2 = $total2-$penanganan;
                                            
                                        @endphp
                                        <tr>
                                            
                                            <td>{{ $ruas->nama_ruas_jalan }}</td>
                                            <td>{{ round($ruas->panjang / 1000, 2) }}</td>
                                            <td>{{ $jumlah }}</td>
                                            <td>{{ $lubang_baru }}</td>
                                            <td>{{ $total2 }}</td>
                                            <td>{{ $penanganan }}</td>
                                            <td>{{ $sisa2 }}</td>
                                        </tr>    
                                    @endforeach
                                   
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default waves-effect " data-dismiss="modal">Tutup</button>
                        {{-- <button type="submit" class="btn btn-primary waves-effect waves-light ">Simpan</button> --}}
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    @endforeach
</div>

@endsection
@section('script')
<script src="{{ asset('assets/vendor/datatables.net/js/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('assets/vendor/datatables.net/js/dataTables.buttons.min.js') }}"></script>
<script src="{{ asset('assets/vendor/datatables.net/js/dataTables.bootstrap4.min.js') }}"></script>

<script src="{{ asset('assets/vendor/data-table/extensions/responsive/js/dataTables.responsive.min.js') }}"></script>
<script src="{{ asset('assets/vendor/data-table/extensions/responsive/js/responsive.bootstrap4.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/vendor/chosen_v1.8.7/chosen.jquery.js') }}" type="text/javascript"></script>

<script>
    $(document).ready(function() {
        $(".chosen-select").chosen( { width: '100%' } );
        $(".chosen-jenis-instruksi").chosen( { width: '100%' } );
        $("#dttable").DataTable();
        $('#delModal').on('show.bs.modal', function(event) {
            const link = $(event.relatedTarget);
            const id = link.data('id');
            console.log(id);
            const url = `{{ url('admin/master-data/user/manajemen/delete') }}/` + id;
            console.log(url);
            const modal = $(this);
            modal.find('.modal-footer #delHref').attr('href', url);
        });

    });
</script>
@endsection
