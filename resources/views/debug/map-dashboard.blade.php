<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/icon/feather/css/feather.css') }}">
    <!-- chosen -->
    <!-- choosen -->
    <link rel="stylesheet" href="{{ asset('assets/vendor/chosen_v1.8.7/docsupport/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendor/chosen_v1.8.7/docsupport/prism.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendor/chosen_v1.8.7/chosen.css') }}">
    
    <title>Map Dashboard</title>
    <style>
   

        html,
        body,
        #viewDiv {
            padding: 0;
            margin: 0;
            height: 100%;
            width: 100%;
            z-index: -1;
        }
        #showFilter{
          position: absolute;
          top: 80px;
          left: 15px;
        }
        #showFilter button {
          width: 32px;
          height: 32px;
          background-color: white;
          border: none;
          outline: none;
          cursor: pointer;
        }
        #filter {
          position: absolute;
          top: 80px;
          left: 15px;
          max-width: 450px;
          transform: translate(-600px, 0);
          transition: transform 0.3s ease-in-out;
        }
        #filter.open {
          transform: translate(0, 0);
        }
      #filter .container {
        padding: 20px 30px;
      }
      #filter .form-group > *{
          font-size: 12.5px;
          margin:0px;
      }
      #logo {
        display: block;
        position: absolute;
        top: 30px;
        right: 30px;
      }
      #fullscreen{
          position: absolute;
          top: 113px;
          left: 15px;
        }
        #fullscreen button {
            width: 32px;
          height: 32px;
          background-color: white;
          border: none;
          outline: none;
          cursor: pointer;
        }
        .form-group {
            margin-bottom: 1px; */
        }
        #back {
            position: absolute;
            top: 146px;
            left: 15px;
        }
        #back button {
            width: 32px;
          height: 32px;
          background-color: white;
          border: none;
          outline: none;
          cursor: pointer;
        }
    </style>
    <link rel="stylesheet" href="https://js.arcgis.com/4.17/esri/themes/light/main.css">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
</head>
<body>
 

    <div id="viewDiv"></div>
    <div id="showFilter">
      <button data-toggle="tooltip" data-placement="right" title="Fitur Filter">
        <i class="feather icon-filter"></i>
      </button>
    </div>
    <div id="fullscreen">
        <button data-toggle="tooltip" data-placement="right" title="Fullscreen / Normal">
            <i class="feather icon-maximize full-card"></i>
        </button>
    </div>
    <div id="back">
        <a href="{{ url('/admin/monitoring/proyek-kontrak') }}">
            <button data-toggle="tooltip" data-placement="right" title="Kembali kehalaman Sebelumnya">
                <i class="feather icon-arrow-left"></i>
            </button>
        </a>
    </div>
    <div id="logo">
        <img width="200" class="img-fluid" src="{{ asset('assets/images/brand/text_putih.png')}}" alt="Logo DBMPR">
    </div>
    <div id="filter" class="bg-light">
            <div class="container">
            <div id="preloader" style="display:none">Loading...</div>

          <form>
          <div class="form-group">
                <div class="row">
                    <div class="col-12">
                        <label for="kegiatan">UPTD</label>
                    </div>
                    <div class="col-12">
                        <select data-placeholder="Pilih UPTD" multiple class="chosen-select chosen-select-uptd" id="uptd">
                            <option value="uptd1">UPTD 1</option>
                            <option value="uptd2">UPTD 2</option>
                            <option value="uptd3">UPTD 3</option>
                            <option value="uptd4">UPTD 4</option>
                            <option value="uptd5">UPTD 5</option>
                            <option value="uptd6">UPTD 6</option>
                             </select>
                    </div>
                </div>
            </div>
            

            <div class="form-group">
                <div class="row">
                    <div class="col-12">
                        <label for="uptdSpp">SPP / SUP</label>
                    </div>
                    <div class="col-12">
                        <select id="spp_filter" data-placeholder="Pilih UPTD dengan SPP"  class="chosen-select" multiple tabindex="6">
                            <option value=""></option>
                          </select>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-12">
                        <label for="kegiatan">Kegiatan</label>
                    </div>
                    <div class="col-12">
                        <select data-placeholder="Pilih kegiatan" multiple class="chosen-select" tabindex="8" id="kegiatan">
                            <option value="">Semua</option>
                            <option value="ruas_jalan">Ruas Jalan</option>
                            <option value="pembangunan">Pembangunan</option>
                            <option value="peningkatan">Peningkatan</option>
                            <option value="rehabilitasi">Rehabilitasi</option>
                            <option value="jembatan">Jembatan</option>
                             
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-12">
                        <label for="proyek">Proyek Kontrak</label>
                    </div>    
                    <div class="col-12">
                        <select class="chosen-select form-control" id="proyek" data-placeholder="Pilih kegiatan" multiple tabindex="4">
                            <option value="opt1">On-Progress</option>
                            <option value="opt2">Critical Contract</option>
                            <option value="opt2">Off Progress</option>
                            <option value="pembangunan">Finish</option>
                        </select>
                    </div>    
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-12">
                        <label for="basemap">Basemap</label>
                    </div>
                    <div class="col-12">
                        <select data-placeholder="Basemap..." class="chosen-select form-control" id="basemap" tabindex="-1">
                            <option value="">-</option>
                            <option value="streets">Street</option>
                            <option value="hybrid" selected>Hybrid</option>
                            <option value="satellite">Satelite</option>
                            <option value="topo">Topo</option>
                            <option value="gray">Gray</option>
                            <option value="national-geographic">National Geographic</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-12">
                        <label for="exampleFormControlSelect1">Zoom</label>
                    </div>
                    <div class="col-9">
                        <select class="chosen-select form-control" id="zoom">
                        <option value="">-</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8" selected>8</option>
                            <option value="9">9</option>
                            <option value="10">10</option> 
                        </select>
                    </div>
                </div>
            </div>
          </form>
        </div>
    </div>
</body>
<script>
  // tonggle filter
  const hamburgerButtonElement = document.querySelector("#showFilter");
  const drawerElement = document.querySelector("#filter");
  const mainElement = document.querySelector("#viewDiv");

  hamburgerButtonElement.addEventListener("click", event => {
  drawerElement.classList.toggle("open");
  event.stopPropagation();
  });


  mainElement.addEventListener("click", event => {
  drawerElement.classList.remove("open");
  event.stopPropagation();
  })

  //toggle fullscreen
  function getFullscreenElement() {
      return document.fullscreenElement
        || document.webkitFullscreenElement
        || document.mozFullscreenElement
        || document.msFullscreenElement;
  }

  function toggleFullscreen() {
      if(getFullscreenElement()) {
        document.exitFullscreen();
      } else {
        document.documentElement.requestFullscreen().catch((e) => {
          console.log(e);
        });
      }
  }

  const fullScreenElemn =  document.querySelector('#fullscreen');
  fullScreenElemn.addEventListener('click', () => {
    toggleFullscreen();
  })
</script>

<!-- chosen -->
 
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://js.arcgis.com/4.17/"></script>
 
<script type="text/javascript" src="{{ asset('assets/vendor/chosen_v1.8.7/chosen.jquery.js') }}" type="text/javascript"></script>
<script type="text/javascript" src="{{ asset('assets/vendor/chosen_v1.8.7/docsupport/prism.js') }}" type="text/javascript" charset="utf-8"></script>
 
<script>
$(document).ready(function () {
    console.log($("#uptd").val());
    function getMapData(uptd,bmData,sppData){
        var bmData = (typeof bmData === "undefined") ?"hybrid" : bmData;
        var sppData = (typeof sppData === "undefined") ? "" : sppData;
      
        require([
        "esri/Map",
        "esri/views/MapView",
        "esri/request",
        "esri/geometry/Point",
        "esri/Graphic",
        "esri/layers/GraphicsLayer",
        "esri/layers/GroupLayer",
        "esri/tasks/RouteTask",
        "esri/tasks/support/RouteParameters",
        "esri/tasks/support/FeatureSet"
        ], function (Map, MapView, esriRequest, Point, Graphic, GraphicsLayer,
                    GroupLayer, RouteTask, RouteParameters, FeatureSet) {
        const baseUrl = "{{url('/')}}";
        const map = new Map({
            basemap: bmData
        });

        const view = new MapView({
            container: "viewDiv",
            map: map,
            center: [107.6191, -6.9175], // longitude, latitude
            zoom: 8
        });

        const jembatanLayer = new GraphicsLayer();
        const pembangunanLayer = new GraphicsLayer();
        const ruasjalanLayer = new GraphicsLayer();
        const peningkatanLayer = new GraphicsLayer();
        const ruteLayer = new GraphicsLayer();
        const rehabilitasiLayer = new GraphicsLayer();
      //  const routeTask = new RouteTask({
        //    url: "https://utility.arcgis.com/usrsvcs/appservices/AzkCUV7fdmgx72RP/rest/services/World/Route/NAServer/Route_World/solve"
            // url: "https://route.arcgis.com/arcgis/rest/services/World/Route/NAServer/Route_World"
        //});


        //ruas jalan
        const urlRuasjalan = baseUrl + "/api/ruas-jalan";
        const requestRuasjalan = esriRequest(urlRuasjalan, {
            responseType: "json"
        }).then(function (response) {

            var json = response.data; 
                    
                 var data = json.data;   
                    
 
            var symbol = {
                type: "picture-marker",  // autocasts as new PictureMarkerSymbol()
                url: baseUrl + "/assets/images/marker/jalan.png",
                width: "20px",
                height: "20px"
            };
            var popupTemplate = {
                title: "{NAMA_JALAN}",
                content: [{
                type: "fields",
                fieldInfos: [
                    {
                    fieldName: "LAT_AWAL",
                    label: "Latitude 0"
                    },
                    {
                    fieldName: "LONG_AWAL",
                    label: "Longitude 0"
                    },
                    {
                    fieldName: "LAT_AKHIR",
                    label: "Latitude 1"
                    },
                    {
                    fieldName: "LONG_AKHIR",
                    label: "Longitude 1"
                    },
                    {
                    fieldName: "SUP",
                    label: "SUP"
                    },
                    {
                    fieldName: "UPTD",
                    label: "UPTD"
                    }
                ]}
            ]};
 
            data.forEach(item => {
            if(item.UPTD === uptd) {

                var pointAwal = new Point(item.LONG_AWAL, item.LAT_AWAL);
                var pointAkhir = new Point(item.LONG_AKHIR, item.LAT_AKHIR);
                var markerAwal = new Graphic({
                    geometry: pointAwal,
                    symbol: symbol,
                    attributes: item,
                    popupTemplate: popupTemplate
                });
                var markerAkhir = new Graphic({
                    geometry: pointAkhir,
                    symbol: symbol,
                    attributes: item,
                    popupTemplate: popupTemplate
                });

                ruasjalanLayer.graphics.add(markerAwal);
                ruasjalanLayer.graphics.add(markerAkhir);

                var featureSet = new FeatureSet({
                    features: [markerAwal, markerAkhir]
                });
                var routeParams = new RouteParameters({
                    stops: featureSet
                });
                routeTask.solve(routeParams).then(function(data) {
                    data.routeResults.forEach(function(result) {
                        result.route.symbol = {
                            type: "simple-line",
                            color: [5, 150, 255],
                            width: 3
                        };
                        result.route.attributes = item;
                        result.route.popupTemplate = popupTemplate;
                        ruasjalanLayer.graphics.add(result.route);
                    });
                });
            }
            });

        }).catch(function (error) {
            console.log(error);
        });

        // Pembangunan --> Pembangunan
        const urlPembangunan = baseUrl + "/api/pembangunan/category/pb";
        const requestPembangunan = esriRequest(urlPembangunan, {
            responseType: "json",
        }).then(function(response){
            var json = response.data;
            if(uptd!==""){  
                var data =  json.data.filter(function(d) { return d.UPTD ==  uptd });
                }  
   
                

            var symbol = {
                type: "picture-marker",  // autocasts as new PictureMarkerSymbol()
                url: baseUrl + "/assets/images/marker/pembangunan.png",
                width: "20px",
                height: "20px"
            };
            var popupTemplate = {
                title: "{NAMA_PAKET}",
                content: [{
                type: "fields",
                fieldInfos: [
                    {
                    fieldName: "NOMOR_KONTRAK",
                    label: "Nomor Kontrak"
                    },
                    {
                    fieldName: "TGL_KONTRAK",
                    label: "Tanggal Kontrak"
                    },
                    {
                    fieldName: "WAKTU_PELAKSANAAN_HK",
                    label: "Waktu Kontrak (Hari Kerja)"
                    },
                    {
                    fieldName: "KEGIATAN",
                    label: "Jenis Pekerjaan"
                    },
                    {
                    fieldName: "JENIS_PENANGANAN",
                    label: "Jenis Penanganan"
                    },
                    {
                    fieldName: "RUAS_JALAN",
                    label: "Ruas Jalan"
                    },
                    {
                    fieldName: "LAT",
                    label: "Latitude"
                    },
                    {
                    fieldName: "LNG",
                    label: "Longitude"
                    },
                    {
                    fieldName: "LOKASI",
                    label: "Lokasi"
                    },
                    {
                    fieldName: "SUP",
                    label: "SUP"
                    },
                    {
                    fieldName: "NILAI_KONTRAK",
                    label: "Nilai Kontrak"
                    },
                    {
                    fieldName: "PAGU_ANGGARAN",
                    label: "Pagu Anggaran"
                    },
                    {
                    fieldName: "PENYEDIA_JASA",
                    label: "Penyedia Jasa"
                    },
                    {
                    fieldName: "UPTD",
                    label: "UPTD"
                    }
                ]}
            ]};


            data.forEach(item => {
                 var point = new Point(item.LNG, item.LAT);
                pembangunanLayer.graphics.add(new Graphic({
                    geometry: point,
                    symbol: symbol,
                    attributes: item,
                    popupTemplate: popupTemplate
                }));
            
            });

        }).catch(function (error) {
            console.log(error);
        });



        // Pembangunan --> Peningkatan
        const urlPeningkatan = baseUrl + "/api/pembangunan/category/pn";
        const requestPeningkatan = esriRequest(urlPeningkatan, {
            responseType: "json",
        }).then(function(response){
            var json = response.data;
            if(uptd!==""){  
                var data =  json.data.filter(function(d) { return d.UPTD ==  uptd });
                }  

            var symbol = {
                type: "picture-marker",  // autocasts as new PictureMarkerSymbol()
                url: baseUrl + "/assets/images/marker/peningkatan.png",
                width: "20px",
                height: "20px"
            };
            var popupTemplate = {
                title: "{NAMA_PAKET}",
                content: [{
                type: "fields",
                fieldInfos: [
                    {
                    fieldName: "NOMOR_KONTRAK",
                    label: "Nomor Kontrak"
                    },
                    {
                    fieldName: "TGL_KONTRAK",
                    label: "Tanggal Kontrak"
                    },
                    {
                    fieldName: "WAKTU_PELAKSANAAN_HK",
                    label: "Waktu Kontrak (Hari Kerja)"
                    },
                    {
                    fieldName: "KEGIATAN",
                    label: "Jenis Pekerjaan"
                    },
                    {
                    fieldName: "JENIS_PENANGANAN",
                    label: "Jenis Penanganan"
                    },
                    {
                    fieldName: "RUAS_JALAN",
                    label: "Ruas Jalan"
                    },
                    {
                    fieldName: "LAT",
                    label: "Latitude"
                    },
                    {
                    fieldName: "LNG",
                    label: "Longitude"
                    },
                    {
                    fieldName: "LOKASI",
                    label: "Lokasi"
                    },
                    {
                    fieldName: "SUP",
                    label: "SUP"
                    },
                    {
                    fieldName: "NILAI_KONTRAK",
                    label: "Nilai Kontrak"
                    },
                    {
                    fieldName: "PAGU_ANGGARAN",
                    label: "Pagu Anggaran"
                    },
                    {
                    fieldName: "PENYEDIA_JASA",
                    label: "Penyedia Jasa"
                    },
                    {
                    fieldName: "UPTD",
                    label: "UPTD"
                    }
                ]}
            ]};
 
            data.forEach(item => {
            
               

                var point = new Point(item.LNG, item.LAT);
                peningkatanLayer.graphics.add(new Graphic({
                    geometry: point,
                    symbol: symbol,
                    attributes: item,
                    popupTemplate: popupTemplate
                }));
                 
             
            });
        }).catch(function (error) {
            console.log(error);
        });

        // Pembangunan --> Rehabilitasi
        const urlRehabilitasi = baseUrl + "/api/pembangunan/category/rb";
        const requestRehabilitasi = esriRequest(urlRehabilitasi, {
            responseType: "json",
        }).then(function(response){
            var json = response.data;
            if(uptd!==""){  
                var data =  json.data.filter(function(d) { return d.UPTD ==  uptd });
                }  

            var symbol = {
                type: "picture-marker",  // autocasts as new PictureMarkerSymbol()
                url: baseUrl + "/assets/images/marker/rehabilitasi.png",
                width: "25px",
                height: "25px"
            };
            var popupTemplate = {
                title: "{NAMA_PAKET}",
                content: [{
                type: "fields",
                fieldInfos: [
                    {
                    fieldName: "NOMOR_KONTRAK",
                    label: "Nomor Kontrak"
                    },
                    {
                    fieldName: "TGL_KONTRAK",
                    label: "Tanggal Kontrak"
                    },
                    {
                    fieldName: "WAKTU_PELAKSANAAN_HK",
                    label: "Waktu Kontrak (Hari Kerja)"
                    },
                    {
                    fieldName: "KEGIATAN",
                    label: "Jenis Pekerjaan"
                    },
                    {
                    fieldName: "JENIS_PENANGANAN",
                    label: "Jenis Penanganan"
                    },
                    {
                    fieldName: "RUAS_JALAN",
                    label: "Ruas Jalan"
                    },
                    {
                    fieldName: "LAT",
                    label: "Latitude"
                    },
                    {
                    fieldName: "LNG",
                    label: "Longitude"
                    },
                    {
                    fieldName: "LOKASI",
                    label: "Lokasi"
                    },
                    {
                    fieldName: "SUP",
                    label: "SUP"
                    },
                    {
                    fieldName: "NILAI_KONTRAK",
                    label: "Nilai Kontrak"
                    },
                    {
                    fieldName: "PAGU_ANGGARAN",
                    label: "Pagu Anggaran"
                    },
                    {
                    fieldName: "PENYEDIA_JASA",
                    label: "Penyedia Jasa"
                    },
                    {
                    fieldName: "UPTD",
                    label: "UPTD"
                    }
                ]}
            ]}; 

            data.forEach(item => {  
                 var point = new Point(item.LNG, item.LAT);
                rehabilitasiLayer.graphics.add(new Graphic({
                    geometry: point,
                    symbol: symbol,
                    attributes: item,
                    popupTemplate: popupTemplate
                })); 
            });
        }).catch(function (error) {
            console.log(error);
        });


        // Jembatan
        const urlJembatan = baseUrl + "/api/jembatan";
        const requestJembatan = esriRequest(urlJembatan, {
            responseType: "json"
        }).then(function (response) {

            var json = response.data;
            var data = null;
            if(uptd!=="" ){  
                 data =  json.data.filter(function(d) { return d.UPTD ==  uptd });    
            }   
            var symbol = {
                type: "picture-marker",  // autocasts as new PictureMarkerSymbol()
                url: baseUrl + "/assets/images/marker/jembatan.png",
                width: "20px",
                height: "20px"
            };
            var popupTemplate = {
                title: "{NAMA_JEMBATAN}",
                content: [{
                type: "fields",
                fieldInfos: [
                    {
                    fieldName: "PANJANG",
                    label: "Panjang"
                    },
                    {
                    fieldName: "LEBAR",
                    label: "Lebar"
                    },
                    {
                    fieldName: "RUAS_JALAN",
                    label: "Ruas Jalan"
                    },
                    {
                    fieldName: "LAT",
                    label: "Latitude"
                    },
                    {
                    fieldName: "LNG",
                    label: "Longitude"
                    },
                    {
                    fieldName: "LOKASI",
                    label: "Lokasi"
                    },
                    {
                    fieldName: "SUP",
                    label: "SUP"
                    },
                    {
                    fieldName: "UPTD",
                    label: "UPTD"
                    }
                ]}
            ]}; 
            data.forEach(item => {
                 
                 var point = new Point(item.LNG, item.LAT);
                jembatanLayer.graphics.add(new Graphic({
                    geometry: point,
                    symbol: symbol,
                    attributes: item,
                    popupTemplate: popupTemplate
                }));
              
            });

        }).catch(function (error) {
            console.log(error);
        });

        const groupLayer = new GroupLayer();


        groupLayer.add(ruasjalanLayer);
        groupLayer.add(pembangunanLayer);
        groupLayer.add(peningkatanLayer);
        groupLayer.add(rehabilitasiLayer);
        groupLayer.add(jembatanLayer);

        map.add(groupLayer);
        });

        $(document).ready(function(){
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $("#spp_filter").change(function(){
            var spp = this.value;
            var uptd = $("#uptd").val();
            var basemap = $("#basemap").val();
             
            getMapData(uptd,basemap,spp);
            });

            
 





            var config = {
                '.chosen-select'           : {},
                '.chosen-select-deselect'  : { allow_single_deselect: true },
                '.chosen-select-no-single' : { disable_search_threshold: 10 },
                '.chosen-select-no-results': { no_results_text: 'Oops, nothing found!' },
                '.chosen-select-rtl'       : { rtl: true },
                '.chosen-select-width'     : { width: '95%' }
                }
                for (var selector in config) {
                $(selector).chosen(config[selector]);

                }

      $("#uptd").chosen().change(function(){ 
        var uptd_filter=  $("#uptd").val();
        var uptd =   uptd_filter;      
        var basemap = $("#basemap").val(); 
        $("#preloader").show(); 
            
            getMapData(uptd,basemap);
            option = "<option value=''>Semua </option>"; 
            $.ajax({
                type:"POST",
                url: "{{ route('getSupData.filter') }}",
                data: {uptd:uptd},
                success: function(response){ 
                    $("#spp_filter").empty();
                    var len = ''; var spp = '';
                        if(response['data'] != null){
                        len = response['data']['uptd'];
                        spp = response['data']['spp'];
                        }
                     if(len.length > 0){
                    // Read data and create <option >
                        var select = '';
                        for(var i=0; i<len.length; i++){
                            select += '<optgroup label='+len[i]+'>' ;
                            select +='';
                            for(var j=0; j<spp.length; j++){
                                if(len[i] == spp[j].UPTD) { 
                                select +='<option value="'+spp[j].SUP+'">'+spp[j].SUP+'</option>';
                                }
                            }
                            select +='</optgroup>';
                        }
                    
                    $('#spp_filter').html(select).trigger('liszt:updated');
                    $('#spp_filter').trigger("chosen:updated");    
                         //$('#spp_filter .chosen-select').append("<li id='spp_filter" + id + "' class='active-result' style>" +name+ "</li>");
                    }
                    $("#preloader").hide(); 
                }
                 
                     
             
            
            });
        }); 
 
   
 




            

            //$("#uptd").chosen().change({  
             
            $("#basemap").change(function(){
                var basemap = this.value;
                var uptd = $("#uptd").val();
                 getMapData(uptd,basemap);
                //map.setBasemap(basemap);
            });
        });
    }
    getMapData("");

});
</script>
</html>
