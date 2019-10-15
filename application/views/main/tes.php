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
      <?php 
        // print_r($form_value['id_agen']."<br>");
      ?>
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
                  <label for="id_striker" class="col-sm-2 control-label">ID</label>

                  <div class="col-sm-10">
                    <input class="form-control" placeholder="Generate By System.." disabled="" type="text" name="id_striker" id="id_striker" value="<?php echo set_value('id_striker', isset($form_value['id_striker']) ? $form_value['id_striker'] : ''); ?>">
                  </div>
                </div>
                <div class="form-group">
                  <label for="nama_striker" class="col-sm-2 control-label">Nama Loper *</label>

                  <div class="col-sm-10">
                    <input class="form-control" id="nama_striker" name="nama_striker" placeholder="Nama Striker" type="text" value="<?php echo set_value('nama_striker', isset($form_value['nama_striker']) ? $form_value['nama_striker'] : ''); ?>">
                    <?php echo form_error('nama_striker', '<span class="badge bg-red">', '</span>');?>
                  </div>
                </div>
                <div class="form-group">
                  <label for="agen" class="col-sm-2 control-label">Nama Agen *</label>

                  <div class="col-sm-10">
                    <input class="form-control" id="agen" name="nama_agen" placeholder="Nama Agen" type="text" value="<?php echo set_value('nama_striker', isset($form_value['nama_agen']) ? $form_value['nama_agen'] : ''); ?>">
                    <input type="hidden" name="id_agen" id="id_agen" value="<?php echo set_value('id_agen', isset($form_value['id_agen']) ? $form_value['id_agen'] : ''); ?>">
                    <?php echo form_error('id_agen', '<span class="badge bg-red">', '</span>');?>
                  </div>
                </div>
                <div class="form-group">
                  <label for="nama_striker" class="col-sm-2 control-label">Jatah</label>

                  <div class="col-sm-10">
                    <input class="form-control" id="jatah" name="jatah" placeholder="Jatah Koran" type="text" value="<?php echo set_value('jatah', isset($form_value['jatah']) ? $form_value['jatah'] : ''); ?>">
                    <?php echo form_error('jatah', '<span class="badge bg-red">', '</span>');?>
                  </div>
                </div>
                <div class="form-group">
                  <label for="alamat_striker" class="col-sm-2 control-label">Alamat</label>

                  <div class="col-sm-10">
                    <textarea class="form-control" rows="3" placeholder="Alamat" name="alamat_striker"><?php echo set_value('alamat_striker', isset($form_value['alamat_striker']) ? $form_value['alamat_striker'] : ''); ?></textarea>
                    <?php echo form_error('alamat_striker', '<span class="badge bg-red">', '</span>');?>
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
                    <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#coordinate"><i class="fa fa-map-marker"></i></button>
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
                <button name="submit" type="submit" class="btn btn-info pull-right" value="simpan">Save</button>
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
              <p>Klik ditempat Loper Berada</p>
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
      alert('You just clicked at: ' + lat + ', ' + lng);
      $("#lat").val(lat);
      $("#long").val(lng);
    }
  </script>