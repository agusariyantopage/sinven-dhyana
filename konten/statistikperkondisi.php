<?php
    $kondisi=$_GET['kondisi'];
    $id_unit=$_GET['id_unit'];
    $sql="SELECT nama_panjang FROM unit_kerja WHERE id_unit=$id_unit";
    $data=mysqli_fetch_array(mysqli_query($koneksi,$sql));
    $nama_unit=$data['nama_panjang'];
    
?>
<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Data Inventaris Per Kondisi</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Statistik</a></li>
                    <li class="breadcrumb-item active">Data Per Kondisi</li>
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
                        <h3 class="card-title">Unit : <?= $nama_unit; ?> | Kondisi :<?= $kondisi; ?></h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="export" class="table table-sm table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>No </th>
                                    <th>Lokasi</th>
                                    <th>Deskripsi Barang</th>
                                    <th>Jumlah</th>
                                    <th>Nilai Perolehan</th>

                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no = 0;
                                $sum_perolehan = 0;
                                $sum_jumlah=0;


                                $sql = "SELECT lokasi,(SELECT barang.deskripsi FROM barang WHERE barang.id_barang=bd.id_barang) AS deskripsi_barang,COUNT(id_barang_detail) AS jumlah,SUM(nilai_perolehan) AS nilai FROM barang_detail bd WHERE kondisi='$kondisi' AND bd.id_unitkerja=$id_unit GROUP BY lokasi,id_barang";
                                

                                $perintah = mysqli_query($koneksi, $sql);
                                while ($r = mysqli_fetch_array($perintah)) {
                                    $no++;
                                    $sum_jumlah = $sum_jumlah + $r['jumlah'];
                                    $sum_perolehan = $sum_perolehan + $r['nilai'];


                                ?>
                                    <tr>
                                        <td><?= $no; ?></td>
                                        <td><?= $r['lokasi']; ?></td>
                                        <td><?= $r['deskripsi_barang']; ?></td>
                                        <td align="right"><?= number_format($r['jumlah']); ?></td>
                                        <td align="right"><?= number_format($r['nilai']); ?></td>
                                    </tr>
                                <?php
                                }
                                ?>
                            </tbody>
                            <tfoot align="right">
                                <tr>
                                    <th colspan="3">Grandtotal</th>
                                    <th align="right"><?= number_format($sum_jumlah); ?></th>
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