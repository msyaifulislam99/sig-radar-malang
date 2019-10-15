<script type="text/javascript">
$(".select2").select2({
  tags: true
})
<?php
echo $tabelpemetaanjs;
?>
$('#confirm-delete').on('show.bs.modal', function(e) {
    $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
});
</script>