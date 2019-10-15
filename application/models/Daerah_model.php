<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Daerah_model extends CI_Model {

  //  digunakan untuk ajax data tables
  var $table = 'tbl_daerah';
  var $column_order = array('id_daerah', 'nama_daerah','alamat_agen'); //set column field database for datatable orderable
  var $column_search = array('id_daerah','nama_agen','alamat_agen'); //set column field database for datatable searchable 
  var $order = array('id_daerah' => 'asc'); // default order 
  public $urutanagen = 0;

  /**
   * fungsi untuk validasi form
   */
	private function setRules()
  {
    $form = array(
            array(
                'field' => 'nama_daerah',
                'label' => 'Nama Daerah',
                'rules' => 'required|max_length[50]'
            ),
            array(
                'field' => 'agen_minim',
                'label' => 'Jumlah Minimal Agen',
                'rules' => 'required'
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
  public function getAgen($value='')
  {
    # code...
  }
  /**
   * fungsi untuk auto complete di form striker untuk mendapatkan agen
   * @param  [type] $q [description]
   * @return [type]    [description]
   */
  public function get_agen($q = '', $isJson = TRUE)
  {
    $query = $this->db->select('*')
                      ->like('nama_agen',$q)
                      ->get($this->table);
    if ($query->num_rows() > 0) {
      if ($isJson) {
        foreach ($query->result_array() as $row) {
          $new_row['label']=htmlentities(stripslashes($row['id_agen']." - ".$row['nama_agen'] ));
          $new_row['value']=htmlentities(stripslashes($row['nama_agen']));
          $new_row['id_agen']=htmlentities(stripslashes($row['id_agen']));
          $row_set[] = $new_row;
        }
        echo json_encode($row_set);
      }else{
        return $query->result();
      }
    }
  }

  private function _get_datatables_query()
  {
    
    $this->db->from($this->table);

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

  function get_datatables()
  {
    $this->_get_datatables_query();
    if($_POST['length'] != -1)
    $this->db->limit($_POST['length'], $_POST['start']);
    $query = $this->db->get();
    return $query->result();
  }

  function count_filtered()
  {
    $this->_get_datatables_query();
    $query = $this->db->get();
    return $query->num_rows();
  }

  public function count_all()
  {
    $this->db->from($this->table);
    return $this->db->count_all_results();
  }

  public function set_upload_options($id)
  {
    $config = array();
    $config['upload_path'] = './asset/img/agen/';
    $config['allowed_types'] = 'gif|jpg|png';
    $config['max_size']      = '0';
    $config['overwrite']     = TRUE;
    $config['file_name']     = $id;

    return $config;
  }

  /**
   * fungsi tambah data, insert data agen ke database
   * @return boleean true apabila sukses
   */
  public function tambah()
  {
    $data = array(
        'id_agen' => $this->input->post('id_agen'),
        'nama_agen' => $this->input->post('nama_agen'),
        'alamat_agen' => $this->input->post('alamat_agen')
    );
    $lokasi = "GeomFromText('POINT(".$this->input->post('lat')." ".$this->input->post('long').")',0)";
    $sql = "insert into ".$this->table." (nama_agen,alamat_agen,lokasi) 
            VALUES ('".$data['nama_agen']."','".$data['alamat_agen']."',$lokasi)";
    
    // $this->db->set(array('lokasi' => "GeomFromText('POINT(".$this->input->post('lat')." ".$this->input->post('long')."')'"),false);

    // $this->db->insert($this->table, $data);

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
  /**
   * fungsi untuk upload foto
   * @param  $id id untuk update database
   * @return boolean
   */
  public function upload_foto($id)
  {
    if (!empty($_FILES['picture']['name'])) {

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
    }else{
      return TRUE;
    }
  }

  /**
   * pencarian data agen dengan id, untuk edit dan detail
   * @param  number $id_agen id agen
   * @return object data agen
   */
  public function cari($id_daerah)
  {
      return $this->db->select('id_daerah,AsText(poly) as poly,nama_daerah,agen_minim,agen_max,loper_minim,loper_max')
          ->where('id_daerah', $id_daerah)
          ->limit(1)
          ->get($this->table)
          ->row();
  }

  /**
   * fungsi perubahan data agen database
   * @param  number $id_agen id agen
   * @return boolean
   */
  public function edit($id_agen,$foto = '')
  {
  
    $data = array(
        'nama_daerah' => $this->input->post('nama_daerah'),
        'agen_minim' => $this->input->post('agen_minim'),
        'agen_max' => $this->input->post('agen_max'),
        'loper_minim' => $this->input->post('loper_minim'),
        'loper_max' => $this->input->post('loper_max')
    );

    $this->db->trans_start();

    $sql = "UPDATE ".$this->table." SET 
        nama_daerah='".$data['nama_daerah']."', 
        agen_minim='".$data['agen_minim']."',
        agen_max='".$data['agen_max']."',
        loper_minim='".$data['loper_minim']."',
        loper_max='".$data['loper_max']."' 
        WHERE id_daerah='".$id_agen."'";
    $this->db->query($sql);

    // $this->db->where('id_agen', $id_agen);
    // $this->db->update($this->table, $data);
    
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
   * @param  number $id_agen id agen
   * @return boolean
   */
  public function hapus($id_agen)
  {
    $this->db->where('id_agen', $id_agen)->delete($this->table);

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
   * untuk mendapatkan data marker agen
   * @param  string  $data     [description]
   * @param  boolean $isDetail [description]
   * @return [type]            [description]
   */
  public function agen_marker($isDetail = TRUE, $data='', $isSugesti = FALSE)
  {
    if($isSugesti){
      if ($data != 'semua') {
        $marker = array();
        $marker['position'] = $data->lattitude.', '.$data->longitude;
        $marker['infowindow_content'] = $data->id_agen."-".$data->nama_agen."<br>".$data->alamat_agen;
        $marker['draggable'] = FALSE;
        $marker['icon'] = base_url('asset/img/marker/Agen'.$this->urutanagen.'.png');
        $this->googlemaps->add_marker($marker);
      }else{
        $dataAgen = $this->GetCoorAllAgen();

        foreach ($dataAgen as $key => $value) {
          if ($value['lattitude'] != '' && $value['longitude'] != '') {
            
            $marker = array();
            $marker['position'] = $value['lattitude'].', '.$value['longitude'];
            $marker['infowindow_content'] = $value['nama_agen']."<br>".$value['alamat_agen'];
            $marker['icon'] = base_url('asset/img/marker/Agen'.$this->urutanagen.'.png');
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
        $marker['infowindow_content'] = $data->id_agen."-".$data->nama_agen."<br>".$data->alamat_agen;
        $marker['draggable'] = TRUE;
        $marker['animation'] = 'DROP';
        $marker['ondragend'] = 'updateDatabase(event.latLng.lat(), event.latLng.lng());';
        $marker['icon'] = base_url('asset/img/marker/Agen.png');
        $this->googlemaps->add_marker($marker);
      }
    }
    // foreach ($data as $key => $value) {
    //   print_r($key);die;
    //   $marker = array();
    // }
  }

  public function GetCoorAllAgen($value='')
  {
    $query = $this->db->select('id_agen,nama_agen,alamat_agen,X(lokasi) AS lattitude, Y(lokasi) AS longitude')
                      ->get($this->table);
    return $query->result_array();
  }
}
/* End of file agen_model.php */
/* Location: ./application/models/absen_model.php */