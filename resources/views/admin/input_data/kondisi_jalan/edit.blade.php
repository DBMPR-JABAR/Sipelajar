@extends('admin.t_index')

@section('title') Admin Dashboard @endsection

@section('page-header')
<div class="row align-items-end">
    <div class="col-lg-8">
        <div class="page-header-title">
            <div class="d-inline">
                <h4>Kondisi Jalan</h4>
                <span>Seluruh Kondisi Jalan yang ada di naungan DBMPR Jabar</span>
            </div>
        </div>
    </div>
    <div class="col-lg-4">
        <div class="page-header-breadcrumb">
            <ul class="breadcrumb-title">
                <li class="breadcrumb-item">
                    <a href="{{ url('admin') }}"> <i class="feather icon-home"></i> </a>
                </li>
                <li class="breadcrumb-item"><a href="{{ route('getIDKondisiJalan') }}">Kondisi Jalan</a> </li>
                <li class="breadcrumb-item"><a href="#">Tambah</a> </li>
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
                <h5>Tambah Data Kondisi Jalan</h5>
                <div class="card-header-right">
                    <ul class="list-unstyled card-option">
                        <li><i class="feather icon-maximize full-card"></i></li>
                        <li><i class="feather icon-minus minimize-card"></i></li>
                    </ul>
                </div>
            </div>
            <div class="card-block pl-5 pr-5 pb-5">

                <form action="{{ route('updateIDKondisiJalan') }}" method="post" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="id" value="{{$kondisiJalan->id}}">

                    <?php

                    use Illuminate\Support\Facades\Auth;

                    if (Auth::user()->internalRole->uptd) {
                        $uptd_id = str_replace('uptd', '', Auth::user()->internalRole->uptd); ?>
                        <input name="uptd" type="number" class="form-control" value="{{$uptd_id}}" hidden>
                    <?php } else { ?>
                        <div class=" form-group row">
                            <label class="col-md-3 col-form-label">UPTD</label>
                            <div class="col-md-9">
                                <select class="form-control select2" name="uptd" style="min-width: 100%;">
                                    @foreach ($uptd as $uptdData)
                                    @if($kondisiJalan->uptd == $uptdData->id)
                                    <option value="<?php echo $uptdData->id; ?>" selected><?php echo $uptdData->nama; ?></option>
                                    @else
                                    <option value="<?php echo $uptdData->id; ?>"><?php echo $uptdData->nama; ?></option>
                                    @endif
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    <?php    } ?>

                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">Nama Ruas Jalan</label>
                        <div class="col-md-9">
                                <select name="ruas_jalan" class="form-control" required>
                                    <option value="{{$kondisiJalan->ruas_jalan}}">{{$kondisiJalan->ruas_jalan}}</option>
                                    <option></option>
                                    @foreach ($ruasJalan as $data)
                                        <option value="{{$data->nama_ruas_jalan}}">{{$data->nama_ruas_jalan}}</option>
                                    @endforeach
                                </select>
                            <!-- <input name="ruas_jalan" type="text" class="form-control" required value="{{$kondisiJalan->ruas_jalan}}"> -->
                        </div>
                    </div>

                    <div class=" form-group row">
                        <label class="col-md-3 col-form-label">Nama Kota</label>
                        <div class="col-md-9">
                            <input name="nama_kota" type="text" class="form-control" required value="{{$kondisiJalan->nama_kota}}">
                        </div>
                    </div>

                    <div class=" form-group row">
                        <label class="col-md-3 col-form-label">KM Asal</label>
                        <div class="col-md-9">
                            <input name="km_asal" type="text" step="0.01" class="form-control" required value="{{$kondisiJalan->km_asal}}">
                        </div>
                    </div>

                    <div class=" form-group row">
                        <label class="col-md-3 col-form-label">Dari KM</label>
                        <div class="col-md-9">
                            <input name="dari_km" type="number" step="0.01" class="form-control" required value="{{$kondisiJalan->dari_km}}">
                        </div>
                    </div>

                    <div class=" form-group row">
                        <label class="col-md-3 col-form-label">Sampai dengan KM</label>
                        <div class="col-md-9">
                            <input name="sampai_km" type="number" step="0.01" class="form-control" required value="{{$kondisiJalan->sampai_km}}">
                        </div>
                    </div>

                    <div class=" form-group row">
                        <label class="col-md-3 col-form-label">Panjang KM</label>
                        <div class="col-md-9">
                            <input name="panjang_km" type="number" step="0.01" class="form-control" required value="{{$kondisiJalan->panjang_km}}">
                        </div>
                    </div>

                    <div class=" form-group row">
                        <label class="col-md-3 col-form-label">Lebar Rata2</label>
                        <div class="col-md-9">
                            <input name="lebar_rata_rata" type="number" step="0.01" class="form-control" required value="{{$kondisiJalan->lebar_rata_rata}}">
                        </div>
                    </div>

                    <div class=" form-group row">
                        <label class="col-md-3 col-form-label">Jenis Permukaan</label>
                        <div class="col-md-9">
                            <input name="jenis_permukaan" type="text" class="form-control" required value="{{$kondisiJalan->jenis_permukaan}}">
                        </div>
                    </div>

                    <div class=" form-group row">
                        <label class="col-md-3 col-form-label">Awal Latitude dan Longitude</label>
                        <div class="col-md-9">
                            <div class="row">
                                <div class="col-md-6">
                                    <input name="latitude" type="number" step="0.01" class="form-control" required value="{{$kondisiJalan->latitude}}">
                                </div>
                                <div class="col-md-6">
                                    <input name="longitude" type="number" step="0.01" class="form-control" required value="{{$kondisiJalan->longitude}}">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class=" form-group row">
                        <label class="col-md-3 col-form-label">Akhir Latitude dan Longitude</label>
                        <div class="col-md-9">
                            <div class="row">
                                <div class="col-md-6">
                                    <input name="akhir_latitude" type="number" step="0.01" class="form-control" required value="{{$kondisiJalan->akhir_latitude}}">
                                </div>
                                <div class="col-md-6">
                                    <input name="akhir_longitude" type="number" step="0.01" class="form-control" required value="{{$kondisiJalan->akhir_longitude}}">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class=" form-group row">
                        <label class="col-md-3 col-form-label">Kondisi Jalan</label>
                        <div class="col-md-9">
                            @if($kondisiJalan->kondisi =='Mantap')
                            <input type="radio" name="kondisi" value="Mantap" checked> Mantap
                            <input class="ml-4" type="radio" name="kondisi" value="Tidak Mantap"> Tidak Mantap
                            @else
                            <input type="radio" name="kondisi" value="Mantap"> Mantap
                            <input class="ml-4" type="radio" name="kondisi" value="Tidak Mantap" checked> Tidak Mantap
                            @endif
                        </div>
                    </div>
                    <div id="form-mantap">
                        <hr class="mt-4">
                        <div class=" form-group row mt-4">
                            <div class="col-md-12" style="text-align: center;">
                                <p style="color:green; font-size: 25px; font-weight: 1000;">Mantap</p>
                            </div>
                        </div>
                        <div class=" form-group row">
                            <label class="col-md-3 col-sm-3 col-form-label my-auto">Sangat baik</label>
                            <div class="col-md-9 col-sm-9">
                                <div class=" form-group row">
                                    <label class="col-md-3 col-form-label">Lokasi (KM - KM)</label>
                                    <div class="col-md-9">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <input name="sb_lokasi" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->sb_lokasi}}">
                                            </div>
                                            <div class="col-md-6">
                                                <input name="sb_lokasi" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->sb_lokasi}}">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class=" form-group row">
                                    <label class="col-md-3 col-form-label">Panjang (KM)</label>
                                    <div class="col-md-9">
                                        <input name="sb_panjang" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->sb_panjang}}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" form-group row">
                            <label class="col-md-3 col-form-label">Awal Latitude dan Longitude</label>
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input name="sba_lat" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->sba_lat}}">
                                    </div>
                                    <div class="col-md-6">
                                        <input name="sba_long" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->sba_long}}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" form-group row">
                            <label class="col-md-3 col-form-label">Akhir Latitude dan Longitude</label>
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input name="sbak_lat" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->sbak_lat}}">
                                    </div>
                                    <div class="col-md-6">
                                        <input name="sbak_long" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->sbak_long}}">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class=" form-group row mt-5">
                            <label class="col-md-3 col-sm-3 col-form-label my-auto">Baik</label>
                            <div class="col-md-9 col-sm-9">
                                <div class=" form-group row">
                                    <label class="col-md-3 col-form-label">Lokasi (KM - KM)</label>
                                    <div class="col-md-9">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <input name="b_lokasi" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->b_lokasi}}">
                                            </div>
                                            <div class="col-md-6">
                                                <input name="b_lokasi" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->b_lokasi}}">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class=" form-group row">
                                    <label class="col-md-3 col-form-label">Panjang (KM)</label>
                                    <div class="col-md-9">
                                        <input name="b_panjang" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->b_panjang}}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" form-group row">
                            <label class="col-md-3 col-form-label">Awal Latitude dan Longitude</label>
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input name="ba_lat" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->ba_lat}}">
                                    </div>
                                    <div class="col-md-6">
                                        <input name="ba_long" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->ba_long}}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" form-group row">
                            <label class="col-md-3 col-form-label">Akhir Latitude dan Longitude</label>
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input name="bak_lat" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->bak_lat}}">
                                    </div>
                                    <div class="col-md-6">
                                        <input name="bak_long" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->bak_long}}">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class=" form-group row mt-5">
                            <label class="col-md-3 col-sm-3 col-form-label my-auto">Sedang</label>
                            <div class="col-md-9 col-sm-9">
                                <div class=" form-group row">
                                    <label class="col-md-3 col-form-label">Lokasi (KM - KM)</label>
                                    <div class="col-md-9">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <input name="sd_lokasi" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->sd_lokasi}}">
                                            </div>
                                            <div class="col-md-6">
                                                <input name="sd_lokasi" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->sd_lokasi}}">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class=" form-group row">
                                    <label class="col-md-3 col-form-label">Panjang (KM)</label>
                                    <div class="col-md-9">
                                        <input name="sd_panjang" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->sd_panjang}}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" form-group row">
                            <label class="col-md-3 col-form-label">Awal Latitude dan Longitude</label>
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input name="sda_lat" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->sda_lat}}">
                                    </div>
                                    <div class="col-md-6">
                                        <input name="sda_long" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->sda_long}}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" form-group row">
                            <label class="col-md-3 col-form-label">Akhir Latitude dan Longitude</label>
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input name="sdak_lat" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->sdak_lat}}">
                                    </div>
                                    <div class="col-md-6">
                                        <input name="sdak_long" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->sdak_long}}">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="form-tidak-mantap">
                        <hr class="mt-4">
                        <div class=" form-group row mt-4">
                            <div class="col-md-12" style="text-align: center;">
                                <p style="color:red; font-size: 25px; font-weight: 1000;">Tidak Mantap</p>
                            </div>
                        </div>
                        <div class=" form-group row">
                            <label class="col-md-3 col-sm-3 col-form-label my-auto">Jelek</label>
                            <div class="col-md-9 col-sm-9">
                                <div class=" form-group row">
                                    <label class="col-md-3 col-form-label">Lokasi (KM - KM)</label>
                                    <div class="col-md-9">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <input name="jlk_lokasi" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->jlk_lokasi}}">
                                            </div>
                                            <div class="col-md-6">
                                                <input name="jlk_lokasi" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->jlk_lokasi}}">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class=" form-group row">
                                    <label class="col-md-3 col-form-label">Panjang (KM)</label>
                                    <div class="col-md-9">
                                        <input name="jlk_panjang" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->jlk_panjang}}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" form-group row">
                            <label class="col-md-3 col-form-label">Awal Latitude dan Longitude</label>
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input name="ja_lat" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->ja_lat}}">
                                    </div>
                                    <div class="col-md-6">
                                        <input name="ja_long" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->ja_long}}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" form-group row">
                            <label class="col-md-3 col-form-label">Akhir Latitude dan Longitude</label>
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input name="jak_lat" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->jak_lat}}">
                                    </div>
                                    <div class="col-md-6">
                                        <input name="jak_long" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->jak_long}}">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class=" form-group row mt-5">
                            <label class="col-md-3 col-sm-3 col-form-label my-auto">Parah</label>
                            <div class="col-md-9 col-sm-9">
                                <div class=" form-group row">
                                    <label class="col-md-3 col-form-label">Lokasi (KM - KM)</label>
                                    <div class="col-md-9">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <input name="parah_lokasi" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->parah_lokasi}}">
                                            </div>
                                            <div class="col-md-6">
                                                <input name="parah_lokasi" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->parah_lokasi}}">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class=" form-group row">
                                    <label class="col-md-3 col-form-label">Panjang (KM)</label>
                                    <div class="col-md-9">
                                        <input name="parah_panjang" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->parah_panjang}}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" form-group row">
                            <label class="col-md-3 col-form-label">Awal Latitude dan Longitude</label>
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input name="pa_lat" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->pa_lat}}">
                                    </div>
                                    <div class="col-md-6">
                                        <input name="pa_long" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->pa_long}}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" form-group row">
                            <label class="col-md-3 col-form-label">Akhir Latitude dan Longitude</label>
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input name="pak_lat" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->pak_lat}}">
                                    </div>
                                    <div class="col-md-6">
                                        <input name="pak_long" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->pak_long}}">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class=" form-group row mt-5">
                            <label class="col-md-3 col-sm-3 col-form-label my-auto">Sangat Parah</label>
                            <div class="col-md-9 col-sm-9">
                                <div class=" form-group row">
                                    <label class="col-md-3 col-form-label">Lokasi (KM - KM)</label>
                                    <div class="col-md-9">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <input name="sp_lokasi" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->sp_lokasi}}">
                                            </div>
                                            <div class="col-md-6">
                                                <input name="sp_lokasi" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->sp_lokasi}}">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class=" form-group row">
                                    <label class="col-md-3 col-form-label">Panjang (KM)</label>
                                    <div class="col-md-9">
                                        <input name="sp_panjang" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->sp_panjang}}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" form-group row">
                            <label class="col-md-3 col-form-label">Awal Latitude dan Longitude</label>
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input name="spa_lat" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->spa_lat}}">
                                    </div>
                                    <div class="col-md-6">
                                        <input name="spa_long" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->spa_long}}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" form-group row">
                            <label class="col-md-3 col-form-label">Akhir Latitude dan Longitude</label>
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input name="spak_lat" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->spak_lat}}">
                                    </div>
                                    <div class="col-md-6">
                                        <input name="spak_long" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->spak_long}}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" form-group row mt-5">
                            <label class="col-md-3 col-sm-3 col-form-label my-auto">Hancur</label>
                            <div class="col-md-9 col-sm-9">
                                <div class=" form-group row">
                                    <label class="col-md-3 col-form-label">Lokasi (KM - KM)</label>
                                    <div class="col-md-9">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <input name="hancur_lokasi" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->hancur_lokasi}}">
                                            </div>
                                            <div class="col-md-6">
                                                <input name="hancur_lokasi" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->hancur_lokasi}}">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class=" form-group row">
                                    <label class="col-md-3 col-form-label">Panjang (KM)</label>
                                    <div class="col-md-9">
                                        <input name="hancur_panjang" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->hancur_panjang}}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" form-group row">
                            <label class="col-md-3 col-form-label">Awal Latitude dan Longitude</label>
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input name="ha_lat" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->ha_lat}}">
                                    </div>
                                    <div class="col-md-6">
                                        <input name="ha_long" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->ha_long}}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" form-group row">
                            <label class="col-md-3 col-form-label">Akhir Latitude dan Longitude</label>
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input name="hak_lat" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->hak_lat}}">
                                    </div>
                                    <div class="col-md-6">
                                        <input name="hak_long" type="number" step="0.01" class="form-control" value="{{$kondisiJalan->hak_long}}">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class=" form-group row">
                        <label class="col-md-3 col-form-label">Tanggal</label>
                        <div class="col-md-9">
                            <input name="tanggal" type="date" class="form-control" value="{{$kondisiJalan->tanggal}}">
                        </div>
                    </div>

                    <div class=" form-group row">
                        <label class="col-md-3 col-form-label">Upload Foto Dokumentasi</label>
                        <div class="col-md-9">
                            <input name="foto_dokumentasi" type="file" accept=".jpg,.jpeg,.png" class="form-control" value="{{$kondisiJalan->foto_dokumentasi}}">
                        </div>
                    </div>

                    <div class=" form-group row">
                        <label class="col-md-3 col-form-label">Keterangan</label>
                        <div class="col-md-9">
                            <textarea name="keterangan" rows="5" class="form-control" placeholder="Masukkan Keterangan">{{$kondisiJalan->keterangan}}</textarea>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-mat btn-success">Simpan Perubahan</button>
                </form>

            </div>
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

@endsection