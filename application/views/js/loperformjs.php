<script type="text/javascript">
var table;

$(document).ready(function() {
  $("#agen").autocomplete({
    source: "<?php echo site_url('agen/get_agens')?>",
    select:function(event, ui){
            console.log(ui.item.value);
            $('#coba').val(ui.item.value);
            $("#id_agen").val(ui.item.id_agen);
          }
  });
});
function resize() {

    $('#coordinate').on('shown.bs.modal', function () {
        google.maps.event.trigger(map, 'resize');
        map.setCenter(center);
	});
}

</script>