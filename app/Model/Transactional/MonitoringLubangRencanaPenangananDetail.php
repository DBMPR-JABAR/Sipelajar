<?php

namespace App\Model\Transactional;

use Illuminate\Database\Eloquent\Model;

class MonitoringLubangRencanaPenangananDetail extends Model
{
    //
    protected $table = "monitoring_lubang_rencana_penanganan_detail";
    protected $guarded = [];
    public function RencanaPenangananLubang()
    {
        return $this->belongsTo('App\Model\Transactional\MonitoringLubangRencanaPenanganan', 'monitoring_lubang_rencana_penanganan_id');
    }
    public function SurveiDetail()
    {
        return $this->belongsTo('App\Model\Transactional\MonitoringLubangSurveiDetail','monitoring_lubang_survei_detail_id');
    }
}
