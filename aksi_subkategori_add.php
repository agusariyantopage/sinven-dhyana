<?php
	include "koneksi.php";

	// Mengambil Variabel Dari Form
	$id_kategori	=$_POST['id_kategori'];
	$kode	=$_POST['kode'];
	$subkategori	=$_POST['subkategori'];
	$apresiasi_per_tahun	=$_POST['apresiasi_per_tahun'];
	
	

	// Perintah Insert Tabel
	$sql="insert into subkategori (id_kategori,kode,subkategori,apresiasi_per_tahun) values($id_kategori,'$kode','$subkategori',$apresiasi_per_tahun)";
	mysqli_query($koneksi,$sql);
	//echo $sql;
	
	// Mengarahkan Ke Halaman Daftar
	header("location:index.php?p=subkategori");
?>