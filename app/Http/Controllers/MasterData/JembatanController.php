<?php

namespace App\Http\Controllers\MasterData;

use App\Http\Controllers\Controller;
use App\Model\Transactional\Jembatan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Yajra\Datatables\DataTables;

class JembatanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $jembatan = new Jembatan();
        if (Auth::user()->internalRole->uptd) {
            $uptd_id = Auth::user()->internalRole->uptd;
            // var_dump($uptd_id);
            $jembatan = $jembatan->where('uptd', $uptd_id);
        }
        $jembatan = $jembatan->get();

        $ruasJalan = DB::table('master_ruas_jalan');
        if (Auth::user()->internalRole->uptd) {
            $uptd_id = str_replace('uptd', '', Auth::user()->internalRole->uptd);
            $ruasJalan = $ruasJalan->where('uptd_id', $uptd_id);
        }
        $ruasJalan = $ruasJalan->get();

        $sup = DB::table('utils_sup');
        if (Auth::user()->internalRole->uptd) {
            $uptd_id = str_replace('uptd', '', Auth::user()->internalRole->uptd);
            $sup = $sup->where('uptd_id', $uptd_id);
        }
        $sup = $sup->get();

        $uptd = DB::table('landing_uptd')->get();

        return view('admin.master.jembatan.index', compact('jembatan', 'ruasJalan', 'sup', 'uptd'));
    }

    public function add()
    {
        $sup = DB::table('utils_sup');
        $ruasJalan = DB::table('master_ruas_jalan');
        $uptd = DB::table('landing_uptd');

        if (Auth::user()->internalRole->uptd) {
            if (Auth::user()->internalRole->uptd) {
                $uptd_id = str_replace('uptd', '', Auth::user()->internalRole->uptd);
                $sup = $sup->where('uptd_id', $uptd_id);
                $ruasJalan = $ruasJalan->where('uptd_id', $uptd_id);
            }
        }
        $sup = $sup->get();
        $ruasJalan = $ruasJalan->get();
        $uptd = $uptd->get();

        return view('admin.master.jembatan.add', compact('sup', 'ruasJalan', 'uptd'));
    }

    public function store(Request $request)
    {
        // $jembatan = $request->except('_token', 'foto');

        $jembatan['id_jembatan'] = $request->id_jembatan;
        $jembatan['nama_jembatan'] = $request->nama_jembatan;
        $jembatan['uptd'] = $request->uptd;
        $jembatan['ruas_jalan'] = $request->ruas_jalan;
        $jembatan['sup'] = $request->sup;
        $jembatan['lokasi'] = $request->lokasi;
        $jembatan['panjang'] = $request->panjang;
        $jembatan['lebar'] = $request->lebar;
        $jembatan['jumlah_bentang'] = $request->jumlah_bentang;
        $jembatan['lat'] = $request->lat;
        $jembatan['lng'] = $request->lng;
        $jembatan['ket'] = $request->ket;

        if ($request->foto != null) {
            $path = 'jembatan/' . Str::snake(date("YmdHis") . ' ' . $request->foto->getClientOriginalName());
            $request->foto->storeAs('public/', $path);
            $jembatan['foto'] = $path;
        }

        $jembatan['kategori'] = "";
        $jembatan['created_by'] = Auth::user()->id;

        $jembatanModel = new Jembatan();
        $jembatanModel->insert($jembatan);

        $last3 = DB::table('master_jembatan')->latest('id')->first();

        for ($i = 0; $i < $jembatan['jumlah_bentang']; $i++) {
            $textPanjang = 'panjangBentang' . $i;
            $textTipe = 'tipe' . $i;

            $dataBentang['master_jembatan_id'] = $last3->id;
            $dataBentang['bentang'] = $i + 1;
            $dataBentang['panjang'] = $request->$textPanjang;
            $dataBentang['tipe_bangunan_atas_id'] = $request->$textTipe;

            DB::table('master_jembatan_bentang')->insert($dataBentang);
        }

        $color = "success";
        $msg = "Berhasil Menambah Data Jembatan";
        return redirect(route('getMasterJembatan'))->with(compact('color', 'msg'));
    }

    public function edit($id)
    {
        $jembatan = Jembatan::find($id);

        $id = substr($jembatan->uptd, strlen($jembatan->uptd) - 1);
        $id = (int)$id;

        $ruasJalan = DB::table('master_ruas_jalan');
        $ruasJalan = $ruasJalan->where('uptd_id', $id);
        $ruasJalan = $ruasJalan->get();

        $sup = DB::table('utils_sup');
        $sup = $sup->where('uptd_id', $id);
        $sup = $sup->get();
        $uptd = DB::table('landing_uptd')->get();

        $dataBentang = DB::table('master_jembatan_bentang');
        $dataBentang = $dataBentang->where('master_jembatan_id', $jembatan->id);
        $dataBentang = $dataBentang->get();

        $tipe = DB::table('utils_tipe_bangunan_atas');
        $tipe = $tipe->get();

        return view('admin.master.jembatan.edit', compact('jembatan', 'ruasJalan', 'sup', 'uptd', 'dataBentang', 'tipe'));
    }


    public function update(Request $request)
    {
        // $jembatan = $request->except('_token', 'foto', 'id');
        $jembatan['id_jembatan'] = $request->id_jembatan;
        $jembatan['nama_jembatan'] = $request->nama_jembatan;
        $jembatan['uptd'] = $request->uptd;
        $jembatan['ruas_jalan'] = $request->ruas_jalan;
        $jembatan['sup'] = $request->sup;
        $jembatan['lokasi'] = $request->lokasi;
        $jembatan['panjang'] = $request->panjang;
        $jembatan['lebar'] = $request->lebar;
        $jembatan['jumlah_bentang'] = $request->jumlah_bentang;
        $jembatan['lat'] = $request->lat;
        $jembatan['lng'] = $request->lng;
        $jembatan['ket'] = $request->ket;

        $old = DB::table('master_jembatan')->where('id', $request->id)->first();

        if ($request->foto != null) {
            $old->foto ?? Storage::delete('public/' . $old->foto);

            $path = 'jembatan/' . Str::snake(date("YmdHis") . ' ' . $request->foto->getClientOriginalName());
            $request->foto->storeAs('public/', $path);
            $jembatan['foto'] = $path;
        }

        $jembatan['updated_by'] = Auth::user()->id;
        DB::table('master_jembatan')->where('id', $request->id)->update($jembatan);

        for ($i = 0; $i < $jembatan['jumlah_bentang']; $i++) {
            $textPanjang = 'panjangBentang' . $i;
            $textTipe = 'tipe' . $i;
            $textIdBentang = 'idBentang' . $i;

            $dataBentang['master_jembatan_id'] = $request->id;
            $dataBentang['bentang'] = $i + 1;
            $dataBentang['panjang'] = $request->$textPanjang;
            $dataBentang['tipe_bangunan_atas_id'] = $request->$textTipe;

            DB::table('master_jembatan_bentang')->where('id', $request->$textIdBentang)->update($dataBentang);
        }

        $color = "success";
        $msg = "Berhasil Memperbaharui Data Jembatan";

        return redirect(route('getMasterJembatan'))->with(compact('color', 'msg'));
    }

    public function delete($id)
    {
        $jembatan = DB::table('master_jembatan');
        $old = $jembatan->where('id', $id);
        $old->first()->foto ?? Storage::delete('public/' . $old->first()->foto);

        $old->delete();

        $color = "success";
        $msg = "Berhasil Menghapus Data Jembatan";
        return redirect(route('getMasterJembatan'))->with(compact('color', 'msg'));
    }

    public function getTipeBangunan()
    {
        $tipe = DB::table('utils_tipe_bangunan_atas');
        $tipe = $tipe->get();

        return response()->json($tipe);
    }

    public function json()
    {
        return DataTables::of(DB::table('master_jembatan'))
            ->addIndexColumn()
            ->addColumn('action', function ($row) {
                $btn = '<div class="btn-group " role="group" data-placement="top" title="" data-original-title=".btn-xlg">';

                if (hasAccess(Auth::user()->internal_role_id, "Jembatan", "Update")) {
                    $btn = $btn . '<a href="' . route("editJembatan", $row->id) . '"><button data-toggle="tooltip" title="Edit" class="btn btn-primary btn-sm waves-effect waves-light"><i class="icofont icofont-pencil"></i></button></a>';
                }

                if (hasAccess(Auth::user()->internal_role_id, "Jembatan", "Delete")) {
                    $btn = $btn . '<a href="#delModal" data-id="' . $row->id . '" data-toggle="modal"><button data-toggle="tooltip" title="Hapus" class="btn btn-danger btn-sm waves-effect waves-light"><i class="icofont icofont-trash"></i></button></a>';
                }
                $btn = $btn . '</div>';

                return $btn;
            })
            ->rawColumns(['action'])
            ->make(true);
    }
}
