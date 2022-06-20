@extends('admin.layout.index')

@section('title')Sapu Lobang @endsection
@section('head')
<link rel="stylesheet" type="text/css" href="{{ asset('assets/vendor/datatables.net/css/dataTables.bootstrap4.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/vendor/datatables.net/css/buttons.dataTables.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/vendor/data-table/extensions/responsive/css/responsive.dataTables.css') }}">
<link rel="stylesheet" href="{{ asset('assets/vendor/chosen_v1.8.7/chosen.css') }}">
<link rel="stylesheet" href="https://js.arcgis.com/4.17/esri/themes/light/main.css">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/echarts/5.3.1/echarts.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts@5.3.1/dist/echarts.min.js"></script>
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
                                            @php
                                                $grid = 3;
                                            @endphp
                                            <div class="col-sm-12 col-xl-{{ $grid }} col-md-{{ $grid }}">
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
                                            
                                            @endif
                                            <div class="col-sm-12 col-xl-{{ $grid }} col-md-{{ $grid }} ">
                                                <h4 class="sub-title">Tanggal </h4>
                                                <input required name="tanggal_akhir" type="date"
                                                    class="form-control form-control-primary" value="{{ @$filter['tanggal_akhir'] }}">
                                            </div>
                                            
                                            {{-- <input name="filter" value="true" style="display: none" /> --}}

                                            <div class="mt-3 col-sm-12 col-xl col-md">
                                                {{-- <button type="submit" class="mt-4 btn btn-primary waves-effect waves-light">Filter</button> --}}
                                                <button class="mt-4 btn btn-mat btn-primary waves-effect waves-light" type="submit" formmethod="get" formaction="{{ route('sapu-lobang.index') }}">Filter</button>
                                                <button class="mt-4 btn btn-mat btn-success " formmethod="post" type="submit" formaction="{{ route('sapu-lobang.rekapitulasi') }}">Cetak Rekap Entry</button>
                                                @if (Auth::user()->id == 1)
                                                {{-- <a href="{{ route('sapu-lobang.index.synchronize') }}" class="mt-4 btn btn-mat btn-danger waves-effect waves-light" onclick="return confirm('Singkronisasi Seluruh Data?')">Singkronisasi Data</a>    --}}
                                                @endif

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
                <h4>Tabel Sapu Lobang {{ @$filter['tanggal_awal'].' - '.@$filter['tanggal_akhir'] }} </h4>
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
                    <table id="dttable" class="table table-striped table-bordered table-responsive">
                        <thead>
                            <tr>
                                <th rowspan="2"></th>
                                <th rowspan="2" style="vertical-align: top;text-align: center;">SUP</th>
                                <th colspan="6" style="vertical-align: top;text-align: center;">Jumlah Lubang</th>   
                                
                                <th rowspan="2" style="vertical-align: top;text-align: center;">Panjang<br>Total Ruas</th>
                                <th colspan="3" style="vertical-align: top;text-align: center;">Panjang </th>   
                            </tr>
                            <tr>
                                <th style="vertical-align: top;text-align: center;">Lubang<br>{{ $filter['tanggal_sebelum'] }}</th>
                                <th style="vertical-align: top;text-align: center;">Penambahan Lubang Baru<br>{{ $filter['tanggal_awal'] }}<br>s.d<br>{{ $filter['tanggal_akhir'] }}</th>
                                <th style="vertical-align: top;text-align: center;">Total Lubang<br>{{ $filter['tanggal_akhir'] }}</th>
                                <th style="vertical-align: top;text-align: center;">Yang Sudah Ditangani<br>{{ $filter['tanggal_awal'] }}<br>s.d<br>{{ $filter['tanggal_akhir'] }}</th>
                                <th style="vertical-align: top;text-align: center;">Sisa Yang Belum Ditangani<br>{{ $filter['tanggal_awal'] }}<br>s.d<br>{{ $filter['tanggal_akhir'] }}</th>
                                <th style="vertical-align: top;text-align: center;">Potensi</th>

                                <th style="vertical-align: top;text-align: center;">Sisa Kerusakan</th>
                                <th style="vertical-align: top;text-align: center;">Penanganan</th>
                                <th style="vertical-align: top;text-align: center;">Potensi</th>

                            </tr>
                        </thead>
                        <tbody id="bodyJembatan">
                            @php
                                $no =0;
                            @endphp
                            @foreach ($data as $uptd)
                                @if(@$filter['uptd_filter'] == null )
                                <tr>
                                    <td colspan="10">UPTD Pengelolaan Jalan dan Jembatan Wilayah Pelayanan - {{ $uptd->id }}</td>
                                </tr>
                                @endif
                                @foreach($uptd->library_sup as $sup)
                                @php
                                    $lubang_lama = $sup->survei_lubang()->where('tanggal','<=',$filter['tanggal_sebelum'])->sum('jumlah') - $sup->penanganan_lubang_s()->where('tanggal','<=',$filter['tanggal_sebelum'])->sum('jumlah');
                                    $lubang_baru = $sup->survei_lubang_s()->whereBetween('tanggal', [$filter['tanggal_awal'] , $filter['tanggal_akhir'] ])->sum('jumlah');
                                    $total2 = $lubang_lama+$lubang_baru;
                                    
                                    $penanganan = $sup->penanganan_lubang_s()->whereBetween('tanggal', [$filter['tanggal_awal'] , $filter['tanggal_akhir'] ])->sum('jumlah');

                                    $sisa2 = $total2-$penanganan;
                                    
                                    $jumlah = $sup->survei_lubang()->where('tanggal','<=',$filter['tanggal_sebelum'])->sum('jumlah');
                                    

                                    $panjang_lama =$sup->survei_lubang()->where('tanggal','<=',$filter['tanggal_sebelum'])->sum('panjang') - $sup->penanganan_lubang_s()->where('tanggal','<=',$filter['tanggal_sebelum'])->sum('panjang');
                                    $panjang_ditangani = $sup->penanganan_lubang_s()->whereBetween('tanggal', [$filter['tanggal_awal'] , $filter['tanggal_akhir'] ])->sum('panjang');
                                    $panjang_baru = $sup->survei_lubang()->whereBetween('tanggal', [$filter['tanggal_awal'] , $filter['tanggal_akhir'] ])->sum('panjang');
                                    $panjang =  $panjang_lama + $panjang_baru;
                                    $panjang =  $panjang - $panjang_ditangani;
                                    $ditangani = $sup->penanganan_lubang_s()->where('tanggal','<=',$filter['tanggal_akhir'])->sum('panjang');

                                    $potensi = $sup->lubang_potensi()->where('tanggal','<=',$filter['tanggal_akhir'])->sum('jumlah');
                                    $potensi_panjang = $sup->lubang_potensi()->where('tanggal','<=',$filter['tanggal_akhir'])->sum('panjang');
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
                                    <td>{{ $lubang_lama }}</td>
                                    <td>{{ $lubang_baru }}</td>
                                    <td>{{ $total2 }}</td>
                                    <td>{{ $penanganan }}</td>
                                    <td>{{ $sisa2 }}</td>
                                    <td>{{ $potensi }}</td>

                                    <td>{{ round($sup->library_ruas->sum('panjang')/1000,3) }}</td>
                                    <td>{{ round($panjang/1000,3)  }}</td>
                                    <td>{{ round($ditangani/1000,3)  }}</td>
                                    <td>{{ round($potensi_panjang/1000,3)  }}</td>


                                </tr>    
                                @endforeach
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-12">
		<div class="card">
            <div class="card-header">
                <h4>Diagram Sapu Lobang {{ @$filter['tanggal_akhir'] }} </h4>
                <div class="card-header-right">
                    <ul class="list-unstyled card-option">
                        {{-- <li><i class="feather icon-maximize full-card"></i></li> --}}
                        <li><i class="feather icon-minus minimize-card"></i></li>
                    </ul>
                </div>
            </div>
			<div class="card-block">
                <div class="row">
                    @foreach ($temporai as $no => $temp)
                    <div class="col-md-6 col-sm-6  chart-container">
                        <h5 justify-content-center>UPTD - {{ $temp['uptd'] }}</h5>
                        {{-- <div class="justify-content-center" id="pie_basic{{ $no }}" style="width: 350px; height: 200px;"></div> --}}
                        <div class="chart has-fixed-height" id="piee_basic{{ $no }}" style="width: 500px; height: 400px;"></div>
                    </div>
                    
                    @endforeach
                </div>
			</div>
		</div>
	</div>	
    @if (count($temporai_kota)>0)
    <div class="col-sm-12">
		<div class="card">
            <div class="card-header">
                <h4>Diagram Sapu Lobang Kota / Kabupaten{{ @$filter['tanggal_awal'].' - '.@$filter['tanggal_akhir'] }} </h4>
                <div class="card-header-right">
                    <ul class="list-unstyled card-option">
                        {{-- <li><i class="feather icon-maximize full-card"></i></li> --}}
                        <li><i class="feather icon-minus minimize-card"></i></li>
                    </ul>
                </div>
            </div>
			<div class="card-block">
                <div class="row">
                    @foreach ($temporai_kota as $num => $temp_kota)
                    <div class="col-md-4 col-sm-4  chart-container">
                        <h5 justify-content-center>{{ $temp_kota['name'] }}</h5>
                        {{-- <div class="justify-content-center" id="pie_basic{{ $no }}" style="width: 350px; height: 200px;"></div> --}}
                        <div class="chart has-fixed-height" id="pieee_basic{{ $num }}" style="width: 500px; height: 400px;"></div>
                    </div>
                    
                    @endforeach
                </div>
			</div>
		</div>
	</div>
        
    @endif
    
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
                            <table  class="table table-striped table-bordered table-responsive">
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
                                            // $jumlah = $ruas->survei_lubang()->where('tanggal','<=',$filter['tanggal_sebelum'])->sum('jumlah') - $ruas->penanganan_lubang()->where('tanggal','<=',$filter['tanggal_sebelum'])->sum('jumlah');
                                            // $penanganan = $ruas->penanganan_lubang()->whereBetween('tanggal', [$filter['tanggal_awal'] , $filter['tanggal_akhir'] ])->sum('jumlah');
                                            
                                            // $sisa = $jumlah-$penanganan;
                                            // $lubang_baru = $ruas->survei_lubang()->whereBetween('tanggal', [$filter['tanggal_awal'] , $filter['tanggal_akhir'] ])->sum('jumlah');
                                            // $total = $sisa+$lubang_baru;

                                            // $total2 = $jumlah+$lubang_baru;
                                            // $sisa2 = $total2-$penanganan;

                                            $lubang_lama = $ruas->survei_lubang()->where('tanggal','<=',$filter['tanggal_sebelum'])->sum('jumlah') - $ruas->penanganan_lubang_s()->where('tanggal','<=',$filter['tanggal_sebelum'])->sum('jumlah');
                                            $lubang_baru = $ruas->survei_lubang_s()->whereBetween('tanggal', [$filter['tanggal_awal'] , $filter['tanggal_akhir'] ])->sum('jumlah');
                                            $total2 = $lubang_lama+$lubang_baru;
                                            
                                            $penanganan = $ruas->penanganan_lubang_s()->whereBetween('tanggal', [$filter['tanggal_awal'] , $filter['tanggal_akhir'] ])->sum('jumlah');

                                            $sisa2 = $total2-$penanganan;
                                            
                                            $jumlah = $ruas->survei_lubang()->where('tanggal','<=',$filter['tanggal_sebelum'])->sum('jumlah');
                                            
                                            
                                        @endphp
                                        <tr>
                                            
                                            <td>{{ $ruas->nama_ruas_jalan }}</td>
                                            <td>{{ round($ruas->panjang / 1000, 2) }}</td>
                                            <td>{{ $lubang_lama }}</td>
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

<script type="text/javascript">

    var temp = {!! json_encode($temporai) !!};

 

    console.log(temp);
    let text = "";
    temp.forEach(myFunction);
    
    
    function myFunction(item, index) {
        var cek = "pie_basic"+index;
        var ceke = "piee_basic"+index;

        console.log(cek)

        // text = index + ": " + item.kerusakan + "<br>"; 
        // document.getElementById(cek).innerHTML = text;

        
        // google.charts.load('current', {'packages':['corechart']});
        // google.charts.setOnLoadCallback(drawChart);
        // function drawChart() {
        //      var data = google.visualization.arrayToDataTable([
        //         ['Year', 'Products'],
        //         ['Baik',  item.total],
        //         ['Kerusakan',  item.kerusakan],
        //         ['Penanganan',  item.penanganan]
        //     ]);
        //     var options = {                
        //         curveType: 'function',
        //         legend: { position: 'bottom' }
        //     };
        //     var chart = new google.visualization.PieChart(document.getElementById(cek));
        //     chart.draw(data, options);
        // }


        var chartDom = document.getElementById(ceke);
        var myChart = echarts.init(chartDom);
        var option;

        option = {
            tooltip: {
                trigger: 'item',
                formatter: '{a} <br/>{b} : {c} Km ({d}%)'
            },
            legend: {
                top: '5%',
                left: 'center'
            },
            toolbox: {
                show: true,
                feature: {
                mark: { show: true },
                dataView: { show: true, readOnly: false },
                restore: { show: true },
                saveAsImage: { show: true }
                }
            },
            series: [
                {
                name: 'Sapu Lobang',
                type: 'pie',
                radius: ['40%', '70%'],
                avoidLabelOverlap: false,

                itemStyle: {
                    borderRadius: 10,
                    borderColor: '#fff',
                    borderWidth: 2
                },
                label: {
                    show: false,
                    position: 'center'
                },
                emphasis: {
                    label: {
                    show: true,
                    fontSize: '23',
                    fontWeight: 'bold'
                    }
                },
                labelLine: {
                    show: false
                },
                data: [
                    { value: item.total, name: 'Baik', itemStyle: {color: '#89f574'} },
                    { value: item.penanganan, name: 'Penanganan', itemStyle: {color: '#fce97f'} },
                    { value: item.kerusakan, name: 'Kerusakan',itemStyle: {color: '#ff8a8a'} }
                    ]
                }
            ]
        };

        option && myChart.setOption(option);

    }
    var temp1 = {!! json_encode($temporai_kota) !!};
    console.log(temp1);
    temp1.forEach(myFunction1);
    
    
    function myFunction1(item, index) {
        var ceker = "pieee_basic"+index;
        console.log(ceker)

        var chartDom1 = document.getElementById(ceker);
        var myChart1 = echarts.init(chartDom1);
        var option1;

        option1 = {
            tooltip: {
                trigger: 'item',
                formatter: '{a} <br/>{b} : {c} Km ({d}%)'
            },
            legend: {
                top: '5%',
                left: 'center'
            },
            toolbox: {
                show: true,
                feature: {
                mark: { show: true },
                dataView: { show: true, readOnly: false },
                restore: { show: true },
                saveAsImage: { show: true }
                }
            },
            series: [
                {
                name: 'Sapu Lobang',
                type: 'pie',
                radius: ['40%', '70%'],
                avoidLabelOverlap: false,

                itemStyle: {
                    borderRadius: 10,
                    borderColor: '#fff',
                    borderWidth: 2
                },
                label: {
                    show: false,
                    position: 'center'
                },
                emphasis: {
                    label: {
                    show: true,
                    fontSize: '23',
                    fontWeight: 'bold'
                    }
                },
                labelLine: {
                    show: false
                },
                data: [
                    { value: item.total, name: 'Baik', itemStyle: {color: '#89f574'} },
                    { value: item.penanganan, name: 'Penanganan', itemStyle: {color: '#fce97f'} },
                    { value: item.kerusakan, name: 'Kerusakan',itemStyle: {color: '#ff8a8a'} }
                    ]
                }
            ]
        };

        option1 && myChart1.setOption(option1);

    }
</script>
@endsection
