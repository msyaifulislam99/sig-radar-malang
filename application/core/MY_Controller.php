<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class  MY_Controller extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    
    if(!isset($_SESSION)) 
    {
      session_start();
    }
    
    // cek status login user
    if ($this->session->userdata('login') == FALSE)
    {
      $this->session->set_flashdata('pesan', 'Anda harus login terlebih dahulu.');
      redirect('Login');
    }
  }   
}
/* End of file MY_Controller.php */
/* Location: ./application/core/MY_Controller.php */