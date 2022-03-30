<?php

namespace App\Model\Transactional;

use Illuminate\Database\Eloquent\Model;

class Kota extends Model
{
    //
    protected $table = "master_kota";
    protected $guarded = [];
    public function library_ruas()
    {
        return $this->hasMany('App\Model\Transactional\RuasJalan', 'kota_id');
    }
    public function survei_lubang()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubang\Survei', 'kota_id');
    }
    public function penanganan_lubang()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubang\Penanganan', 'kota_id');
    }
    
}
