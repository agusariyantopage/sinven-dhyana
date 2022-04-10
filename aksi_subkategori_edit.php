<?php
	include "koneksi.php";

	// Mengambil Variabel Dari Form
    $id_subkategori	=$_POST['id_subkategori'];
	$id_kategori	=$_POST['id_kategori'];
	$kode	=$_POST['kode'];
	$subkategori	=$_POST['subkategori'];
	$apresiasi_per_tahun	=$_POST['apresiasi_per_tahun'];
	
	

	// Perintah Insert Tabel
	$sql="update subkategori set id_kategori=$id_kategori,kode='$kode',subkategori='$subkategori',apresiasi_per_tahun=$apresiasi_per_tahun where id_subkategori=$id_subkategori";
	mysqli_query($koneksi,$sql);
	//echo $sql;
	
	// Mengarahkan Ke Halaman Daftar
	header("location:index.php?p=subkategori");
?>