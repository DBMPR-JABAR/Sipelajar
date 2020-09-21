@extends('admin.t_index')

@section('title') Admin Dashboard @endsection

@section('page-header')
<div class="row align-items-end">
    <div class="col-lg-8">
        <div class="page-header-title">
            <div class="d-inline">
                <h4>Monitoring Realisasi Anggaran DBMPR Provinsi Jawa Barat</h4>
             
            </div>
        </div>
    </div>
    <div class="col-lg-4">
        <div class="page-header-breadcrumb">
            <ul class="breadcrumb-title">
                <li class="breadcrumb-item">
                    <a href="index.html"> <i class="feather icon-home"></i> </a>
                </li>
                <li class="breadcrumb-item"><a href="#!">Realisasi Anggaran</a> </li>
            </ul>
        </div>
    </div>
</div>
@endsection

@section('page-body')
<div class="row">
    <!-- task, page, download counter  start -->
       
    <div class="col-xl-4 col-md-6">
        <div class="card bg-c-yellow update-card">
            <div class="card-block">
                <div class="row align-items-end">
                    <div class="col-8">
                        <h4 class="text-white">807.839.243.323</h4>
                        <h6 class="text-white m-b-0">Pagu Anggaran (Rp)</h6>
                    </div>
                    <div class="col-4 text-right">
                        <canvas id="update-chart-1" height="50"></canvas>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <p class="text-white m-b-0"><i class="feather icon-clock text-white f-14 m-r-10"></i>update : 2:15 am</p>
            </div>
        </div>
    </div>
    <div class="col-xl-4 col-md-6">
        <div class="card bg-c-lite-green update-card">
            <div class="card-block">
                <div class="row align-items-end">
                    <div class="col-8">
                        <h4 class="text-white"><b>349.343.234.221</b></h4>
                        <h6 class="text-white m-b-0">Capaian Anggaran (Rp)</h6>
                    </div>
                    <div class="col-4 text-right">
                        <canvas id="update-chart-4" height="50"></canvas>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <p class="text-white m-b-0"><i class="feather icon-clock text-white f-14 m-r-10"></i>update : 2:15 am</p>
            </div>
        </div>
    </div>

    <div class="col-xl-4 col-md-6">
        <div class="card bg-c-green update-card">
            <div class="card-block">
                <div class="row align-items-end">
                    <div class="col-8">
                        <h4 class="text-white">43.24%</h4>
                        <h6 class="text-white m-b-0">Prosentase</h6>
                    </div>
                    <div class="col-4 text-right">
                        <canvas id="update-chart-2" height="50"></canvas>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <p class="text-white m-b-0"><i class="feather icon-clock text-white f-14 m-r-10"></i>update : 2:15 am</p>
            </div>
        </div>
    </div>
   
    <div class="col-xl-4 col-md-12">
        <div class="card">
            <div class="card-header">
                <h5>Infografis Penyerapan Anggaran Tertinggi</h5>
              
                <div class="card-header-right">
                    <ul class="list-unstyled card-option">
                        <li><i class="feather icon-maximize full-card"></i></li>
                        <li><i class="feather icon-minus minimize-card"></i></li>
                        <li><i class="feather icon-trash-2 close-card"></i></li>
                    </ul>
                </div>
            </div>
            <div class="card-block">
                <b> Penyerapan Tertinggi Anggaran < 1 M</b>
                <div style="height:300px"  id="chartdivInfo1"></div>
               
                
            </div>
        </div>
    </div>
    <div class="col-xl-4 col-md-12">
        <div class="card">
            <div class="card-header">
                <h5>Infografis Penyerapan Anggaran Tertinggi</h5>
              
                <div class="card-header-right">
                    <ul class="list-unstyled card-option">
                        <li><i class="feather icon-maximize full-card"></i></li>
                        <li><i class="feather icon-minus minimize-card"></i></li>
                        <li><i class="feather icon-trash-2 close-card"></i></li>
                    </ul>
                </div>
            </div>
            <div class="card-block">
                <b> Penyerapan  Anggaran  1 M - 20 M</b>
                <div style="height:300px"  id="chartdivInfo2"></div>
               
                
            </div>
        </div>
    </div>

    <div class="col-xl-4 col-md-12">
        <div class="card">
            <div class="card-header">
                <h5>Infografis Penyerapan Anggaran Tertinggi</h5>
              
                <div class="card-header-right">
                    <ul class="list-unstyled card-option">
                        <li><i class="feather icon-maximize full-card"></i></li>
                        <li><i class="feather icon-minus minimize-card"></i></li>
                        <li><i class="feather icon-trash-2 close-card"></i></li>
                    </ul>
                </div>
            </div>
            <div class="card-block">
                <b> Penyerapan  Anggaran > 20 M</b>
                <div style="height:300px"  id="chartdivInfo3"></div>
               
                
            </div>
        </div>
    </div>

    <div class="col-xl-12 col-md-12">
        <div class="card">
            <div class="card-header">
                <h5>Monitoring Realisasi Anggaran < 1M</h5>
              
                <div class="card-header-right">
                    <ul class="list-unstyled card-option">
                        <li><i class="feather icon-maximize full-card"></i></li>
                        <li><i class="feather icon-minus minimize-card"></i></li>
                        <li><i class="feather icon-trash-2 close-card"></i></li>
                    </ul>
                </div>
            </div>
            <div class="card-block">

                <table id="databanner-1" class="table table-bordered table-hover">

                    <thead>
                      <tr>
                        <th width="30">No</th>
                        <th>ORGANISASI PERANGKAT DAERAH</th>
                        <th>Anggaran</th>
                        <th>Realisasi</th>
                        <th>Persentase</th>
                        <th></th>
                        
                        
                      </tr>
                    </thead>
                    <tbody>
                    
                        <tr><td>1</td>
                            
                        
                            <td width=30%>UPDT I</td>
                            <td align='right'>Rp 316.145.101,-</td>
                            <td align='right'>Rp 265.452.998,-</td>
                            
                            <td width=30%>
                            
                    <div class='progress progress-xs progress-striped active'>
                      <div class='progress-bar progress-bar-black' style='width: 83.96%'></div>
                    </div>
                    </td>
                    <td>
                            <b>83.96</b> % 
                            </td>
                            
                            
                            
                            </tr>
                        <tr><td>2</td>
                            
                        
                            <td width=30%>UPDT II</td>
                            <td align='right'>Rp 4.345.430.119,-</td>
                            <td align='right'>Rp 3.136.424.579,-</td>
                            
                            <td width=30%>
                            
                    <div class='progress progress-xs progress-striped active'>
                      <div class='progress-bar progress-bar-blue' style='width: 72.17%'></div>
                    </div>
                    </td>
                    <td>
                            <b>72.17</b> % 
                            </td>
                            
                            
                            
                            </tr>

                                       </tbody>
                  </table>
                
            </div>
        </div>
    </div>

    <div class="col-xl-12 col-md-12">
        <div class="card">
            <div class="card-header">
                <h5>Monitoring Realisasi Anggaran 1M - 20 M</h5>
              
                <div class="card-header-right">
                    <ul class="list-unstyled card-option">
                        <li><i class="feather icon-maximize full-card"></i></li>
                        <li><i class="feather icon-minus minimize-card"></i></li>
                        <li><i class="feather icon-trash-2 close-card"></i></li>
                    </ul>
                </div>
            </div>
            <div class="card-block">
                <table id="databanner-2" class="table table-bordered table-hover">

                    <thead>
                      <tr>
                        <th width="30">No</th>
                        <th>ORGANISASI PERANGKAT DAERAH</th>
                        <th>Anggaran</th>
                        <th>Realisasi</th>
                        <th>Persentase</th>
                        <th></th>
                        
                        
                      </tr>
                    </thead>
                    <tbody>
                    
                        <tr><td>1</td>
                            
                        
                            <td width=30%>UPDT III</td>
                            <td align='right'>Rp 6.502.176.979,-</td>
                            <td align='right'>Rp 3.928.615.237,-</td>
                            
                            <td width=30%>
                            
                    <div class='progress progress-xs progress-striped active'>
                      <div class='progress-bar progress-bar-orange' style='width: 60.41%'></div>
                    </div>
                    </td>
                    <td>
                            <b>60.41</b> % 
                            </td>
                            
                            
                            
                            </tr>
                        <tr><td>2</td>
                            
                        
                            <td width=30%>UPDT VI</td>
                            <td align='right'>Rp 9.799.108.013,-</td>
                            <td align='right'>Rp 5.183.894.528,-</td>
                            
                            <td width=30%>
                            
                    <div class='progress progress-xs progress-striped active'>
                      <div class='progress-bar progress-bar-red' style='width: 52.9%'></div>
                    </div>
                    </td>
                    <td>
                            <b>52.9</b> % 
                            </td>
                            
                            
                            
                         </tbody>
                  </table>
             
            </div>
        </div>
    </div>

    <div class="col-xl-12 col-md-12">
        <div class="card">
            <div class="card-header">
                <h5>Monitoring Realisasi Anggaran  > 20 M</h5>
              
                <div class="card-header-right">
                    <ul class="list-unstyled card-option">
                        <li><i class="feather icon-maximize full-card"></i></li>
                        <li><i class="feather icon-minus minimize-card"></i></li>
                        <li><i class="feather icon-trash-2 close-card"></i></li>
                    </ul>
                </div>
            </div>
            <div class="card-block">
                
                <table id="databanner-3" class="table table-bordered table-hover">

                    <thead>
                      <tr>
                        <th width="30">No</th>
                        <th>ORGANISASI PERANGKAT DAERAH</th>
                        <th>Anggaran</th>
                        <th>Realisasi</th>
                        <th>Persentase</th>
                        <th></th>
                        
                        
                      </tr>
                    </thead>
                    <tbody>
                    
                        <tr><td>1</td>
                            
                        
                            <td width=30%>UPDT V</td>
                            <td align='right'>Rp 106.064.538.816,-</td>
                            <td align='right'>Rp 74.063.353.088,-</td>
                            
                            <td width=30%>
                            
                    <div class='progress progress-xs progress-striped active'>
                      <div class='progress-bar progress-bar-orange' style='width: 69.82%'></div>
                    </div>
                    </td>
                    <td>
                            <b>69.82</b> % 
                            </td>
                            
                            
                            
                            </tr>
                        <tr><td>2</td>
                            
                        
                            <td width=30%>UPDT IV</td>
                            <td align='right'>Rp 32.150.651.092,-</td>
                            <td align='right'>Rp 19.157.608.600,-</td>
                            
                            <td width=30%>
                            
                    <div class='progress progress-xs progress-striped active'>
                      <div class='progress-bar progress-bar-yellow' style='width: 59.58%'></div>
                    </div>
                    </td>
                    <td>
                            <b>59.58</b> % 
                            </td>
                            
                            
                            
                    </tbody>
                  </table>
            </div>
        </div>
    </div>
    <!-- task, page, download counter  end -->

    <!-- visitor start -->
    <div class="col-xl-12 col-md-12">
        <div class="card">
            <div class="card-header">
                <h5>Anggaran Belanja DBMPR Provinsi Jawa Barat 2020</h5>
              
                <div class="card-header-right">
                    <ul class="list-unstyled card-option">
                        <li><i class="feather icon-maximize full-card"></i></li>
                        <li><i class="feather icon-minus minimize-card"></i></li>
                        <li><i class="feather icon-trash-2 close-card"></i></li>
                    </ul>
                </div>
            </div>
            <div class="card-block">

                <div id="chartdiv"></div>
               
                
            </div>
        </div>
    </div>


       
     <!-- sale order start -->
</div>
@endsection

@section('script')
<script src="https://cdn.amcharts.com/lib/4/core.js"></script>
<script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
<script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>
<script>
    am4core.ready(function() {
    
    // Themes begin
    am4core.useTheme(am4themes_animated);
    // Themes end
    
    var chart = am4core.create("chartdiv", am4charts.PieChart3D);
    chart.hiddenState.properties.opacity = 0; // this creates initial fade-in
    
    chart.legend = new am4charts.Legend();
    
    chart.data = [
      {
        country: "Belum Cair",
        litres: 56.76
      },
      {
        country: "Pencairan",
        litres: 43.2
      },
     
    ];
    
    var series = chart.series.push(new am4charts.PieSeries3D());
    series.dataFields.value = "litres";
    series.dataFields.category = "country";
    
    }); // end am4core.ready()
</script>
@endsection