@extends('admin.layout.index')

@section('title')Sapu Lobang - Data Lubang @endsection
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
                <li class="breadcrumb-item"><a href="{{ route('sapu-lobang.index') }}">Sapu Lobang</a> </li>
                <li class="breadcrumb-item"><a href="#!">Data Lubang</a> </li>

            </ul>
        </div>
    </div>
</div>
@endsection

@section('page-body')
<div class="row">
    
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header">
                <h4>Filter</h4>
                <div class="card-header-right">
                    <ul class="list-unstyled card-option">
                        {{-- <li><i class="feather icon-maximize full-card"></i></li> --}}
                        <li><i class="feather icon-minus minimize-card"></i></li>
                    </ul>
                </div>
            </div>
            <div class="card-block">
                <div class="card-block w-100">
                    <form  enctype="multipart/form-data">
                        @csrf
                        <div class="row col-12">
                            @php
                                $grid = 3;
                            @endphp
                            @if (Auth::user()->internalRole->uptd == null)
                            <div class="col-sm-12 col-xl-2 mb-4">
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
                                $grid = 2;
                            @endphp
                            @endif
                            <div class="col-sm-12 col-xl-{{ $grid }} col-md-{{ $grid }} mb-3">
                                <h4 class="sub-title">Tanggal Awal</h4>
                                <input required name="tanggal_awal" type="date"
                                    class="form-control " style="width: 100%" value="{{ @$filter['tanggal_awal'] }}">
                            </div>
                            <div class="col-sm-12 col-xl-{{ $grid }} col-md-{{ $grid }} mb-3">
                                <h4 class="sub-title">Tanggal Akhir</h4>
                                <input required name="tanggal_akhir" type="date"
                                    class="form-control " style="width: 100%" value="{{ @$filter['tanggal_akhir'] }}">
                            </div>
                            <div class="col-sm-12 col-xl-{{ $grid }} col-md-{{ $grid }} mb-3">
                                <h4 class="sub-title">Status</h4>
                                <select class="form-control " style="width: 100%" name="status_filter">
                                    <option value="">Pilih Semua</option>
                                    <option value="Belum Ditangani" @if(@$filter['status_filter'] == 'Belum Ditangani' ) selected @endif>Belum Ditangani</option>
                                    <option value="Dalam Perencanaan" @if(@$filter['status_filter'] == 'Dalam Perencanaan' ) selected @endif>Dalam Perencanaan</option>
                                    <option value="Sudah Ditangani" @if(@$filter['status_filter'] == 'Sudah Ditangani' ) selected @endif>Sudah Ditangani</option>
                                </select>
                            </div>
                            {{-- <input name="filter" value="true" style="display: none" /> --}}

                            <div class="mt-3 col-sm-12 col-xl-2 mb-2">
                                {{-- <button type="submit" class="mt-4 btn btn-primary waves-effect waves-light">Filter</button> --}}
                                <button class="mt-4 btn btn-primary waves-effect waves-light" type="submit" formmethod="get" formaction="{{ route('sapu-lobang.lubang') }}">Filter</button>
                                {{-- <button class="mt-4 btn btn-mat btn-success " formmethod="post" type="submit" formaction="{{ route('sapu-lobang.rekapitulasi') }}">Cetak Rekap Entry</button> --}}
                            </div>
                            
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header">
                <h4>Tabel Data Detail Lubang {{ @$filter['status_filter'] }} {{ '- '.$data->sum('jumlah') .' Lubang' }}</h4>
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
                                <th>No</th>
                                <th>Kedalaman</th>
                                <th>Jumlah</th>
                                <th>Panjang</th>
                                <th>Tanggal</th>
                                <th class="text-center">Status</th>
                                <th>Ruas</th>
                                <th>SUP</th>
                                <th>UPTD</th>
                                <th class="text-center">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($data as $no => $item)
                            <tr>
                                <td>{{ ++$no }}</td>
                                <td>
                                    {{ $item->kategori_kedalaman }}
                                </td>
                                <td>
                                    {{ $item->jumlah }}
                                </td>
                                <td>
                                    {{ $item->panjang }} m
                                </td>
                                
                                @if ($item->status == null)
                                <td>
                                    {{ $item->tanggal }}
                                </td>
                                <td class="text-center">
                                    
                                    <button class="btn btn-danger btn-mini waves-effect waves-light" data-toggle="tooltip" title="Belum Ditangani">Belum Ditangani</button>

                                </td>
                                @elseif($item->status == 'Perencanaan')
                                <td>
                                    {{ $item->tanggal_rencana_penanganan }}
                                </td>
                                <td class="text-center">
                                    
                                    <button class="btn btn-warning btn-mini waves-effect waves-light" data-toggle="tooltip" title="Dalam Perencanaan">Dalam Perencanaan</button>

                                </td>
                                @elseif($item->status == 'Selesai')
                                <td>
                                    {{ $item->tanggal_penanganan }}
                                </td>
                                <td class="text-center">
                                    <button class="btn btn-success btn-mini waves-effect waves-light" data-toggle="tooltip" title="Sudah Ditangani">Sudah Ditangani</button>

                                    
                                </td>
                                @endif
                                <td>
                                    {{ $item->ruas->nama_ruas_jalan }} ({{ $item->lokasi_kode }} KM. {{ $item->lokasi_km }} + {{ $item->lokasi_m }})
                                </td>
                                <td>
                                    {{ $item->sup }}
                                </td>
                                <td>
                                    {{ $item->uptd_id }}
                                </td>
                                <td class="text-center">
                                    @if ($item->status == null)
                                    <a href="{{ route('sapu-lobang.lubang.reject',$item->id) }}"><button class="btn btn-warning btn-mini waves-effect waves-light" data-toggle="tooltip" title="Jadwalkan"><i class="icofont icofont-list"></i></button></a>
                                    <button type="button" class="btn btn-warning btn-mini waves-effect waves-light" data-toggle="modal" data-target="#exampleModal" data-whatever="{{ $item->id }}" data-tanggal_min ="{{ $item->tanggal }}" title="Eksekusi"><i class="icofont icofont-list"></i></button>
                                    
                                    @elseif($item->status == 'Perencanaan')
                                    <a href="#"><button class="btn btn-warning btn-mini waves-effect waves-light" data-toggle="tooltip" title="Proses"><i class="icofont icofont-list"></i></button></a>
                                    @endif
                                    <a href="#"><button class="btn btn-success btn-mini waves-effect waves-light" data-toggle="tooltip" title="lihat"><i class="icofont icofont-search"></i></button></a>
                                    <a href="#"><button class="btn btn-primary btn-mini waves-effect waves-light" data-toggle="tooltip" title="Edit"><i class="icofont icofont-pencil"></i></button></a>
                                    <a href="#" data-id="{{$item->id}}" data-toggle="modal"><button class="btn btn-danger btn-mini waves-effect waves-light" data-toggle="tooltip" title="Hapus"><i class="icofont icofont-trash"></i></button></a>
                                    {{-- <a href="#delModal" data-id="{{$item->id}}" data-toggle="modal"><button class="btn btn-danger btn-mini waves-effect waves-light" data-toggle="tooltip" title="Hapus"><i class="icofont icofont-trash"></i></button></a> --}}
                                    
                                        {{-- <a type='button' href="{{ route('detailMasterUser',$item->id ) }}"  class='btn btn-primary btn-mini waves-effect waves-light'><i class='icofont icofont-check-circled'></i>Rincian</a> --}}
                                        {{-- <a type='button' href='{{route('editUser',$item->id)}}'  class='btn btn-primary btn-mini waves-effect waves-light'><i class='icofont icofont-check-circled'></i>Edit</a> --}}
                                        {{-- <a type='button' href='#delModal'  data-toggle='modal' data-id='{{$item->id}}' class='btn btn-primary btn-mini waves-effect waves-light'><i class='icofont icofont-check-circled'></i>Hapus</a><br/> --}}

                                </td>
                            </tr>
                            @endforeach
                           
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
  
    
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">New message</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="{{ route('sapu-lobang.lubang.execution') }}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="modal-body">
                
                        <div class="form-group" style="display: none">
                            <label for="recipient-name" class="col-form-label">Recipient:</label>
                            <input type="text" name="id_lubang" class="form-control" id="recipient-name" readonly  required>
                        </div>
                        
                        <div class="form-group">
                            <label for="message-text" class="col-form-label">Status Lubang</label>
                            <Select class="form-control" id="colorselector" name="status" required>
                                <option value="">Pilih Status</option>
                                <option value="Accepted">Accepted</option>
                                <option value="Rejected">Rejected</option>
                            </Select>
                        </div>
                        <div id="Accepted" class="colors" style="display:none"> Jadwalkan kapan lubang ini akan di eksekusi 
                            <div class="form-group">
                                <label for="tanggal" class="col-form-label">Tanggal :</label>
                                <input type="date" name="tanggal" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="message-text" class="col-form-label">Keterangan :</label>
                                <textarea class="form-control" id="message-text" name="keterangan"></textarea>
                            </div>
                        </div>
                        <div id="Rejected" class="colors form-group" style="display:none"> 
                            <span style="color: red">
                                Data lubang ini akan di hapus 
                            </span>
                        </div>
                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
    </div>
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

    $('#exampleModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) // Button that triggered the modal
        var recipient = button.data('whatever') // Extract info from data-* attributes
        var tanggal_min = button.data('tanggal_min') // Extract info from data-* attributes

        // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
        // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
        var modal = $(this)
        modal.find('.modal-title').text('Eksekusi Lubang ' + recipient)
        modal.find('.modal-body input').val(recipient)

    })
    
    $(function() {
        $('#colorselector').change(function(){
            $('.colors').hide();
            $('#' + $(this).val()).show();
        });
    });
</script>


@endsection
