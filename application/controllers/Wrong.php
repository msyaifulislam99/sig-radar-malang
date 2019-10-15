<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Wrong extends MY_Controller
{

	public function __construct()
  {
		parent::__construct();
	}

	public function index()
  {
    $this->data['main_view'] = 'wrong';
    
    $this->load->view('template',$this->data);
	}
}
/* End of file home.php */
/* Location: ./application/controllers/home.php */