<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Pemetaan extends MY_Controller
{
  public $data = array(
        'pesan'             => '',
        'breadcrumb'        => 'Filter Data',
        'script'            => array('plugins/select2/select2.full.min.js','plugins/datatables/jquery.dataTables.min.js'),
        'css'               => array('plugins/select2/select2.min.css','plugins/datatables/jquery.dataTables.min.css'),
        'js'                => 'pemetaanjs',
        'tabelagen'         => '',
        'tabelpemetaanjs'   => '',
        'tabelloper'        => '',
        'tabelcustomer'     => '',
        'tabelloperjs'      => ''
        );

  public $tabelurutagen = 1;
  public $tabelurutloper = 1;
  public $tabelurutcustomer = 1;

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Customer_model', 'customer', TRUE);
    $this->load->model('Pemetaan_model', 'pemetaan', TRUE);
    $this->load->model('Agen_model', 'agen', TRUE);
    $this->load->model('Loper_model', 'loper', TRUE);
  }

  public function index()
  {
    $tabel = '';
    $js = '';
    $this->data['form_action'] = 'Pemetaan';
    $this->data['opsiAgen'] = $this->agen->get_agen('', FALSE);
    $this->data['opsiLoper'] = $this->loper->get_loper('', FALSE);
    $this->data['opsiCustomer'] = $this->customer->get_customer();
    //print_r($this->data['opsiLoper']);
    
    if (isset($_POST['submit'])) {
      $this->load->library('googlemaps');
      if (isset($_POST['agen'])) {
        $this->agen->urutanagen = 0;
        foreach ($_POST['agen'] as $data) {
          if ($data == '0') {
            
            $this->data['tabelagen'] .= $this->makeTableAll('agen').'<br>';
            $this->data['tabelpemetaanjs'] .= $this->makeTableJsAll('agen', $data);
            $var = 'semua';
            $this->agen->agen_marker(TRUE,$var,TRUE);
          }else{
            $detail['dataAgen'] = $this->agen->cari($data);
            $this->data['tabelagen'] .= $this->makeTable('agen', $detail).'<br>';
            $this->data['tabelpemetaanjs'] .= $this->makeTableJS('agen', $data);
            $this->agen->agen_marker(TRUE,$detail['dataAgen'], TRUE);
            $this->loper->loper_marker(FALSE,$detail['dataAgen']->id_agen);
          }
          $this->tabelurutagen++;
          $this->agen->urutanagen++;
          $this->loper->urutanloper++;
          if ($this->agen->urutanagen == 10) {
            $this->agen->urutanagen = 0;
            $this->loper->urutanloper =0;
          }
        }
        $this->agen->urutanagen = 0;
        $this->loper->urutanloper = 0;
      }
      if (isset($_POST['loper'])) {
        $this->agen->urutanloper = 0;
        foreach ($_POST['loper'] as $data) {
          if ($data == '0') {
            $this->data['tabelloper'] .= $this->makeTableAll('loper').'<br>';
            $this->data['tabelpemetaanjs'] .= $this->makeTableJsAll('loper', $data);
            $data = 'semua';
            $this->loper->loper_marker(TRUE,$data,TRUE);
          }else{

            $detail['dataStriker'] = $this->loper->cari($data);
            $this->data['tabelloper'] .= $this->makeTable('loper', $detail).'<br>';
            $this->data['tabelpemetaanjs'] .= $this->makeTableJS('loper', $data);
            $this->loper->loper_marker(TRUE,$detail['dataStriker'],TRUE);
            $this->customer->customer_marker(FALSE,$detail['dataStriker']->id_striker);
          }
          $this->tabelurutloper++;
          $this->loper->urutanloper++;
          $this->customer->urutancustomer++;
          if ($this->agen->urutanloper == 10) {
            $this->agen->urutanloper = 0;
            $this->loper->urutancustomer =0;
          }
        }
        $this->agen->urutanloper = 0;
        $this->loper->urutancustomer = 0;
      }
      if (isset($_POST['customer'])) {
        $this->loper->urutancustomer = 0;
        foreach ($_POST['customer'] as $data) {
          if ($data == '0') {
            $this->data['tabelcustomer'] .= $this->makeTableAll('customer').'<br>';
            $this->data['tabelpemetaanjs'] .= $this->makeTableJsAll('customer', $data);
            $data = 'semua';
            $this->customer->customer_marker(TRUE,$data,TRUE);
          }else{

            $detail['dataCustomer'] = $this->customer->cari($data);
            $this->data['tabelcustomer'] .= $this->makeTable('customer', $detail).'<br>';
            $this->data['tabelpemetaanjs'] .= $this->makeTableJS('customer', $data);
            $this->customer->customer_marker(TRUE,$detail['dataCustomer'],TRUE);
          }
          $this->tabelurutcustomer++;
          $this->customer->urutancustomer++;
          if ($this->loper->urutancustomer == 10) {
            $this->loper->urutancustomer =0;
          }
        }
        $this->loper->urutancustomer = 0;
      }
      $this->data['map'] = $this->googlemaps->create_map();
      $this->data['js'] = 'pemetaanjs';
    }

    $this->data['main_view'] = 'pemetaan';
    
    $this->load->view('template',$this->data);
    //$this->load->view('main/tes');
  }

  private function makeTable($jenis='', $data='')
  {
    $table = '';
    switch ($jenis) {
        case 'agen':
          $data['urutan'] = $this->tabelurutagen;
          $data['urutwarna'] = $this->agen->urutanagen;
          $table = $this->load->view('pemetaan/tabelagen',$data,TRUE);
          break;

        case 'loper':
          $data['urutan'] = $this->tabelurutloper;
          $data['urutwarna'] = $this->loper->urutanloper;
          $table = $this->load->view('pemetaan/tabelloper',$data,TRUE);
          break;

        case 'customer':
          $data['urutan'] = $this->tabelurutcustomer;
          $data['urutwarna'] = $this->customer->urutancustomer;
          $table = $this->load->view('pemetaan/tabelcustomer',$data,TRUE);
          break;
        
        default:
          # code...
          break;
      }
    return $table;
  }

  public function makeTableAll($jenis='')
  {
    $table = '';
    switch ($jenis) {
        case 'agen':
          $data['urutan'] = $this->tabelurutagen;
          $table = $this->load->view('pemetaan/tabelagenall',$data,TRUE);
          break;

        case 'loper':
          $data['urutan'] = $this->tabelurutloper;
          $table = $this->load->view('pemetaan/tabelloperall',$data,TRUE);
          break;

        case 'customer':
          $data['urutan'] = $this->tabelurutcustomer;
          $table = $this->load->view('pemetaan/tabelcustomerall',$data,TRUE);
          break;
        
        default:
          # code...
          break;
      }
    return $table;
  }

  private function makeTableJs($jenis='', $id='')
  {
    $tablejs = '';
    switch ($jenis) {
        case 'agen':
          $data = array('urutan' => $this->tabelurutagen, 'id_agen' => $id);
          $tablejs = $this->load->view('pemetaan/tabelagenjs',$data,TRUE);
          break;

        case 'loper':
          $data = array('urutan' => $this->tabelurutloper, 'id_striker' => $id);
          $tablejs = $this->load->view('pemetaan/tabelloperjs',$data,TRUE);
          break;

        case 'customer':
          # code...
          break;
        
        default:
          # code...
          break;
      }
  return $tablejs;
  }

  private function makeTableJsAll($jenis='')
  {
    $tablejs = '';
    switch ($jenis) {
        case 'agen':
          $data = array('urutan' => $this->tabelurutagen);
          $tablejs = $this->load->view('pemetaan/tabelagenalljs',$data,TRUE);
          break;

        case 'loper':
          $data = array('urutan' => $this->tabelurutloper);
          $tablejs = $this->load->view('pemetaan/tabelloperalljs',$data,TRUE);
          break;

        case 'customer':
          $data = array('urutan' => $this->tabelurutcustomer);
          $tablejs = $this->load->view('pemetaan/tabelcustomeralljs',$data,TRUE);
          break;
        
        default:
          # code...
          break;
      }
  return $tablejs;
  }

  public function tes()
  {
    $this->pemetaan->tes();
  }
}
/* End of file home.php */
/* Location: ./application/controllers/home.php */