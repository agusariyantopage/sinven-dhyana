
<!-- Tampilan Tambah Tabel Pelanggan -->
<div class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
		  <div class="col-sm-6">
		    <h1 class="m-0">Tambah Subkategori</h1>
		  </div><!-- /.col -->
		  <div class="col-sm-6">
		    <ol class="breadcrumb float-sm-right">
		      <li class="breadcrumb-item"><a href="#">Data Pokok</a></li>
		      <li class="breadcrumb-item"><a href="index.php?p=subkategori">Subkategori</a></li>
		      <li class="breadcrumb-item active">Tambah Subkategori</li>
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
                <h3 class="card-title">Formulir Tambah Subkategori</h3>
              </div>  	
            		<div class="card-body">
						<!-- Isian Form -->
						<form method="post" action="aksi_subkategori_add.php">
							<div class="form-group">
								<label for="id_kategori">Kategori</label>
								<select class="form-control select2bs4" name="id_kategori" id="id_kategori" required="">

									<?php
									$sql1="select * from kategori order by kategori";
									$perintah1=mysqli_query($koneksi,$sql1);
									while ($r=mysqli_fetch_array($perintah1)) 	{  
									?>
										<option value="<?= $r['id_kategori']; ?>"><?= $r['kategori']; ?></option>
									<?php  
																				}
									?>																		
								</select>
							</div>
							<div class="form-group">
								<label for="kode">Kode</label>
								<input type="text" name="kode" required="" id="kode" placeholder="Masukkan Kode Subkategori . . ." class="form-control">
							</div>
							<div class="form-group">
								<label for="subkategori">Subkategori</label>
								<input type="text" name="subkategori" required="" id="subkategori" placeholder="Masukkan Subkategori . . ." class="form-control">
							</div>
							<div class="form-group">
								<label for="apresiasi_per_tahun">Apresiasi / Depresiasi Per Tahun (%)</label>
								<input type="text" name="apresiasi_per_tahun" required="" id="apresiasi_per_tahun" placeholder="Masukkan Apresiasi / Depresiasi Per Tahun (%) . . ." class="form-control">
							</div>
															
							<button type="submit" class="btn btn-primary">Simpan</button>

						</form>
					</div>		
			</div>
			</div>			
		</div>


	</div>
  	<!-- /.container-fluid -->
</section>
<!-- Main content -->