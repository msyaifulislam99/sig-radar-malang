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
      <div class="alert alert-info alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <?php echo $flash_pesan; ?>
      </div>
    <?php } ?>
      <div class="row">
        <div class="col-lg-4 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3><?php echo $count_agen; ?></h3>

              <p>Agen</p>
            </div>
            <div class="icon">
              <i class="ion ion-man"></i>
            </div>
            <?php echo anchor('agen','<i class="fa fa-arrow-circle-right"></i> More info</a>',array('class' => 'small-box-footer')); ?>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3><?php echo $count_striker; ?></h3>

              <p>Striker</p>
            </div>
            <div class="icon">
              <i class="ion ion-android-walk"></i>
            </div>
            <?php echo anchor('loper','<i class="fa fa-arrow-circle-right"></i> More info</a>',array('class' => 'small-box-footer')); ?>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3><?php echo $count_customer; ?></h3>

              <p>Pelanggan</p>
            </div>
            <div class="icon">
              <i class="ion ion-bag"></i>
            </div>
            <?php echo anchor('customer','<i class="fa fa-arrow-circle-right"></i> More info</a>',array('class' => 'small-box-footer')); ?>
          </div>
        </div>
        <!-- ./col -->
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->