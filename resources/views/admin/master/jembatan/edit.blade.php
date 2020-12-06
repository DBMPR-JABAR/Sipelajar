@extends('admin.t_index')

@section('title') Edit Jembatan @endsection

@section('page-header')
<div class="row align-items-end">
    <div class="col-lg-8">
        <div class="page-header-title">
            <div class="d-inline">
                <h4>Edit Jembatan</h4>
            </div>
        </div>
    </div>
    <div class="col-lg-4">
        <div class="page-header-breadcrumb">
            <ul class="breadcrumb-title">
                <li class="breadcrumb-item">
                    <a href="{{ url('admin') }}"> <i class="feather icon-home"></i> </a>
                </li>
                <li class="breadcrumb-item"><a href="{{ route('getMasterJembatan') }}">Jembatan</a> </li>
                <li class="breadcrumb-item"><a href="#">Edit</a> </li>
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
                <h5>Edit Data UPTD</h5>
                <div class="card-header-right">
                    <ul class="list-unstyled card-option">
                        <li><i class="feather icon-maximize full-card"></i></li>
                        <li><i class="feather icon-minus minimize-card"></i></li>
                    </ul>
                </div>
            </div>
            <div class="card-block">

                <form action="{{ route('updateJembatan') }}" method="post" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="id" value="{{$jembatan->id}}">


                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">Id Jembatan</label>
                            <div class="col-md-10">
                                <input name="id_jembatan" type="text" class="form-control" value="{{$jembatan->id_jembatan}}" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">Nama Jembatan</label>
                            <div class="col-md-10">
                                <input name="nama_jembatan" type="text" class="form-control" value="{{$jembatan->nama_jembatan}}" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">Ruas Jalan</label>
                            <div class="col-md-10">
                                <select name="ruas_jalan_id" class="form-control" required>
                                    <option>Pilih Ruas Jalan</option>
                                    @foreach ($ruasJalan as $data)
                                        <option value="{{$data->id}}" @if($data->id == $jembatan->ruas_jalan_id) selected @endif>{{$data->nama_ruas_jalan}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">SUP</label>
                            <div class="col-md-10">
                                <select class="form-control" required name="sup_id">
                                    <option>Pilih SUP</option>
                                    @foreach ($sup as $data)
                                        <option value="{{$data->id}}" @if($data->id == $jembatan->sup_id) selected @endif >{{$data->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">Lokasi</label>
                            <div class="col-md-10">
                                <input name="lokasi" type="text" class="form-control" required value="{{$jembatan->lokasi}}">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">Panjang</label>
                            <div class="col-md-10">
                                <input name="panjang" type="text" class="form-control" required value="{{$jembatan->panjang}}">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">Lebar</label>
                            <div class="col-md-10">
                                <input name="lebar" type="text" class="form-control" required value="{{$jembatan->lebar}}">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">Jumlah Bentang</label>
                            <div class="col-md-10">
                                <input name="jumlah_bentang" type="text" class="form-control" required value="{{$jembatan->jumlah_bentang}}">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">Koordinat X (Lat)</label>
                            <div class="col-md-10">
                                <input name="lat" type="text" class="form-control" required value="{{$jembatan->lat}}">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">Koordinat Y (Lon)</label>
                            <div class="col-md-10">
                                <input name="lng" type="text" class="form-control" required value="{{$jembatan->lng}}">
                            </div>
                        </div>


                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">Keterangan</label>
                            <div class="col-md-10">
                                <input name="ket" type="text" class="form-control" required value="{{$jembatan->ket}}">
                            </div>
                        </div>


                        <div class="form-group row">
                            <label class="col-md-2 col-form-label">Foto Jembatan</label>
                            <div class="col-md-6">
                                <input name="foto" type="file" class="form-control">
                            </div>
                        </div>

                    <button type="submit" class="btn btn-mat btn-success">Simpan Perubahan</button>
                </form>

            </div>
        </div>
    </div>
</div>

@endsection