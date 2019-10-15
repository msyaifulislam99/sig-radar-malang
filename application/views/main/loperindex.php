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
          <?php 
            if ($level=='1') {
              echo " ".anchor('loper/tambah','Tambah Data',array('class' => 'btn btn-block btn-success btn-sm')); 
            }
          ?>
          
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Daftar Striker</h3>
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