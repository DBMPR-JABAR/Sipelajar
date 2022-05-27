<nav class="pcoded-navbar">
    <div class="nav-list">
        <div class="pcoded-inner-navbar main-menu">
            <ul class="pcoded-item pcoded-left-item">
                <li class="{{ Request::segment(2) == 'home' ? 'active' : '' }}">
                    <a href="{{ url('admin/home') }}" class="waves-effect waves-dark">
                        <span class="pcoded-micon">
                            <i class="feather icon-home"></i>
                        </span>
                        <span class="pcoded-mtext">Halaman Utama</span>
                    </a>
                </li>
            </ul>
            @if (hasAccess(Auth::user()->internal_role_id, 'Monitoring', 'View'))
                {{-- <div class="pcoded-navigation-label">Dashboard Analysis</div> --}}
                <ul class="pcoded-item pcoded-left-item">
                    <li
                        class="{{ Request::segment(2) == 'map-dashboard' ? 'active' : '' }}">
                        <a href="{{ url('admin/map-dashboard') }}" class="waves-effect waves-dark">
                            <span class="pcoded-micon">
                                <i class="feather icon-monitor"></i>
                            </span>
                            <span class="pcoded-mtext">Executive Dashboard</span>
                        </a>
                      
                    </li>
                </ul>
            @endif
            </ul>

            @if (hasAccess(Auth::user()->internal_role_id, 'Data Master', 'View'))
                {{-- <div class="pcoded-navigation-label">Data Master</div> --}}
                <ul class="pcoded-item pcoded-left-item">
                    <li
                        class="pcoded-hasmenu {{ Request::segment(2) == 'master-data' ? 'pcoded-trigger active' : '' }}">
                        <a href="javascript:void(0)" class="waves-effect waves-dark">
                            <span class="pcoded-micon"><i class="feather icon-grid"></i></span>
                            <span class="pcoded-mtext">Data Master</span>
                            {{-- <span class="pcoded-badge label label-warning">NEW</span> --}}
                        </a>
                        <ul class="pcoded-submenu">
                            @if (hasAccess(Auth::user()->internal_role_id, 'User', 'View'))
                                <li
                                    class=" pcoded-hasmenu  {{ Request::segment(3) == 'user' ? 'pcoded-trigger active' : '' }}">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">User</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        @if (hasAccess(Auth::user()->internal_role_id, 'Manajemen User', 'View'))
                                        <li class="{{ Request::segment(4) == 'manajemen' ? 'active' : '' }}">
                                            <a href="{{ route('getMasterUser') }}" class="waves-effect waves-dark">
                                                <span class="pcoded-mtext">Manajemen User</span>
                                            </a>
                                        </li>
                                        @endif
                                        @if (hasAccess(Auth::user()->internal_role_id, 'User Role', 'View'))
                                        <li class="{{ Request::segment(4) == 'user-role' ? 'active' : '' }}">
                                            <a href="{{ route('getDataUserRole') }}" class="waves-effect waves-dark">
                                                <span class="pcoded-mtext">User Role</span>
                                            </a>
                                        </li>
                                        @endif
                                        @if (hasAccess(Auth::user()->internal_role_id, 'Role Akses', 'View'))
                                        <li class="{{ Request::segment(4) == 'role-akses' ? 'active' : '' }}">
                                            <a href="{{ route('getRoleAkses') }}" class="waves-effect waves-dark">
                                                <span class="pcoded-mtext">Role Akses</span>
                                            </a>
                                        </li>
                                        @endif
                                        @if (Auth::user() && Auth::user()->id == 1)
                                            <li class="{{ Request::segment(4) == 'permission' ? 'active' : '' }}">
                                                <a href="{{ route('getAkses') }}" class="waves-effect waves-dark">
                                                    <span class="pcoded-mtext">Permission</span>
                                                </a>
                                            </li>
                                        @endif
                                    </ul>
                                </li>
                            @endif
                            @if (hasAccess(Auth::user()->internal_role_id, 'Ruas Jalan', 'View'))
                                <li class="{{ Request::segment(3) == 'ruas-jalan' ? 'active' : '' }}">
                                    <a href="{{ url('admin/master-data/ruas-jalan') }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Ruas Jalan</span>
                                    </a>
                                </li>
                            @endif
                            @if (hasAccess(Auth::user()->internal_role_id, 'Jembatan', 'View'))
                                <li class="{{ Request::segment(3) == 'jembatan' ? 'active' : '' }}">
                                    <a href="{{ url('admin/master-data/jembatan') }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Jembatan</span>
                                    </a>
                                </li>
                            @endif
                            {{-- @if (hasAccess(Auth::user()->internal_role_id, 'Rawan Bencana', 'View'))
                                <li class="{{ Request::segment(3) == 'rawanbencana' ? 'active' : '' }}">
                                    <a href="{{ url('admin/master-data/rawanbencana') }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Rawan Bencana</span>
                                    </a>
                                </li>
                            @endif
                            @if (hasAccess(Auth::user()->internal_role_id, 'CCTV', 'View'))
                                <li class="{{ Request::segment(3) == 'CCTV' ? 'active' : '' }}">
                                    <a href="{{ url('admin/master-data/CCTV') }}" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">CCTV</span>
                                    </a>
                                </li>
                            @endif --}}
                            {{-- @if (hasAccess(Auth::user()->internal_role_id, 'Icon Rawan Bencana', 'View'))
                                <li class="{{ Request::segment(3) == 'icon' ? 'active' : '' }}">
                                    <a href="{{ url('admin/master-data/icon') }}" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Icon Rawan Bencana</span>
                                    </a>
                                </li>
                            @endif --}}

                            @if (hasAccess(Auth::user()->internal_role_id, 'UPTD', 'View'))
                                <li class="{{ Request::segment(3) == 'uptd' ? 'active' : '' }}">
                                    <a href="{{ url('admin/master-data/uptd') }}" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">UPTD</span>
                                    </a>
                                </li>
                            @endif
                            @if (hasAccess(Auth::user()->internal_role_id, 'SUP', 'View'))
                                <li class="{{ Request::segment(3) == 'sup' ? 'active' : '' }}">
                                    <a href="{{ url('admin/master-data/sup') }}" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">SUP</span>
                                    </a>
                                </li>
                            @endif
                            {{-- @if (hasAccess(Auth::user()->internal_role_id, 'Tipe Bangunan Atas', 'View'))
                                <li class="{{ Request::segment(3) == 'tipebangunanatas' ? 'active' : '' }}">
                                    <a href="{{ route('tipebangunanatas.index') }}" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Tipe Bangunan Atas</span>
                                    </a>
                                </li>
                            @endif --}}
                            @if (hasAccess(Auth::user()->internal_role_id, 'Jenis Laporan', 'View'))
                                <li class="{{ Request::segment(3) == 'jenis_laporan' ? 'active' : '' }}">
                                    <a href="{{ url('admin/master-data/jenis_laporan') }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Jenis Laporan Pekerjaan</span>
                                    </a>
                                </li>
                            @endif
                            @if (hasAccess(Auth::user()->internal_role_id, 'Nama Kegiatan Pekerjaan', 'View'))
                            <li class="{{ Request::segment(3) == 'nama_kegiatan_pekerjaan' ? 'active' : '' }}">
                                <a href="{{ url('admin/master-data/nama_kegiatan_pekerjaan') }}" class="waves-effect waves-dark">
                                    <span class="pcoded-mtext">Nama Kegiatan Pekerjaan</span>
                                </a>
                            </li>
                            @endif
                            @if (hasAccess(Auth::user()->internal_role_id, 'Bahan Material', 'View') || hasAccess(Auth::user()->internal_role_id, 'Peralatan', 'View'))

                                <li class=" pcoded-hasmenu  {{ Request::segment(3) == 'item_bahan_material' ||Request::segment(3) == 'peralatan' ? 'pcoded-trigger active' : '' }}">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Peralatan & Material</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        @if (hasAccess(Auth::user()->internal_role_id, 'Bahan Material', 'View'))
                                        <li class="{{ Request::segment(4) == 'item_bahan_material' ? 'active' : '' }}">
                                            <a href="{{ url('admin/master-data/item_bahan_material') }}" class="waves-effect waves-dark">
                                                <span class="pcoded-mtext">Bahan Material</span>
                                            </a>
                                        </li>
                                        @endif
                                        @if (hasAccess(Auth::user()->internal_role_id, 'Peralatan', 'View'))
                                        <li class="{{ Request::segment(4) == 'peralatan' ? 'active' : '' }}">
                                            <a href="{{ route('item_peralatan.index') }}" class="waves-effect waves-dark">
                                                <span class="pcoded-mtext">Peralatan Operasional</span>
                                            </a>
                                        </li>
                                        @endif

                                    </ul>
                                </li>
                            @endif
                            @if (hasAccess(Auth::user()->internal_role_id, 'Item Satuan', 'View'))
                                <li class="{{ Request::segment(3) == 'item_satuan' ? 'active' : '' }}">
                                    <a href="{{ url('admin/master-data/item_satuan') }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Item Satuan</span>
                                    </a>
                                </li>
                            @endif
                            {{-- @if (hasAccess(Auth::user()->internal_role_id, 'Rumija', 'View'))
                            <li class="{{ Request::segment(3) == 'rumija' ? 'active' : '' }}">
                                <a href="{{ url('admin/master-data/rumija') }}" class="waves-effect waves-dark">
                                    <span class="pcoded-mtext">Rumija</span>
                                </a>
                            </li>
                            @endif
                            @if (hasAccess(Auth::user()->internal_role_id, 'Data Master LabKon', 'View') || hasAccess(Auth::user()->internal_role_id, 'Bahan Uji LabKon', 'View'))
                                <li
                                    class=" pcoded-hasmenu  {{ Request::segment(3) == 'labkon' ? 'pcoded-trigger active' : '' }}">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Labolatorium Kontruksi</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        @if (hasAccess(Auth::user()->internal_role_id, 'Bahan Uji LabKon', 'View'))
                                            <li
                                                class="{{ Request::segment(4) == 'bahan_uji_labkon' ? 'active' : '' }}">
                                                <a href="{{ url('admin/master-data/labkon/bahan_uji_labkon') }}"
                                                    class="waves-effect waves-dark">
                                                    <span class="pcoded-mtext">Bahan Uji</span>
                                                </a>
                                            </li>
                                        @endif
                                        @if (hasAccess(Auth::user()->internal_role_id, 'Metode Pengujian Labkon', 'View'))
                                        <li
                                            class="{{ Request::segment(4) == 'metode_pengujian_labkon' ? 'active' : '' }}">
                                            <a href="{{ url('admin/master-data/labkon/metode_pengujian_labkon') }}"
                                                class="waves-effect waves-dark">
                                                <span class="pcoded-mtext">Metode Pengujian</span>
                                            </a>
                                        </li>
                                    @endif
                                    </ul>
                                </li>
                            @endif --}}
                        </ul>
                    </li>
                </ul>
            @endif
            @if (hasAccess(Auth::user()->internal_role_id, 'Input Pekerjaan', 'View'))
                {{-- <div class="pcoded-navigation-label">Input</div> --}}
                <ul class="pcoded-item pcoded-left-item">
                    <li
                        class="pcoded-hasmenu {{ Request::segment(2) == 'input-data' ? 'pcoded-trigger active' : '' }}">
                        <a href="javascript:void(0)" class="waves-effect waves-dark">
                            <span class="pcoded-micon"><i class="feather icon-file-text"></i></span>
                            <span class="pcoded-mtext">Pemeliharaan</span>
                            {{-- <span class="pcoded-badge label label-warning">NEW</span> --}}
                        </a>
                        <ul class="pcoded-submenu">
                            @if (hasAccess(Auth::user()->internal_role_id, 'Pekerjaan', 'View'))
                                <li class="{{ Request::segment(3) == 'pekerjaan' ? 'active' : '' }}">
                                    <a href="{{ url('admin/input-data/pekerjaan') }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Pekerjaan</span>
                                    </a>
                                </li>
                            @endif
                            @if (hasAccess(Auth::user()->internal_role_id, 'Kondisi Jalan', 'View'))
                                <li class="{{ Request::segment(3) == 'kondisi_jalan' ? 'active' : '' }}">
                                    <a href="{{ url('admin/input-data/kondisi_jalan') }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Kondisi Jalan</span>
                                    </a>
                                </li>
                            @endif
                            @if (hasAccess(Auth::user()->internal_role_id, 'Survey Kondisi Jalan', 'View'))
                                <li
                                    class="{{ Request::segment(3) == 'survei_kondisi_jalan' ? 'active' : '' }}">
                                    <a href="{{ url('admin/input-data/survei_kondisi_jalan') }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Survei Kondisi Jalan</span>
                                    </a>
                                </li>
                            @endif
                            @if (hasAccess(Auth::user()->internal_role_id, 'Mandor', 'View'))
                                <li class="{{ Request::segment(3) == 'mandor' ? 'active' : '' }}">
                                    <a href="{{ url('admin/input-data/mandor') }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Mandor</span>
                                    </a>
                                </li>
                            @endif
                        
                                {{-- <li class="{{ Request::segment(3) == 'sapu-lobang' ? 'active' : '' }}">
                                    <a href="{{ route('sapu-lobang.index') }}"
                                        class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Sapu Lobang</span>
                                    </a>
                                </li> --}}
                                <li class=" pcoded-hasmenu  {{ Request::segment(3) == 'sapu-lobang' ? 'pcoded-trigger active' : '' }}">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-mtext">Sapu Lobang</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="{{ Request::segment(4) == 'rekapitulasi' ? 'active' : '' }}">
                                            <a href="{{ route('sapu-lobang.index') }}" class="waves-effect waves-dark">
                                                <span class="pcoded-mtext">Rekapitulasi</span>
                                            </a>
                                        </li>
                                        <li class="{{ Request::segment(4) == 'data-lubang' ? 'active' : '' }}">
                                            <a href="{{ route('sapu-lobang.lubang') }}" class="waves-effect waves-dark">
                                                <span class="pcoded-mtext">Data Lubang</span>
                                            </a>
                                        </li>
                                        
                                        <li class="{{ Request::segment(4) == 'data-potensi' ? 'active' : '' }}">
                                            <a href="{{ route('sapu-lobang.potensi') }}" class="waves-effect waves-dark">
                                                <span class="pcoded-mtext">Potensi Lubang</span>
                                            </a>
                                        </li>
                                     
                                    </ul>
                                </li>
                          
                           
                        </ul>
                    </li>
                </ul>
            @endif
            <ul class="pcoded-item pcoded-left-item">
                @if (hasAccess(Auth::user()->internal_role_id, 'Log', 'View'))
                    <li class="{{ Request::segment(2) == 'log' ? 'active' : '' }}">
                        <a href="{{ url('admin/log') }}" class="waves-effect waves-dark">
                            <span class="pcoded-micon">
                                <i class="feather icon-alert-octagon"></i>
                            </span>
                            <span class="pcoded-mtext">Log</span>
                        </a>
                    </li>
                @endif
                
            </ul>
        </div>
    </div>
</nav>
<script>
    const uls = document.querySelectorAll('.pcoded-item');

    uls.forEach(function(ul) {
        ul.addEventListener('click', function() {
            this.classList.remove('pcoded-trigger');
        });
    });

</script>
