<?php
$tipeakses = $_SESSION['jenisakses'];
$id_unit = $_SESSION['idunit'];
if ($id_unit == '') {
	$id_unit = 0;
}
$sql_cekfinalisasi = "select * from unit_kerja where id_unit=$id_unit";
//echo $sql_cekfinalisasi;
$perintah_cekfinalisasi = mysqli_query($koneksi, $sql_cekfinalisasi);
if (mysqli_num_rows($perintah_cekfinalisasi) >= 1) {
	$r_cekfinalisasi = mysqli_fetch_array($perintah_cekfinalisasi);
	$finalda = $r_cekfinalisasi['final_data_awal'];
} else {
	$finalda = 0;
}
//echo $finalda;
// Mengarahkan Isi Konten Sesuai Navigasi
if (empty($_GET)) {
	include "konten/dashboard.php";
} elseif ($_GET['p'] == 'dashboard') {
	include "konten/dashboard.php";
} elseif ($_GET['p'] == 'bantuan') {
	include "konten/bantuan.php";
} elseif ($_GET['p'] == 'changeprofil' && $tipeakses == 'Unit') {
	include "konten/changeprofil.php";
} elseif ($_GET['p'] == 'unitkerja' && $tipeakses == 'Yayasan') {
	include "konten/unitkerja.php";
} elseif ($_GET['p'] == 'addunitkerja' && $tipeakses == 'Yayasan') {
	include "konten/unitkerja_add.php";
} elseif ($_GET['p'] == 'editunitkerja' && $tipeakses == 'Yayasan') {
	include "konten/unitkerja_edit.php";
} elseif ($_GET['p'] == 'editunitkerja-user' && $tipeakses == 'Yayasan') {
	include "konten/unitkerja_edit_user.php";
} elseif ($_GET['p'] == 'editunitkerja-akses' && $tipeakses == 'Yayasan') {
	include "konten/unitkerja_edit_akses.php";
} elseif ($_GET['p'] == 'kategori' && $tipeakses == 'Yayasan') {
	include "konten/kategori.php";
} elseif ($_GET['p'] == 'addkategori' && $tipeakses == 'Yayasan') {
	include "konten/kategori_add.php";
} elseif ($_GET['p'] == 'editkategori' && $tipeakses == 'Yayasan') {
	include "konten/kategori_edit.php";
} elseif ($_GET['p'] == 'subkategori' && $tipeakses == 'Yayasan') {
	include "konten/subkategori.php";
} elseif ($_GET['p'] == 'addsubkategori' && $tipeakses == 'Yayasan') {
	include "konten/subkategori_add.php";
} elseif ($_GET['p'] == 'editsubkategori' && $tipeakses == 'Yayasan') {
	include "konten/subkategori_edit.php";
} elseif ($_GET['p'] == 'pengguna' && $tipeakses == 'Yayasan') {
	include "konten/pengguna.php";
} elseif ($_GET['p'] == 'barang' && $tipeakses == 'Yayasan') {
	include "konten/barang.php";
} elseif ($_GET['p'] == 'addbarang') {
	include "konten/barang_add.php";
} elseif ($_GET['p'] == 'editbarang' && $tipeakses == 'Yayasan') {
	include "konten/barang_edit.php";
}

// Bahan Habis Pakai	
elseif ($_GET['p'] == 'bahan' && $tipeakses == 'Yayasan') {
	include "konten/bahan.php";
} elseif ($_GET['p'] == 'addbahan' && $tipeakses == 'Yayasan') {
	include "konten/bahan_add.php";
} elseif ($_GET['p'] == 'editbahan' && $tipeakses == 'Yayasan') {
	include "konten/bahan_edit.php";
} elseif ($_GET['p'] == 'imporkatalog') {
	include "konten/impor_katalog.php";
} elseif ($_GET['p'] == 'imporinventaris') {
	include "konten/impor_inventaris.php";
} elseif ($_GET['p'] == 'inventarisrinci') {
	include "konten/inventaris_rinci.php";
} // Coba Coba
elseif ($_GET['p'] == 'inventarisrekap') {
	include "konten/inventaris_rekap.php";
}

// Modul yang hanya diaktifkan di pendataan awal ## START
elseif ($_GET['p'] == 'inventaris' && $finalda == 0 && $tipeakses == 'Unit') {
	include "konten/inventaris.php";
} elseif ($_GET['p'] == 'addinventaris' && $finalda == 0 && $tipeakses == 'Unit') {
	include "konten/inventaris_add.php";
} elseif ($_GET['p'] == 'selesaiaddinventaris' && $finalda == 0 && $tipeakses == 'Unit') {
	include "konten/inventaris_add_selesai.php";
} elseif ($_GET['p'] == 'inventarisgroup-step2' && $finalda == 0 && $tipeakses == 'Unit') {
	include "konten/inventarisgroup.php";
} elseif ($_GET['p'] == 'inventarisgroup-step1' && $finalda == 0 && $tipeakses == 'Unit') {
	include "konten/inventarisgroupadd_1.php";
} elseif ($_GET['p'] == 'inventarisperbaikan' && $finalda == 0 && $tipeakses == 'Unit') {
	include "konten/inventaris_perbaikan.php";
} elseif ($_GET['p'] == 'inventarisperbaikanubah' && $finalda == 0 && $tipeakses == 'Unit') {
	include "konten/inventaris_perbaikan_ubah.php";
} elseif ($_GET['p'] == 'finalisasi-dataawal' && $tipeakses == 'Unit') {
	include "konten/inventaris_finalisasida.php";
}
// Modul yang hanya diaktifkan di awal ## END

elseif ($_GET['p'] == 'tambahitem' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/tambahitem.php";
} elseif ($_GET['p'] == 'tambahitem-bantuan' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/tambahitem_bantuan.php";
} elseif ($_GET['p'] == 'tambahitem-bantuan-rinci' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/tambahitem_bantuan_rinci.php";
} elseif ($_GET['p'] == 'tambahitem-bantuan-step1' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/tambahitem_bantuan_step1.php";
} elseif ($_GET['p'] == 'tambahitem-bantuan-step2' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/tambahitem_bantuan_step2.php";
} elseif ($_GET['p'] == 'tambahitem-bantuan-step3' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/tambahitem_bantuan_step3.php";
} elseif ($_GET['p'] == 'tambahitem-bantuan-step4' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/tambahitem_bantuan_step4.php";
} elseif ($_GET['p'] == 'tambahitem-mandiri' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/tambahitem_mandiri.php";
} elseif ($_GET['p'] == 'tambahitem-mandiri-rinci' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/tambahitem_mandiri_rinci.php";
} elseif ($_GET['p'] == 'tambahitem-mandiri-step1' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/tambahitem_mandiri_step1.php";
} elseif ($_GET['p'] == 'tambahitem-mandiri-step2' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/tambahitem_mandiri_step2.php";
} elseif ($_GET['p'] == 'tambahitem-mandiri-step3' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/tambahitem_mandiri_step3.php";
} elseif ($_GET['p'] == 'tambahitem-mandiri-step4' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/tambahitem_mandiri_step4.php";
} elseif ($_GET['p'] == 'tambahitem' && $tipeakses == 'Yayasan') {
	include "konten/tambahitem_yayasan.php";
} elseif ($_GET['p'] == 'tambahitem-rinci' && $tipeakses == 'Yayasan') {
	include "konten/tambahitem_yayasan_rinci.php";
}
// Approval Bahan Habis Pakai		
elseif ($_GET['p'] == 'habispakai' && $tipeakses == 'Yayasan') {
	include "konten/habispakai_yayasan.php";
} elseif ($_GET['p'] == 'habispakai-rinci' && $tipeakses == 'Yayasan') {
	include "konten/habispakai_yayasan_rinci.php";
} elseif ($_GET['p'] == 'mutasiitem' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/mutasi_item.php";
} elseif ($_GET['p'] == 'mutasiitem-ubahdata' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/mutasi_item_ubahdata.php";
} elseif ($_GET['p'] == 'mutasiitem-ubahdata-broke' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/mutasi_item_ubahdata_broke.php";
} elseif ($_GET['p'] == 'mutasiitem-ubahdata-repair' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/mutasi_item_ubahdata_repair.php";
} elseif ($_GET['p'] == 'mutasiitem-log' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/mutasi_item_log.php";
}

// Modul Bahan Habis Pakai (Unit Kerja)
elseif ($_GET['p'] == 'habispakai' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/habispakai_unit.php";
} elseif ($_GET['p'] == 'habispakai-step1' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/habispakai_unit_step1.php";
} elseif ($_GET['p'] == 'habispakai-step2' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/habispakai_unit_step2.php";
} elseif ($_GET['p'] == 'habispakai-step3' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/habispakai_unit_step3.php";
} elseif ($_GET['p'] == 'habispakai-rinci' && $tipeakses == 'Unit' && $finalda == 1) {
	include "konten/habispakai_unit_rinci.php";
}

// Modul Barcode		
elseif ($_GET['p'] == 'barcode' && $tipeakses == 'Yayasan') {
	include "konten/barcode_by_unit.php";
} elseif ($_GET['p'] == 'barcode-unit' && $tipeakses == 'Yayasan') {
	include "konten/barcode_unit.php";
} elseif ($_GET['p'] == 'barcode-by-lokasi' && $tipeakses == 'Yayasan') {
	include "konten/barcode_list_unit_by_lokasi.php";
} elseif ($_GET['p'] == 'barcode' && $tipeakses == 'Unit') {
	include "konten/barcode_list.php";
} elseif ($_GET['p'] == 'barcode-by-lokasi' && $tipeakses == 'Unit') {
	include "konten/barcode_list_by_lokasi.php";
} elseif ($_GET['p'] == 'hapusitem' && $tipeakses == 'Unit') {
	include "konten/hapusitem.php";
} elseif ($_GET['p'] == 'hapusitem' && $tipeakses == 'Yayasan') {
	include "konten/hapusitem_yayasan.php";
} elseif ($_GET['p'] == 'dataawal-app' && $tipeakses == 'Yayasan') {
	include "konten/dataawal_approval.php";
} elseif ($_GET['p'] == 'hapusitem-step1' && $tipeakses == 'Unit') {
	include "konten/hapusitem-step1.php";
} elseif ($_GET['p'] == 'hapusitem-step2' && $tipeakses == 'Unit') {
	include "konten/hapusitem-step2.php";
} elseif ($_GET['p'] == 'hapusitem-step3' && $tipeakses == 'Unit') {
	include "konten/hapusitem-step3.php";
} elseif ($_GET['p'] == 'hapusitem-rinci') {
	include "konten/hapusitem-rinci.php";
} elseif ($_GET['p'] == 'hapusitem-aksi' && $tipeakses == 'Yayasan') {
	include "konten/hapusitem-aksi.php";
} elseif ($_GET['p'] == 'statistikinven' && $tipeakses == 'Yayasan') {
	include "konten/statistikinven.php";
} elseif ($_GET['p'] == 'statistikinven2' && $tipeakses == 'Yayasan') {
	include "konten/statistikinven2.php";
} elseif ($_GET['p'] == 'statistikinven3' && $tipeakses == 'Yayasan') {
	include "konten/statistikinven3.php";
} elseif ($_GET['p'] == 'statistikunit' && $tipeakses == 'Yayasan') {
	include "konten/statistikunit.php";
} elseif ($_GET['p'] == 'statistikunit') {
	include "konten/statistikunit.php";
} elseif ($_GET['p'] == 'statistikinven' && $tipeakses == 'Unit') {
	include "konten/statistikinven_unit.php";
} elseif ($_GET['p'] == 'statistikinven2' && $tipeakses == 'Unit') {
	include "konten/statistikinven2_unit.php";
} elseif ($_GET['p'] == 'statistikinven3' && $tipeakses == 'Unit') {
	include "konten/statistikinven3_unit.php";
} elseif ($_GET['p'] == 'statistikperkondisi') {
	include "konten/statistikperkondisi.php";
}
// Konten Maintenance [START]					
elseif ($_GET['p'] == 'backup') {
	include "konten/backup.php";
} elseif ($_GET['p'] == 'restore' && $tipeakses == 'Yayasan') {
	include "konten/restore.php";
}
// Konten Maintenance [END]		
else {
	include "konten/akses_ditolak.php";
}
