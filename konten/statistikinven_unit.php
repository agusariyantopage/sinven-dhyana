<?php
$id_unit=$_SESSION['idunit'];
?>
<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h3 class="m-0">Statistik [<?=$_SESSION['namalengkap']; ?>]</h3>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Statistik</a></li>
          <li class="breadcrumb-item active">Inventaris Umum</li>
        </ol>
      </div><!-- /.col -->
    </div><!-- /.row -->
  </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->
<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card card-primary">
          <div class="card-header">
            <h3 class="card-title">Statistik Per Kategori</h3>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
          <table id="example1" class="table table-sm table-bordered table-striped">
              <thead>
                <tr>
                  <th>ID </th>
                  <th>Kategori</th>
                  <th>Jml Baik</th>
                  <th>Jml Rusak</th>
                  <th>Jml Hilang</th>
                  <th>Jml Total</th>
                  <th>NP Baik</th>
                  <th>NP Rusak</th>
                  <th>NP Hilang</th>
                  <th>NP Total</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $sum_baik = 0;
                $sum_rusak = 0;
                $sum_hilang = 0;
                $sum_total_item = 0;
                $sum_perolehan = 0;
                $sum_nilai_baik=0;
                $sum_nilai_rusak=0;
                $sum_nilai_hilang=0;

                $sql = "SELECT kategori.id_kategori,kategori,COUNT(IF(kondisi = 'Baik' AND id_unitkerja=$id_unit, 1, NULL)) as qty_baik,COUNT(IF(kondisi = 'Rusak' AND id_unitkerja=$id_unit, 1, NULL)) as qty_rusak,COUNT(IF(kondisi = 'Hilang' AND id_unitkerja=$id_unit, 1, NULL)) as qty_hilang,SUM(IF(kondisi = 'Baik' AND id_unitkerja=$id_unit, nilai_perolehan, 0)) as nilai_baik,SUM(IF(kondisi = 'Hilang' AND id_unitkerja=$id_unit, nilai_perolehan, 0)) as nilai_hilang,SUM(IF(kondisi = 'Rusak' AND id_unitkerja=$id_unit, nilai_perolehan, 0)) as nilai_rusak,SUM(IF(id_unitkerja=$id_unit,barang_detail.nilai_perolehan,0)) as total_perolehan from kategori left join subkategori on kategori.id_kategori=subkategori.id_kategori LEFT JOIN barang on barang.id_subkategori=subkategori.id_subkategori left join barang_detail on barang_detail.id_barang=barang.id_barang GROUP by kategori.id_kategori";

                // -- Akses Yayasan / Unit Kerja 

                // echo $sql;
                $perintah = mysqli_query($koneksi, $sql);
                while ($r = mysqli_fetch_array($perintah)) {
                  $qty_baik = $r['qty_baik'];
                  $qty_rusak = $r['qty_rusak'];
                  $qty_hilang = $r['qty_hilang'];
                  $total_item = $r['qty_baik'] + $r['qty_rusak'] + $r['qty_hilang'];
                  if ($total_item > 0) {
                    $Psqty_baik = round($qty_baik / $total_item * 100, 2);
                    $Psqty_rusak = round($qty_rusak / $total_item * 100, 2);
                    $Psqty_hilang = round($qty_hilang / $total_item * 100, 2);
                  } else {
                    $Psqty_baik = 0;
                    $Psqty_rusak = 0;
                    $Psqty_hilang = 0;
                  }
                  $sum_baik = $sum_baik + $qty_baik;
                  $sum_rusak = $sum_rusak + $qty_rusak;
                  $sum_hilang = $sum_hilang + $qty_hilang;
                  $sum_total_item = $sum_total_item + $total_item;
                  $sum_perolehan = $sum_perolehan + $r['total_perolehan'];
                  $sum_nilai_baik = $sum_nilai_baik + $r['nilai_baik'];
                  $sum_nilai_hilang = $sum_nilai_hilang + $r['nilai_hilang'];
                  $sum_nilai_rusak = $sum_nilai_rusak + $r['nilai_rusak'];

                ?>
                  <tr>
                    <td><?= $r['id_kategori']; ?></td>
                    <td><a href="index.php?p=statistikinven2&id=<?= $r['id_kategori']; ?>"><?= $r['kategori']; ?></a></td>
                    <td align="right"><?= $r['qty_baik']; ?> (<?= $Psqty_baik; ?>%)</td>
                    <td align="right"><?= $r['qty_rusak']; ?> (<?= $Psqty_rusak; ?>%)</td>
                    <td align="right"><?= $r['qty_hilang']; ?> (<?= $Psqty_hilang; ?>%)</td>
                    <td align="right"><?= $total_item; ?></td>
                    <td align="right"><?= number_format($r['nilai_baik']); ?></td>
                    <td align="right"><?= number_format($r['nilai_rusak']); ?></td>
                    <td align="right"><?= number_format($r['nilai_hilang']); ?></td>
                    <td align="right"><?= number_format($r['total_perolehan']); ?></td>
                  </tr>
                <?php
                }
                ?>
              </tbody>
              <tfoot align="right">
                <tr>
                  <th colspan="2">Grandtotal</th>
                  
                  <th align="right"><a class="text-dark" href="index.php?p=statistikperkondisi&kondisi=Baik&id_unit=<?= $id_unit; ?>"><?= number_format($sum_baik); ?></a></th>
                  <th align="right"><a class="text-dark" href="index.php?p=statistikperkondisi&kondisi=Rusak&id_unit=<?= $id_unit; ?>"><?= number_format($sum_rusak); ?></a></th>
                  <th align="right"><a class="text-dark" href="index.php?p=statistikperkondisi&kondisi=Hilang&id_unit=<?= $id_unit; ?>"><?= number_format($sum_hilang); ?></a></th>
                  <th align="right"><?= number_format($sum_total_item); ?></th>
                  <th align="right"><?= number_format($sum_nilai_baik); ?></th>
                  <th align="right"><?= number_format($sum_nilai_rusak); ?></th>
                  <th align="right"><?= number_format($sum_nilai_hilang); ?></th>
                  <th align="right"><?= number_format($sum_perolehan); ?></th>
                 
                </tr>
              </tfoot>
            </table>
            <i>NP = Nilai Perolehan</i>
          </div>
          <!-- /.card-body -->
        </div>
        <!-- /.card -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </div>
  <!-- /.container-fluid -->
</section>
<!-- Main content -->