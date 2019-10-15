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
      //cek pesan
      $flash_pesan = $this->session->flashdata('pesan');
      
      if (!empty($flash_pesan)) {
    ?>
      <div class="alert alert-<?php echo $flash_pesan[0]; ?> alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <?php echo $flash_pesan[1]; ?>
      </div>
    <?php } ?>
      <div class="row">
        <div class="col-md-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Daftar Daerah</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="table" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>ID Daerah</th>
                  <th>Nama Daerah</th>
                  <th>Min. Agen</th>
                  <th>Max. Agen</th>
                  <th>Min. Loper</th>
                  <th>Max. Loper</th>
                  <th>Edit</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
                <tfoot>
                <tr>
                  <th>ID Daerah</th>
                  <th>Nama Daerah</th>
                  <th>Min. Agen</th>
                  <th>Max. Agen</th>
                  <th>Min. Loper</th>
                  <th>Max. Loper</th>
                  <th>Edit</th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->