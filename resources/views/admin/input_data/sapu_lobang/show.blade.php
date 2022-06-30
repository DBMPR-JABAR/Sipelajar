@extends('admin.layout.index')

@section('title') Edit pelaporan @endsection
@section('head')

<style>
   
    #viewDiv {
        padding: 0;
        margin: 0;
        height: 100%;
        width: 100%;
      }
</style>


{{-- <script>
    var lapor = {!! json_encode($data->toArray()) !!};
    console.log(lapor.long);
    
    require([
      "esri/config",
      "esri/Map",
      "esri/views/MapView",
  
      "esri/Graphic",
      "esri/layers/GraphicsLayer"
  
      ], function(esriConfig,Map, MapView, Graphic, GraphicsLayer) {
  
        esriConfig.apiKey = "AAPK2021e3c0ade243ac91fc03c5cc16af553UoLz7PP3cuznJsJw2hQOU6G";
    
        const map = new Map({
        basemap: "arcgis-topographic" //Basemap layer service
        });
    
        const view = new MapView({
        map: map,
        center: [lapor.long,lapor.lat], //Longitude, latitude
        zoom: 9,
        container: "viewDiv"
        });
        
        const graphicsLayer = new GraphicsLayer();
        map.add(graphicsLayer);
        
        const point = { //Create a point
            type: "point",
            longitude: lapor.long,
            latitude: lapor.lat
        };
        const simpleMarkerSymbol = {
            type: "simple-marker",
            color: [226, 119, 40],  // Orange
            outline: {
                color: [255, 255, 255], // White
                width: 1
            }
        };
        
        const pointGraphic = new Graphic({
            geometry: point,
            symbol: simpleMarkerSymbol
        });
        graphicsLayer.add(pointGraphic);
  
   });
</script> --}}

{{-- <script>
    var lapor = {!! json_encode($data->toArray()) !!};

    require([
      "esri/config",
      "esri/Map",
      "esri/views/SceneView",

      "esri/widgets/BasemapToggle",
      "esri/widgets/BasemapGallery",
      "esri/Graphic",
      "esri/layers/GraphicsLayer"

    ], function(esriConfig, Map, SceneView, BasemapToggle, BasemapGallery, Graphic, GraphicsLayer) {

        esriConfig.apiKey = "AAPK2021e3c0ade243ac91fc03c5cc16af553UoLz7PP3cuznJsJw2hQOU6G-m47W2PWSfHujOs9JYI-UmZOtUw7TvgwWHUSIDPI";

        const map = new Map({
            basemap: "arcgis-topographic",
            ground: "world-elevation", //Elevation service
        });

        const view = new SceneView({
            container: "viewDiv",
            map: map,
            camera: {
                position: {
                x: lapor.long, //Longitude
                y: lapor.lat, //Latitude
                z: 10000 //Meters
                },
                tilt: 0
            }
        });

        const basemapToggle = new BasemapToggle({
            view: view,
            nextBasemap: "arcgis-imagery"
        });

        view.ui.add(basemapToggle,"bottom-right");

        const basemapGallery = new BasemapGallery({
            view: view,
            source: {
            query: {
                title: '"World Basemaps for Developers" AND owner:esri'
            }
            }
        });

        view.ui.add(basemapGallery, "top-right"); // Add to the view
        
        const graphicsLayer = new GraphicsLayer();
        map.add(graphicsLayer);
        const point = { //Create a point
            type: "point",
            longitude: lapor.long,
            latitude: lapor.lat
        };
        const simpleMarkerSymbol = {
            type: "simple-marker",
            color: [226, 119, 40],  // Orange
            outline: {
                color: [255, 255, 255], // White
                width: 1
            }
        };
        const pointGraphic = new Graphic({
            geometry: point,
            symbol: simpleMarkerSymbol
        });
        graphicsLayer.add(pointGraphic);

    });

</script> --}}


<script>
    var lapor = {!! json_encode($data->toArray()) !!};

    require([
      "esri/config",
      "esri/Map",
      "esri/views/MapView",

      "esri/widgets/BasemapToggle",
      "esri/widgets/BasemapGallery",
      "esri/Graphic",
      "esri/layers/GraphicsLayer"

    ], function(esriConfig, Map, MapView, BasemapToggle, BasemapGallery, Graphic, GraphicsLayer) {

        esriConfig.apiKey = "AAPK2021e3c0ade243ac91fc03c5cc16af553UoLz7PP3cuznJsJw2hQOU6G-m47W2PWSfHujOs9JYI-UmZOtUw7TvgwWHUSIDPI";

        const map = new Map({
            basemap: "arcgis-topographic"
        });

        const view = new MapView({
            container: "viewDiv",
            map: map,
            center: [lapor.long, lapor.lat],
            zoom: 9
        });

        const basemapToggle = new BasemapToggle({
            view: view,
            nextBasemap: "arcgis-imagery"
        });

        view.ui.add(basemapToggle,"bottom-right");

        const basemapGallery = new BasemapGallery({
            view: view,
            source: {
            query: {
                title: '"World Basemaps for Developers" AND owner:esri'
            }
            }
        });

        view.ui.add(basemapGallery, "top-right"); // Add to the view
        
        const graphicsLayer = new GraphicsLayer();
        map.add(graphicsLayer);
        const point = { //Create a point
            type: "point",
            longitude: lapor.long,
            latitude: lapor.lat
        };
        const simpleMarkerSymbol = {
            type: "simple-marker",
            color: [226, 119, 40],  // Orange
            outline: {
                color: [255, 255, 255], // White
                width: 1
            }
        };
        const pointGraphic = new Graphic({
            geometry: point,
            symbol: simpleMarkerSymbol
        });
        graphicsLayer.add(pointGraphic);

    });

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
                <h5>{{@$data->data_sup->name}} : {{@$data->ruas->nama_ruas_jalan}} ({{ $data->lokasi_kode }} KM. {{ $data->lokasi_km }} + {{ $data->lokasi_m }})</h5>
                <br>
                <h5>{{ @$data->user_create->name }} @if(@$data->internalRole->role) ({{ @$data->internalRole->role }}) @endif</h5>
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
             
                <div id="viewDiv" style="width:100%;height:380px;"></div>
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
