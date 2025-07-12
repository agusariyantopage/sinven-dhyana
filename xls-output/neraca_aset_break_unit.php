<?php
session_start();
require '../vendor/autoload.php';
include '../koneksi.php';

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
if ($_SESSION['level'] == 1) {
    $unit_kerja = 'Semua Unit';
} else {
    $unit_kerja = $_SESSION['namalengkap'];
}

$sheet->setCellValue('B3', $unit_kerja);
$sheet->setCellValue('A4', 'Waktu Unduh');
$sheet->setCellValue('B4', ': ' . $waktu_unduh);
// $sheet->getCellByColumnAndRow(2,4)->setValue(': '.$waktu_unduh);
$sheet->setCellValue('A5', '');

// Membuat Kelompok Unit Kerja
$sheet->setCellValue('A6', 'KELOMPOK INVENTARIS');
$nextColoumn = 2;
$sql_get_unit = "SELECT * FROM unit_kerja ORDER BY nama_panjang";
$perintah_get_unit = mysqli_query($koneksi, $sql_get_unit);
while ($kolom_unit = mysqli_fetch_array($perintah_get_unit)) {
    $sheet->getCellByColumnAndRow($nextColoumn, 6)->setValue($kolom_unit['nama_panjang']);
    $nextColoumn++;
}
$sheet->getCellByColumnAndRow($nextColoumn, 6)->setValue('TOTAL');
// Menampilkan Kategori
$grandtotal = 0;
$sql = "SELECT * from kategori order by kategori";
$perintah = mysqli_query($koneksi, $sql);
$nextRow = 7;
while ($kolom = mysqli_fetch_array($perintah)) { // While Kategori
    $sheet->setCellValue('A' . $nextRow, $kolom['kategori']);
    // $sheet->mergeCells('A' . $nextRow . ':' . 'B' . $nextRow);
    $sheet->getStyle('A' . $nextRow)->getFont()->setBold(true);
    $nextRow++;
    $id_kategori = $kolom['id_kategori'];
    $sql2 = "SELECT * from subkategori where id_kategori=$id_kategori";
    $perintah2 = mysqli_query($koneksi, $sql2);
    while ($kolom2 = mysqli_fetch_array($perintah2)) { // While Subkategori
        $sheet->setCellValue('A' . $nextRow, $kolom2['subkategori']);
        $id_subkategori = $kolom2['id_subkategori'];

        $nextColoumn = 2;
        $sql_get_unit = "SELECT * FROM unit_kerja ORDER BY nama_panjang";
        $perintah_get_unit = mysqli_query($koneksi, $sql_get_unit);
        while ($kolom_unit = mysqli_fetch_array($perintah_get_unit)) {

            $id_unit = $kolom_unit['id_unit'];
            $sql3 = "SELECT sum(nilai_perolehan) as total from barang_detail,barang where barang_detail.id_barang=barang.id_barang and id_subkategori=$id_subkategori and barang_detail.id_unitkerja=$id_unit";

            $perintah3 = mysqli_query($koneksi, $sql3);
            $r3 = mysqli_fetch_array($perintah3);
            $total_subkategori = $r3['total'];
            if (is_null($total_subkategori)) {
                $total_subkategori = 0;
            }
            $sheet->getCellByColumnAndRow($nextColoumn, $nextRow)->setValue($total_subkategori);
            $grandtotal = $grandtotal + $total_subkategori;


            $sheet->getStyleByColumnAndRow($nextColoumn, $nextRow)->getAlignment()->setHorizontal('right');
            $sheet->getStyleByColumnAndRow($nextColoumn, $nextRow)->getNumberFormat()->setFormatCode('#,##0.00');
            $sheet->getColumnDimensionByColumn($nextColoumn + 1)->setAutoSize(true);
            $nextColoumn++;
        }

        // SUM Per Sub Kategori
        $sumSubkategori = "=SUM(" . $sheet->getCellByColumnAndRow(2, $nextRow)->getCoordinate() . ":" . $sheet->getCellByColumnAndRow($nextColoumn, $nextRow)->getCoordinate() . ")";
        $sheet->getCellByColumnAndRow($nextColoumn, $nextRow)->setValue($sumSubkategori); // Total Subkategori
        $sheet->getStyleByColumnAndRow($nextColoumn, $nextRow)->getAlignment()->setHorizontal('right');
        $sheet->getStyleByColumnAndRow($nextColoumn, $nextRow)->getNumberFormat()->setFormatCode('#,##0.00');
        $nextRow++;
    }
}

// SUMMARY OF UNIT
$sheet->setCellValue('A' . $nextRow, 'GRANDTOTAL');
$sheet->getStyle('A' . $nextRow)->getFont()->setBold(true);
$nextColoumn = 2;
$sql_get_unit = "SELECT * FROM unit_kerja ORDER BY nama_panjang";
$perintah_get_unit = mysqli_query($koneksi, $sql_get_unit);
while ($kolom_unit = mysqli_fetch_array($perintah_get_unit)) {
    $sumUnitKerja = "=SUM(" . $sheet->getCellByColumnAndRow($nextColoumn, 7)->getCoordinate() . ":" . $sheet->getCellByColumnAndRow($nextColoumn, $nextRow)->getCoordinate() . ")";
    $sheet->getCellByColumnAndRow($nextColoumn, $nextRow)->setValue($sumUnitKerja); // Total UnitKerja
    $sheet->getStyleByColumnAndRow($nextColoumn, $nextRow)->getAlignment()->setHorizontal('right');
    $sheet->getStyleByColumnAndRow($nextColoumn, $nextRow)->getNumberFormat()->setFormatCode('#,##0.00');
    $nextColoumn++;
}
$sumUnitKerja = "=SUM(" . $sheet->getCellByColumnAndRow($nextColoumn, 7)->getCoordinate() . ":" . $sheet->getCellByColumnAndRow($nextColoumn, $nextRow)->getCoordinate() . ")";
$sheet->getCellByColumnAndRow($nextColoumn, $nextRow)->setValue($sumUnitKerja); // Total UnitKerja
$sheet->getStyleByColumnAndRow($nextColoumn, $nextRow)->getAlignment()->setHorizontal('right');
$sheet->getStyleByColumnAndRow($nextColoumn, $nextRow)->getNumberFormat()->setFormatCode('#,##0.00');
// $sheet->setCellValue('B' . $nextRow, $grandtotal);
// $sheet->getStyle('B' . $nextRow)->getFont()->setBold(true);
// $sheet->getStyle('B' . $nextRow)->getAlignment()->setHorizontal('right');
// $sheet->getStyle('B' . $nextRow)->getNumberFormat()->setFormatCode('#,##0.00');

// Set Border
$styleArray = [
    'borders' => [
        'allBorders' => [
            'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
            'color' => ['argb' => '00000000'],
        ],
    ],
];

$sheet->getStyle('A6' . ':' . 'G' . $nextRow)->applyFromArray($styleArray);

// SET AUTOWIDTH COLOUMN
for ($i = 'A'; $i !=  $spreadsheet->getActiveSheet()->getHighestColumn(); $i++) {
    $spreadsheet->getActiveSheet()->getColumnDimension($i)->setAutoSize(TRUE);
}


// FILENAME
$date = date('Y_m_d_H_i_s');
$date = str_replace(".", "", $date);
$filename = "neraca_breakdown_perunit_" . $date . ".xlsx";

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
