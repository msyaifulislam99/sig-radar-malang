<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<?php echo $map['js']; ?>
</head>
<body>
		<?php
			echo form_open('Welcome/tambah');
		?>
			<input type="text" name="nama">
			<input type="hidden" name="lat" id="lat">
			<input type="hidden" name="long" id="long">
	<?php echo $map['html']; ?>
			<button name="submit" type="submit" value="simpan">simpan</button>
		<?php
			echo form_close();
		?>
</body>
<script type="text/javascript">
	function getLatLong(lat,lng){
		document.getElementById('lat').value = lat;
		document.getElementById('long').value = lng;
	}
</script>
</html>