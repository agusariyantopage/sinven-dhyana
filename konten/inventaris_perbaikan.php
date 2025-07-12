<?php

?>
<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0">Perbaikan Data Awal</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Inventaris</a></li>
          <li class="breadcrumb-item"><a href="#">Input Inventaris</a></li>
          <li class="breadcrumb-item active">Perbaikan Data</li>
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
            <h3 class="card-title">Daftar Rekapitulasi Inventaris Per Lokasi</h3>
          </div>

          <!-- /.card-header -->
          <div class="card-body">
            <?php
            if (!empty($_GET['msg'])) {
              $msg = $_GET['msg'];
              $qty = $_GET['qty'];
              if ($msg == 'delete-success') {
                echo "<p class='text-success'>$qty Data Berhasil Dihapus !!</p>";
              } else {
                echo "<p class='text-success'>$qty Data Berhasil Diubah !!</p>";
              }
            }
            ?>

            <!-- Navigasi Hapus Kelompok -->
            <button type="button" class="btn btn-danger mb-2" data-toggle="modal" data-target="#modalGroupDelete">
              <i class="fas fa-trash"></i> Group Delete</button>

            <table id="example1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th rowspan="2">Lokasi</th>
                  <th rowspan="2">Deskripsi</th>
                  <th rowspan="2">Catatan</th>
                  <th rowspan="2">Tanggal Perolehan</th>
                  <th rowspan="2">Nilai Perolehan</th>
                  <th rowspan="2">Unit Kerja</th>
                  <th colspan="4" style="text-align:center;">Jumlah Barang</th>
                  <th rowspan="2">Aksi</th>
                </tr>
                <tr>
                  <th>Baik</th>
                  <th>Rusak</th>
                  <th>Hilang</th>
                  <th>Total</th>
                </tr>
              </thead>
              <tbody>
                <?php
                // Akses Yayasan / Unit Kerja
                if ($_SESSION['level'] == 1) {
                  $sql = "SELECT barang_detail.*,barang.*,nama_panjang,COUNT(IF(kondisi = 'Baik', 1, NULL)) as qty_baik,COUNT(IF(kondisi = 'Rusak', 1, NULL)) as qty_rusak,COUNT(IF(kondisi = 'Hilang', 1, NULL)) as qty_hilang from barang_detail,barang,unit_kerja where barang_detail.id_barang=barang.id_barang and unit_kerja.id_unit=barang_detail.id_unitkerja GROUP BY barang_detail.id_barang,barang_detail.id_unitkerja,lokasi";
                } else {
                  $id_unit = $_SESSION['idunit'];
                  $sql = "SELECT barang_detail.*,barang.*,nama_panjang,COUNT(IF(kondisi = 'Baik', 1, NULL)) as qty_baik,COUNT(IF(kondisi = 'Rusak', 1, NULL)) as qty_rusak,COUNT(IF(kondisi = 'Hilang', 1, NULL)) as qty_hilang from barang_detail,barang,unit_kerja where barang_detail.id_barang=barang.id_barang and unit_kerja.id_unit=barang_detail.id_unitkerja and barang_detail.id_unitkerja=$id_unit GROUP BY barang_detail.id_barang,barang_detail.id_unitkerja,lokasi,nilai_perolehan,tanggal_perolehan,barang_detail.catatan";
                }
                // -- Akses Yayasan / Unit Kerja  
                //echo $sql;
                $perintah = mysqli_query($koneksi, $sql);
                while ($r = mysqli_fetch_array($perintah)) {
                ?>
                  <tr>
                    <td><?= $r['lokasi']; ?></td>
                    <td><?= $r['deskripsi']; ?></td>
                    <td><?= $r['catatan']; ?></td>
                    <td><?= $r['tanggal_perolehan']; ?></td>
                    <td align="right"><?= number_format($r['nilai_perolehan']); ?></td>
                    <td><?= $r['nama_panjang']; ?></td>
                    <td><?= $r['qty_baik']; ?></td>
                    <td><?= $r['qty_rusak']; ?></td>
                    <td><?= $r['qty_hilang']; ?></td>
                    <td><?= $r['qty_baik'] + $r['qty_rusak']+ $r['qty_hilang']; ?></td>
                    <td>
                      <a href="index.php?p=inventarisperbaikanubah&lokasi=<?= $r['lokasi']; ?>&id_unitkerja=<?= $r['id_unitkerja']; ?>&id_barang=<?= $r['id_barang']; ?>&qtybaik=<?= $r['qty_baik']; ?>&qtyrusak=<?= $r['qty_rusak']; ?>&qtyhilang=<?= $r['qty_hilang']; ?>&nilai_perolehan=<?= $r['nilai_perolehan']; ?>&tanggal_perolehan=<?= $r['tanggal_perolehan']; ?>&catatan=<?= $r['catatan']; ?>"><span class="fas fa-edit"></span></a>
                      &nbsp;
                      <a href="aksi_inventarisperbaikan_hapus.php?lokasi=<?= $r['lokasi']; ?>&id_unitkerja=<?= $r['id_unitkerja']; ?>&id_barang=<?= $r['id_barang']; ?>&nilai_perolehan=<?= $r['nilai_perolehan']; ?>&catatan=<?= $r['catatan']; ?>" onclick="return confirm('Apakah Anda Yakin Akan Menghapus Semua Data Inventaris Pada Lokasi Ini?')"><span class="fas fa-trash"></span></a>
                      &nbsp;
                    </td>

                  </tr>
                <?php
                }
                ?>
              </tbody>
            </table><br>

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

<!-- Modal -->
<div class="modal fade" id="modalGroupDelete" tabindex="-1" aria-labelledby="modalGroupDeleteLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalGroupDeleteLabel">Hapus Data Secara Berkelompok</h5>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="aksi/barang_hapus_massal.php" method="post">
          <label for="">-- Hapus Berdasarkan Lokasi --</label>
          <select class="form-control select2bs4" name="lokasi" required="">
                <option value="">-- Pilih Lokasi --</option>
            <?php
            $id_unit_kerja=$_SESSION['idunit'];
            $sql_lokasi = "SELECT lokasi FROM barang_detail WHERE id_unitkerja=$id_unit_kerja GROUP BY lokasi";
            
            $perintah_lokasi = mysqli_query($koneksi, $sql_lokasi);
            while ($r_lokasi = mysqli_fetch_array($perintah_lokasi)) {
            ?>
              <option value="<?= $r_lokasi['lokasi']; ?>"><?= $r_lokasi['lokasi']; ?></option>
            <?php
            }
            ?>
          </select>
          <input type="hidden" name="aksi" value="delete-by-lokasi">                  
          <button type="submit" onclick="return confirm('Apakah Anda Yakin Akan Menghapus Semua Data Inventaris Pada Lokasi Ini?')" class="btn btn-block btn-danger mt-1">Hapus Berdasarkan Lokasi</button>
        </form>
        <form action="aksi/barang_hapus_massal.php" method="post">
          <label for="">-- Hapus Berdasarkan Kelompok --</label>
          <select class="form-control select2bs4" name="id_barang" required="">
                <option value="">-- Pilih Kelompok --</option>
            <?php
            $sql = "SELECT * FROM barang order by deskripsi";
            $perintah = mysqli_query($koneksi, $sql);
            while ($r = mysqli_fetch_array($perintah)) {
            ?>
              <option value="<?= $r['id_barang']; ?>"><?= $r['deskripsi']; ?></option>
            <?php
            }
            ?>
          </select>
          <input type="hidden" name="aksi" value="delete-by-kelompok">
          <button type="submit" onclick="return confirm('Apakah Anda Yakin Akan Menghapus Semua Data Inventaris Pada Kelompok Ini?')" class="btn btn-block btn-danger mt-1">Hapus Berdasarkan Kelompok</button>
        </form>
        <form action="aksi/barang_hapus_massal.php" method="post">
          <label for="">-- Hapus Semua Data --</label>
          <input type="hidden" name="aksi" value="delete-all">
          <button type="submit" onclick="return confirm('Apakah Anda Yakin Akan Menghapus Semua Data Inventaris?')" class="btn btn-block btn-danger">Hapus Semua Data</button>
        </form>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>

      </div>
    </div>
  </div>
</div>