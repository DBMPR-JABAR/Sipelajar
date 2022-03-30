<?php

namespace App\Http\Controllers\InputData;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Model\Transactional\MonitoringLubangPenanganan as Penanganan;
use App\Model\Transactional\MonitoringLubangSurvei as Survei;

use App\Model\Transactional\MonitoringLubangSurveiDetail as SurveiDetail;
use App\Model\Transactional\RuasJalan;

use App\Model\Transactional\UPTD;
use Illuminate\Support\Facades\Auth;
use App\Model\Transactional\Kota;


class SapuLobangController extends Controller
{
    //
    public function index(Request $request){
        $filter['tanggal_sebelum']= Carbon::now()->subDays(7)->format('Y-m-d');
        $filter['tanggal_awal']= Carbon::now()->subDays(6)->format('Y-m-d');
        $filter['tanggal_akhir']= Carbon::now()->format('Y-m-d');
        $filter['uptd_filter']=null;
        $kota = null;
        $temporai_kota =[];

        // $cek = SurveiDetail::all();
        // foreach($cek as $ce){
        //     $ruas = RuasJalan::where('id_ruas_jalan',$ce->ruas_jalan_id)->first();
        //     $ce->kota_id = $ruas->kota_id;
        //     $ce->save();
        // }
        // $cek = Survei::all();
        // foreach($cek as $ce){
        //     $ruas = RuasJalan::where('id_ruas_jalan',$ce->ruas_jalan_id)->first();
        //     $ce->kota_id = $ruas->kota_id;
        //     $ce->save();
        // }
        // $cek = Penanganan::all();
        // foreach($cek as $ce){
        //     $ruas = RuasJalan::where('id_ruas_jalan',$ce->ruas_jalan_id)->first();
        //     $ce->kota_id = $ruas->kota_id;
        //     $ce->save();
        // }
        if($request->tanggal_akhir != null){
            $filter['tanggal_sebelum']=  Carbon::createFromFormat('Y-m-d', $request->tanggal_akhir)->subDays(7)->format('Y-m-d');
            $filter['tanggal_awal']=  Carbon::createFromFormat('Y-m-d', $request->tanggal_akhir)->subDays(6)->format('Y-m-d');
            $filter['tanggal_akhir']=  Carbon::createFromFormat('Y-m-d', $request->tanggal_akhir)->format('Y-m-d');    
        }
        
        if($request->uptd_filter == null){
           
            if (Auth::user() && Auth::user()->internalRole->uptd) {
                $uptd_id = str_replace('uptd', '', Auth::user()->internalRole->uptd);
                $data = UPTD::where('id', $uptd_id)->get();
                $filter['uptd_filter'] = $uptd_id;
            }else{
                $data = UPTD::whereBetween('id',[1,6])->get();
                $kota = Kota::all();
                foreach($kota as $no => $temp){
                    $total = $temp->library_ruas->sum('panjang');
        
                    $panjang_lama = $temp->survei_lubang()->where('tanggal','<=',$filter['tanggal_sebelum'])->sum('panjang') - $temp->penanganan_lubang()->where('tanggal','<=',$filter['tanggal_sebelum'])->sum('panjang');
                    $panjang_ditangani = $temp->penanganan_lubang()->whereBetween('tanggal', [$filter['tanggal_awal'] , $filter['tanggal_akhir'] ])->sum('panjang');
                    $panjang_baru = $temp->survei_lubang()->whereBetween('tanggal', [$filter['tanggal_awal'] , $filter['tanggal_akhir'] ])->sum('panjang');
                    $panjang =  $panjang_lama + $panjang_baru;
                    $panjang =  $panjang - $panjang_ditangani;
                    if($panjang <=0){
                        $panjang =0;
                    }
                    $ditangani = $temp->penanganan_lubang()->where('tanggal','<=',$filter['tanggal_akhir'])->sum('panjang');
                    $total = $total - $ditangani;
                    $total = $total - $panjang;
                    
                    $temporai_kota[] = [
                        'name' => $temp->name,
                        'kerusakan' => round($panjang/1000,3),
                        'penanganan'=> round($ditangani/1000,3),
                        'total'=> round($total/1000,3)
                    ];
                }
            }
        
        }else{
            $data = UPTD::where('id',$request->uptd_filter)->get();
        }
        
        foreach($data as $no => $temp){
            $total = $temp->library_ruas->sum('panjang');

            $panjang_lama = $temp->survei_lubang()->where('tanggal','<=',$filter['tanggal_sebelum'])->sum('panjang') - $temp->penanganan_lubang()->where('tanggal','<=',$filter['tanggal_sebelum'])->sum('panjang');
            $panjang_ditangani = $temp->penanganan_lubang()->whereBetween('tanggal', [$filter['tanggal_awal'] , $filter['tanggal_akhir'] ])->sum('panjang');
            $panjang_baru = $temp->survei_lubang()->whereBetween('tanggal', [$filter['tanggal_awal'] , $filter['tanggal_akhir'] ])->sum('panjang');
            $panjang =  $panjang_lama + $panjang_baru;
            $panjang =  $panjang - $panjang_ditangani;
            if($panjang <=0){
                $panjang =0;
            }
            $ditangani = $temp->penanganan_lubang()->where('tanggal','<=',$filter['tanggal_akhir'])->sum('panjang');
            $total = $total - $ditangani;
            $total = $total - $panjang;
            
            $temporai[] = [
                'uptd' => $temp->id,
                'kerusakan' => round($panjang/1000,3),
                'penanganan'=> round($ditangani/1000,3),
                'total'=> round($total/1000,3)
            ];
        }
        // dd($temporai_kota);
        return view('admin.input_data.sapu_lobang.index',compact('filter','data','temporai','temporai_kota'));

    }
    public function rekapitulasi(Request $request){
        if($request->tanggal_akhir != null){
            $filter['tanggal_sebelum1']=  Carbon::createFromFormat('Y-m-d', $request->tanggal_akhir)->subDays(7)->format('Y-m-d');
            $filter['tanggal_awal1']=  Carbon::createFromFormat('Y-m-d', $request->tanggal_akhir)->subDays(6)->format('Y-m-d');
            $filter['tanggal_akhir1']=  Carbon::createFromFormat('Y-m-d', $request->tanggal_akhir)->format('Y-m-d');
            $filter['tanggal_sebelum']= Carbon::parse($filter['tanggal_sebelum1'])->formatLocalized('%d-%b');
            $filter['tanggal_awal']= Carbon::parse($filter['tanggal_awal1'])->formatLocalized('%d-%b');
            $filter['tanggal_akhir']=  Carbon::parse($filter['tanggal_akhir1'])->formatLocalized('%d-%b');
            $filter['rencana_awal1']=  Carbon::createFromFormat('Y-m-d', $request->tanggal_akhir)->addDays(1)->format('Y-m-d');
            $filter['rencana_akhir1']=  Carbon::createFromFormat('Y-m-d', $request->tanggal_akhir)->addDays(7)->format('Y-m-d');
            $filter['rencana_awal']= Carbon::parse($filter['rencana_awal1'])->formatLocalized('%d-%b');
            $filter['rencana_akhir']=  Carbon::parse($filter['rencana_akhir1'])->formatLocalized('%d-%b');
            $filter['tahap1_awal']=  Carbon::createFromFormat('Y-m-d', $filter['rencana_awal1'])->format('Y-m-d');
            $filter['tahap1_akhir']=  Carbon::createFromFormat('Y-m-d', $filter['rencana_awal1'])->addDays(2)->format('Y-m-d');
            $filter['tahap2_awal']=  Carbon::createFromFormat('Y-m-d', $filter['tahap1_akhir'])->addDays(1)->format('Y-m-d');
            $filter['tahap2_akhir']=  Carbon::createFromFormat('Y-m-d', $filter['tahap1_akhir'])->addDays(2)->format('Y-m-d');
            $filter['tahap3_awal']=  Carbon::createFromFormat('Y-m-d', $filter['tahap2_akhir'])->addDays(1)->format('Y-m-d');
            $filter['tahap3_akhir']=  Carbon::createFromFormat('Y-m-d', $filter['tahap2_akhir'])->addDays(2)->format('Y-m-d');    

        }
        if($request->uptd_filter == null){
            // dd('ok');
            if (Auth::user() && Auth::user()->internalRole->uptd) {
                $uptd_id = str_replace('uptd', '', Auth::user()->internalRole->uptd);
                $data = UPTD::where('id', $uptd_id)->get();
                $filter['uptd_filter'] = $uptd_id;
            }else
            $data = UPTD::whereBetween('id',[1,6])->get();
        
        }else{
            $data = UPTD::where('id',$request->uptd_filter)->get();
        }
        // dd($data->count());
        $phpWord = new \PhpOffice\PhpWord\PhpWord();
        $section = $phpWord->addSection();
        $section->getStyle()
            ->setPaperSize('A3')
            ->setLandscape()
        ;
        

        $header = array('bold' => true, "size"=>10,'lineHeight' => 1);
        $th = array('size' => 10, 'bold' => true, 'align' => 'center','alignment' => \PhpOffice\PhpWord\SimpleType\Jc::CENTER);
        $th2 = array('size' => 10,'bgColor' => 'FFFF00', 'bold' => true, 'valign' => 'center','spaceAfter' => \PhpOffice\PhpWord\Shared\Converter::pointToTwip(0));
        $normal = array('size' => 10,'valign' => 'center','spaceAfter' => \PhpOffice\PhpWord\Shared\Converter::pointToTwip(0));
        $angka = array('size' => 10, 'valign' => 'center', 'align' => 'center','alignment' => \PhpOffice\PhpWord\SimpleType\Jc::CENTER,'spaceAfter' => \PhpOffice\PhpWord\Shared\Converter::pointToTwip(0));

        $centered = array('valign' => 'center', 'align' => 'center','alignment' => \PhpOffice\PhpWord\SimpleType\Jc::CENTER, 'spaceAfter' => \PhpOffice\PhpWord\Shared\Converter::pointToTwip(0));
        $cols = 5;
        $rows = 10;
        
        $section->addText('DINAS BINA MARGA DAN PENATAAN RUANG PROVINSI JAWA BARAT',$header, array('align' => 'center'));
        if($data->count() ==1){
            $section->addText('UPTD PENGELOLAAN JALAN DAN JEMBATAN WILAYAH PELAYANAN - '.$data->first()->id, $header, array('align' => 'center'));
        }
        setlocale(LC_ALL, 'IND');
        $section->addText('STATUS : '.Carbon::parse($request->tanggal_akhir)->formatLocalized('%d %B %Y'), $header, array('align' => 'center'));
        $section->addText('TAHUN ANGGARAN '.Carbon::parse($request->tanggal_akhir)->format('Y'), $header, array('align' => 'center'));
        
        //create table
        $fancyTableStyle = array('borderSize' => 6, 'borderColor' => '999999');
        $firstRowStyle = array('bgColor' => 'B8CCE4');
        $cellRowContinue = array('vMerge' => 'continue');
        $cellRowSpan = array('vMerge' => 'restart', 'valign' => 'center','bgColor' => 'B8CCE4');

        $phpWord->addTableStyle('myTable', $fancyTableStyle, $firstRowStyle);
        $table = $section->addTable('myTable');
        $table->addRow();
        $table->addCell(null, $cellRowSpan)->addTextRun($centered)->addText("UPTD",$th);
        $table->addCell(null, array('gridSpan' => 8, 'vMerge' => 'restart', 'valign' => 'center'))->addTextRun($centered)->addText("Jumlah Lubang",$th);
        $table->addCell(1500, $cellRowSpan)->addTextRun($centered)->addText("Realisasi<w:br />Penutupan<w:br />Lubang",$th);
        $table->addCell(null, $cellRowSpan)->addTextRun($centered)->addText("Panjang<w:br />Total Ruas<w:br />(Km)",$th);
        $table->addCell(null, array('gridSpan' => 2, 'vMerge' => 'restart', 'valign' => 'center'))->addTextRun($centered)->addText("Panjang Ruas (Km)",$th);
        $table->addCell(1700, $cellRowSpan)->addTextRun($centered)->addText("Keterangan",$th);
         
        $row = $table->addRow();
        $table->addCell(null, $cellRowContinue);
        $row->addCell(null, array('bgColor' => 'B8CCE4','valign' => 'center'))->addTextRun($centered)->addText("Jumlah Lubang",$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4','valign' => 'center'))->addTextRun($centered)->addText("Penambahan Lubang<w:br />Baru",$th);
        $row->addCell(1200, array('bgColor' => 'B8CCE4','valign' => 'center'))->addTextRun($centered)->addText("Total Lubang",$th);
        $row->addCell(1180, array('bgColor' => 'B8CCE4','valign' => 'center'))->addTextRun($centered)->addText("Yang Sudah<w:br />Ditangani",$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4','valign' => 'center'))->addTextRun($centered)->addText("Sisa Yang Belum<w:br />Ditangani",$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4','valign' => 'center','gridSpan' => 3))->addTextRun($centered)->addText("Rencana Tindak Lanjut<w:br />".$filter['rencana_awal']." s.d ".$filter['rencana_akhir'],$th);
        $table->addCell(null, $cellRowContinue);
        $table->addCell(null, $cellRowContinue);
        $row->addCell(null, $cellRowSpan)->addTextRun($centered)->addText("Penanganan",$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4','valign' => 'center'))->addTextRun($centered)->addText("Sisa Kerusakan",$th);
        $table->addCell(null, $cellRowContinue);
        
        $row = $table->addRow();
        $table->addCell(null, $cellRowContinue);
        $row->addCell(null, array('bgColor' => 'B8CCE4','valign' => 'center'))->addTextRun($centered)->addText($filter['tanggal_sebelum'],$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4','valign' => 'center'))->addTextRun($centered)->addText($filter['tanggal_awal']."<w:br />s.d<w:br />".$filter['tanggal_akhir'],$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4','valign' => 'center'))->addTextRun($centered)->addText($filter['tanggal_awal']."<w:br />s.d<w:br />".$filter['tanggal_akhir'],$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4','valign' => 'center'))->addTextRun($centered)->addText($filter['tanggal_awal']."<w:br />s.d<w:br />".$filter['tanggal_akhir'],$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4','valign' => 'center'))->addTextRun($centered)->addText($filter['tanggal_akhir'],$th);
        $row->addCell(950, array('bgColor' => 'B8CCE4','valign' => 'center'))->addTextRun($centered)->addText("Tahap I<w:br />(2 Hari)",$th);
        $row->addCell(950, array('bgColor' => 'B8CCE4','valign' => 'center'))->addTextRun($centered)->addText("Tahap II<w:br />(2 Hari)",$th);
        $row->addCell(950, array('bgColor' => 'B8CCE4','valign' => 'center'))->addTextRun($centered)->addText("Tahap III<w:br />(2 Hari)",$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4','valign' => 'center'))->addTextRun($centered)->addText($filter['rencana_awal']."<w:br />s.d<w:br />".$filter['rencana_akhir'],$th);
        $table->addCell(null, $cellRowContinue);
        $table->addCell(null, $cellRowContinue);
        $row->addCell(null, array('bgColor' => 'B8CCE4','valign' => 'center'))->addTextRun($centered)->addText($filter['tanggal_akhir'],$th);
        $table->addCell(null, $cellRowContinue);
      
        $row = $table->addRow();
        $row->addCell(null, array('bgColor' => 'B8CCE4'))->addTextRun($centered)->addText("(1)",$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4'))->addTextRun($centered)->addText("(2)",$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4'))->addTextRun($centered)->addText("(3)",$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4'))->addTextRun($centered)->addText("(4) = (2)+(3)",$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4'))->addTextRun($centered)->addText("(5)",$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4'))->addTextRun($centered)->addText("(6) = (4)-(5)",$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4'))->addTextRun($centered)->addText("(7)",$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4'))->addTextRun($centered)->addText("(8)",$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4'))->addTextRun($centered)->addText("(9)",$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4'))->addTextRun($centered)->addText("(10)",$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4'))->addTextRun($centered)->addText("(11)",$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4'))->addTextRun($centered)->addText("(12)",$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4'))->addTextRun($centered)->addText("(13)",$th);
        $row->addCell(null, array('bgColor' => 'B8CCE4'))->addTextRun($centered)->addText("(14)",$th);


        foreach($data as $uptd){
            if($uptd->id == 1){
                $text = "I";
            }else if($uptd->id == 2){
                $text = "II";
            }else if($uptd->id == 3){
                $text = "III";
            }else if($uptd->id == 4){
                $text = "IV";
            }else if($uptd->id == 5){
                $text = "V";
            }else if($uptd->id == 6){
                $text = "VI";
            }
            // $section->addText('UPTD Wilayah Pelayanan - '. $text,$centered);

            $panjang_lama = $uptd->survei_lubang()->where('tanggal','<=',$filter['tanggal_sebelum1'])->sum('panjang') - $uptd->penanganan_lubang()->where('tanggal','<=',$filter['tanggal_sebelum1'])->sum('panjang');
            $panjang_ditangani = $uptd->penanganan_lubang()->whereBetween('tanggal', [$filter['tanggal_awal1'] , $filter['tanggal_akhir1'] ])->sum('panjang');
            $panjang_baru = $uptd->survei_lubang()->whereBetween('tanggal', [$filter['tanggal_awal1'] , $filter['tanggal_akhir1'] ])->sum('panjang');
            $panjang =  $panjang_lama + $panjang_baru;
            $panjang =  $panjang - $panjang_ditangani;
            $ditangani = $uptd->penanganan_lubang()->where('tanggal','<=',$filter['tanggal_akhir1'])->sum('panjang');
            
            $row = $table->addRow();
            $row->addCell(null, $th2)->addTextRun($centered)->addText('UPTD Wilayah Pelayanan - '. $text.'  ',$th2);
            $row->addCell(null, $th2)->addTextRun($centered)->addText(" ",$th2);
            $row->addCell(null, $th2)->addTextRun($centered)->addText(" ",$th2);
            $row->addCell(null, $th2)->addTextRun($centered)->addText(" ",$th2);
            $row->addCell(null, $th2)->addTextRun($centered)->addText(" ",$th2);
            $row->addCell(null, $th2)->addTextRun($centered)->addText(" ",$th2);
            $row->addCell(null, $th2)->addTextRun($centered)->addText(" ",$th2);
            $row->addCell(null, $th2)->addTextRun($centered)->addText(" ",$th2);
            $row->addCell(null, $th2)->addTextRun($centered)->addText(" ",$th2);
            $row->addCell(null, $th2)->addTextRun($centered)->addText(" ",$th2);
            $row->addCell(null, $th2)->addTextRun($angka)->addText(round($uptd->library_ruas->sum('panjang')/1000,2),$th2);
            $row->addCell(null, $th2)->addTextRun($centered)->addText(round($ditangani/1000,2),$th2);
            $row->addCell(null, $th2)->addTextRun($centered)->addText(round($panjang/1000,2),$th2);
            $row->addCell(null, $th2)->addTextRun($centered)->addText(" ",$th2);

            foreach($uptd->library_sup as $sup){
                $jumlah = $sup->survei_lubang()->where('tanggal','<=',$filter['tanggal_sebelum1'])->sum('jumlah') - $sup->penanganan_lubang()->where('tanggal','<=',$filter['tanggal_sebelum1'])->sum('jumlah');
                $penanganan = $sup->penanganan_lubang()->whereBetween('tanggal', [$filter['tanggal_awal1'] , $filter['tanggal_akhir1'] ])->sum('jumlah');
                $sisa = $jumlah-$penanganan;
                $lubang_baru = $sup->survei_lubang()->whereBetween('tanggal', [$filter['tanggal_awal1'] , $filter['tanggal_akhir1'] ])->sum('jumlah');
                $total = $sisa+$lubang_baru;
                //plane B
                $total2 = $jumlah+$lubang_baru;
                $sisa2 = $total2-$penanganan;

                $panjang_lama = $sup->survei_lubang()->where('tanggal','<=',$filter['tanggal_sebelum1'])->sum('panjang') - $sup->penanganan_lubang()->where('tanggal','<=',$filter['tanggal_sebelum1'])->sum('panjang');
                $panjang_ditangani = $sup->penanganan_lubang()->whereBetween('tanggal', [$filter['tanggal_awal1'] , $filter['tanggal_akhir1'] ])->sum('panjang');
                $panjang_baru = $sup->survei_lubang()->whereBetween('tanggal', [$filter['tanggal_awal1'] , $filter['tanggal_akhir1'] ])->sum('panjang');
                $panjang =  $panjang_lama + $panjang_baru;
                $panjang =  $panjang - $panjang_ditangani;                   
                $ditangani = $sup->penanganan_lubang()->where('tanggal','<=',$filter['tanggal_akhir1'])->sum('panjang');

                $rencana = $sup->rencana_penanganan_lubang()->whereBetween('tanggal', [$filter['rencana_awal1'] , $filter['rencana_akhir1'] ])->sum('jumlah');
                $realisasi = $sup->penanganan_lubang()->whereBetween('tanggal', [$filter['rencana_awal1'] , $filter['rencana_akhir1'] ])->sum('jumlah');
                $tahap1 = $sup->rencana_penanganan_lubang()->whereBetween('tanggal', [$filter['tahap1_awal'] , $filter['tahap1_akhir'] ])->sum('jumlah');
                $tahap2 = $sup->rencana_penanganan_lubang()->whereBetween('tanggal', [$filter['tahap2_awal'] , $filter['tahap2_akhir'] ])->sum('jumlah');
                $tahap3 = $sup->rencana_penanganan_lubang()->whereBetween('tanggal', [$filter['tahap3_awal'] , $filter['tahap3_akhir'] ])->sum('jumlah');

                
                $row = $table->addRow();
                $row->addCell(null)->addTextRun($normal)->addText($sup->name,$normal);
                $row->addCell(null)->addTextRun($angka)->addText($jumlah,$angka);
                $row->addCell(null)->addTextRun($angka)->addText($lubang_baru,$angka);
                $row->addCell(null)->addTextRun($angka)->addText($total2,$angka);
                $row->addCell(null)->addTextRun($angka)->addText($penanganan,$angka);
                $row->addCell(null)->addTextRun($angka)->addText($sisa2,$angka);
                $row->addCell(null)->addTextRun($angka)->addText($tahap1,$angka);
                $row->addCell(null)->addTextRun($angka)->addText($tahap2,$angka);
                $row->addCell(null)->addTextRun($angka)->addText($tahap3,$angka);
                
                // $row->addCell(null, array('gridSpan' => 3, 'vMerge' => 'restart', 'valign' => 'center'))->addTextRun($angka)->addText($rencana,$angka);
                $row->addCell(null)->addTextRun($angka)->addText($realisasi,$angka);
                $row->addCell(null)->addTextRun($angka)->addText(round($sup->library_ruas->sum('panjang')/1000,2),$angka);
                $row->addCell(null)->addTextRun($angka)->addText(round($ditangani/1000,2),$angka);
                $row->addCell(null)->addTextRun($angka)->addText(round($panjang/1000,2),$angka);
                $row->addCell(null)->addTextRun($normal)->addText(' ',$normal);



            }
            // $row->addCell(null)->addText('UPTD Wilayah Pelayanan - '. $text,$centered);
        }
        $fileName = 'rekap-saplong-'.$request->tanggal_akhir;
        $phpWord->save($fileName.'.docx');

        return response()->download($fileName.'.docx')->deleteFileAfterSend(true);

    }

}
