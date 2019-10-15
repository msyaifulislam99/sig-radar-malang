<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Daerah extends MY_Controller {

	public $data = array(
      'breadcrumb'    => 'Daerah',
      'pesan'         => '',
      'main_view'     => 'Agen',
      'level'					=> '',
      'script'				=> array('plugins/datatables/jquery.dataTables.min.js'),
      'css'						=> array('plugins/datatables/jquery.dataTables.min.css')
  );
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Daerah_model', 'daerah', TRUE);
		$this->load->model('Pemetaan_model', 'pemetaan', TRUE);
		$this->load->library('googlemaps');
		
		$this->data['level'] = $this->session->level;
	}
	/**
	 * tampilan daftar agen
	 */
	public function index()
	{

		$this->data['main_view'] = 'daerahindex';
		$this->data['js'] = 'daerahjs';
		
		$this->load->view('template',$this->data);
	}
	/**
	 * untuk ajax data table
	 * @return [type] [description]
	 */
	public function listdaerah()
	{
		$list = $this->daerah->get_datatables();
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $daerah) {
			$no++;
			$row = array();
			$row[] = $daerah->id_daerah;
			$row[] = $daerah->nama_daerah;
			$row[] = $daerah->agen_minim;
			$row[] = $daerah->agen_max;
			$row[] = $daerah->loper_minim;
			$row[] = $daerah->loper_max;
			$row[] = anchor('Daerah/edit/'.$daerah->id_daerah,'<i class="fa fa-pencil"></i>',array('class' => 'btn btn-warning btn-sm'));
			
			$data[] = $row;
		}

		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->daerah->count_all(),
						"recordsFiltered" => $this->daerah->count_filtered(),
						"data" => $data,
				);
		//output to json format
		echo json_encode($output);
	}

	public function get_daerah()
	{
		if (isset($_GET['term'])){
      $q = strtolower($_GET['term']);
      $this->daerah->get_daerah($q);
    }
	}

	public function edit($id_daerah = NULL)
  {
  	if ($this->data['level']!='1') {
			$this->session->set_flashdata('pesan', 'Anda tidak memiliki akses untuk memasuki halaman tersebut silahkan logout kemudian login menggunakan user yang berbeda.');
			redirect('Home');
		}
    $this->load->helper('form');
		$this->data['main_view'] = 'daerahform';
		$this->data['form_action'] = 'daerah/edit/'. $id_daerah;
		// $this->data['js'] = 'agenformjs';

    // Mencegah error (edit tanpa ada parameter)
    // Ada parameter
    if( ! empty($id_daerah))
    {
        // submit
        if($this->input->post('submit'))
        {
        	if ($this->daerah->validasi()) {
        		// print_r("berhasil");die;
		        if($this->daerah->edit($id_daerah)){
							$this->session->set_flashdata('pesan', array('info','Proses perubahan data daerah berhasil.'));
							redirect('Daerah');
						}else{
							$this->data['pesan'] = 'Proses perubahan data gagal. pastikan anda memasuki program melalui menu. apabila pesan ini masih berlanjut, segera hubungi administrator';
			        $this->load->view('template', $this->data);
						}
        	}else{
        		$this->load->view('template',$this->data);
        	}

        }
        // tidak disubmit, form pertama kali dimuat
        else
        {

            // ambil data dari database, $form_value sebagai nilai default form
            $daerah = $this->daerah->cari($id_daerah);
            foreach($daerah as $key => $value)
            {
                $this->data['form_value'][$key] = $value;
            }
            $poly = $this->pemetaan->MakePolyArray($this->data['form_value']['poly']);

        		// untuk mendapatkan koordinat melalui modal pop-up
        		$config['center'] = '-7.9784695,112.5617418';
						$config['zoom'] = 'auto';
						
						$this->googlemaps->initialize($config);

						$polygon['points'] = $poly;
						$polygon['strokeColor'] = '#000099';
						$polygon['fillColor'] = '#000099';
						$this->googlemaps->add_polygon($polygon);
						$this->data['map'] = $this->googlemaps->create_map();
            
            $this->load->view('template', $this->data);
        }
    }
    // tidak ada parameter $nis di URL, kembalikan ke halaman siswa
    else
    {
        redirect('Daerah');
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