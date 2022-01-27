<?php

namespace App\Model\Transactional;

use Illuminate\Database\Eloquent\Model;

class PekerjaanPemeliharaan extends Model
{
    //
    protected $table = "kemandoran";
    protected $guarded = [];
    public function jenis_laporan()
    {
        return $this->belongsTo('App\Model\Transactional\JenisLaporan', 'jenis_pekerjaan','id');
    }
    
}
