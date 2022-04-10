<?php
	include "koneksi.php";

	// Mengambil Variabel Dari Form
	$x0	=$_POST['id_kategori'];
	$x1	=$_POST['kategori'];
	
	

	// Perintah Insert Tabel
	$sql="update kategori set kategori='$x1' where id_kategori=$x0";
	mysqli_query($koneksi,$sql);
	//echo $sql;
	
	// Mengarahkan Ke Halaman Daftar
	header("location:index.php?p=kategori");
?>