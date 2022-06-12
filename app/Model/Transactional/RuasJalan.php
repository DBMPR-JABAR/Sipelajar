<?php

namespace App\Model\Transactional;

use Illuminate\Database\Eloquent\Model;

class RuasJalan extends Model
{
    protected $table = "master_ruas_jalan";

    public function uptd()
    {
        return $this->belongsTo('App\Model\Transactional\UPTD', 'uptd_id');
    }

    public function users()
    {
        // return $this->belongsToMany('App\User','user_id');
        return $this->belongsToMany('App\User','user_master_ruas_jalan','user_id','master_ruas_jalan_id');

    }
    public function library_pemeliharaan()
    {
        return $this->hasMany('App\Model\Transactional\PekerjaanPemeliharaan','ruas_jalan_id', 'id_ruas_jalan')->where('is_deleted', '!=', 1);
    }
    
    public function survei_lubang()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubang\Survei', 'ruas_jalan_id','id_ruas_jalan');
    }
    public function penanganan_lubang()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubang\Penanganan', 'ruas_jalan_id','id_ruas_jalan');
    }
    public function rencana_penanganan_lubang()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubang\RencanaPenanganan', 'ruas_jalan_id','id_ruas_jalan');
    }

    public function survei_lubang_s()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubangSurveiDetail', 'ruas_jalan_id','id_ruas_jalan');
    }
    public function data_lubang_s()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubangSurveiDetail', 'ruas_jalan_id','id_ruas_jalan')->whereNull('status');
    }
    public function rencana_penanganan_lubang_s()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubangSurveiDetail', 'ruas_jalan_id','id_ruas_jalan')->where('status','Perencanaan');
    }
    public function penanganan_lubang_s()
    {
        return $this->hasMany('App\Model\Transactional\MonitoringLubangSurveiDetail', 'ruas_jalan_id','id_ruas_jalan')->where('status','Selesai');
    }

    public function data_sup()
    {
        return $this->belongsTo('App\Model\Transactional\SUP', 'kd_sppjj','kd_sup');
    }
}
