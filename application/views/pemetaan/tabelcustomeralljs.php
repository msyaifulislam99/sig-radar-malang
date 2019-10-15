//datatables
    $('#tablecustomer<?= $urutan ?>').DataTable({ 

        "processing": true, //Feature control the processing indicator.
        "serverSide": true, //Feature control DataTables' server-side processing mode.
        "order": [], //Initial no order.

        // Load data for the table's content from an Ajax source
        "ajax": {
            "url": "http://localhost/CI/customer/listcustomer",
            "type": "POST"
        },

        //Set column definition initialisation properties.
        "columnDefs": [
        { 
            "targets": [ 3,4 ], //first column / numbering column
            "orderable": false, //set not orderable
        },
        ],

    });
