<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Loper extends MY_Controller {

	public $data = array(
      'breadcrumb'    => 'Loper',
      'pesan'         => '',
      'main_view'     => 'Loper',
      'level'					=> '',
      'script'				=> array('plugins/datatables/jquery.dataTables.min.js'),
      'css'						=> array('plugins/datatables/jquery.dataTables.min.css')
  );
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Loper_model', 'loper', TRUE);
		$this->load->model('Agen_model', 'agen', TRUE);
		$this->load->model('Customer_model', 'customer', TRUE);
		$this->load->library('googlemaps');
		
		$this->data['level'] = $this->session->level;
	}
	/**
	 * tampilan daftar agen
	 */
	public function index()
	{
		
		$this->data['main_view'] = 'loperindex';
		$this->data['js'] = 'loperjs';
		
		$this->load->view('template',$this->data);
	}
	/**
	 * detail data Loper lengkap dengan data lopernya
	 * @param  number $idagen parameter idagen
	 */
	public function detail($id_striker)
	{
		$this->load->library('googlemaps');
		$this->data['main_view'] = 'loper';
		
		$this->data['dataStriker'] = $this->loper->cari($id_striker);
		$this->data['id_striker'] = $id_striker;

		$this->loper->loper_marker(TRUE,$this->data['dataStriker']);
		$this->customer->customer_marker(FALSE,$id_striker);
		
		$this->data['map'] = $this->googlemaps->create_map();
		$this->data['js'] = 'loperdetailjs';
		
		$this->load->view('template',$this->data);
	}

	public function listloper($id_agen = '')
	{
		$list = $this->loper->get_datatables($id_agen);
		
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $loper) {
			$no++;
			$row = array();
			$row[] = anchor('loper/detail/'.$loper->id_striker,$loper->id_striker.' ');
			$row[] = anchor('loper/detail/'.$loper->id_striker,$loper->nama_striker.' ');
			$row[] = anchor('loper/detail/'.$loper->id_striker,$loper->alamat_striker.' ');
			$row[] = $loper->nama_agen;
			$row[] = anchor('loper/detail/'.$loper->id_striker,$loper->jatah.' ');
			$row[] = anchor('loper/edit/'.$loper->id_striker,'<i class="fa fa-pencil"></i>',array('class' => 'btn btn-warning btn-sm'));
			$row[] = '<a href="#" class="btn btn-danger btn-sm" data-href="'.base_url('Loper/hapus/'.$loper->id_striker).'" data-toggle="modal" data-target="#confirm-delete"><i class="fa fa-trash"></i></a>';
			
			$data[] = $row;
		}

		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->loper->count_all($id_agen),
						"recordsFiltered" => $this->loper->count_filtered($id_agen),
						"data" => $data,
				);
		
		echo json_encode($output);
	}

	/**
	 * fungsi tambah data agen
	 */
	public function tambah()
	{
		
		if ($this->data['level']!='1') {
			$this->session->set_flashdata('pesan', 'Anda tidak memiliki akses untuk memasuki halaman tersebut silahkan logout kemudian login menggunakan user yang berbeda.');
			redirect('Home');
		}

		$this->data['script'] = array('plugins/jQueryUI/jquery-ui.min.js');
		$this->data['css'] = array('plugins/jQueryUI/jquery-ui.css');
		$this->data['js'] = 'loperformjs';
		
		$this->load->helper('form');
		$this->data['main_view'] = 'loperform';
		$this->data['form_action'] = 'loper/tambah';

		// untuk mendapatkan koordinat melalui modal pop-up
		$config['zoom'] = 'auto';
		$config['onclick'] = 'getLatLong(event.latLng.lat(),event.latLng.lng());';
		$this->googlemaps->initialize($config);
		$this->data['map'] = $this->googlemaps->create_map();
		
		if ($this->input->post('submit')) {
			if ($this->loper->validasi()) {
				
				if($this->loper->tambah()){
					if (!empty($_FILES['picture']['name'])) {
						if ($this->loper->upload_foto($this->db->insert_id())) {
							$this->session->set_flashdata('pesan', array('info','Proses tambah data striker berhasil'));
						}else{
							$this->session->set_flashdata('pesan', array('warning','Proses tambah data striker berhasil. Proses Upload gagal'));
						}
					}else{
						$this->session->set_flashdata('pesan', array('info','Proses tambah data striker berhasil'));
					}
					redirect('Loper');
				}else{
					$this->data['pesan'] = 'Proses tambah data gagal. pastikan anda tidak memasuki program melalui menu. apabila pesan ini masih berlanjut, segera hubungi administrator';
	        		$this->load->view('template', $this->data);
				}
			}else{
				$this->load->view('template',$this->data);
			}
		}else{
			$this->load->view('template',$this->data);
		}
		
	}

	public function get_lopers()
	{
		if (isset($_GET['term'])){
      $q = strtolower($_GET['term']);
      $this->loper->get_loper($q);
    }
	}

	public function edit($id_striker = NULL)
  {
    if ($this->data['level']!='1') {
			$this->session->set_flashdata('pesan', 'Anda tidak memiliki akses untuk memasuki halaman tersebut silahkan logout kemudian login menggunakan user yang berbeda.');
			redirect('Home');
		}
    $this->load->helper('form');
		$this->data['main_view'] = 'loperform';
		$this->data['form_action'] = 'loper/edit/'. $id_striker;
		$this->data['script'] = array('plugins/jQueryUI/jquery-ui.min.js');
		$this->data['css'] = array('plugins/jQueryUI/jquery-ui.css');
		$this->data['js'] = 'loperformjs';

    // Mencegah error (edit tanpa ada parameter)
    // Ada parameter
    if( ! empty($id_striker))
    {
        // submit
        if($this->input->post('submit'))
        {
        	if ($this->loper->validasi()) {
	          if($this->loper->edit($id_striker)){
	          	if (!empty($_FILES['picture']['name'])) {
								if ($this->loper->upload_foto($id_striker)) {
									$this->session->set_flashdata('pesan', array('info','Proses edit data striker berhasil'));
								}else{
									$this->session->set_flashdata('pesan', array('warning','Proses edit data striker berhasil. Proses Upload gagal'));
								}
							}else{
								$this->session->set_flashdata('pesan', array('info','Proses edit data striker berhasil'));
							}
							redirect('Loper');
						}else{
							$this->data['pesan'] = 'Proses perubahan data gagal. pastikan anda tidak memasuki program melalui menu. apabila pesan ini masih berlanjut, segera hubungi administrator';
			        $this->load->view('template', $this->data);
						}
        	}else{
						$this->load->view('template',$this->data);
					}

        }
        // tidak disubmit, form pertama kali dimuat
        else
        {
        		// untuk mendapatkan koordinat melalui modal pop-up
						$config['zoom'] = 'auto';
						$config['onclick'] = 'getLatLong(event.latLng.lat(),event.latLng.lng());';
						$this->googlemaps->initialize($config);
						$this->data['map'] = $this->googlemaps->create_map();

            // ambil data dari database, $form_value sebagai nilai default form
            $agen = $this->loper->cari($id_striker);
            foreach($agen as $key => $value)
            {
                $this->data['form_value'][$key] = $value;
            }
            
            $this->load->view('template', $this->data);
        }
    }
    // tidak ada parameter $nis di URL, kembalikan ke halaman siswa
    else
    {
        redirect('Loper');
    }
  }

  public function hapus($id_striker)
  {
  	if ($this->data['level']!='1') {
			$this->session->set_flashdata('pesan', 'Anda tidak memiliki akses untuk memasuki halaman tersebut silahkan logout kemudian login menggunakan user yang berbeda.');
			redirect('Home');
		}
  	if( ! empty($id_striker))
    {
        if($this->loper->hapus($id_striker)){
					$this->session->set_flashdata('pesan', array('info','Proses hapus data striker berhasil'));
					redirect('Loper');
				}else{
					$this->session->set_flashdata('pesan', array('info','Proses hapus data striker gagal'));
					redirect('Loper');
				}
    }
    // tidak ada parameter $nis di URL, kembalikan ke halaman siswa
    else
    {
        redirect('Loper');
    }
  }

  public function is_idagen_exist()
  {
  	$id_agen = $this->input->post('id_agen');
  	$query = $this->db->get_where('tbl_agen', array('id_agen' => $id_agen));
    if($query->num_rows() > 0)
    {
        return TRUE;
    }
    else
    {
        $this->form_validation->set_message('is_idagen_exist',
                                            "Agen tidak terdaftar");
        return FALSE;
    }
  }

  public function updateDragCoordinat($id)
  {
  	if( ! empty($id)){
  		$sql = "UPDATE ".$this->loper->table." set lokasi = GeomFromText('POINT(".$_POST['newLat']." ".$_POST['newLng'].")',0) WHERE id_striker='".$id."'";
  		$this->db->query($sql);
  		
  		if ($this->db->affected_rows() > 0) {
  			echo "berhasil";
  		}else{
  			echo "gagal, coba lagi. Apabila terus berlanjut, segera hubungi administrator";
  		}
  	}
  }
  
  public function json_data($limit='')
  {
  	$this->db->select('id_striker,nama_striker,alamat_striker,jatah,X(lokasi) AS lattitude, Y(lokasi) AS longitude');
  	$this->db->from('tbl_striker');
  	if ($limit != '') {
  		$this->db->limit($limit);
  	}
  	$query = $this->db->get();
  	echo json_encode($query->result());
  }
}