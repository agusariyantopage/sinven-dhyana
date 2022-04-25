<?php

if (isset($_POST['upload'])) { // IF 1
    $pesan = '';
    $namafile = basename($_FILES["fileToUpload"]["name"]);
    $target_file = $namafile;
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

    if ($imageFileType != "xls") {
        $msg = "<span class='badge badge-danger'>Proses Impor Gagal .Silahkan Gunakan File Draft Yang Tersedia (Jangan Mengupload File Selain Draft Yang Disediakan)</span><br>";
    } else { //IF 2

        require('xlsreader/php-excel-reader/excel_reader2.php');
        require('xlsreader/SpreadsheetReader.php');

        //upload data excel kedalam folder upload
        $target_dir = "upload/" . basename($_FILES['fileToUpload']['name']);
        move_uploaded_file($_FILES['fileToUpload']['tmp_name'], $target_dir);

        $Reader = new SpreadsheetReader($target_dir);

        $sukses = 0;
        foreach ($Reader as $Key => $Row) {
            // import data excel mulai baris ke-2 (karena ada header pada baris 1)
            if ($Key <= 1) continue;
            //if($Row[1] != "" && $$Row[2] != ""){  
            // Validasi Sub Kategori
            //$query = "INSERT INTO barang_detail(id_input, id_barang, kondisi, lokasi, catatan, gambar, id_unitkerja, tanggal_input, jam_input, id_tambah, tanggal_perolehan, nilai_perolehan, perubahan_terakhir) VALUES ('" . $Row[0] . "', '" . $Row[1] . "','" . $Row[2] . "','" . $Row[3] . "','" . $Row[4] . "','','" . $Row[5] . "',DEFAULT,DEFAULT,'" . $Row[6] . "','" . $Row[7] . "','" . $Row[8] . "',DEFAULT)";
            //echo $query."<br>";

            $id_barang = $Row[1];
            $sql1 = "select * from barang where id_barang=$id_barang";            
            $q1 = mysqli_query($koneksi, $sql1);
            $val1 = mysqli_num_rows($q1);
            
            if ($val1 < 1) {
                $pesan .= "Gagal Impor Baris Ke : " . $Key . " Karena Kode Kelompok Barang Tidak Valid <br>";
            } else {
                $unit_kerja = $Row[5];
                $sql2 = "select * from unit_kerja where id_unit=$unit_kerja";
                $q2 = mysqli_query($koneksi, $sql2);
                $val1 = mysqli_num_rows($q2);
                if ($val1 < 1) {
                    $pesan .= "Gagal Impor Baris Ke : " . $Key . " ID Unit Kerja Tidak Ditemukan <br>";
                } else {
                    $max=$Row[9];
                    for($i=0;$i<$max;$i++){
                        $query = "INSERT INTO barang_detail(id_input, id_barang, kondisi, lokasi, catatan, gambar, id_unitkerja, tanggal_input, jam_input, id_tambah, tanggal_perolehan, nilai_perolehan, perubahan_terakhir) VALUES ('" . $Row[0] . "', '" . $Row[1] . "','" . $Row[2] . "','" . $Row[3] . "','" . $Row[4] . "','','" . $Row[5] . "',DEFAULT,DEFAULT,'" . $Row[6] . "','" . $Row[7] . "','" . $Row[8] . "',DEFAULT)";
                        mysqli_query($koneksi, $query);
                        $sukses++;
                    }
                    
                    
                }
            }
        } // Tutup Each
        date_default_timezone_set('Asia/Singapore');
        $tanggal = date('Y-m-d');
        $jam = date('H:i:s');
        $date = date_create();
        $input_id = date_timestamp_get($date);
        $now = date('Y_m_d_H_i_s');
        $jd=$Key-1;
        rename($target_dir, "upload/ImporInventaris_" . $now . ".xls");
        $msg = "<span class='badge badge-success'>Berhasil Menambahkan : " . $sukses . " Baris Dari " . $jd . " Data </span><br><span class='badge badge-danger'>".$pesan."</span><br>";
    } // Tutup If 2
} // Tutup If 1

?>

<!-- Tampilan Tambah Tabel Pelanggan -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Impor Inventaris</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Inventaris</a></li>
                    <li class="breadcrumb-item"><a href="#">Input Inventaris</a></li>
                    <li class="breadcrumb-item active">Impor Inventaris</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>

<section class="content">
    <div class="container-fluid">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- jquery validation -->
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Formulir Impor Inventaris</h3>
                    </div>
                    <div class="card-body">
                        <a href="draft/template_inventaris_aset.xls" target="blank"><button class="btn btn-success">Unduh Draft</button></a>
                        <br>
                        <?php
                        if (isset($_POST['upload'])) {

                            echo $msg;
                        }
                        ?>
                        <!-- Isian Form -->
                        Untuk menambahkan katalog barang dengan fitur import silahkan gunakan draft file excel pada tombol unduh draft kemudian isi data sesuai keterangan kolom . Pastikan anda mengisi kolom id_barang dan id_unitkerja sesuai dengan data yang ada.
                        <form method="post" enctype="multipart/form-data">

                            <div class="form-group">
                                <label for="fileToUpload">Upload File</label>
                                <input type="file" required="" class="form-control" name="fileToUpload" id="fileToUpload">
                            </div>

                            <button type="submit" name="upload" class="btn btn-primary">Proses</button>

                        </form>

                    </div>
                </div>
            </div>
        </div>


    </div>
    <!-- /.container-fluid -->
</section>
<!-- Main content -->