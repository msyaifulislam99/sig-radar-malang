<script type="text/javascript">
//<![CDATA[
			
	var map; // Global declaration of the map
	var lat_longs_map = new Array();
	var markers_map = new Array();
    var iw_map;
	var myPoly = new Array();
	iw_map = new google.maps.InfoWindow();
		
	 function initialize_map() {
	
		var myLatlng = new google.maps.LatLng(-7.9917987,112.6326321);
		var myOptions = {
	  		zoom: 10,
			center: myLatlng,
	  		mapTypeId: google.maps.MapTypeId.ROADMAP}
		map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
	<?php
		$jml_poly = 0;
		foreach ($polygon as $key => $value) {
	?>
	var triangleCoords = [
	<?php
		foreach ($value['poly'] as $isi) {
			echo $isi;
		}
	?>
	];

	myPoly[<?= $key ?>] = new google.maps.Polygon({
	    paths: triangleCoords,
	    strokeColor: '#FF0000',
	    strokeOpacity: 0.2,
	    strokeWeight: 2,
	    fillColor: '#00FF00',
	    fillOpacity: 0.35,
	    name:"<?= $value['nama_daerah'] ?>"
	  });

  	myPoly[<?= $key ?>].setMap(map);
  	
	myPolyline = new google.maps.Polyline({
		path : triangleCoords,
		geodesic : true,
		strokeColor: '#0017FF',
		strokeOpacity: 1.0,
		strokeWeight: 2
	});

	myPolyline.setMap(map);

	google.maps.event.addListener(myPoly[<?= $key ?>], "click", function(event) {
		iw_map.setContent(this.name);
		iw_map.setPosition(event.latLng);
		iw_map.open(map, this);

	});

	<?php
			$jml_poly++;
		}
	?>
	var jumlah_poly = <?= $jml_poly ?>;

	<?php
		$q = 0;
		foreach ($CoodAgen as $value) {
			if ($value['lattitude'] != '' && $value['longitude'] != '') {
				$lokasi = "new google.maps.LatLng(".$value['lattitude'].", ".$value['longitude'].")";
				$pesan = $value['nama_agen']."<br>".$value['alamat_agen'];
			?>
				var marker_icon = {
					url: "<?= base_url('asset/img/marker/Agen.png') ?>"
				};
				marker_<?= $q ?> = new google.maps.Marker({
				    position: <?= $lokasi ?>,
				    map: map,
				    icon: marker_icon,
				    animation: google.maps.Animation.DROP
				});

				marker_<?= $q ?>.set("content", "<?= $pesan ?>")
				google.maps.event.addListener(marker_<?= $q ?>, "click", function(event) {
					iw_map.setContent(this.get("content"));
					iw_map.open(map,this);
				})
			<?php
				$q++;
			}
		}

		foreach ($CoodLoper as $value) {
			if ($value['lattitude'] != '' && $value['longitude'] != '') {
				$lokasi = "new google.maps.LatLng(".$value['lattitude'].", ".$value['longitude'].")";
				$pesan = $value['nama_striker']."<br>".$value['alamat_striker'];
			?>
				var marker_icon = {
					url: "<?= base_url('asset/img/marker/Loper.png') ?>"
				};
				marker_<?= $q ?> = new google.maps.Marker({
				    position: <?= $lokasi ?>,
				    map: map,
				    icon: marker_icon,
				    animation: google.maps.Animation.DROP
				});

				marker_<?= $q ?>.set("content", "<?= $pesan ?>")
				google.maps.event.addListener(marker_<?= $q ?>, "click", function(event) {
					iw_map.setContent(this.get("content"));
					iw_map.open(map,this);
				})
			<?php
				$q++;
			}
		}
	?>
		var lokasiAgen = [
		<?php
			foreach ($CoodAgen as $value) {
				if ($value['lattitude'] != '' && $value['longitude'] != '') {
			?>
					
				new google.maps.LatLng(<?= $value['lattitude'].",".$value['longitude'] ?>), 
			<?php
				}
			}
		?>
		];

		var lokasiLoper = [
		<?php
			foreach ($CoodLoper as $value) {
				if ($value['lattitude'] != '' && $value['longitude'] != '') {
			?>
					
				new google.maps.LatLng(<?= $value['lattitude'].",".$value['longitude'] ?>), 
			<?php
				}
			}
		?>
		];

		var marker, i;

		var markerCnt = 0;
		var markerJml = 0;
		var markerJmlAgen = new Array();
		var markerJmlLoper = new Array();
		var poly_val = new Array();

		<?php
		for ($i=0; $i < $jml_poly; $i++) { 
		?>
		poly_val[<?= $i ?>] = new Array();
		poly_val[<?= $i ?>]['agen_minim'] = <?= $polygon[$i]['agen_minim']?> ;
		poly_val[<?= $i ?>]['agen_max'] = <?= $polygon[$i]['agen_max']?> ;
		poly_val[<?= $i ?>]['loper_minim'] = <?= $polygon[$i]['loper_minim']?> ;
		poly_val[<?= $i ?>]['loper_max'] = <?= $polygon[$i]['loper_max']?> ;
		markerJmlLoper[<?= $i ?>] = 0;
		markerJmlAgen[<?= $i ?>] = 0;
		<?php
		}
		?>
		
		

		for (i = 0; i < lokasiLoper.length; i++) {  
		  <?php
		  	for ($i=0; $i < $jml_poly; $i++) { 
		  		# code...
			?>
			  if (google.maps.geometry.poly.containsLocation(lokasiLoper[i], myPoly[<?= $i ?>])) {
		        markerJmlLoper[<?= $i ?>]++;
		      }
		  	<?php
		  	}
		  ?>
		}
		for (i = 0; i < lokasiAgen.length; i++) {  
		  <?php
		  	for ($i=0; $i < $jml_poly; $i++) { 
		  		# code...
			?>
			  if (google.maps.geometry.poly.containsLocation(lokasiAgen[i], myPoly[<?= $i ?>])) {
		        markerJmlAgen[<?= $i ?>]++;
		      }
		  	<?php
		  	}
		  ?>
		}

		for(i = 0; i < jumlah_poly; i++){
			console.log(markerJmlLoper[0]);
			if(markerJmlLoper[i] < poly_val[i]['loper_minim']){
				if (markerJmlAgen[i] < poly_val[i]['agen_minim']) {
					myPoly[i].setOptions({
			            strokeColor: "#00FF00",
			          strokeOpacity: 1.0,
			          strokeWeight: 3,
			          map: map,
			          fillColor: "#FFF95E",
			          fillOpacity: 0.6
			          });
				}else if(markerJmlAgen[i] >= poly_val[i]['agen_minim'] && markerJmlAgen[i] <= poly_val[i]['agen_max']){
					myPoly[i].setOptions({
			            strokeColor: "#00FF00",
			          strokeOpacity: 1.0,
			          strokeWeight: 3,
			          map: map,
			          fillColor: "#FFF611",
			          fillOpacity: 0.6
			          });
				}else{
					myPoly[i].setOptions({
			            strokeColor: "#00FF00",
			          strokeOpacity: 1.0,
			          strokeWeight: 3,
			          map: map,
			          fillColor: "#CCC50E",
			          fillOpacity: 0.6
			          });
				}
			}else if(markerJmlLoper[i] >= poly_val[i]['loper_minim'] && markerJmlLoper[i] <= poly_val[i]['loper_max']){
				if (markerJmlAgen[i] < poly_val[i]['agen_minim']) {
					myPoly[i].setOptions({
			            strokeColor: "#00FF00",
			          strokeOpacity: 1.0,
			          strokeWeight: 3,
			          map: map,
			          fillColor: "#93FF50",
			          fillOpacity: 0.6
			          });
				}else if(markerJmlAgen[i] >= poly_val[i]['agen_minim'] && markerJmlAgen[i] <= poly_val[i]['agen_max']){
					myPoly[i].setOptions({
			            strokeColor: "#00FF00",
			          strokeOpacity: 1.0,
			          strokeWeight: 3,
			          map: map,
			          fillColor: "#64FF03",
			          fillOpacity: 0.6
			          });
				}else{
					myPoly[i].setOptions({
			            strokeColor: "#00FF00",
			          strokeOpacity: 1.0,
			          strokeWeight: 3,
			          map: map,
			          fillColor: "#50CC02",
			          fillOpacity: 0.6
			          });
				}
			}else{
				if (markerJmlAgen[i] < poly_val[i]['agen_minim']) {
					myPoly[i].setOptions({
			            strokeColor: "#00FF00",
			          strokeOpacity: 1.0,
			          strokeWeight: 3,
			          map: map,
			          fillColor: "#FF5F50",
			          fillOpacity: 0.6
			          });
				}else if(markerJmlAgen[i] >= poly_val[i]['agen_minim'] && markerJmlAgen[i] <= poly_val[i]['agen_max']){
					myPoly[i].setOptions({
			            strokeColor: "#00FF00",
			          strokeOpacity: 1.0,
			          strokeWeight: 3,
			          map: map,
			          fillColor: "#FF1904",
			          fillOpacity: 0.6
			          });
				}else{
					myPoly[i].setOptions({
			            strokeColor: "#00FF00",
			          strokeOpacity: 1.0,
			          strokeWeight: 3,
			          map: map,
			          fillColor: "#CC1403",
			          fillOpacity: 0.6
			          });
				}
			}
		}
		
	}


	google.maps.event.addDomListener(window, "load", initialize_map);
</script>