@extends('admin.layout.index') @section('title') Rumija @endsection
@section('head')
<link rel="stylesheet" type="text/css" href="{{
        asset('assets/vendor/datatables.net/css/dataTables.bootstrap4.min.css')
    }}" />
<link rel="stylesheet" type="text/css" href="{{
        asset('assets/vendor/datatables.net/css/buttons.dataTables.min.css')
    }}" />
<link rel="stylesheet" type="text/css" href="{{
        asset(
            'assets/vendor/data-table/extensions/responsive/css/responsive.dataTables.css'
        )
    }}" />

<link rel="stylesheet" href="https://js.arcgis.com/4.17/esri/themes/light/main.css" />

<style>
    table.table-bordered tbody td {
        word-break: break-word;
        vertical-align: top;
    }
</style>
@endsection @section('page-header')
<div class="row align-items-end">
    <div class="col-lg-8">
        <div class="page-header-title">
            <div class="d-inline">
                <h4>Rumija</h4>
                <span>Data Seluruh Rumija</span>
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
                <li class="breadcrumb-item"><a href="#!">Rumija</a></li>
            </ul>
        </div>
    </div>
</div>
@endsection @section('page-body')
<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header">
                <h5>Tabel Rumija</h5>
                <div class="card-header-right">
                    <ul class="list-unstyled card-option">
                        {{--
                        <li><i class="feather icon-maximize full-card"></i></li>
                        --}}
                        <li>
                            <i class="feather icon-minus minimize-card"></i>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="card-block">
                @if (hasAccess(Auth::user()->internal_role_id, 'Rumija',
                'Create'))
                <a href="{{ route('rumija.create') }}" class="mb-3 btn btn-mat btn-primary">Tambah</a>
                @endif
                <div class="dt-responsive table-responsive">
                    <table id="rumija_table" class="table table-striped table-bordered able-responsive">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama</th>
                                <th>Alamat</th>
                                <th>No. Ijin</th>
                                <th>Tanggal Izin</th>
                                <th>Ruas Jalan</th>
                                <th>Kab/Kota</th>
                                <th>UPTD</th>
                                <th>Luas (m<sup>2</sup>)</th>
                                <th>Jenis Penggunaan</th>
                                <th>Uraian</th>
                                <th style="min-width: 75px">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($rumija as $data)
                            <tr>
                                <td>{{ $loop->index + 1 }}</td>
                                <td>{{ $data->nama }}</td>
                                <td>{{ $data->alamat }}</td>
                                <td>{{ $data->no_ijin }}</td>
                                <td>{{ $data->tanggal_ijin }}</td>
                                <td>{{ $data->ruas_jalan }}</td>
                                <td>{{ $data->kab_kota }}</td>
                                <td>{{ $data->uptd_name }}</td>
                                <td>{{ $data->luas }}</td>
                                <td>{{ $data->jenis_penggunaan }}</td>
                                <td>{{ $data->uraian }}</td>
                                <td style="min-width: 75px">
                                    <div class="btn-group" role="group" data-placement="top" title=""
                                        data-original-title=".btn-xlg">
                                        @if(hasAccess(Auth::user()->internal_role_id,
                                        'Rumija', 'Update'))
                                        <a class="d-inline-block" href="{{ route('rumija.edit', $data->id) }}"><button
                                                class="mr-1 btn btn-primary btn-sm waves-effect waves-light"
                                                data-toggle="tooltip" title="Edit">
                                                <i class="icofont icofont-pencil"></i></button></a>
                                        @endif
                                        @if(hasAccess(Auth::user()->internal_role_id,
                                        'Rumija', 'Delete'))
                                        <a class="d-inline-block" href="#delModal" data-id="{{ $data->id }}" data-toggle="modal"><button
                                                class="btn btn-danger btn-sm waves-effect waves-light"
                                                data-toggle="tooltip" title="Hapus">
                                                <i class="icofont icofont-trash"></i></button></a>
                                        @endif
                                    </div>
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
<div class="modal-only">
    <div class="modal fade" id="delModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Hapus Data Rumija</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">
                    <p>Apakah anda yakin ingin menghapus data ini?</p>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">
                        Tutup
                    </button>
                    <a id="delHref" href="" class="btn btn-danger waves-effect waves-light">Hapus</a>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection @section('script')
<script src="{{
        asset('assets/vendor/datatables.net/js/jquery.dataTables.min.js')
    }}"></script>
<script src="{{
        asset('assets/vendor/datatables.net/js/dataTables.buttons.min.js')
    }}"></script>
<script src="{{
        asset('assets/vendor/datatables.net/js/dataTables.bootstrap4.min.js')
    }}"></script>
<script src="{{
        asset(
            'assets/vendor/data-table/extensions/responsive/js/dataTables.responsive.min.js'
        )
    }}"></script>
<script src="{{
        asset(
            'assets/vendor/data-table/extensions/responsive/js/responsive.bootstrap4.min.js'
        )
    }}"></script>
<script src="{{ asset('assets/vendor/jquery/js/jquery.mask.js') }}"></script>
<script src="{{ asset('assets/js/custom.js') }}"></script>

<script>
    $(document).ready(function () {
        $("#rumija_table").DataTable({
            language: {
                emptyTable: "Tidak ada data tersedia.",
            },
        });
    });

    $("#delModal").on("show.bs.modal", function (event) {
        const link = $(event.relatedTarget);
        const id = link.data("id");
        console.log(id);
        const url = `{{ url('admin/master-data/rumija/delete') }}/` + id;
        console.log(url);
        const modal = $(this);
        modal.find(".modal-footer #delHref").attr("href", url);
    });
</script>
@endsection
