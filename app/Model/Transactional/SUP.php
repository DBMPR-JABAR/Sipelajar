<?php

namespace App\Model\Transactional;

use Illuminate\Database\Eloquent\Model;

class SUP extends Model
{
    protected $table = "utils_sup";
    public function library_user()
    {
        return $this->hasMany('App\User', 'sup_id')->where('blokir', '!=', 'Y');
    }
    public function library_pemeliharaan()
    {
        return $this->hasMany('App\Model\Transactional\PekerjaanPemeliharaan', 'sup_id')->where('is_deleted', '!=', 1);
    }
    public function library_ruas()
    {
        return $this->hasMany('App\Model\Transactional\RuasJalan', 'kd_sppjj','kd_sup');
    }

    public function survei_lubang()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubang\Survei', 'sup_id');
    }
    public function penanganan_lubang()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubang\Penanganan', 'sup_id');
    }
    public function rencana_penanganan_lubang()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubang\RencanaPenanganan', 'sup_id');
    }

    public function survei_lubang_s()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubangSurveiDetail', 'sup_id');
    }
    public function data_lubang_s()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubangSurveiDetail', 'sup_id')->whereNull('status');
    }
    public function rencana_penanganan_lubang_s()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubangSurveiDetail', 'sup_id')->where('status','Perencanaan');
    }
    public function penanganan_lubang_s()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubangSurveiDetail', 'sup_id')->where('status','Selesai');
    }

    public function lubang_potensi()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringPotensiLubangSurveiDetail', 'sup_id');
    }
}
