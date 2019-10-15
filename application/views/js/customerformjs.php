<script type="text/javascript">

$(document).ready(function() {
  $("#striker").autocomplete({
    source: "<?php echo site_url('loper/get_lopers')?>",
    select:function(event, ui){
    		console.log(ui.item);
            $("#id_striker").val(ui.item.id_striker);
          }
  });
});

function getLatLong(lat,lng){
	alert('You just clicked at: ' + lat + ', ' + lng);
	$("#lat").val(lat);
	$("#long").val(lng);
}
function resize() {

    $('#coordinate').on('shown.bs.modal', function () {
        google.maps.event.trigger(map, 'resize');
        map.setCenter(center);
  });
}

</script>