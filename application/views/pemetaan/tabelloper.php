<?php
if ($dataStriker->foto != '') {
  $picture = $dataStriker->foto;
}else{
  $picture = 'default.png';
}
?>
<div class="row">
  <div class="col-md-3">

    <!-- Profile Image -->
    <div class="box box-primary">
      <div class="box-body box-profile">
        <img class="profile-user-img img-responsive img-circle" src="<?php echo base_url('asset/img/loper/'.$picture);?>" alt="User profile picture">

        <h3 class="profile-username text-center"><?php echo $dataStriker->nama_striker; ?></h3>

        <p class="text-muted text-center">Striker Radar Malang</p>

        <ul class="list-group list-group-unbordered">
          <li class="list-group-item">
            <b>Marker Loper</b> <a class="pull-right"><img src="<?php echo base_url('asset/img/marker/loper'.$urutwarna.'.png');?>"></a>
          </li>
          <li class="list-group-item">
            <b>Marker Pelanggan</b> <a class="pull-right"><img src="<?php echo base_url('asset/img/marker/Customer'.$urutwarna.'.png');?>"></a>
          </li>
        </ul>
      </div>
      <!-- /.box-body -->
    </div>
    <!-- /.box -->

    <!-- About Me Box -->
    <div class="box box-primary">
      <div class="box-header with-border">
        <h3 class="box-title">Tentang Saya</h3>
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
        <table id="tableloper<?= $urutan ?>" class="table table-bordered table-striped">
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