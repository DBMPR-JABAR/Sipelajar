<?php

namespace App\Model\Transactional\Ext;

use Illuminate\Database\Eloquent\Model;

class MonitoringLubangSurveiDetail extends Model
{
    //
    protected $table = "monitoring_lubang_survei_detail_old";
    protected $guarded = [];
    public function SurveiLubang()
    {
        return $this->belongsTo('App\Model\Transactional\Ext\MonitoringLubangSurvei', 'monitoring_lubang_survei_id');
    }
    public function ruas()
    {
        return $this->belongsTo('App\Model\Transactional\RuasJalan', 'ruas_jalan_id','id_ruas_jalan');
    }
    public function data_sup()
    {
        return $this->belongsTo('App\Model\Transactional\SUP', 'sup_id');
    }
    public function user_create()
    {
        return $this->belongsTo('App\User', 'created_by');
    }
    public function RencanaDetail()
    {
        return $this->hasOne('App\Model\Transactional\MonitoringLubangRencanaPenangananDetail','monitoring_lubang_survei_detail_id');
    }
    public function PenangananDetail()
    {
        return $this->hasOne('App\Model\Transactional\MonitoringLubangPenangananDetail','monitoring_lubang_survei_detail_id');
    }
}
