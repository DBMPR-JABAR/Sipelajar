<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class SurveiController extends Controller
{
    public function getCCTV()
    {
        $cctv = DB::table("cctv")
            ->select('*')->get();
        //dd($cctv);
        $userUptd= DB::table('user_role')->where('id',Auth::user()->internal_role_id)->first();
        if($userUptd->uptd == NULL) $uptd = DB::table('landing_uptd')->get();
        else {
            $uptd = DB::table('landing_uptd')->where('slug',$userUptd->uptd);
        }
        return view('admin.monitoring.cctv-command-center', [
            'cctv' => $cctv,
            'userUptdList' => $uptd
        ]);
    }
    public function getRoadroidSKJ($id)
    {
        $surveiKondisiJalan = DB::table('roadroid_trx_survey_kondisi_jalan')->where('id_ruas_jalan', $id)->orderBy('id')->get();
        //dd($surveiKondisiJalan);
        return view('admin.monitoring.roadroid-survei-kondisi-jalan', ['id' => $id, 'surveiKondisiJalan' => $surveiKondisiJalan]);
    }
}
