<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <link rel="icon" href="{{ asset('assets/images/favicon/favicon.ico') }}" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('assets/css/status_jalan.css') }}">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="https://js.arcgis.com/4.19/esri/themes/light/main.css">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <title>Status Jalan</title>
</head>

<body>
    <div id="logo">
        <img width="200" class="img-fluid" src="{{ asset('assets/images/brand/text_putih.png')}}" alt="Logo DBMPR">
    </div>
    <div id="maps_container"></div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous">
</script>
<script>
    const baseUrl = "{{ url('/') }}";
    const geoServerUrl = "{{ env('GEOSERVER') }}";
    window.dojoConfig = {
    async: true,
    packages: [
        {
            name: "react",
            location: "https://unpkg.com/react@16/umd/",
            main: "react.development",
        },
        {
            name: "react-dom",
            location: "https://unpkg.com/react-dom@16/umd/",
            main: "react-dom.development",
        }
    ]
    };
</script>
{{-- <script src="https://ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js"></script> --}}
<script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
<script src="https://js.arcgis.com/4.19"></script>
<script type="text/babel" src="{{ asset('assets/js/status_jalan.js') }}"></script>
</html>
