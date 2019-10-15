<?php
defined('BASEPATH') OR exit('No direct script access allowed');
if ($dataCustomer->foto != '') {
  $picture = $dataCustomer->foto;
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
        <li class="active"><?php  echo $breadcrumb; ?></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="alert alert-info alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <h4><i class="icon fa fa-info"></i> Info!</h4>
        Anda dapat langsung memindahkan lokasi Pelanggan <?php echo $dataCustomer->nama_customer; ?> dengan cara menggeser marker <img src="<?php echo base_url('asset/img/marker/Customer.png');?>"> pada peta Google dibawah
      </div>
      <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="box box-primary">
            <div class="box-body box-profile">
              <img class="profile-user-img img-responsive img-circle" src="<?php echo base_url('asset/img/customer/'.$picture);?>" alt="User profile picture">

              <h3 class="profile-username text-center"><?php echo $dataCustomer->nama_customer; ?></h3>

              <p class="text-muted text-center">Pelanggan Radar Malang</p>

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
        <div class="col-md-9">
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
<script type="text/javascript">
  function updateDatabase(newLat, newLng)
  {
      // make an ajax request to a PHP file
      // on our site that will update the database
      // pass in our lat/lng as parameters
      $.post(
          "<?php echo site_url('Customer/updateDragCoordinat/'.$id_customer)?>", 
          { 
              'newLat': newLat, 
              'newLng': newLng, 
              'id': '<?php echo $id_customer ?>' 
          }
      )
      .done(function(data) {
          alert("Perubahan Lokasi " + data);
      });
  }
</script>