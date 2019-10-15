<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html>
<head>
<?php
  $this->load->view('template/head');
?>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <?php $this->load->view('template/header') ?>
  <style type="text/css">
    b {
      font-weight: 400;
    }
  </style>
  <?php $this->load->view('template/navigation') ?>

  <?php if(!empty($main_view)) {$this->load->view('main/'.$main_view);} ?>
  
  <!-- <div class="control-sidebar-bg"></div>
</div> -->
  <?php $this->load->view('template/footer') ?>
  <!-- /.content-wrapper -->
	<?php
		if (isset($js)) {
			$this->load->view('js/'.$js);
		}
	?>
</body>
</html>
