<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Model\Transactional\MonitoringLubangSurvei as SurveiLubang;
use App\Model\Transactional\MonitoringLubangSurveiDetail as SurveiLubangDetail;
use App\Model\Transactional\MonitoringPotensiLubangSurveiDetail as SurveiPotensiLubangDetail;

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
        $data3 = SurveiPotensiLubangDetail::latest('tanggal');

        if (Auth::user() && Auth::user()->internalRole->uptd) {
            $uptd_id = str_replace('uptd', '', Auth::user()->internalRole->uptd);
            $data = $data->where('uptd_id', $uptd_id);
            $data1 = $data->where('uptd_id', $uptd_id);
            $data2 = $data->where('uptd_id', $uptd_id);
          
            $data3 = $data3->where('uptd_id', $uptd_id);

            if (str_contains(Auth::user()->internalRole->role, 'Mandor')) {
                $data = $data->where('created_by', Auth::user()->id);
                $data1 = $data->where('created_by', Auth::user()->id);
                $data2 = $data->where('created_by', Auth::user()->id);
                $data3 = $data3->where('created_by', Auth::user()->id);

            } else if (Auth::user()->sup_id) {
                $data = $data->where('sup_id', Auth::user()->sup_id);
                $data1 = $data->where('sup_id', Auth::user()->sup_id);
                $data2 = $data->where('sup_id', Auth::user()->sup_id);
                $data3 = $data3->where('sup_id', Auth::user()->sup_id);

                if (count(Auth::user()->ruas) > 0) {
                    $data = $data->whereIn('ruas_jalan_id', Auth::user());
                    $data1 = $data->whereIn('ruas_jalan_id', Auth::user());
                    $data2 = $data->whereIn('ruas_jalan_id', Auth::user());
                    $data3 = $data3->whereIn('ruas_jalan_id', Auth::user());

                }
            }
        }
        $temporari['jumlah']['sisa'] = $data->whereNull('status')->get()->count();
        $temporari['jumlah']['perencanaan'] = $data1->where('status','Perencanaan')->get()->count();
        $temporari['jumlah']['penanganan'] = $data2->where('status','Selesai')->get()->count();
        $temporari1['jumlah']['potensi'] = $data3->get()->count();

        $temporari['panjang']['sisa'] =  round($data->whereNull('status')->get()->sum('panjang')/1000,3);
        $temporari['panjang']['perencanaan'] = round($data1->where('status','Perencanaan')->get()->sum('panjang')/1000,3);
        $temporari['panjang']['penanganan'] =round($data2->where('status','Selesai')->get()->sum('panjang')/1000,3);
        $temporari1['panjang']['potensi'] =round($data3->get()->sum('panjang')/1000,3);

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

            $potensi=[
                'value'=> round($i->lubang_potensi->sum('panjang')/1000,3),
                'groupId'=>$merge
            ];
            array_push($data_potensi,$potensi);
        }
        // dd($data_potensi);
        return view('admin.home',compact('temporari','temporari1','library_uptd','data_sisa','data_perencanaan','data_penanganan','data_total_km','data_potensi'));
    }

    public function downloadFile()
    {
        $path = storage_path('app/public/Manual Book Teman Jabar DBMPR.pdf');
        return response()->download($path);
        // return response()->download($myFile, $newName, $headers);
    }	
}
