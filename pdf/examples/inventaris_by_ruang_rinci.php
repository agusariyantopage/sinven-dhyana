<?php
session_start();
include '../../koneksi.php';
$id_unit= $_SESSION['idunit'];
$sql3="select * from unit_kerja where id_unit=$id_unit";
        $perintah3=mysqli_query($koneksi,$sql3);
        $r3=mysqli_fetch_array($perintah3);
        $ketum=$r3['nama_pimpinan'];
        $kasarpras=$r3['nama_kasarpras'];
        $nama_panjang=$r3['nama_panjang'];

//============================================================+
// File name   : example_006.php
// Begin       : 2008-03-04
// Last Update : 2013-05-14
//
// Description : Example 006 for TCPDF class
//               WriteHTML and RTL support
//
// Author: Nicola Asuni
//
// (c) Copyright:
//               Nicola Asuni
//               Tecnick.com LTD
//               www.tecnick.com
//               info@tecnick.com
//============================================================+

/**
 * Creates an example PDF TEST document using TCPDF
 * @package com.tecnick.tcpdf
 * @abstract TCPDF - Example: WriteHTML and RTL support
 * @author Nicola Asuni
 * @since 2008-03-04
 */

// Include the main TCPDF library (search for installation path).
require_once('tcpdf_include.php');

// create new PDF document
$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Yayasan Triatma Surya Jaya');
$pdf->SetTitle('Daftar Inventaris Per Ruangan');
$pdf->SetSubject('Cetak Rekap');
$pdf->SetKeywords('TCPDF, PDF, example, test, guide');

// set default header data
$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING);

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

// set auto page breaks
$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language-dependent strings (optional)
if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
	require_once(dirname(__FILE__).'/lang/eng.php');
	$pdf->setLanguageArray($l);
}

// ---------------------------------------------------------

// set font
$pdf->SetFont('dejavusans', '', 10);

$pdf->AddPage();
$html ='<b>Daftar Rinci Inventaris Per Ruangan</b>';
$lokasi=$_GET['lok'];
if($_SESSION['level']==1) {
    $sql1="select barang_detail.*,barang.*,nama_panjang from barang_detail,barang,unit_kerja where barang_detail.id_barang=barang.id_barang and unit_kerja.id_unit=barang_detail.id_unitkerja and md5(lokasi)='$lokasi' GROUP BY barang_detail.id_unitkerja,lokasi";
  } else {
    //$id_unit= $_SESSION['idunit'];
    $sql1="select barang_detail.*,barang.*,nama_panjang from barang_detail,barang,unit_kerja where barang_detail.id_barang=barang.id_barang and unit_kerja.id_unit=barang_detail.id_unitkerja and barang_detail.id_unitkerja=$id_unit and md5(lokasi)='$lokasi' GROUP BY barang_detail.id_unitkerja,lokasi";
  }
  // -- Akses Yayasan / Unit Kerja  
  //echo $sql;
  $perintah1=mysqli_query($koneksi,$sql1);
  while ($r1=mysqli_fetch_array($perintah1)) { 
  	$lok=$r1['lokasi'];
  	$idu=$r1['id_unitkerja'];
	$html.='<br><br>Unit Kerja/Lokasi : '.$r1['nama_panjang'].'/'.$r1['lokasi'].'<br><br>';

	$html.='<table style=" border-collapse: collapse;" border="1">
	<thead>
    <tr>
	    <th width="5%"  align="center">No</th>                
	    <th width="15%"  align="center">Barcode</th>    
	    <th width="35%" align="center">Deskripsi</th> 
	    <th width="10%" align="center">Kondisi</th>    
	    <th width="15%" align="center">Tgl Masuk</th>    
	    <th width="20%" align="center">Nilai Perolehan</th>    
	</tr>
    </thead>
	<tbody>

	';
	if($_SESSION['level']==1) {
	    $sql="select barang_detail.*,barang.*,nama_panjang from barang_detail,barang,unit_kerja where barang_detail.id_barang=barang.id_barang and unit_kerja.id_unit=barang_detail.id_unitkerja and lokasi='$lok' and barang_detail.id_unitkerja=$idu ";
	  } else {
	    $id_unit= $_SESSION['idunit'];
	    $sql="select barang_detail.*,barang.*,nama_panjang from barang_detail,barang,unit_kerja where barang_detail.id_barang=barang.id_barang and unit_kerja.id_unit=barang_detail.id_unitkerja and barang_detail.id_unitkerja=$id_unit and lokasi='$lok' order by deskripsi ";
	  }
	  // -- Akses Yayasan / Unit Kerja  
	  //echo $sql;
	  $perintah=mysqli_query($koneksi,$sql);
	  $no=1;
      $tot=0;	
	  while ($r=mysqli_fetch_array($perintah)) { 	  	 
		 //$tot=$r['qty_baik']+$r['qty_rusak'];
         $tot=$tot+$r['nilai_perolehan'];
		 $html.='<tr>
		  	<td width="5%">'.$no.'</td>
		    <td width="15%">'.$r['id_barang_detail'].'</td>
		    <td width="35%">'.$r['deskripsi'].'</td>		    
		    <td width="10%">'.$r['kondisi'].'</td>		    
		    <td width="15%">'.$r['tanggal_input'].'</td>		    
		    <td width="20%" align="right">'.number_format($r['nilai_perolehan']).'</td>		    
			</tr>';
			$no++;
	}
	$html.='
    <tr>
    <td colspan="5" align="center"><b>Total Nilai Aset Inventaris</b></td>
    <td align="right"><b>'.number_format($tot).'</b></td>
    </tr>
    </tbody>
    </table>';
}


$pdf->writeHTML($html, true, true, true, true, '');
//$pdf->writeHTML($html, true, false, true, false, '');
// ---------------------------------------------------------

//Close and output PDF document
$pdf->Output('rekapitulasi_per_ruang.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+