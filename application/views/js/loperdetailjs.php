<script type="text/javascript">

var table;

$(document).ready(function() {

    //datatables
    table = $('#table').DataTable({ 

        "processing": true, //Feature control the processing indicator.
        "serverSide": true, //Feature control DataTables' server-side processing mode.
        "order": [], //Initial no order.

        // Load data for the table's content from an Ajax source
        "ajax": {
            "url": "<?php echo site_url('customer/listcustomer/'.$id_striker)?>",
            "type": "POST"
        },

        //Set column definition initialisation properties.
        "columnDefs": [
        { 
            "targets": [ 3,4,5 ], //first column / numbering column
            "orderable": false, //set not orderable
        },
        ],

    });

});
$('#confirm-delete').on('show.bs.modal', function(e) {
    $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
});

function updateDatabase(newLat, newLng)
{
    // make an ajax request to a PHP file
    // on our site that will update the database
    // pass in our lat/lng as parameters
    $.post(
        "<?php echo site_url('Loper/updateDragCoordinat/'.$id_striker)?>", 
        { 
            'newLat': newLat, 
            'newLng': newLng, 
            'id': '<?php echo $id_striker ?>' 
        }
    )
    .done(function(data) {
        alert("Perubahan Lokasi " + data);
    });
}

</script>