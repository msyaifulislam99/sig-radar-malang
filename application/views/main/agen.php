<?php
defined('BASEPATH') OR exit('No direct script access allowed');
if ($dataAgen->foto != '') {
  $picture = $dataAgen->foto;
}else{
  $picture = 'default.png';
}
?>
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <?php  echo $breadcrumb; ?>
        <small>Radar Malang</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Widgets</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="alert alert-info alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <h4><i class="icon fa fa-info"></i> Info!</h4>
        Anda dapat langsung memindahkan lokasi Agen <?php echo $dataAgen->nama_agen; ?> dengan cara menggeser marker <img src="<?php echo base_url('asset/img/marker/Agen.png');?>"> pada peta Google dibawah
      </div>
      <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="box box-primary">
            <div class="box-body box-profile">
              <img class="profile-user-img img-responsive img-circle" src="<?php echo base_url('asset/img/agen/'.$picture);?>" alt="User profile picture">

              <h3 class="profile-username text-center"><?php echo $dataAgen->nama_agen; ?></h3>

              <p class="text-muted text-center">Agen Radar Malang</p>

              <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                  <b>Marker Agen</b> <a class="pull-right"><img src="<?php echo base_url('asset/img/marker/Agen.png');?>"></a>
                </li>
                <li class="list-group-item">
                  <b>Marker Loper</b> <a class="pull-right"><img src="<?php echo base_url('asset/img/marker/Loper.png');?>"></a>
                </li>
              </ul>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- About Me Box -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Tentang <?php echo $dataAgen->nama_agen; ?></h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <strong><i class="fa fa-map-marker margin-r-5"></i> Alamat</strong>
              <p class="text-muted"><?php echo $dataAgen->alamat_agen; ?></p>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Daftar Loper</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="table" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>ID Striker</th>
                  <th>Nama Striker</th>
                  <th>Alamat Striker</th>
                  <th>Nama Agen</th>
                  <th>Jatah</th>
                  <th>Edit</th>
                  <th>Hapus</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
                <tfoot>
                <tr>
                  <th>ID Striker</th>
                  <th>Nama Striker</th>
                  <th>Alamat Striker</th>
                  <th>Nama Agen</th>
                  <th>Jatah</th>
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
  <div class="modal modal-default" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
            Confirm
        </div>
        <div class="modal-body">
            Apakah anda yakin akan menghapus data ini ?
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
            <a class="btn btn-danger btn-ok">Hapus</a>
        </div>
      </div>
    </div>
  </div>