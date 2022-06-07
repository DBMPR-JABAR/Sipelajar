<?php

namespace App\Model\Transactional;

use Illuminate\Database\Eloquent\Model;

class MonitoringLubangPenangananDetail extends Model
{
    //
    protected $table = "monitoring_lubang_penanganan_detail";
    protected $guarded = [];
    public function PenangananLubang()
    {
        return $this->belongsTo('App\Model\Transactional\RuasJalan', 'monitoring_lubang_penanganan_id');
    }
    public function SurveiDetail()
    {
        return $this->belongsTo('App\Model\Transactional\MonitoringLubangSurveiDetail','monitoring_lubang_survei_detail_id');
    }
}
