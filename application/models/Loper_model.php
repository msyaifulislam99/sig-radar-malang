<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Loper_model extends CI_Model {

  public $db_tabel    = 'tbl_striker';
  public $per_halaman = 0;
  public $offset      = 0;

  var $table = 'tbl_striker';
  var $column_order = array('id_striker', 'nama_striker','alamat_striker','jatah'); //set column field database for datatable orderable
  var $column_search = array('id_striker','nama_striker','alamat_striker','jatah'); //set column field database for datatable searchable 
  var $order = array('id_striker' => 'asc'); // default order 

  public $urutanloper = 0;
  /**
   * fungsi untuk validasi form
   */
  private function setRules()
  {
    $form = array(
            array(
                'field' => 'id_agen',
                'label' => 'ID Agen',
                'rules' => "required|numeric|callback_is_idagen_exist"
            ),
            array(
                'field' => 'nama_striker',
                'label' => 'Nama Agen',
                'rules' => 'required|max_length[25]'
            ),
            array(
                'field' => 'alamat_agen',
                'label' => 'Alamat Agen',
                'rules' => 'max_length[50]'
            ),
            array(
                'field' => 'jatah',
                'label' => 'Jatah Striker',
                'rules' => 'numeric'
            ),
    );
    return $form;
  }

  /**
   * fungsi untuk validasi form sebelum penyimpanan
   * @return boolean sukses untuk lolos
   */
  public function validasi()
  {
    $form = $this->setRules();
    $this->form_validation->set_rules($form);

    if ($this->form_validation->run()) {
      return TRUE;
    }else{
      return FALSE;
    }
  }

  /**
   * fungsi untuk auto complete di form customer untuk mendapatkan loper
   * @param  [type] $q [description]
   * @return json
   */
  public function get_loper($q = '', $isJson = TRUE)
  {
    $query = $this->db->select('*')
                      ->like('nama_striker',$q)
                      ->get($this->table);
    if ($query->num_rows() > 0) {
      if ($isJson) {

        foreach ($query->result_array() as $row) {
          $new_row['label']=htmlentities(stripslashes($row['id_striker']." - ".$row['nama_striker'] ));
          $new_row['value']=htmlentities(stripslashes($row['nama_striker']));
          $new_row['id_striker']=htmlentities(stripslashes($row['id_striker']));
          $row_set[] = $new_row;
        }
        echo json_encode($row_set);
      }else{
        return $query->result();
      }
    }
  }

  /**
   * fungsi tambah data, insert data agen ke database
   * @return boleean true apabila sukses
   */
  public function tambah()
  {
    $data = array(
        'id_striker' => $this->input->post('id_striker'),
        'id_agen' => $this->input->post('id_agen'),
        'nama_striker' => $this->input->post('nama_striker'),
        'jatah' => $this->input->post('jatah'),
        'alamat_striker' => $this->input->post('alamat_striker')
    );
    $lokasi = "GeomFromText('POINT(".$this->input->post('lat')." ".$this->input->post('long').")',0)";
    $sql = "insert into ".$this->table." (id_agen,nama_striker,alamat_striker,jatah,lokasi) 
            VALUES ('".$data['id_agen']."','".$data['nama_striker']."','".$data['alamat_striker']."','".$data['jatah']."',$lokasi)";
    
    // $this->db->insert($this->db_tabel, $data);

    $this->db->query($sql);
    if($this->db->affected_rows() > 0)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
  }

  private function set_upload_options($id)
  {
    $config = array();
    $config['upload_path'] = './asset/img/loper/';
    $config['allowed_types'] = 'gif|jpg|png';
    $config['max_size']      = '0';
    $config['overwrite']     = TRUE;
    $config['file_name']     = $id;

    return $config;
  }

  /**
   * fungsi untuk upload foto
   * @param  $id id untuk update database
   * @return boolean
   */
  public function upload_foto($id)
  {
    $this->load->library('upload');
    $this->upload->initialize($this->set_upload_options($id));

    if ($this->upload->do_upload('picture')) 
    {
      $this->edit($id,$this->upload->data('file_name'));
      return TRUE;
    }
    else
    {
      return FALSE;
    }
  }

  private function _get_datatables_query($id_agen = '')
  {
    
    $this->db->select('tbl_striker.*, tbl_agen.nama_agen')
              ->from($this->table)
              ->join('tbl_agen', 'tbl_agen.id_agen = tbl_striker.id_agen');

    if ($id_agen != '') {
      $this->db->where('tbl_striker.id_agen',$id_agen);
    }

    $i = 0;
  
    foreach ($this->column_search as $item) // loop column 
    {
      if($_POST['search']['value']) // if datatable send POST for search
      {
        
        if($i===0) // first loop
        {
          $this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
          $this->db->like($item, $_POST['search']['value']);
        }
        else
        {
          $this->db->or_like($item, $_POST['search']['value']);
        }

        if(count($this->column_search) - 1 == $i) //last loop
          $this->db->group_end(); //close bracket
      }
      $i++;
    }
    
    if(isset($_POST['order'])) // here order processing
    {
      $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
    } 
    else if(isset($this->order))
    {
      $order = $this->order;
      $this->db->order_by(key($order), $order[key($order)]);
    }
  }

  function get_datatables($id_agen = '')
  {
    $this->_get_datatables_query($id_agen);
    if($_POST['length'] != -1)
    $this->db->limit($_POST['length'], $_POST['start']);
    $query = $this->db->get();
    return $query->result();
  }

  function count_filtered($id_agen = '')
  {
    $this->_get_datatables_query($id_agen);
    $query = $this->db->get();
    return $query->num_rows();
  }

  public function count_all($id_agen = '')
  {
    if ($id_agen!='') {
      $this->_get_datatables_query($id_agen);
      $query = $this->db->get();
      return $query->num_rows();
    }
    $this->db->from($this->table);
    return $this->db->count_all_results();
  }

  /**
   * pencarian data agen dengan id, untuk edit dan detail
   * @param  number $id_striker id agen
   * @return object data agen
   */
  public function cari($id_striker)
  {
      return $this->db->select('tbl_striker.*, X(tbl_striker.lokasi) AS lattitude, Y(tbl_striker.lokasi) AS longitude, tbl_agen.id_agen, tbl_agen.nama_agen')
                    ->from($this->db_tabel)
                    ->join('tbl_agen', 'tbl_agen.id_agen = tbl_striker.id_agen')
                    ->where('id_striker', $id_striker)
                    ->limit(1)
                    ->get()
                    ->row();
  }

  /**
   * fungsi perubahan data agen database
   * @param  number $id_striker id agen
   * @return boolean
   */
  public function edit($id_striker, $foto='')
  {
    $data = array(
        'nama_striker' => $this->input->post('nama_striker'),
        'id_agen' => $this->input->post('id_agen'),
        'alamat_striker' => $this->input->post('alamat_striker'),
        'jatah' => $this->input->post('jatah')
    );
    
    if ($foto != '') {
      $data['foto'] = ", foto='".$foto."'";
    }else{
      $data['foto'] = "";
    }

    $this->db->trans_start();

    $lokasi = "GeomFromText('POINT(".$this->input->post('lat')." ".$this->input->post('long').")',0)";
    $sql = "UPDATE ".$this->table." SET 
        nama_striker='".$data['nama_striker']."', 
        id_agen='".$data['id_agen']."', 
        jatah='".$data['jatah']."', 
        alamat_striker='".$data['alamat_striker']."', 
        lokasi=".$lokasi." ".$data['foto']."
        WHERE id_striker='".$id_striker."'";
    $this->db->query($sql);

    // $this->db->where('id_striker', $id_striker);
    // $this->db->update($this->db_tabel, $data);

    $this->db->trans_complete();
    
    if($this->db->affected_rows() > 0)
    {
        return TRUE;
    }
    else
    {
      if ($this->db->trans_status() === FALSE) {
        return FALSE;
      }else{
        return TRUE;
      }
    }
  }

  /**
   * penghapusan data agen
   * @param  number $id_striker id agen
   * @return boolean
   */
  public function hapus($id_striker)
  {
    $this->db->where('id_striker', $id_striker)->delete($this->db_tabel);

    if($this->db->affected_rows() > 0)
    {
      return TRUE;
    }
    else
    {
      return FALSE;
    }
  }
  /**
   * untuk mendapatkan data marker loper
   * @param  string  $data     [description]
   * @param  boolean $isDetail [description]
   * @return [type]            [description]
   */
  public function loper_marker($isDetail = TRUE, $data='', $isSugesti = FALSE)
  {
    if ($isSugesti) {
      # code...
      if ($data != 'semua') {
        if ($data->lattitude != '' && $data->longitude != '') {

          $marker = array();
          $marker['position'] = $data->lattitude.', '.$data->longitude;
          $marker['infowindow_content'] = $data->id_striker."-".$data->nama_striker."<br>".$data->alamat_striker;
          $marker['draggable'] = FALSE;
          $marker['icon'] = base_url('asset/img/marker/Loper'.$this->urutanloper.'.png');
          $this->googlemaps->add_marker($marker);
        }
      }else{
        $dataLoper = $this->GetCoorAllLoper();

        foreach ($dataLoper as $key => $value) {
          if ($value['lattitude'] != '' && $value['longitude'] != '') {
            
            $marker = array();
            $marker['position'] = $value['lattitude'].', '.$value['longitude'];
            $marker['infowindow_content'] = $value['nama_striker']."<br>".$value['alamat_striker'];
            $marker['icon'] = base_url('asset/img/marker/Loper'.$this->urutanloper.'.png');
            $this->googlemaps->add_marker($marker);
          }
        }
      }
    }else{

      if ($isDetail) {
        if ($data->lattitude != '' && $data->longitude != '') {
          $position = $data->lattitude.', '.$data->longitude;
        }else{
          $position = '-7.979178376432889, 112.62477099895477';
        }
        $marker = array();
        $marker['position'] = $position;
        $marker['infowindow_content'] = $data->id_striker."-".$data->nama_striker."<br>".$data->alamat_striker."<br>jatah : ".$data->jatah;
        $marker['draggable'] = TRUE;
        $marker['animation'] = 'DROP';
        $marker['ondragend'] = 'updateDatabase(event.latLng.lat(), event.latLng.lng());';
        $marker['icon'] = base_url('asset/img/marker/Loper'.$this->urutanloper.'.png');
        $this->googlemaps->add_marker($marker);
      }else{
        $koordinat_loper = $this->getKoordinatByAgen($data);

        foreach ($koordinat_loper as $key => $value) {
          if ($value->lattitude != '' && $value->longitude != '') {
            # code...
            $marker = array();
            $marker['position'] = $value->lattitude.', '.$value->longitude;
            $marker['infowindow_content'] = $value->nama_striker."<br>".$value->alamat_striker;
            $marker['icon'] = base_url('asset/img/marker/Loper'.$this->urutanloper.'.png');
            $this->googlemaps->add_marker($marker);
          }
        }
      }
    }
  }

  public function getKoordinatByAgen($id_agen='')
  {
    return $this->db->select('nama_striker,alamat_striker, X(lokasi) AS lattitude, Y(lokasi) AS longitude')
          ->where('id_agen', $id_agen)
          ->where('X(lokasi) <>', '')
          ->where('Y(lokasi) <>', '')
          ->get($this->table)
          ->result();
  }
  public function GetCoorAllLoper($value='')
  {
    $query = $this->db->select('id_striker,nama_striker,alamat_striker,X(lokasi) AS lattitude, Y(lokasi) AS longitude')
                      ->where('X(lokasi) <>', '')
                      ->where('Y(lokasi) <>', '')
                      ->get($this->table);
    return $query->result_array();
  }
}
/* End of file agen_model.php */
/* Location: ./application/models/absen_model.php */