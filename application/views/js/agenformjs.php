<script type="text/javascript">
	function resize() {

	    $('#coordinate').on('shown.bs.modal', function () {
	        google.maps.event.trigger(map, 'resize');
	        map.setCenter(center);
		});
	}
</script>