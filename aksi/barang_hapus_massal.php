<?php
session_start();
include "../koneksi.php";

$id_unit_kerja = $_SESSION['idunit'];

if (!empty($_POST)) {
	if ($_POST['aksi'] == 'delete-by-lokasi') {
		$lokasi = $_POST['lokasi'];
		$sql = "DELETE FROM barang_detail WHERE lokasi='$lokasi' AND id_unitkerja=$id_unit_kerja";
		mysqli_query($koneksi, $sql);
		// echo $sql;
		$jumlah_delete = mysqli_affected_rows($koneksi);
		header("location:../index.php?p=inventarisperbaikan&msg=delete-success&qty=$jumlah_delete");
		
	} else if ($_POST['aksi'] == 'delete-by-kelompok') {
		$id_barang = $_POST['id_barang'];
		$sql = "DELETE FROM barang_detail WHERE id_barang=$id_barang AND id_unitkerja=$id_unit_kerja";
		mysqli_query($koneksi, $sql);
		// echo $sql;
		$jumlah_delete = mysqli_affected_rows($koneksi);
		header("location:../index.php?p=inventarisperbaikan&msg=delete-success&qty=$jumlah_delete");
	} else if ($_POST['aksi'] == 'delete-all') {
		$sql = "DELETE FROM barang_detail WHERE id_unitkerja=$id_unit_kerja";
		mysqli_query($koneksi, $sql);
		// echo $sql;
		$jumlah_delete = mysqli_affected_rows($koneksi);
		header("location:../index.php?p=inventarisperbaikan&msg=delete-success&qty=$jumlah_delete");
	}
}
