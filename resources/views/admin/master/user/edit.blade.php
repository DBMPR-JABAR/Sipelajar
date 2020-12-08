@extends('admin.t_index')

@section('title') Edit User @endsection

@section('page-header')
<div class="row align-items-end">
    <div class="col-lg-8">
        <div class="page-header-title">
            <div class="d-inline">
                <h4>Edit User</h4>
            </div>
        </div>
    </div>
    <div class="col-lg-4">
        <div class="page-header-breadcrumb">
            <ul class="breadcrumb-title">
                <li class="breadcrumb-item">
                    <a href="{{ url('admin') }}"> <i class="feather icon-home"></i> </a>
                </li>
                <li class="breadcrumb-item"><a href="{{ route('getMasterUser') }}">User</a> </li>
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
                <h5>Edit Data User</h5>
                <div class="card-header-right">
                    <ul class="list-unstyled card-option">
                        <li><i class="feather icon-maximize full-card"></i></li>
                        <li><i class="feather icon-minus minimize-card"></i></li>
                    </ul>
                </div>
            </div>
            <div class="card-block">

                <form action="{{ route('updateUser') }}" method="post">
                    @csrf
                    <input type="hidden" name="id" value="{{$user->id}}">

                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Email</label>
                        <div class="col-md-10">
                            <input name="email" type="email" class="form-control" value="{{$user->email}}" disabled required>
                            <small class="form-text text-muted">Tidak bisa diedit</small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Password</label>
                        <div class="col-md-10">
                            <input name="password" type="password" class="form-control" >
                            <small class="form-text text-muted">Kosongkan jika tidak akan merubah password</small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Nama Lengkap</label>
                        <div class="col-md-10">
                            <input name="name" type="text" class="form-control" value="{{$user->name}}" required>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">NIP</label>
                        <div class="col-md-10">
                            <input name="no_pegawai" type="text" class="form-control" value="{{@$user->pegawai->no_pegawai}}" required>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">No. Telp/HP</label>
                        <div class="col-md-10">
                            <input name="no_tlp" type="text" class="form-control" value="{{@$user->pegawai->no_tlp}}"  required>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">SPP</label>
                        <div class="col-md-10">
                            <select class="form-control" required name="sup">
                                <option value="{{$user->sup}}">{{$user->sup}}</option>
                                <option></option>
                                @foreach ($sup as $data)
                                    <option value="{{$data->name}}">{{$data->name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Pilih Jabatan</label>
                        <div class="col-md-10">
                            <select class="form-control" required name="internal_role_id">
                                    <option>Pilih Jabatan</option>
                                    @foreach ($role as $data)
                                        <option value="{{$data->id}}" @if($user->internal_role_id == $data->id) selected @endif>{{$data->role}}</option>
                                    @endforeach
                                </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Blokir</label>
                        <div class="col-md-10">
                        <label class="radio-inline">
                            <input type="radio" name="blokir" value="Y" @if($user->blokir=='Y') checked @endif> Y
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="blokir" value="N" @if($user->blokir=='N') checked @endif> N
                        </label>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-mat btn-success">Simpan Perubahan</button>
                </form>

            </div>
        </div>
    </div>
</div>

@endsection