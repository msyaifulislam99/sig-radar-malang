<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Agen extends MY_Controller {

	public $data = array(
      'breadcrumb'    => 'Agen',
      'pesan'         => '',
      'main_view'     => 'Agen',
      'level'					=> '',
      'script'				=> array('plugins/datatables/jquery.dataTables.min.js'),
      'css'						=> array('plugins/datatables/jquery.dataTables.min.css')
  );
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Agen_model', 'agen', TRUE);
		$this->load->model('Loper_model', 'loper', TRUE);
		$this->load->library('googlemaps');
		
		$this->data['level'] = $this->session->level;
	}
	/**
	 * tampilan daftar agen
	 */
	public function index()
	{

		$this->data['main_view'] = 'agenindex';
		$this->data['js'] = 'agenjs';
		
		$this->load->view('template',$this->data);
	}
	/**
	 * untuk ajax data table
	 * @return [type] [description]
	 */
	public function listagen()
	{
		$list = $this->agen->get_datatables();
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $agen) {
			$no++;
			$row = array();
			$row[] = anchor('agen/detail/'.$agen->id_agen,$agen->id_agen." ");
			$row[] = anchor('agen/detail/'.$agen->id_agen,$agen->nama_agen." ");
			$row[] = anchor('agen/detail/'.$agen->id_agen,$agen->alamat_agen." ");
			$row[] = anchor('agen/edit/'.$agen->id_agen,'<i class="fa fa-pencil"></i>',array('class' => 'btn btn-warning btn-sm'));
			$row[] = '<a href="#" class="btn btn-danger btn-sm" data-href="'.base_url('Agen/hapus/'.$agen->id_agen).'" data-toggle="modal" data-target="#confirm-delete"><i class="fa fa-trash"></i></a>';
			
			$data[] = $row;
		}

		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->agen->count_all(),
						"recordsFiltered" => $this->agen->count_filtered(),
						"data" => $data,
				);
		//output to json format
		echo json_encode($output);
	}

	public function get_agens()
	{
		if (isset($_GET['term'])){
      $q = strtolower($_GET['term']);
      $this->agen->get_agen($q);
    }
	}
	/**
	 * detail data Agen lengkap dengan data lopernya
	 * @param  number $idagen parameter idagen
	 */
	public function detail($idagen)
	{
		$this->load->library('googlemaps');
		$this->data['main_view'] = 'agen';
		$this->data['dataAgen'] = $this->agen->cari($idagen);

		$this->data['id_agen'] = $idagen;
		$this->data['js'] = 'agendetailjs';
		$this->agen->agen_marker(TRUE,$this->data['dataAgen']);
		$this->loper->loper_marker(FALSE,$this->data['dataAgen']->id_agen);
		
		$this->data['map'] = $this->googlemaps->create_map();
		$this->load->view('template',$this->data);
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
		$this->load->helper('form');
		$this->data['main_view'] = 'agenform';
		$this->data['form_action'] = 'agen/tambah';
		$this->data['js'] = 'agenformjs';

		// untuk mendapatkan koordinat melalui modal pop-up
		$config['zoom'] = 'auto';
		$config['onclick'] = 'getLatLong(event.latLng.lat(),event.latLng.lng());';
		$this->googlemaps->initialize($config);
		$this->data['map'] = $this->googlemaps->create_map();
		
		if ($this->input->post('submit')) {
			if ($this->agen->validasi()) {
				if($this->agen->tambah()){
					if (!empty($_FILES['picture']['name'])) {
						if ($this->agen->upload_foto($this->db->insert_id())) {
							$this->session->set_flashdata('pesan', array('info','Proses tambah data agen berhasil'));
						}else{
							$this->session->set_flashdata('pesan', array('warning','Proses tambah data agen berhasil. Proses Upload gagal'));
						}
					}else{
						$this->session->set_flashdata('pesan', array('info','Proses tambah data agen berhasil'));
					}
					redirect('Agen');
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

	public function edit($id_agen = NULL)
  {
  	if ($this->data['level']!='1') {
			$this->session->set_flashdata('pesan', 'Anda tidak memiliki akses untuk memasuki halaman tersebut silahkan logout kemudian login menggunakan user yang berbeda.');
			redirect('Home');
		}
    $this->load->helper('form');
		$this->data['main_view'] = 'agenform';
		$this->data['form_action'] = 'agen/edit/'. $id_agen;
		$this->data['js'] = 'agenformjs';

    // Mencegah error (edit tanpa ada parameter)
    // Ada parameter
    if( ! empty($id_agen))
    {
        // submit
        if($this->input->post('submit'))
        {
        	if ($this->agen->validasi()) {
		        if($this->agen->edit($id_agen)){
							if (!empty($_FILES['picture']['name'])) {
								if ($this->agen->upload_foto($id_agen)) {
									$this->session->set_flashdata('pesan', array('info','Proses perubahan data agen berhasil.'));
								}else{
									$this->session->set_flashdata('pesan', array('warning','Proses perubahan data agen berhasil. Proses Upload gagal'));
								}
							}else{
								$this->session->set_flashdata('pesan', array('info','Proses perubahan data agen berhasil.'));
							}
							redirect('Agen');
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
            $agen = $this->agen->cari($id_agen);
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
        redirect('Agen');
    }
  }

  public function hapus($id_agen)
  {
  	if ($this->data['level']!='1') {
			$this->session->set_flashdata('pesan', 'Anda tidak memiliki akses untuk memasuki halaman tersebut silahkan logout kemudian login menggunakan user yang berbeda.');
			redirect('Home');
		}
  	if( ! empty($id_agen))
    {
      if($this->agen->hapus($id_agen)){
				$this->session->set_flashdata('pesan', array('info','Proses penghapusan data agen berhasil.'));
				redirect('Agen');
			}else{
				$this->session->set_flashdata('pesan', array('warning','Proses penghapusan data agen gagal.'));
				redirect('Agen');
			}
    }
    // tidak ada parameter $nis di URL, kembalikan ke halaman agen
    else
    {
        redirect('Agen');
    }
  }

  public function updateDragCoordinat($id)
  {
  	if( ! empty($id)){
  		$sql = "UPDATE ".$this->agen->table." set lokasi = GeomFromText('POINT(".$_POST['newLat']." ".$_POST['newLng'].")',0) WHERE id_agen='".$id."'";
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
  	$this->db->select('id_agen,nama_agen,alamat_agen,X(lokasi) AS lattitude, Y(lokasi) AS longitude');
  	$this->db->from('tbl_agen');
  	if ($limit != '') {
  		$this->db->limit($limit);
  	}
  	$query = $this->db->get();
  	echo json_encode($query->result());
  }
}