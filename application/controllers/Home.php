<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Home extends MY_Controller
{
  public $data = array(
        'pesan'=> '',
        'breadcrumb'    => 'Beranda'
        );

	public function __construct()
  {
		parent::__construct();
    $this->load->model('Customer_model', 'customer', TRUE);
    $this->load->model('Agen_model', 'agen', TRUE);
    $this->load->model('Loper_model', 'loper', TRUE);
    $this->load->model('Pemetaan_model', 'pemetaan', TRUE);
	}

	public function index()
  {
    $this->data['count_customer'] = $this->customer->count_all();
    $this->data['count_agen'] = $this->agen->count_all();
    $this->data['count_striker'] = $this->loper->count_all();

    $this->data['map'] = array('js' => '<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB86A1vckJemeIp0ybsX8rP4IUVG3nrPrM&libraries=geometry&sensor=false"></script>', );
    $this->data['js'] = 'sugestijs';
    
    $this->data['polygon'] = $this->pemetaan->GetPolygon();
    $this->data['CoodAgen'] = $this->agen->GetCoorAllAgen();
    $this->data['CoodLoper'] = $this->loper->GetCoorAllLoper();
    
		$this->data['main_view'] = 'sugesti';
    
    $this->load->view('template',$this->data);
	}
}
/* End of file home.php */
/* Location: ./application/controllers/home.php */