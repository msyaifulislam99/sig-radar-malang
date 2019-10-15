<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$tit = (isset($breadcrumb)) ? '| '.$breadcrumb : '' ;
?>
	<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SIG Pemetaan Agen, Loper dan Pelanggan Radar Malang <?= $tit ?></title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo base_url('asset/bootstrap/css/bootstrap.min.css');?>">
  <!-- icon -->
  <link href="<?php echo base_url('asset/img/1.png');?>" rel='icon' type='image/x-icon'>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<?php 
if (!empty($css)) { 
  foreach ($css as $src) {
  ?>
    <link rel="stylesheet" href="<?php echo base_url('asset/'.$src);?>">
  <?php
  }
}
?>
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url('asset/dist/css/AdminLTE.min.css');?>">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo base_url('asset/dist/css/skins/_all-skins.min.css');?>">