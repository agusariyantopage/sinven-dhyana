<?php
$id=$_GET['id'];
$sql1="select barang.*,kategori,subkategori from barang,kategori,subkategori where barang.id_subkategori=subkategori.id_subkategori and kategori.id_kategori=subkategori.id_kategori and id_barang=$id";
$perintah1=mysqli_query($koneksi,$sql1);
$r1=mysqli_fetch_array($perintah1);
?>


<!-- Tampilan Ubah Tabel Pelanggan -->
<div class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
		  <div class="col-sm-6">
		    <h1 class="m-0">Lengkapi Data Inventaris</h1>
		  </div><!-- /.col -->
		  <div class="col-sm-6">
			<ol class="breadcrumb float-sm-right">
				<li class="breadcrumb-item"><a href="#">Inventaris</a></li>  
				<li class="breadcrumb-item"><a href="index.php?p=tambahitem">Tambah Inventaris</a></li>            
				<li class="breadcrumb-item"><a href="index.php?p=tambahitem-mandiri">Mekanisme Mandiri</a></li> 
				<li class="breadcrumb-item active">Step 3</li>
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
                <h3 class="card-title">Lengkapi Data Inventaris</h3>
              </div>  	
            		<div class="card-body">
						<!-- Isian Form -->
						<form method="post" action="aksi_tambahitem_mandiri_step3.php">
							<input name="id" id="id" type="hidden" value="<?= $r1['id_barang']; ?>">
							<div class="form-group">
								<label for="idunitkerja">Unit Kerja</label>
								<select class="form-control" name="idunitkerja" id="idunitkerja" required="">
								<?php
								if($_SESSION['level']==1) {
    								
								?>
									<?php
									$sql="select * from unit_kerja order by nama_panjang";
									$perintah=mysqli_query($koneksi,$sql);
									while ($r=mysqli_fetch_array($perintah)) 	{  
									?>
										<option value="<?= $r['id_unit']; ?>"><?= $r['nama_panjang']; ?></option>
									<?php  
																				}
									?>																		
									
								<?php 
								} else {
									$id_unit= $_SESSION['idunit'];
									$nama_unit= $_SESSION['namalengkap'];
									echo "<option value='$id_unit'>$nama_unit</option>";
    
								}
								 ?>
								 </select>	
							</div>
							<div class="form-group">
								<label for="deskripsi">Deskripsi Barang</label>
								<textarea readonly="" class="form-control" name="deskripsi" id="deskripsi" rows="3"required=""><?= $r1['deskripsi']; ?></textarea>	
							</div>
							<div class="form-group">
								<label for="idsubkategori">Kelompok Barang</label>
								<select readonly="" class="form-control" name="idsubkategori" id="idsubkategori" required="">
									<option value="<?= $r1['id_subkategori']; ?>"><?= $r1['subkategori']; ?></option>	
									<?php
									$sql="select subkategori.*,kategori from subkategori,kategori where subkategori.id_kategori=kategori.id_kategori order by subkategori";
									$perintah=mysqli_query($koneksi,$sql);
									while ($r=mysqli_fetch_array($perintah)) 	{  
									?>
										
										<option value="<?= $r['id_subkategori']; ?>"><?= $r['subkategori']; ?></option>
									<?php  
																				}
									?>																		
								</select>
							</div>
							<div class="form-group">
								<label for="merk">Merk</label>
								<input readonly="" value="<?= $r1['merk']; ?>" type="text" name="merk" id="merk" placeholder="Masukkan Merk . . ." class="form-control">
							</div>
							<div class="form-group">
								<label for="spesifikasi">Spesifikasi Barang</label>
								<textarea readonly="" class="form-control" name="spesifikasi" id="spesifikasi" rows="3" placeholder="Berisi Keterangan Spesifikasi . . ."><?= $r1['spesifikasi']; ?></textarea>	
							</div>
							<div class="form-group">
								<label for="keterangan">Keterangan Tambahan</label>
								<input readonly="" value="<?= $r1['keterangan']; ?>" type="text" name="keterangan" id="keterangan" placeholder="Masukkan Keterangan Tambahan . . ." class="form-control">
							</div>
							<div class="form-group">
								
								<div class="row">
									<div class="col-12">
									<label for="merk">Jumlah Barang</label>
									<input required="" type="number" name="qtybaik" id="qtybaik" placeholder="Masukkan Jumlah Barang . . ." class="form-control">
									</div>
									
								</div>
							</div>
							<div class="form-group">
								<label for="lokasi">Rencana Lokasi Barang</label>
								<input  type="text" name="lokasi" id="lokasi" placeholder="Masukkan Lokasi . . ." class="form-control">
							</div>	
							<div class="form-group">
								<label for="nilai">Estimasi Harga Perolehan</label>
								<input  type="number" required="" name="nilai" id="nilai" placeholder="Masukkan estimasi nilai perolehan . . ." class="form-control">
							</div>
							<div class="form-group">
								<label for="catatan">Catatan</label>
								<input  type="text" name="catatan" id="catatan" placeholder="Masukkan catatan . . ." class="form-control">
							</div>						
							<button type="submit" class="btn btn-primary" onclick="return confirm('Pastikan Data Yang Anda Masukkan Sudah Benar,Apakah Anda Yakin Akan Melanjutkan?')">Simpan</button>

						</form>
					</div>		
			</div>
			</div>			
		</div>


	</div>
  	<!-- /.container-fluid -->
</section>
<!-- Main content -->