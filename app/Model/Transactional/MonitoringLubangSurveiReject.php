<?php

namespace App\Model\Transactional;

use Illuminate\Database\Eloquent\Model;

class MonitoringLubangSurveiReject extends Model
{
    //
    protected $table = "monitoring_lubang_survei_detail_reject";
    protected $guarded = [];
    public function SurveiLubang()
    {
        return $this->belongsTo('App\Model\Transactional\MonitoringLubangSurvei', 'monitoring_lubang_survei_id');
    }
    public function ruas()
    {
        return $this->belongsTo('App\Model\Transactional\RuasJalan', 'ruas_jalan_id','id_ruas_jalan');
    }
}
