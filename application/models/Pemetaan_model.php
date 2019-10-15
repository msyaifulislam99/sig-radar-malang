<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pemetaan_model extends CI_Model {

  public function __construct()
  {
    parent::__construct();
  }


  /**
   * fungsi untuk membuat tabel submit oencarian pemetaan
   * @param string $value [description]
   */
  public function setTable($jenis='')
  {
    switch ($jenis) {
      case 'agen':
        # code...
        break;

      case 'loper':
        # code...
        break;

      case 'customer':
        # code...
        break;
      
      default:
        # code...
        break;
    }
  }

  public function tes()
  {
    $query = $this->db->query('SELECT AsText(polya) as poly FROM `tbl_daerah`');
    $hasil = $query->result();
    $data = $this->MakePolyFormat($hasil[0]->poly);
    // print_r($hasil);die;
  }

  public function GetPolygon()
  {
    $query = $this->db->query('SELECT AsText(poly) as poly,nama_daerah,agen_minim,agen_max,loper_minim,loper_max FROM `tbl_daerah`');
    $hasil = $query->result_array();

    $i = 0;
    if($this->db->affected_rows() > 0){
      foreach ($hasil as $key => $value) {
        // print_r($key);die;
        $hasil[$key]['poly'] = $this->MakePolyFormat($value['poly']);
      }
      $data = $hasil;
    // print_r($hasil);die;
    }

    return $data;
  }

  public function MakePolyFormat($value='')
  {
    $latlng = str_replace("POLYGON((", "", $value);
    $latlng = str_replace("))", "", $latlng);
    
    $asd = explode(",", $latlng);
    
    $i = 0;
    foreach ($asd as $value) {
      $latitudelangitude = str_replace(" ", ",", $value);
      $asd[$i] = "new google.maps.LatLng(".$latitudelangitude."),";
      $i++;
    }
    return $asd;
  }

  public function MakePolyArray($value='')
  {
    $latlng = str_replace("POLYGON((", "", $value);
    $latlng = str_replace("))", "", $latlng);

    $latlng = str_replace(",", "?", $latlng);
    $latlng = str_replace(" ", ",", $latlng);
    
    $asd = explode("?", $latlng);
    
    return $asd;
  }

  public function CombineCood($CoodAgen='', $CoodLoper='')
  {
    $hasil = array();
    
    $i=0;
    foreach ($CoodAgen as $key => $value) {
      $hasil[$i] = [
          "nama" => $value['nama_agen'],
          "alamat" => $value['alamat_agen'],
          "lattitude" => $value['lattitude'],
          "longitude" => $value['longitude'],
          "marker" => 'Agen.png'
      ];
      $i++;
    }
    foreach ($CoodLoper as $key => $value) {
      $hasil[$i] = [
          "nama" => $value['nama_striker'],
          "alamat" => $value['alamat_striker'],
          "lattitude" => $value['lattitude'],
          "longitude" => $value['longitude'],
          "marker" => 'Loper.png'
      ];
      $i++;
    }
    
    return $hasil;
  }
}
/* End of file agen_model.php */
/* Location: ./application/models/absen_model.php */