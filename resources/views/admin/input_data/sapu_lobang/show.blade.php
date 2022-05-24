@extends('admin.layout.index')

@section('title') Edit pelaporan @endsection
@section('head')
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
    var lapor = {!! json_encode(@$data->toArray()) !!};
    console.log(lapor);
  var propertiPeta = {
    center:new google.maps.LatLng(lapor.lat,lapor.long),
    zoom:9,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  
  var peta = new google.maps.Map(document.getElementById("googleMap"), propertiPeta);
  
  // membuat Marker
  var marker=new google.maps.Marker({
      position: new google.maps.LatLng(lapor.lat,lapor.long),
      map: peta,
      animation: google.maps.Animation.BOUNCE
  });

}

// event jendela di-load  
google.maps.event.addDomListener(window, 'load', initialize);
</script>
@endsection
@section('page-header')
<div class="row align-items-end">
    <div class="col-lg-8">
        <div class="page-header-title">
            <div class="d-inline">
                <h4>
                    Lubang UPTD {{ Str::upper(@$data->uptd_id) }} 
                    @if ($data->status == null)
                        @if (Request::segment(4) == 'data-potensi')
                        <button class="btn btn-danger  waves-effect waves-light" data-toggle="tooltip" title="Belum Ditangani">Potensi Lubang</button>
                        @else
                        <button class="btn btn-danger  waves-effect waves-light" data-toggle="tooltip" title="Belum Ditangani">Belum Ditangani</button>
                        @endif
                    @elseif($data->status == 'Perencanaan')
                        <button class="btn btn-warning  waves-effect waves-light" data-toggle="tooltip" title="Dalam Perencanaan">Dalam Perencanaan</button>
                    @elseif($data->status == 'Selesai')
                        <button class="btn btn-success  waves-effect waves-light" data-toggle="tooltip" title="Sudah Ditangani">Sudah Ditangani</button>
                    @endif

                </h4>
                {{-- <span>Data Seluruh Rumija</span> --}}
            </div>
        </div>
    </div>
    <div class="col-lg-4">
        <div class="page-header-breadcrumb">
            <ul class="breadcrumb breadcrumb-title">
                <li class="breadcrumb-item">
                    <a href="{{ url('admin') }}">
                        <i class="feather icon-home"></i>
                    </a>
                </li>
                <li class="breadcrumb-item"><a href="{{ route('sapu-lobang.index') }}">Sapu Lobang</a> </li>
                @if (Request::segment(4) == 'data-potensi')
                <li class="breadcrumb-item"><a href="{{ route('sapu-lobang.potensi') }}">Data Potensi Lubang</a> </li>
                <li class="breadcrumb-item"><a href="#!">Detail Potensi Lubang</a> </li>
                @else
                <li class="breadcrumb-item"><a href="{{ route('sapu-lobang.lubang') }}">Data Lubang</a> </li>
                <li class="breadcrumb-item"><a href="#!">Detail Lubang</a> </li>
                @endif
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
                <h5>{{@$data->data_sup->name}}</h5>
                <br>
                <h5>{{@$data->ruas->nama_ruas_jalan}} ({{ $data->lokasi_kode }} KM. {{ $data->lokasi_km }} + {{ $data->lokasi_m }})</h5>
                <br>
                @if ($data->status == null)
                    <h5>Tanggal Survei : {{ $data->tanggal }}</h5>
                @elseif($data->status == 'Perencanaan')
                    <h5>Tanggal Pelaksanaan : {{ $data->tanggal_rencana_penanganan }}</h5>
                @elseif($data->status == 'Selesai')
                    <h5>Tanggal Penanganan : {{ $data->tanggal_penanganan }}</h5>
                @endif
                <div class="card-header-right">
                    <i class="feather icon-maximize full-card"></i>
                    <i class="feather icon-minus minimize-card"></i>
                </div>
            </div>
            <div class="card-block">

                <div class="row">
                    <div class="col-md-3">
                        <label class="col-md-12 col-form-label"><b>Jumlah</b></label>
                        <hr>
                        <label class="col-md-12 col-form-label">{{@$data->jumlah}} Lubang @if(@$data->kategori) ({{@$data->kategori}}) @endif</label>
                    </div>
                    <div class="col-md-3">
                        <label class="col-md-12 col-form-label"><b>Panjang</b></label>
                        <hr>
                        <label class="col-md-12 col-form-label">{{@$data->panjang}} m</label>
                    </div>
                    <div class="col-md-3">
                        <label class="col-md-12 col-form-label"><b>Lajur</b></label>
                        <hr>
                        <label class="col-md-12 col-form-label">{{@$data->lajur}}</label>
                    </div>
                    <div class="col-md-3">
                        <label class="col-md-12 col-form-label"><b>Keterangan</b></label>
                        <hr>
                        <label class="col-md-12 col-form-label">{{@$data->description}} {{@$data->kategori_kedalaman}} </label>
                    </div>
                </div>
                 
                <div class="form-group row">
                    <label class="col-md-12 col-form-label text-center">Dokumentasi</label>
                    <img style="max-height: 400px;" class="img-thumbnail rounded mx-auto d-block" src="{{ Storage::url('public/survei_lubang/'.@$data->image) }}" alt="">
                    @if (@$data->image_penanganan)
                    <img style="max-height: 400px;" class="img-thumbnail rounded mx-auto d-block" src="{{ Storage::url('public/survei_lubang/'.@$data->image_penanganan) }}" alt="">

                    @endif
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <label class="col-md-6 col-form-label"><b>Koordinat X</b></label>
                        <hr>
                        <label class="col-md-12 col-form-label">{{@$data->lat}}</label>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-6 col-form-label"><b>Koordinat Y</b></label>
                        <hr>
                        <label class="col-md-12 col-form-label">{{@$data->long}}</label>
                    </div>
                </div>
                <div id="googleMap" style="width:100%;height:380px;"></div>
            </div>
        </div>
     
        <a href="{{ url()->previous() }}"><button type="button" class="btn btn-danger waves-effect " data-dismiss="modal">Kembali</button></a>

    </div>
</div>

@endsection

@section('script')
<script src="{{ asset('assets/vendor/datatables.net/js/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('assets/vendor/datatables.net/js/dataTables.buttons.min.js') }}"></script>
<script src="{{ asset('assets/vendor/datatables.net/js/dataTables.bootstrap4.min.js') }}"></script>

<script src="{{ asset('assets/vendor/data-table/extensions/responsive/js/dataTables.responsive.min.js') }}"></script>
<script src="{{ asset('assets/vendor/data-table/extensions/responsive/js/responsive.bootstrap4.min.js') }}"></script>
<script src="{{ asset('assets/vendor/jquery/js/jquery.mask.js') }}"></script>
<script>
    $(document).ready(function() {
        // Format mata uang.
        $('.formatRibuan').mask('000.000.000.000.000', {
            reverse: true
        });

        // Format untuk lat long.
        $('.formatLatLong').keypress(function(evt) {
            return (/^\-?[0-9]*\.?[0-9]*$/).test($(this).val() + evt.key);
        });
    });

    function ubahOption() {

        //untuk select Ruas
        id = document.getElementById("uptd").value
        url = "{{ url('admin/input-data/kondisi-jalan/getRuasJalan') }}"
        id_select = '#ruas_jalan'
        text = 'Pilih Ruas Jalan'
        option = 'nama_ruas_jalan'

        setDataSelect(id, url, id_select, text, option, option)

        //untuk select SUP
        url = "{{ url('admin/master-data/ruas-jalan/getSUP') }}"
        id_select = '#sup'
        text = 'Pilih SUP'
        option = 'name'

        setDataSelect(id, url, id_select, text, option, option)
    }
   

</script>
@endsection
