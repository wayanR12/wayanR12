<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('Buku_model');
		$this->load->model('Petugas_model');
		if($this->session->userdata('logged_in') == false){
			redirect('welcome');
		}
	}

	public function index(){
		$download = $this->input->get('download') ? $this->input->get('download') : 'none';
		$month = $this->input->get('year') ? $this->input->get('year') : date('Y');
		$month .= date("-");
		$month .= $this->input->get('month') ? $this->input->get('month') : date('n');
		$month .= date("-d H:i:s");

		$data['title'] = 'Laporan';
		$data['primary_view'] = 'laporan/index';

		// query untuk mengambil data siswa 
		$data['siswa'] = $this->db->query("
			SELECT 
				anggota.ID_ANGGOTA as id, 
				anggota.FULL_NAME as full_name, kelas,
				count(anggota.ID_ANGGOTA) as count_anggota ,
				sum(peminjaman.JML_BUKU) as count
			FROM anggota
			left join peminjaman on peminjaman.ID_ANGGOTA = anggota.ID_ANGGOTA
			where MONTH(peminjaman.TGL_PINJAM) = MONTH('$month')
				and YEAR(peminjaman.TGL_PINJAM) = YEAR('$month')
			group by anggota.ID_ANGGOTA
			order by count desc
			limit 5
		")->result_array();

		// query untuk mengambil data buku 
		$data['buku'] = $this->db->query("
			SELECT 
				buku.TITLE as title, 
				count(detail_pinjam.ID_PINJAM) as count
			FROM buku
			left join detail_pinjam on detail_pinjam.ID_BUKU = buku.ID_BUKU
			left join peminjaman on peminjaman.ID_PINJAM = detail_pinjam.ID_PINJAM
			where MONTH(peminjaman.TGL_PINJAM) = MONTH('$month')
				and YEAR(peminjaman.TGL_PINJAM) = YEAR('$month')
			group by buku.ID_BUKU
			order by count desc
			limit 5
		")->result_array();

		// fungsi untuk download grafik
		if ($download == 'none') {
			$this->load->view('template_view', $data);
		}else if ($download == 'siswa') {
			$this->load->view('laporan/siswa', $data);
		}else if ($download == 'buku') {
			$this->load->view('laporan/buku', $data);
		}
	}

}
/* End of file Buku.php */
/* Location: ./application/controllers/Buku.php */