<?php
defined('BASEPATH') OR exit('No direct script access allowed');
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
    <?php 
      $attr = array('class' => 'form-horizontal');
      echo form_open_multipart($form_action,$attr) ;

      //cek pesan
      //$flash_pesan = $this->session->flashdata('pesan');
      if (!empty($pesan)) {
        

    ?>
      <div class="alert alert-danger alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <?php echo $pesan; ?>
      </div>
    <?php } ?>
      <div class="alert alert-info alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <h4><i class="icon fa fa-info"></i> Info!</h4>
        Apabila anda kesulitan untuk menentukan koordinat, silahkan klik tombol  <button type="button" class="btn btn-warning btn-sm"><i class="fa fa-map-marker"></i></button>, kemudian klik lokasi dimana agen berada. Maka Lattitude dan Longitude akan terisi otomatis
      </div>
      <div class="row">
        <div class="col-md-12">
          <!-- Horizontal Form -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Tambah Data</h3>
            </div>
            <!-- /.box-header -->
              <div class="box-body">
                <div class="form-group">
                  <label for="id_agen" class="col-sm-2 control-label">ID</label>

                  <div class="col-sm-10">
                    <input class="form-control" placeholder="Generate By System.." disabled="" type="text" name="id_agen" id="id_agen" value="<?php echo set_value('id_agen', isset($form_value['id_agen']) ? $form_value['id_agen'] : ''); ?>">
                  </div>
                </div>
                <div class="form-group">
                  <label for="nama_agen" class="col-sm-2 control-label">Nama Agen *</label>

                  <div class="col-sm-10">
                    <input class="form-control" id="nama_agen" name="nama_agen" placeholder="Nama" type="text" value="<?php echo set_value('nama_agen', isset($form_value['nama_agen']) ? $form_value['nama_agen'] : ''); ?>">
                    <?php echo form_error('nama_agen', '<span class="badge bg-red">', '</span>');?>
                  </div>
                </div>
                <div class="form-group">
                  <label for="alamat_agen" class="col-sm-2 control-label">Alamat</label>

                  <div class="col-sm-10">
                    <textarea class="form-control" rows="3" placeholder="Alamat" name="alamat_agen"><?php echo set_value('alamat_agen', isset($form_value['alamat_agen']) ? $form_value['alamat_agen'] : ''); ?></textarea>
                    <?php echo form_error('alamat_agen', '<span class="badge bg-red">', '</span>');?>
                  </div>
                </div>
                <div class="form-group">
                  <label for="koordinat" class="col-sm-2 control-label">Koordinat(Lat,Long)</label>

                  <div class="col-sm-4">
                    <input class="form-control" id="lat" name="lat" placeholder="Latitude" type="text" value="<?php echo set_value('lat', isset($form_value['lattitude']) ? $form_value['lattitude'] : ''); ?>">
                    <?php echo form_error('lat', '<span class="badge bg-red">', '</span>');?>
                  </div>
                  <div class="col-sm-4">
                    <input class="form-control" id="long" name="long" placeholder="Longitude" type="text" value="<?php echo set_value('long', isset($form_value['longitude']) ? $form_value['longitude'] : ''); ?>">
                    <?php echo form_error('long', '<span class="badge bg-red">', '</span>');?>
                  </div>
                  <div class="col-sm-2">
                    <button type="button" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#coordinate" onclick="resize()"><i class="fa fa-map-marker"></i></button>
                  </div>
                </div>
                <div class="form-group">
                  <label for="picture" class="col-sm-2 control-label">Foto</label>

                  <div class="col-sm-10">
                    <input id="picture" name="picture" type="file">
                    <?php echo form_error('picture', '<span class="badge bg-red">', '</span>');?>
                  </div>
                </div>
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button name="submit" type="submit" class="btn btn-success pull-right" value="simpan">Save</button>
              </div>
          </div>
          <!-- /.box -->
        </div>
      </div>
      <?php echo form_close(); ?>

      <!-- Modal -->
      <div id="coordinate" class="modal fade" role="dialog">
        <div class="modal-dialog">

          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Get Coordinate</h4>
            </div>
            <div class="modal-body">
              <p>Klik ditempat Agen Berada</p>
              <?php echo $map['html']; ?>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
            </div>
          </div>

        </div>
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <script type="text/javascript">
    function getLatLong(lat,lng){
      // alert('You just clicked at: ' + lat + ', ' + lng);
      $("#lat").val(lat);
      $("#long").val(lng);
    }
  </script>