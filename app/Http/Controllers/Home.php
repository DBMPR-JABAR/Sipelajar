<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Model\Transactional\MonitoringLubangSurvei as SurveiLubang;
use App\Model\Transactional\MonitoringLubangSurveiDetail as SurveiLubangDetail;
use Illuminate\Support\Facades\Auth;
use App\Model\Transactional\UPTD;

class Home extends Controller
{
    public function index()
    {
       
        // Compact mengubah variabel profil untuk dijadikan variabel yang dikirim
        $data = SurveiLubangDetail::latest('tanggal');
        $data1 = SurveiLubangDetail::latest('tanggal');
        $data2 = SurveiLubangDetail::latest('tanggal');
        if (Auth::user() && Auth::user()->internalRole->uptd) {
            $uptd_id = str_replace('uptd', '', Auth::user()->internalRole->uptd);
            $data = $data->where('uptd_id', $uptd_id);
            $data1 = $data->where('uptd_id', $uptd_id);
            $data2 = $data->where('uptd_id', $uptd_id);
            if (str_contains(Auth::user()->internalRole->role, 'Mandor')) {
                $data = $data->where('created_by', Auth::user()->id);
                $data1 = $data->where('created_by', Auth::user()->id);
                $data2 = $data->where('created_by', Auth::user()->id);
            } else if (Auth::user()->sup_id) {
                $data = $data->where('sup_id', Auth::user()->sup_id);
                $data1 = $data->where('sup_id', Auth::user()->sup_id);
                $data2 = $data->where('sup_id', Auth::user()->sup_id);
                if (count(Auth::user()->ruas) > 0) {
                    $data = $data->whereIn('ruas_jalan_id', Auth::user());
                    $data1 = $data->whereIn('ruas_jalan_id', Auth::user());
                    $data2 = $data->whereIn('ruas_jalan_id', Auth::user());
                }
            }
        }
        $temporari['jumlah']['sisa'] = $data->whereNull('status')->get()->count();
        $temporari['jumlah']['perencanaan'] = $data1->where('status','Perencanaan')->get()->count();
        $temporari['jumlah']['penanganan'] = $data2->where('status','Selesai')->get()->count();
        $temporari['panjang']['sisa'] =  round($data->whereNull('status')->get()->sum('panjang')/1000,3);
        $temporari['panjang']['perencanaan'] = round($data1->where('status','Perencanaan')->get()->sum('panjang')/1000,3);
        $temporari['panjang']['penanganan'] =round($data2->where('status','Selesai')->get()->sum('panjang')/1000,3);
        // dd($temporari);

        $uptd = UPTD::where('id','!=', 11);
        $uptd=$uptd->get();
        $library_uptd=[];
        $data_sisa =[];
        $data_perencanaan =[];
        $data_penanganan =[];
        $data_potensi =[];
        $data_total_km =[];

        foreach($uptd as $i){
            $merge = 'UPTD'.$i->id;
            array_push($library_uptd,$merge);   

            $sisa=[
               
                'value'=>  round($i->lubang_sisa->sum('panjang')/1000,3),
                'groupId'=>$merge
            ];
            array_push($data_sisa,$sisa);
            $perencanaan=[
                'value'=> round($i->lubang_perencanaan->sum('panjang')/1000,3),
                'groupId'=>$merge
            ];
            array_push($data_perencanaan,$perencanaan);
            $penanganan=[
                'value'=> round($i->lubang_penanganan->sum('panjang')/1000,3),
                'groupId'=>$merge
            ];
            array_push($data_penanganan,$penanganan);
            $total=[
                'value'=> round($i->library_ruas->sum('panjang')/1000,3),
                'groupId'=>$merge
            ];
            array_push($data_total_km,$total);
        }
        // dd($data_total_km);
        return view('admin.home',compact('temporari','library_uptd','data_sisa','data_perencanaan','data_penanganan','data_total_km'));
    }

    public function downloadFile()
    {
        $path = storage_path('app/public/Manual Book Teman Jabar DBMPR.pdf');
        return response()->download($path);
        // return response()->download($myFile, $newName, $headers);
    }	
}
