<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0">Statistik Data Inventaris</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Statistik</a></li>
          <li class="breadcrumb-item active">Unit Kerja</li>
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
            <h3 class="card-title">Statistik Per Unit Kerja</h3>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <table id="example1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>ID </th>
                  <th>Unit Kerja</th>
                  <th>Jml Baik</th>
                  <th>Jml Rusak</th>
                  <th>Jml Hilang</th>
                  <th>Jml Total</th>
                  <th>Nilai Perolehan</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $sum_baik = 0;
                $sum_rusak = 0;
                $sum_hilang = 0;
                $sum_total_item = 0;
                $sum_perolehan = 0;

                $sql = "SELECT unit_kerja.id_unit,unit_kerja.nama_panjang,COUNT(IF(kondisi = 'Baik', 1, NULL)) as qty_baik,COUNT(IF(kondisi = 'Rusak', 1, NULL)) as qty_rusak,COUNT(IF(kondisi = 'Hilang', 1, NULL)) as qty_hilang,SUM(barang_detail.nilai_perolehan) as total_perolehan,barang_detail.tanggal_input from unit_kerja left join barang_detail on unit_kerja.id_unit=barang_detail.id_unitkerja GROUP by unit_kerja.nama_panjang";
                // $sql="SELECT unit_kerja.id_unit,unit_kerja.nama_panjang,COUNT(IF(kondisi = 'Baik', 1, NULL)) as qty_baik,COUNT(IF(kondisi = 'Rusak', 1, NULL)) as qty_rusak,barang_detail.tanggal_input from unit_kerja left join barang_detail on unit_kerja.id_unit=barang_detail.id_unitkerja GROUP by unit_kerja.nama_panjang";

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
                  $sum_baik = $sum_baik+$qty_baik;
                  $sum_rusak = $sum_rusak+$qty_rusak;
                  $sum_hilang = $sum_hilang+$qty_hilang;
                  $sum_total_item = $sum_total_item+$total_item;
                  $sum_perolehan = $sum_perolehan+$r['total_perolehan'];
                  


                ?>
                  <tr>
                    <td><?= $r['id_unit']; ?></td>
                    <td><a href="xls-output/neraca_aset_unit.php?id_unit=<?= $r['id_unit']; ?>&unit=<?= $r['nama_panjang']; ?>"><?= $r['nama_panjang']; ?></a></td>
                    <td align="right"><?= $r['qty_baik']; ?> (<?= $Psqty_baik; ?>%)</td>
                    <td align="right"><?= $r['qty_rusak']; ?> (<?= $Psqty_rusak; ?>%)</td>
                    <td align="right"><?= $r['qty_hilang']; ?> (<?= $Psqty_hilang; ?>%)</td>
                    <td align="right"><?= $total_item; ?></td>
                    <td align="right"><?= number_format($r['total_perolehan']); ?></td>
                  </tr>
                <?php
                }
                ?>
              </tbody>
              <tfoot align="right">
                <tr>
                  <th colspan="2">Grandtotal</th>                  
                  <th align="right"><?= number_format($sum_baik); ?></th>
                  <th align="right"><?= number_format($sum_rusak); ?></th>
                  <th align="right"><?= number_format($sum_hilang); ?></th>
                  <th align="right"><?= number_format($sum_total_item); ?></th>
                  <th align="right"><?= number_format($sum_perolehan); ?></th>
                 
                </tr>
              </tfoot>
            </table>
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