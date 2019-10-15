<?php
if ($dataCustomer->foto != '') {
  $picture = $dataCustomer->foto;
}else{
  $picture = 'default.png';
}
?>
<div class="row">
  <div class="col-md-4">
  </div>
  <div class="col-md-4">

    <!-- Profile Image -->
    <div class="box box-primary">
      <div class="box-body box-profile">
        <img class="profile-user-img img-responsive img-circle" src="<?php echo base_url('asset/img/customer/'.$picture);?>" alt="User profile picture">

        <h3 class="profile-username text-center"><?php echo $dataCustomer->nama_customer; ?></h3>

        <p class="text-muted text-center">Pelanggan Radar Malang</p>

        <ul class="list-group list-group-unbordered">
          <li class="list-group-item">
            <b>Marker Customer</b> <a class="pull-right"><img src="<?php echo base_url('asset/img/marker/Customer'.$urutwarna.'.png');?>"></a>
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
        <p class="text-muted"><?php echo $dataCustomer->alamat_customer; ?></p>
      </div>
      <!-- /.box-body -->
    </div>
    <!-- /.box -->
  </div>
  <!-- /.col -->
  <div class="col-md-4">
  </div>
</div>
<!-- /.row -->