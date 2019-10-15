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
   
    <?php 
      //cek pesan
      $flash_pesan = $this->session->flashdata('pesan');
      
      if (!empty($flash_pesan)) {
    ?>
      <div class="alert alert-info alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <?php echo $flash_pesan; ?>
      </div>
    <?php } ?>

    <!-- Main content -->
    <section class="content">
    <?php 
      echo form_open_multipart($form_action) ;

      //cek pesan
      //$flash_pesan = $this->session->flashdata('pesan');
      if (!empty($pesan)) {
        

    ?>
      <div class="alert alert-danger alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <?php echo $pesan; ?>
      </div>
    <?php } ?>
      <!-- SELECT2 EXAMPLE -->
      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">Filter</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">
            <div class="col-md-4">
              <div class="form-group">
                <label>Agen</label>
                <select class="form-control select2" name="agen[]" id="agen" multiple="multiple" data-placeholder="Pilih Agen" style="width: 100%;">
                  <option value="0">semua</option>
                  <?php
                    foreach ($opsiAgen as $data) {
                  ?>
                  <option value="<?= $data->id_agen ?>">
                  <?php
                      print_r($data->nama_agen);
                    }
                  ?>
                  </option>
                </select>
              </div>
              <!-- /.form-group -->
            </div>
            <!-- /.col -->
            <div class="col-md-4">
              <div class="form-group">
                <label>Loper</label>
                <select class="form-control select2" name="loper[]" multiple="multiple" data-placeholder="Pilih Loper" style="width: 100%;">
                  <option value="0">semua</option>
                  <?php
                    foreach ($opsiLoper as $data) {
                  ?>
                  <option value= <?= $data->id_striker ?>>
                  <?php
                    print_r($data->nama_striker);
                    }
                  ?>
                  </option>
                </select>
              </div>
              <!-- /.form-group -->
            </div>
            <!-- /.col -->
            <div class="col-md-4">
              <div class="form-group">
                <label>Pelanggan</label>
                <select class="form-control select2" name="customer[]" multiple="multiple" data-placeholder="Pilih Pelanggan" style="width: 100%;">
                  <option value="0">semua</option>
                  <?php
                    foreach ($opsiCustomer as $data) {
                  ?>
                  <option value= <?= $data->id_customer ?>>
                  <?php
                    print_r($data->nama_customer);
                    }
                  ?>
                  </option>
                </select>
              </div>
              <!-- /.form-group -->
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
          <button name="submit" type="submit" class="btn btn-info pull-right" value="simpan"><i class="fa fa-search"></i> Cari</button>
        </div>
      </div>
      <?php echo form_close(); ?>
      <?php if ($tabelagen != '') { ?>
      <div class="box box-default collapsed-box">
        <div class="box-header with-border">
          <h3 class="box-title">Hsil Filter Agen</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <?php echo $tabelagen; ?>
              </div>
              <!-- /.form-group -->
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.box-body -->
      </div>
      <?php } ?>

      <?php if ($tabelloper != '') { ?>
      <div class="box box-default collapsed-box">
        <div class="box-header with-border">
          <h3 class="box-title">Hasil Filter Loper</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <?php echo $tabelloper; ?>
              </div>
              <!-- /.form-group -->
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.box-body -->
      </div>
      <?php } ?>

      <?php if ($tabelcustomer != '') { ?>
      <div class="box box-default collapsed-box">
        <div class="box-header with-border">
          <h3 class="box-title">Hasil Filter Customer</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <?php echo $tabelcustomer; ?>
              </div>
              <!-- /.form-group -->
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.box-body -->
      </div>
      <?php } ?>

      <?php
        if(isset($map)){ ?>
      <div class="row">
        <div class="col-md-12">
          <?php echo $map['html']; ?>
        </div>
      </div>
      <?php  
      }
      ?>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->