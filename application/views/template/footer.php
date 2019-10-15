<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<footer class="main-footer">
	<div class="pull-right hidden-xs">
	  <b>Version</b> Beta
	</div>
	<strong>Copyright &copy; 2016 <a href="http://radarmalang.jawapos.com/">Radar Malang</a>.</strong>
</footer>
  
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="<?php echo base_url('asset/plugins/jQuery/jquery-2.2.3.min.js');?>"></script>
<?php 
	if (isset($map)) {
		echo $map['js']; 
	}
?>
<!-- Bootstrap 3.3.6 -->
<script src="<?php echo base_url('asset/bootstrap/js/bootstrap.min.js');?>"></script>
<!-- Slimscroll -->
<script src="<?php echo base_url('asset/plugins/slimScroll/jquery.slimscroll.min.js');?>"></script>
<!-- FastClick -->
<script src="<?php echo base_url('asset/plugins/fastclick/fastclick.js');?>"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url('asset/dist/js/app.min.js');?>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url('asset/dist/js/demo.js');?>"></script>

<?php 
	if (!empty($script)) { 
		foreach ($script as $src) {
		?>
			<script src="<?php echo base_url('asset/'.$src);?>"></script>
		<?php
		}
	}

	if (isset($mapjs)) { ?>
		<script src="<?php echo $mapjs;?>"></script>
	<?php
	}
?>
