<?php
session_start();
require '../vendor/autoload.php';
include '../koneksi.php';
$id_unit = $_GET['id_unit'];
$unit_kerja = $_GET['unit'];

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();
$sheet->setCellValue('A1', 'NERACA ASET');
$sheet->getStyle('A1')->getFont()->setBold(true);
$sheet->mergeCells('A1:B1');

$sheet->setCellValue('A2', '');
$waktu_unduh = date('Y-m-d H:i:s');
$waktu_unduh = str_replace(".", "", $waktu_unduh);
$sheet->setCellValue('A3', 'Unit Kerja');

$sheet->setCellValue('B3', $unit_kerja);
$sheet->setCellValue('A4', 'Waktu Unduh');
$sheet->setCellValue('B4', ': ' . $waktu_unduh);
$sheet->setCellValue('A5', '');


// Menampilkan Kategori
$grandtotal = 0;
$sql = "SELECT * from kategori order by kategori";
$perintah = mysqli_query($koneksi, $sql);
$nextRow = 6;
while ($kolom = mysqli_fetch_array($perintah)) {
    $sheet->setCellValue('A' . $nextRow, $kolom['kategori']);
    $sheet->mergeCells('A' . $nextRow . ':' . 'E' . $nextRow);
    $sheet->getStyle('A' . $nextRow)->getFont()->setBold(true);
    $nextRow++;
    $id_kategori = $kolom['id_kategori'];
    $sql2 = "SELECT * from subkategori where id_kategori=$id_kategori";
    $perintah2 = mysqli_query($koneksi, $sql2);
    while ($kolom2 = mysqli_fetch_array($perintah2)) {
        $id_subkategori = $kolom2['id_subkategori'];

        $sql3 = "SELECT sum(nilai_perolehan) as total from barang_detail,barang where barang_detail.id_barang=barang.id_barang and id_subkategori=$id_subkategori and barang_detail.id_unitkerja=$id_unit";

        $perintah3 = mysqli_query($koneksi, $sql3);
        $r3 = mysqli_fetch_array($perintah3);
        $total_subkategori = $r3['total'];
        if (is_null($total_subkategori)) {
            $total_subkategori = 0;
        }
        $grandtotal = $grandtotal + $total_subkategori;

        $sheet->setCellValue('A' . $nextRow, $kolom2['subkategori']);
        $sheet->getStyle('A' . $nextRow)->getFont()->setBold(true);
        $sheet->mergeCells('A' . $nextRow . ':' . 'D' . $nextRow);
        $sheet->setCellValue('E' . $nextRow, $total_subkategori);
        $sheet->getStyle('E' . $nextRow)->getAlignment()->setHorizontal('right');
        $sheet->getStyle('E' . $nextRow)->getNumberFormat()->setFormatCode('#,##0.00');
        $nextRow++;
        // Menampilkan Rincian Barang
       
            $sql_detail = "SELECT barang_detail.*,barang.* FROM barang_detail,barang where barang_detail.id_barang=barang.id_barang and id_subkategori=$id_subkategori and barang_detail.id_unitkerja=$id_unit";
        
        $perintah_detail = mysqli_query($koneksi, $sql_detail);
        while ($kolom_detail = mysqli_fetch_array($perintah_detail)) {
            $sheet->setCellValue('B' . $nextRow, $kolom_detail['catatan']);
            $sheet->setCellValue('C' . $nextRow,  $kolom_detail['kondisi']);
            $sheet->setCellValue('C' . $nextRow,  $kolom_detail['tanggal_perolehan']);
            $sheet->setCellValue('D' . $nextRow,  $kolom_detail['nilai_perolehan']);
            $sheet->getStyle('D' . $nextRow)->getAlignment()->setHorizontal('right');
            $sheet->getStyle('D' . $nextRow)->getNumberFormat()->setFormatCode('#,##0.00');
            $nextRow++;
        }
    }
}

$sheet->setCellValue('A' . $nextRow, 'GRANDTOTAL');
$sheet->mergeCells('A' . $nextRow . ':' . 'D' . $nextRow);
$sheet->setCellValue('E' . $nextRow, $grandtotal);
$sheet->getStyle('A' . $nextRow)->getFont()->setBold(true);
$sheet->getStyle('E' . $nextRow)->getFont()->setBold(true);
$sheet->getStyle('E' . $nextRow)->getAlignment()->setHorizontal('right');
$sheet->getStyle('E' . $nextRow)->getNumberFormat()->setFormatCode('#,##0.00');

$styleArray = [
    'borders' => [
        'allBorders' => [
            'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
            'color' => ['argb' => '00000000'],
        ],
    ],
];

$sheet->getStyle('A6' . ':' . 'E' . $nextRow)->applyFromArray($styleArray);

// SET AUTOWIDTH COLOUMN
for ($i = 'A'; $i !=  $spreadsheet->getActiveSheet()->getHighestColumn(); $i++) {
    $spreadsheet->getActiveSheet()->getColumnDimension($i)->setAutoSize(TRUE);
}
$sheet->getColumnDimension('E')->setAutoSize(true);

// FILENAME
$date = date('Y_m_d_H_i_s');
$date = str_replace(".", "", $date);
$filename = "neraca_" . $date . ".xlsx";

try {
    $writer = new Xlsx($spreadsheet);
    $writer->save($filename);
    $content = file_get_contents($filename);
} catch (Exception $e) {
    exit($e->getMessage());
}

header("Content-Disposition: attachment; filename=" . $filename);

unlink($filename);
exit($content);
