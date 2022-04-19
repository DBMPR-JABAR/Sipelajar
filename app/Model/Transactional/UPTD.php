<?php

namespace App\Model\Transactional;

use Illuminate\Database\Eloquent\Model;

class UPTD extends Model
{
    protected $table = "landing_uptd";
    public function library_sup()
    {
        return $this->hasMany('App\Model\Transactional\SUP', 'uptd_id');
    }
    public function library_pemeliharaan()
    {
        return $this->hasMany('App\Model\Transactional\PekerjaanPemeliharaan', 'uptd_id')->where('is_deleted', '!=', 1);
    }
    public function library_ruas()
    {
        return $this->hasMany('App\Model\Transactional\RuasJalan', 'uptd_id');
    }

    public function survei_lubang()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubang\Survei', 'uptd_id');
    }
    public function penanganan_lubang()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubang\Penanganan', 'uptd_id');
    }
    public function rencana_penanganan_lubang()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubang\RencanaPenanganan', 'uptd_id');
    }

    public function lubang_sisa()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubangSurveiDetail', 'uptd_id')->whereNull('status');
    }
    public function lubang_perencanaan()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubangSurveiDetail', 'uptd_id')->where('status','Perencanaan');
    }
    public function lubang_penanganan()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubangSurveiDetail', 'uptd_id')->where('status','Selesai');
    }
}
