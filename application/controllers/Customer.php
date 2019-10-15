<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Customer extends MY_Controller {
//'mapjs'					=> "http://maps.googleapis.com/maps/api/js?key=AIzaSyB86A1vckJemeIp0ybsX8rP4IUVG3nrPrM&sensor=false",
	public $data = array(
      'breadcrumb'    => 'Customer',
      'pesan'         => '',
      'main_view'     => 'customer',
      'script'				=> array('plugins/datatables/jquery.dataTables.min.js'),
      'css'						=> array('plugins/datatables/jquery.dataTables.min.css')
  );
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Loper_model', 'loper', TRUE);
		$this->load->model('Customer_model', 'customer', TRUE);
		$this->load->library('googlemaps');
	}
	/**
	 * tampilan daftar agen
	 */
	public function index()
	{
		$this->data['main_view'] = 'customerindex';
		$this->data['js'] = 'customerjs';
		
		$this->load->view('template',$this->data);
	}

	/**
	 * untuk ajax data table
	 * @return [type] [description]
	 */
	public function listcustomer($id_striker = '')
	{
		$list = $this->customer->get_datatables($id_striker);
		
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $customer) {
			$no++;
			$row = array();
			$row[] = anchor('customer/detail/'.$customer->id_customer,$customer->id_customer.' ');
			$row[] = anchor('customer/detail/'.$customer->id_customer,$customer->nama_customer.' ');
			$row[] = anchor('customer/detail/'.$customer->id_customer,$customer->alamat_customer.' ');
			$row[] = $customer->nama_striker;
			$row[] = anchor('customer/edit/'.$customer->id_customer,'<i class="fa fa-pencil"></i>',array('class' => 'btn btn-warning btn-sm'));
			$row[] = '<a href="#" class="btn btn-danger btn-sm" data-href="'.base_url('Customer/hapus/'.$customer->id_customer).'" data-toggle="modal" data-target="#confirm-delete"><i class="fa fa-trash"></i></a>';
			//$row[] = anchor('customer/hapus/'.$customer->id_customer,'<i class="fa fa-trash"></i>',array('class' => 'btn btn-danger btn-sm'));

			$data[] = $row;
		}

		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->customer->count_all($id_striker),
						"recordsFiltered" => $this->customer->count_filtered($id_striker),
						"data" => $data,
				);
		//output to json format
		echo json_encode($output);
	}
	/**
	 * detail data Loper lengkap dengan data lopernya
	 * @param  number $idagen parameter idagen
	 */
	public function detail($id_customer)
	{
		$this->load->library('googlemaps');
		$this->data['dataCustomer'] = $this->customer->cari($id_customer);
		$this->data['id_customer'] = $id_customer;

		$this->customer->customer_marker(TRUE,$this->data['dataCustomer']);

		$this->data['main_view'] = 'customer';
		
		$this->data['map'] = $this->googlemaps->create_map();
		$this->load->view('template',$this->data);
	}

	/**
	 * fungsi tambah data agen
	 */
	public function tambah()
	{
		$this->load->helper('form');
		$this->data['main_view'] = 'customerform';
		$this->data['form_action'] = 'customer/tambah';
		
		$this->data['script'] = array('plugins/jQueryUI/jquery-ui.min.js');
		$this->data['css'] = array('plugins/jQueryUI/jquery-ui.css');
		$this->data['js'] = 'customerformjs';

		$config['zoom'] = 'auto';
		$config['onclick'] = 'getLatLong(event.latLng.lat(),event.latLng.lng());';
		$this->googlemaps->initialize($config);
		$this->data['map'] = $this->googlemaps->create_map();

		if ($this->input->post('submit')) {
			if ($this->customer->validasi()) {
				if($this->customer->tambah()){
					if (!empty($_FILES['picture']['name'])) {
						if ($this->customer->upload_foto($this->db->insert_id())) {
							$this->session->set_flashdata('pesan', array('info','Proses tambah data customer berhasil'));
						}else{
							$this->session->set_flashdata('pesan', array('warning','Proses tambah data customer berhasil. Proses Upload gagal'));
						}
					}else{
						$this->session->set_flashdata('pesan', array('info','Proses tambah data customer berhasil'));
					}
					redirect('Customer');
				}else{
					$this->data['pesan'] = 'Proses tambah data gagal. pastikan anda memasuki program melalui menu. apabila pesan ini masih berlanjut, segera hubungi administrator';
	        		$this->load->view('template', $this->data);
				}
			}else{
				$this->load->view('template', $this->data);
			}
		}else{
			$this->load->view('template',$this->data);
		}
	}

	public function edit($id_customer = NULL)
  {
    $this->load->helper('form');
		$this->data['main_view'] = 'customerform';
		$this->data['form_action'] = 'customer/edit/'. $id_customer;

		$this->data['script'] = array('plugins/jQueryUI/jquery-ui.min.js');
		$this->data['css'] = array('plugins/jQueryUI/jquery-ui.css');
		$this->data['js'] = 'customerformjs';
    // Mencegah error (edit tanpa ada parameter)
    // Ada parameter
    if( ! empty($id_customer))
    {
        // submit
        if($this->input->post('submit'))
        {
        	if ($this->customer->validasi()) {
	          if($this->customer->edit($id_customer)){
							if (!empty($_FILES['picture']['name'])) {
								if ($this->customer->upload_foto($id_customer)) {
									$this->session->set_flashdata('pesan', array('info','Proses edit data customer berhasil'));
								}else{
									$this->session->set_flashdata('pesan', array('warning','Proses edit data customer berhasil. Proses Upload gagal'));
								}
							}else{
								$this->session->set_flashdata('pesan', array('info','Proses tambah edit customer berhasil'));
							}
							redirect('Customer');
						}else{
							$this->data['pesan'] = 'Proses perubahan data gagal. pastikan anda tidak memasuki program melalui menu. apabila pesan ini masih berlanjut, segera hubungi administrator';
			        $this->load->view('template', $this->data);
						}
        	}else{
						$this->load->view('template', $this->data);
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
            $customer = $this->customer->cari($id_customer);
            
            foreach($customer as $key => $value)
            {
                $this->data['form_value'][$key] = $value;
            }
            $this->load->view('template', $this->data);
        }
    }
    // tidak ada parameter $nis di URL, kembalikan ke halaman siswa
    else
    {
        redirect('Customer');
    }
  }

  public function hapus($id_customer)
  {
  	if( ! empty($id_customer))
    {

        if($this->customer->hapus($id_customer)){
					$this->session->set_flashdata('pesan', 'Proses penghapusan data agen berhasil.');
					redirect('Customer');
				}else{
					$this->session->set_flashdata('pesan', 'Proses penghapusan data agen gagal.');
					redirect('Customer');
				}
    }
    // tidak ada parameter $nis di URL, kembalikan ke halaman siswa
    else
    {
        redirect('Customer');
    }
  }

  public function is_idstriker_exist()
  {
  	$id_striker = $this->input->post('id_striker');

  	$query = $this->db->get_where('tbl_striker', array('id_striker' => $id_striker));
    if($query->num_rows() > 0)
    {
        return TRUE;
    }
    else
    {
    	print_r($query);
        $this->form_validation->set_message('is_idstriker_exist',
                                            "Striker tidak terdaftar");
        return FALSE;
    }
  }

  public function updateDragCoordinat($id)
  {
  	if( ! empty($id)){
  		$sql = "UPDATE ".$this->customer->table." set lokasi = GeomFromText('POINT(".$_POST['newLat']." ".$_POST['newLng'].")',0) WHERE id_customer='".$id."'";
  		$this->db->query($sql);
  		
  		if ($this->db->affected_rows() > 0) {
  			echo "berhasil";
  		}else{
  			echo "gagal, coba lagi. Apabila terus berlanjut, segera hubungi administrator";
  		}
  	}
  }
}