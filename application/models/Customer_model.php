<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Customer_model extends CI_Model {

  public $db_tabel    = 'tbl_customer';
  public $per_halaman = 0;
  public $offset      = 0;

  var $table = 'tbl_customer';
  var $column_order = array('id_customer', 'nama_customer','alamat_customer'); //set column field database for datatable orderable
  var $column_search = array('id_customer','nama_customer','alamat_customer'); //set column field database for datatable searchable 
  var $order = array('id_customer' => 'asc'); // default order 

  public $urutancustomer = 0;
  /**
   * fungsi untuk validasi form
   */
  private function setRules()
  {
    $form = array(
            array(
                'field' => 'id_striker',
                'label' => 'ID Striker',
                'rules' => "required|numeric|callback_is_idstriker_exist"
            ),
            array(
                'field' => 'nama_customer',
                'label' => 'Nama Customer',
                'rules' => 'required|max_length[25]'
            ),
            array(
                'field' => 'alamat_customer',
                'label' => 'Alamat Customer',
                'rules' => 'max_length[50]'
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
   * fungsi untuk mendapatkan data customer pada form filter pemilihan customer
   * @return [type] [description]
   */
  public function get_customer()
  {
    $query = $this->db->select('*')
                      ->get($this->table);
    if ($query->num_rows() > 0) {
        return $query->result();
    }
  }

  private function _get_datatables_query($id_striker = '')
  {
    
    $this->db->select('tbl_customer.*, tbl_striker.nama_striker')
            ->from($this->db_tabel)
            ->join('tbl_striker', 'tbl_customer.id_striker = tbl_striker.id_striker');

    if ($id_striker != '') {
      $this->db->where('tbl_customer.id_striker',$id_striker);
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

  function get_datatables($id_striker = '')
  {
    $this->_get_datatables_query($id_striker);
    if($_POST['length'] != -1)
    $this->db->limit($_POST['length'], $_POST['start']);
    $query = $this->db->get();
    return $query->result();
  }

  function count_filtered($id_striker = '')
  {
    $this->_get_datatables_query($id_striker);
    $query = $this->db->get();
    return $query->num_rows();
  }

  public function count_all($id_striker = '')
  {
    if ($id_striker!='') {
      $this->_get_datatables_query($id_striker);
      $query = $this->db->get();
      return $query->num_rows();
    }
    $this->db->from($this->table);
    return $this->db->count_all_results();
  }

  /**
   * fungsi tambah data, insert data agen ke database
   * @return boleean true apabila sukses
   */
  public function tambah()
  {
    $data = array(
        'id_customer' => $this->input->post('id_customer'),
        'id_striker' => $this->input->post('id_striker'),
        'nama_customer' => $this->input->post('nama_customer'),
        'alamat_customer' => $this->input->post('alamat_customer')
    );

    $lokasi = "GeomFromText('POINT(".$this->input->post('lat')." ".$this->input->post('long').")',0)";
    $sql = "insert into ".$this->table." (id_striker,nama_customer,alamat_customer,lokasi) 
            VALUES ('".$data['id_striker']."','".$data['nama_customer']."','".$data['alamat_customer']."',$lokasi)";
    
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
    $config['upload_path'] = './asset/img/customer/';
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

  /**
   * pencarian data agen dengan id, untuk edit dan detail
   * @param  number $id_striker id agen
   * @return object data agen
   */
  public function cari($id_customer)
  {
      return $this->db->select('tbl_customer.*, X(tbl_customer.lokasi) AS lattitude, Y(tbl_customer.lokasi) AS longitude, tbl_striker.id_striker, tbl_striker.nama_striker')
                    ->from($this->db_tabel)
                    ->join('tbl_striker', 'tbl_customer.id_striker = tbl_striker.id_striker')
                    ->where('id_customer', $id_customer)
                    ->limit(1)
                    ->get()
                    ->row();
  }

  /**
   * fungsi perubahan data agen database
   * @param  number $id_striker id agen
   * @return boolean
   */
  public function edit($id_customer, $foto='')
  {
    $data = array(
        'nama_customer' => $this->input->post('nama_customer'),
        'id_striker' => $this->input->post('id_striker'),
        'alamat_customer' => $this->input->post('alamat_customer')
    );

    if ($foto != '') {
      $data['foto'] = ", foto='".$foto."'";
    }else{
      $data['foto'] = "";
    }
    //print_r($_POST);die;
    $this->db->trans_start();

    $lokasi = "GeomFromText('POINT(".$this->input->post('lat')." ".$this->input->post('long').")',0)";
    $sql = "UPDATE ".$this->table." SET 
        nama_customer='".$data['nama_customer']."', 
        id_striker='".$data['id_striker']."', 
        alamat_customer='".$data['alamat_customer']."', 
        lokasi=".$lokasi." ".$data['foto']."
        WHERE id_customer='".$id_customer."'";
    $this->db->query($sql);

    // $this->db->where('id_customer', $id_customer);
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
  public function hapus($id_customer)
  {
    $this->db->where('id_customer', $id_customer)->delete($this->db_tabel);

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
  public function customer_marker($isDetail = TRUE, $data='', $isSugesti = FALSE)
  {
    if ($isSugesti) {
      if ($data != 'semua') {
        if ($data->lattitude != '' && $data->longitude != '') {

          $marker = array();
          $marker['position'] = $data->lattitude.', '.$data->longitude;
          $marker['infowindow_content'] = $data->id_customer."-".$data->nama_customer."<br>".$data->alamat_customer;
          $marker['draggable'] = FALSE;
          $marker['icon'] = base_url('asset/img/marker/Customer'.$this->urutancustomer.'.png');
          $this->googlemaps->add_marker($marker);
        }
      }else{
        $dataCustomer = $this->GetCoorAllCustomer();

        foreach ($dataCustomer as $key => $value) {
          if ($value['lattitude'] != '' && $value['longitude'] != '') {
            
            $marker = array();
            $marker['position'] = $value['lattitude'].', '.$value['longitude'];
            $marker['infowindow_content'] = $value['nama_customer']."<br>".$value['alamat_customer'];
            $marker['icon'] = base_url('asset/img/marker/Customer'.$this->urutancustomer.'.png');
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
        $marker['infowindow_content'] = $data->id_customer."-".$data->nama_customer."<br>".$data->alamat_customer;
        $marker['draggable'] = TRUE;
        $marker['animation'] = 'DROP';
        $marker['ondragend'] = 'updateDatabase(event.latLng.lat(), event.latLng.lng());';
        $marker['icon'] = base_url('asset/img/marker/Customer'.$this->urutancustomer.'.png');
        $this->googlemaps->add_marker($marker);
      }else{
        $koordinat_customer = $this->getKoordinatByStriker($data);

        foreach ($koordinat_customer as $key => $value) {
          
          $marker = array();
          $marker['position'] = $value->lattitude.', '.$value->longitude;
          $marker['infowindow_content'] = $value->nama_customer."<br>".$value->alamat_customer;
          $marker['icon'] = base_url('asset/img/marker/Customer'.$this->urutancustomer.'.png');
          $this->googlemaps->add_marker($marker);
        }
      }
    }
  }

  public function getKoordinatByStriker($id_striker='')
  {
    return $this->db->select('nama_customer,alamat_customer, X(lokasi) AS lattitude, Y(lokasi) AS longitude')
          ->where('id_striker', $id_striker)
          ->where('X(lokasi) <>', '')
          ->where('Y(lokasi) <>', '')
          ->get($this->table)
          ->result();
  }

  public function GetCoorAllCustomer($value='')
  {
    $query = $this->db->select('id_customer,nama_customer,alamat_customer,X(lokasi) AS lattitude, Y(lokasi) AS longitude')
                      ->where('X(lokasi) <>', '')
                      ->where('Y(lokasi) <>', '')
                      ->get($this->table);
    return $query->result_array();
  }
}
/* End of file agen_model.php */
/* Location: ./application/models/absen_model.php */