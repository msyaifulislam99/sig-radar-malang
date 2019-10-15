<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<style>
  .color-palette {
    height: 35px;
    line-height: 35px;
    text-align: center;
  }

  .tebel{
    font-weight: 700;
  }

  .color-palette-set {
    margin-bottom: 15px;
  }

  .color-palette span {
    display: none;
  }

  .color-palette:hover span {
    display: block;
  }
  .bg-LkAk {
    background-color: #FFF95E !important;
    opacity: 0.6;
  }
  .bg-LkAp {
    background-color: #FFF611 !important;
    opacity: 0.6;
  }
  .bg-LkAl {
    background-color: #CCC50E !important;
    opacity: 0.6;
  }
  .bg-LpAk {
    background-color: #93FF50 !important;
    opacity: 0.6;
  }
  .bg-LpAp {
    background-color: #64FF03 !important;
    opacity: 0.6;
  }
  .bg-LpAl {
    background-color: #50CC02 !important;
    opacity: 0.6;
  }
  .bg-LlAk {
    background-color: #FF5F50 !important;
    opacity: 0.6;
    color: #fff;
  }
  .bg-LlAp {
    background-color: #FF1904 !important;
    opacity: 0.6;
    color: #fff;
  }
  .bg-LlAl {
    background-color: #CC1403 !important;
    opacity: 0.6;
    color: #fff;
  }

  .bs-glyphicons {
    padding-left: 0;
    padding-bottom: 1px;
    margin-bottom: 20px;
    list-style: none;
    overflow: hidden;
  }

  .bs-glyphicons li {
    float: left;
    width: 25%;
    height: 75px;
    padding: 10px;
    margin: 0 -1px -1px 0;
    font-size: 12px;
    line-height: 1.4;
    text-align: center;
    border: 1px solid #ddd;
  }

  .bs-glyphicons .glyphicon {
    margin-top: 5px;
    margin-bottom: 10px;
    font-size: 24px;
  }

  .bs-glyphicons .glyphicon-class {
    display: block;
    text-align: center;
    word-wrap: break-word; /* Help out IE10+ with class names */
  }

  .bs-glyphicons li:hover {
    background-color: rgba(86, 61, 124, .1);
  }

  @media (min-width: 768px) {
    .bs-glyphicons li {
      width: 12.5%;
    }
  }
</style>
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
      <div class="alert alert-info alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <?php echo $flash_pesan; ?>
      </div>
    <?php } ?>
      <div class="alert alert-info alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <h4><i class="icon fa fa-info"></i> Info!</h4>
        Peta Google dibawah adalah peta yang memvisualisasikan jumlah Agen dan Loper dari setiap kecamatan dengan batas minimal dan maksimal yang telah ditentukan pada menu Daerah.
      </div>
      
      <div class="row">
        <div class="col-md-4 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-blue"><i class="fa fa-truck"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Agen</span>
              <span class="info-box-number"><?php echo $count_customer; ?></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-4 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-red"><i class="fa fa-bicycle"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Loper</span>
              <span class="info-box-number"><?php echo $count_striker; ?></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- fix for small devices only -->
        <div class="clearfix visible-sm-block"></div>

        <div class="col-md-4 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-green"><i class="fa fa-users"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Pelanggan</span>
              <span class="info-box-number"><?php echo $count_customer; ?></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
      <div class="box box-default color-palette-box">
        <div class="box-header with-border">
          <h3 class="box-title"><i class="fa fa-tag"></i> Legenda</h3>
        </div>
        <div class="box-body">
          <div class="row">
            <div class="col-sm-4 col-md-4">
              <h4 class="text-center">Loper Kurang</h4>
              <div class="color-palette-set">
                <div class="bg-LkAk color-palette"><span class="tebel">Loper Kurang dengan Agen Kurang</span></div>
                <div class="bg-LkAp color-palette"><span class="tebel">Loper Kurang dangan Agen Sesuai</span></div>
                <div class="bg-LkAl color-palette"><span class="tebel">Loper Kurang dengan Agen Lebih</span></div>
              </div>
            </div>
            <!-- /.col -->
            <div class="col-sm-4 col-md-4">
              <h4 class="text-center">Loper Sesuai</h4>
              <div class="color-palette-set">
                <div class="bg-LpAk color-palette"><span class="tebel">Loper Sesuai dengan Agen Kurang</span></div>
                <div class="bg-LpAp color-palette"><span class="tebel">Loper Sesuai dangan Agen Pas</span></div>
                <div class="bg-LpAl color-palette"><span class="tebel">Loper Sesuai dengan Agen Lebih</span></div>
              </div>
            </div>
            <!-- /.col -->
            <div class="col-sm-4 col-md-4">
              <h4 class="text-center">Loper Lebih</h4>
              <div class="color-palette-set">
                <div class="bg-LlAk color-palette"><span class="tebel">Loper Lebih dengan Agen Kurang</span></div>
                <div class="bg-LlAp color-palette"><span class="tebel">Loper Lebih dangan Agen Pas</span></div>
                <div class="bg-LlAl color-palette"><span class="tebel">Loper Lebih dengan Agen Lebih</span></div>
              </div>
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
          <div class="row">
            <div class="col-sm-12">
              <ul class="bs-glyphicons text-center">
                <li>
                  <img src="<?= base_url('asset/img/marker/Agen.png') ?>">
                  <span class="glyphicon-class">Agen Marker</span>
                </li>
                <li>
                  <img src="<?= base_url('asset/img/marker/Loper.png') ?>">
                  <span class="glyphicon-class">Loper Marker</span>
                </li>
                <li>
                  <img src="<?= base_url('asset/img/marker/bataskec.png') ?>">
                  <span class="glyphicon-class">Batas Kecamatan</span>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <!-- /.box-body -->
      </div>
      <div class="row">
        <div class="col-md-12">
          <div id="map_canvas" style="width:100%; height:450px;"></div>
        </div>
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->