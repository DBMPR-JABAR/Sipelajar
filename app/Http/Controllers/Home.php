<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Model\Transactional\MonitoringLubangSurvei as SurveiLubang;
use App\Model\Transactional\MonitoringLubangSurveiDetail as SurveiLubangDetail;
use App\Model\Transactional\MonitoringPotensiLubangSurveiDetail as SurveiPotensiLubangDetail;

use Illuminate\Support\Facades\Auth;
use App\Model\Transactional\UPTD;
use Illuminate\Support\Facades\DB;

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
                    $data = $data->whereIn('ruas_jalan_id', Auth::user()->ruas->pluck('id_ruas_jalan')->toArray());
                    $data1 = $data->whereIn('ruas_jalan_id', Auth::user()->ruas->pluck('id_ruas_jalan')->toArray());
                    $data2 = $data->whereIn('ruas_jalan_id', Auth::user()->ruas->pluck('id_ruas_jalan')->toArray());
                    $data3 = $data3->whereIn('ruas_jalan_id', Auth::user()->ruas->pluck('id_ruas_jalan')->toArray());

                }
            }
        }
        
        $temporari['jumlah']['sisa'] = $data->whereNull('status')->get()->sum('jumlah');
        $temporari['jumlah']['perencanaan'] = $data1->where('status','Perencanaan')->get()->sum('jumlah');
        $temporari['jumlah']['penanganan'] = $data2->where('status','Selesai')->get()->sum('jumlah');
        $temporari1['jumlah']['potensi'] = $data3->get()->sum('jumlah');

        $temporari['panjang']['sisa'] =  round($data->whereNull('status')->get()->sum('panjang')/1000,3);
        $temporari['panjang']['perencanaan'] = round($data1->where('status','Perencanaan')->get()->sum('panjang')/1000,3);
        $temporari['panjang']['penanganan'] =round($data2->where('status','Selesai')->get()->sum('panjang')/1000,3);
        $temporari1['panjang']['potensi'] =round($data3->get()->sum('panjang')/1000,3);

        // dd($temporari);

        $uptd = UPTD::where('id','!=', 11);
        if (Auth::user() && Auth::user()->internalRole->uptd) {
            $uptd_id = str_replace('uptd', '', Auth::user()->internalRole->uptd);
            $uptd=$uptd->where('id',$uptd_id);
        }
        $uptd=$uptd->get();
        $library_uptd=[];
        
        $data_lubang_sisa =[];
        $data_lubang_perencanaan =[];
        $data_lubang_penanganan =[];
        $data_lubang_potensi =[];
        $data_lubang_total_km =[];

        $data_pemeliharaan_not_complete =[];
        $data_pemeliharaan_submit =[];
        $data_pemeliharaan_approve =[];
        $data_pemeliharaan_reject =[];

        foreach($uptd as $i){
            $not_complete = 0;
            $submit = 0;
            $approve = 0;
            $reject = 0;

            $merge = 'UPTD'.$i->id;
            array_push($library_uptd,$merge);   

            $sisa=[
               
                'value'=>  round($i->lubang_sisa->sum('panjang')/1000,3),
                'groupId'=>$merge
            ];
            array_push($data_lubang_sisa,$sisa);
            $perencanaan=[
                'value'=> round($i->lubang_perencanaan->sum('panjang')/1000,3),
                'groupId'=>$merge
            ];
            array_push($data_lubang_perencanaan,$perencanaan);
            $penanganan=[
                'value'=> round($i->lubang_penanganan->sum('panjang')/1000,3),
                'groupId'=>$merge
            ];
            array_push($data_lubang_penanganan,$penanganan);
            $total=[
                'value'=> round($i->library_ruas->sum('panjang')/1000,3),
                'groupId'=>$merge
            ];
            array_push($data_lubang_total_km,$total);

            $potensi=[
                'value'=> round($i->lubang_potensi->sum('panjang')/1000,3),
                'groupId'=>$merge
            ];
            array_push($data_lubang_potensi,$potensi);

            $temporari_pemeliharaan = $this->chart_pemeliharaan($i->id);
            $chart_pemeliharaan['not_complete'][]= [
                'value'=> $temporari_pemeliharaan['not_complete'],
                'groupId'=>$merge
            ];
            $chart_pemeliharaan['submit'][]= [
                'value'=> $temporari_pemeliharaan['submit'],
                'groupId'=>$merge
            ];
            $chart_pemeliharaan['approve'][]= [
                'value'=> $temporari_pemeliharaan['approve'],
                'groupId'=>$merge
            ];
            $chart_pemeliharaan['reject'][]= [
                'value'=> $temporari_pemeliharaan['reject'],
                'groupId'=>$merge
            ];
            
        }
        $chart_lubang=[
            'potensi' => $data_lubang_potensi,
            'perencanaan'=> $data_lubang_perencanaan,
            'ditangani'=> $data_lubang_penanganan,
            'sisa'=> $data_lubang_sisa,
            'total_km'=> $data_lubang_total_km
        ];
        // dd($chart_pemeliharaan);
        // dd(Auth::user()->email_verified_at);
        return view('admin.home',compact('temporari','temporari1','library_uptd','chart_lubang','chart_pemeliharaan'));
    }
    public function chart_pemeliharaan($uptd)
    {
        $approve = 0;
        $reject = 0;
        $submit = 0;
        $not_complete = 0;
        
        $rekaps = DB::table('kemandoran')
        ->where('kemandoran.is_deleted',0)
        ->whereDate('kemandoran.tglreal',Carbon::today())
        ->leftJoin('kemandoran_detail_status','kemandoran_detail_status.id_pek','=','kemandoran.id_pek')
        ->select('kemandoran.*','kemandoran_detail_status.status',DB::raw('max(kemandoran_detail_status.id ) as status_s'), DB::raw('max(kemandoran_detail_status.id ) as status_s'))
        ->groupBy('kemandoran.id_pek');
        // ->where('kemandoran_detail_status.status','Approved')
        $rekaps = $rekaps->where('kemandoran.uptd_id', $uptd)->get();
        
        if($rekaps->count()>=1){
            foreach($rekaps as $it){
                // echo $it->status.' | '.$it->id_pek.'<br>';
                $it->status_material = DB::table('bahan_material')->where('id_pek', $it->id_pek)->exists();
                $rekaplap = DB::table('kemandoran_detail_status')->where('id', $it->status_s)->pluck('status')->first();
                $it->status = $rekaplap;
                if(($it->status == "Approved"||$it->status == "Rejected" ||$it->status == "Edited") || $it->status_material){
                    if($it->status == "Approved"){
                        $approve+=1;
                        // echo $it->status.' | '.$it->id_pek.'<br>';
                    }else if($it->status == "Rejected" ||$it->status == "Edited"){
                        $reject+=1;
                        // echo $it->status.' | '.$it->id_pek.'<br>';
                    }else
                        $submit+=1;
                }else
                    $not_complete+=1;
            }

        }
        return $temporari=[
            'not_complete' => $not_complete,
            'submit'=> $submit,
            'approve'=> $approve,
            'reject'=> $reject
        ];
    }
    public function downloadFile()
    {
        $path = storage_path('app/public/Manual Book Teman Jabar DBMPR.pdf');
        return response()->download($path);
        // return response()->download($myFile, $newName, $headers);
    }	
}
