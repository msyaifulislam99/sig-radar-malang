<?php
defined('BASEPATH') OR exit('No direct script access allowed');
if ($dataStriker->foto != '') {
  $picture = $dataStriker->foto;
}else{
  $picture = 'default.png';
}
?>
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Striker
        <small>Radar Malang</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Striker</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="alert alert-info alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <h4><i class="icon fa fa-info"></i> Info!</h4>
        Anda dapat langsung memindahkan lokasi Loper <?php echo $dataStriker->nama_striker; ?> dengan cara menggeser marker <img src="<?php echo base_url('asset/img/marker/Loper.png');?>"> pada peta Google dibawah
      </div>
      <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="box box-primary">
            <div class="box-body box-profile">
              <img class="profile-user-img img-responsive img-circle" src="<?php echo base_url('asset/img/loper/'.$picture);?>" alt="User profile picture">

              <h3 class="profile-username text-center"><?php echo $dataStriker->nama_striker; ?></h3>

              <p class="text-muted text-center">Loper Radar Malang</p>

              <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                  <b>Marker Loper</b> <a class="pull-right"><img src="<?php echo base_url('asset/img/marker/Loper.png');?>"></a>
                </li>
                <li class="list-group-item">
                  <b>Marker Pelanggan</b> <a class="pull-right"><img src="<?php echo base_url('asset/img/marker/Customer.png');?>"></a>
                </li>
              </ul>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- About Me Box -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Tentang <?php echo $dataStriker->nama_striker; ?></h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <strong><i class="fa fa-map-marker margin-r-5"></i> Alamat</strong>
              <p class="text-muted"><?php echo $dataStriker->alamat_striker; ?></p>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Daftar Striker</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="table" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>ID Pelanggan</th>
                  <th>Nama Pelanggan</th>
                  <th>Alamat Pelanggan</th>
                  <th>Nama Striker</th>
                  <th>Edit</th>
                  <th>Hapus</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
                <tfoot>
                <tr>
                  <th>ID Pelanggan</th>
                  <th>Nama Pelanggan</th>
                  <th>Alamat Agen</th>
                  <th>Nama Striker</th>
                  <th>Edit</th>
                  <th>Hapus</th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
      <div class="row">
        <div class="col-md-12">
          <?php echo $map['html']; ?>
        </div>
      </div>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->