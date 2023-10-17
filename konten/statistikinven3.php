<?php
$id = $_GET['id'];
$sql1 = "select * from subkategori where id_subkategori=$id";
//echo $sql1;
$query1 = mysqli_query($koneksi, $sql1);
$kol1 = mysqli_fetch_array($query1);
$judul = $kol1['subkategori'];

$idkat = $_GET['idkat'];
$sql2 = "select * from kategori where id_kategori=$idkat";
//echo $sql1;
$query2 = mysqli_query($koneksi, $sql2);
$kol2 = mysqli_fetch_array($query2);
$judul2 = $kol2['kategori'];

?>
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
          <li class="breadcrumb-item"><a href="index.php?p=statistikinven">Inventaris Umum</a></li>
          <li class="breadcrumb-item"><a href="index.php?p=statistikinven2&id=<?= $idkat; ?>"><?= $judul2; ?></a></li>
          <li class="breadcrumb-item active"><?= $judul; ?></li>
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
            <h3 class="card-title">Statistik Per Barang</h3>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <table id="example1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <!-- <th>ID </th>
                    <th>Deskripsi</th>                    
                    <th>Jml Baik</th>                                      
                    <th>Jml Rusak</th>
                    <th>Jml Total</th> -->
                  <th>ID </th>
                  <th>Deskripsi</th>
                  <th>Spesifikasi</th>
                  <th>Kondisi</th>
                  <th>Unit</th>
                  <th>Lokasi Barang</th>
                  <th>Catatan</th>
                  <th>Tanggal Perolehan</th>
                  <th>Nilai Perolehan</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $id = $_GET['id'];
                $grandtotal=0;
                $sql = "SELECT barang_detail.*,deskripsi,spesifikasi,nama_panjang from barang_detail,barang,unit_kerja where barang_detail.id_barang=barang.id_barang and unit_kerja.id_unit=barang_detail.id_unitkerja and barang.id_subkategori=$id";
                // $sql = "SELECT barang_detail.id_barang,barang.deskripsi,COUNT(IF(kondisi = 'Baik', 1, NULL)) as qty_baik,COUNT(IF(kondisi = 'Rusak', 1, NULL)) as qty_rusak from barang LEFT JOIN barang_detail on barang_detail.id_barang=barang.id_barang where barang.id_subkategori=$id GROUP by barang.deskripsi";

                // -- Akses Yayasan / Unit Kerja 

                // echo $sql;
                $perintah = mysqli_query($koneksi, $sql);
                while ($r = mysqli_fetch_array($perintah)) {
                  $grandtotal=$grandtotal+$r['nilai_perolehan'];
                ?>
                  <tr>
                    <td>
                      <?= $r['id_barang_detail']; ?>

                    </td>
                    <td><?= $r['deskripsi']; ?></td>
                    <td><?= $r['spesifikasi']; ?></td>
                    <td>
                      <?php
                      if ($r['kondisi'] == 'Baik') {
                        echo "<span class='badge badge-success'>";
                      } else {
                        echo "<span class='badge badge-danger'>";
                      }
                      echo $r['kondisi'];
                      echo "</span>";
                      ?>
                    </td>
                    <td><?= $r['nama_panjang']; ?></td>
                    <td><?= $r['lokasi']; ?></td>
                    <td><?= $r['catatan']; ?></td>
                    <td><?= $r['tanggal_perolehan']; ?></td>
                    <td align="right"><?= number_format($r['nilai_perolehan']); ?></td>
                  </tr>
                <?php
                }
                ?>
              </tbody>
              <tfoot align="right">
                <tr>
                  <th colspan="8">Grandtotal</th>
                  
                  <th><?= number_format($grandtotal); ?></th>
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