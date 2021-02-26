<?php

namespace App\Http\Controllers\InputData;

use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Routing\Route;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class KondisiKemantapanJalanController extends Controller
{

    // public function __construct()
    // {
    //     $this->middleware(function ($request, $next) {
    //         dd( $request->route()->getActionName());
    //         if (hasAccess(auth()->user()->internal_role_id, 'Kondisi Jalan', 'Create') == false) {
    //             return redirect(route('403'));
    //         }
    //         return $next($request);
    //     });
    // }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (hasAccess(auth()->user()->internal_role_id, 'Kondisi Jalan', 'View') == false) {
            return redirect(route('403'));
        }
        $kondisi_jalan = DB::table('master_kondisi_jalan')->get();
        return view('admin.input_data.kondisi_kemantapan_jalan.index', compact('kondisi_jalan'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if (hasAccess(auth()->user()->internal_role_id, 'Kondisi Jalan', 'Create') == false) {
            return redirect(route('403'));
        }
        if (Auth::user()->internalRole->uptd)
            $uptd = DB::table('landing_uptd')->where('id', substr(Auth::user()->internalRole->uptd, 4, 5))->get();
        else
            $uptd = DB::table('landing_uptd')->get();
        $ruas_jalan = DB::table('master_ruas_jalan')->get();
        // $kota_kab = DB::table('indonesia_cities')->get();
        $action = "store";
        return view('admin.input_data.kondisi_kemantapan_jalan.insert', compact('action', 'ruas_jalan', 'uptd'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $kondisi_jalan = $request->except(["_token"]);
        $kondisi_jalan["CREATED_BY"] = Auth::user()->name;
        $kondisi_jalan['CREATED_AT'] = Carbon::now()->format('Y-m-d H:i:s');
        DB::table('master_kondisi_jalan')->insert($kondisi_jalan);

        $color = "success";
        $msg = "Berhasil Menambah Data Kondisi Jalan";
        return redirect(route('kondisi_jalan.index'))->with(compact('color', 'msg'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if (hasAccess(auth()->user()->internal_role_id, 'Kondisi Jalan', 'Update') == false) {
            return redirect(route('403'));
        }
        if (Auth::user()->internalRole->uptd)
            $uptd = DB::table('landing_uptd')->where('id', substr(Auth::user()->internalRole->uptd, 4, 5))->get();
        else
            $uptd = DB::table('landing_uptd')->get();
        $ruas_jalan = DB::table('master_ruas_jalan')->get();
        // $kota_kab = DB::table('indonesia_cities')->get();
        $action = "update";
        $kondisi_jalan = DB::table('master_kondisi_jalan')->where('ID_KEMANTAPAN', $id)->first();
        return view('admin.input_data.kondisi_kemantapan_jalan.insert', compact('uptd', 'kondisi_jalan', 'action', 'ruas_jalan'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $kondisi_jalan = $request->except(["_token", "_method"]);
        $kondisi_jalan["UPDATED_BY"] = Auth::user()->name;
        $kondisi_jalan['UPDATED_AT'] = Carbon::now()->format('Y-m-d H:i:s');
        DB::table('master_kondisi_jalan')->where('ID_KEMANTAPAN', $id)->update($kondisi_jalan);

        $color = "success";
        $msg = "Berhasil Mengubah Data Kondisi Jalan";
        return redirect(route('kondisi_jalan.index'))->with(compact('color', 'msg'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if (hasAccess(auth()->user()->internal_role_id, 'Kondisi Jalan', 'Delete') == false) {
            return redirect(route('403'));
        }
        $kondisi_jalan =  DB::table('master_kondisi_jalan')->where('ID_KEMANTAPAN', $id)->delete();
        $color = "success";
        $msg = "Berhasil Menghapus Data Kondisi Jalan";
        return redirect(route('kondisi_jalan.index'))->with(compact('color', 'msg', 'kondisi_jalan'));
    }
}
