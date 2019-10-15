<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api extends CI_Controller {

	
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
		// $this->load->model('Loper_model', 'loper', TRUE);
		// $this->load->model('Agen_model', 'agen', TRUE);
		// $this->load->model('Customer_model', 'customer', TRUE);
		// $this->load->library('googlemaps');
		
	}
	public function index()
	{
		redirect('Home');
	}

	public function Agen($limit='')
	{
	  	$this->db->select('id_agen,nama_agen,alamat_agen,X(lokasi) AS lattitude, Y(lokasi) AS longitude');
	  	$this->db->from('tbl_agen');
	  	if ($limit != '') {
	  		$this->db->limit($limit);
	  	}
	  	$query = $this->db->get();
	  	echo json_encode($query->result());
	}

	public function Loper($limit='')
  	{
	  	$this->db->select('id_striker,nama_striker,alamat_striker,jatah,X(lokasi) AS lattitude, Y(lokasi) AS longitude');
	  	$this->db->from('tbl_striker');
	  	if ($limit != '') {
	  		$this->db->limit($limit);
	  	}
	  	$query = $this->db->get();
	  	echo json_encode($query->result());
  	}

  	public function tes($value='')
  	{
  		# code...
  	}
}
