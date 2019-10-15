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
      <div class="row">
        <div class="col-md-12">
          <!-- Horizontal Form -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Edit Data</h3>
            </div>
            <!-- /.box-header -->
              <div class="box-body">
                <div class="form-group">
                  <label for="id_daerah" class="col-sm-2 control-label">ID</label>

                  <div class="col-sm-10">
                    <input class="form-control" placeholder="Generate By System.." disabled="" type="text" name="id_daerah" id="id_daerah" value="<?php echo set_value('id_daerah', isset($form_value['id_daerah']) ? $form_value['id_daerah'] : ''); ?>">
                  </div>
                </div>
                <div class="form-group">
                  <label for="nama_daerah" class="col-sm-2 control-label">Nama Daerah *</label>

                  <div class="col-sm-10">
                    <input class="form-control" id="nama_daerah" name="nama_daerah" placeholder="Nama Daerah" type="text" value="<?php echo set_value('nama_daerah', isset($form_value['nama_daerah']) ? $form_value['nama_daerah'] : ''); ?>">
                    <?php echo form_error('nama_daerah', '<span class="badge bg-red">', '</span>');?>
                  </div>
                </div>
                <div class="form-group">
                  <label for="agen_minim" class="col-sm-2 control-label">Jumlah Min. Agen *</label>

                  <div class="col-sm-10">
                    <input class="form-control" id="agen_minim" name="agen_minim" placeholder="Jumlah Minimal Agen" type="text" value="<?php echo set_value('agen_minim', isset($form_value['agen_minim']) ? $form_value['agen_minim'] : ''); ?>">
                    <?php echo form_error('agen_minim', '<span class="badge bg-red">', '</span>');?>
                  </div>
                </div>
                <div class="form-group">
                  <label for="agen_max" class="col-sm-2 control-label">Jumlah Max. Agen *</label>

                  <div class="col-sm-10">
                    <input class="form-control" id="agen_max" name="agen_max" placeholder="Jumlah Maximal Agen" type="text" value="<?php echo set_value('agen_max', isset($form_value['agen_max']) ? $form_value['agen_max'] : ''); ?>">
                    <?php echo form_error('agen_max', '<span class="badge bg-red">', '</span>');?>
                  </div>
                </div>
                <div class="form-group">
                  <label for="loper_minim" class="col-sm-2 control-label">Jumlah Min. Loper *</label>

                  <div class="col-sm-10">
                    <input class="form-control" id="loper_minim" name="loper_minim" placeholder="Jumlah Minimal Loper" type="text" value="<?php echo set_value('loper_minim', isset($form_value['loper_minim']) ? $form_value['loper_minim'] : ''); ?>">
                    <?php echo form_error('loper_minim', '<span class="badge bg-red">', '</span>');?>
                  </div>
                </div>
                <div class="form-group">
                  <label for="loper_max" class="col-sm-2 control-label">Jumlah Max. Loper *</label>

                  <div class="col-sm-10">
                    <input class="form-control" id="loper_max" name="loper_max" placeholder="Nama Daerah" type="text" value="<?php echo set_value('loper_max', isset($form_value['loper_max']) ? $form_value['loper_max'] : ''); ?>">
                    <?php echo form_error('loper_max', '<span class="badge bg-red">', '</span>');?>
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
      <div class="row">
        <div class="col-md-12">
          <?php echo $map['html']; ?>
        </div>
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->