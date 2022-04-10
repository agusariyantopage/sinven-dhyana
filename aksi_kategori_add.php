<?php
	include "koneksi.php";

	// Mengambil Variabel Dari Form
	$x1	=$_POST['kategori'];
	
	

	// Perintah Insert Tabel
	$sql="insert into kategori (kategori) values('$x1')";
	mysqli_query($koneksi,$sql);
	//echo $sql;
	
	// Mengarahkan Ke Halaman Daftar
	header("location:index.php?p=kategori");
?>