
<!-- Tampilan Tambah Tabel Pelanggan -->
<div class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
		  <div class="col-sm-6">
		    <h1 class="m-0">Tambah Kategori</h1>
		  </div><!-- /.col -->
		  <div class="col-sm-6">
		    <ol class="breadcrumb float-sm-right">
		      <li class="breadcrumb-item"><a href="#">Data Pokok</a></li>
		      <li class="breadcrumb-item"><a href="index.php?p=kategori">Kategori</a></li>
		      <li class="breadcrumb-item active">Tambah Kategori</li>
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
                <h3 class="card-title">Formulir Tambah Kategori</h3>
              </div>  	
            		<div class="card-body">
						<!-- Isian Form -->
						<form method="post" action="aksi_kategori_add.php">
							<div class="form-group">
								<label for="kategori">Kategori</label>
								<input type="text" name="kategori" required="" id="kategori" placeholder="Masukkan Kategori . . ." class="form-control">
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