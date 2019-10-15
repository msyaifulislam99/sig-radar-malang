<?php
class Lingkaran_model_a extends CI_model{
	const PI = 3.14;

	private $radius;

	//konstruk model yang memiliki parameter
	// public function __construct($r){
	// 	$this->radius = $r;
	// }

	//metode menentukan nilai radius
	public function set_radius($r){
		$this->radius = $r;
	}

	//metode mengambil nilai radius
	public function get_radius(){
		return $this->radius;
	}

	public function hitung_luas(){
		return self::PI * $this->radius * $this->radius;
	}

	public function hitung_keliling(){
		return self::PI * $this->radius * 2;
	}
}
	
