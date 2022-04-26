<!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Kategori</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Data Pokok</a></li>
              <li class="breadcrumb-item active">Kategori</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Data Kategori</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>ID </th>
                    <th>Kategori</th>                    
                    <th>Aksi</th>
                  </tr>
                  </thead>
                  <tbody>
                    <?php
                      $sql="select * from kategori";
                      $perintah=mysqli_query($koneksi,$sql);
                      while ($r=mysqli_fetch_array($perintah)) {     
                    ?>              
                      <tr>
                        <td><?= $r['id_kategori']; ?></td>                        
                        <td><?= $r['kategori']; ?></td>               
                        <td align="center">
                          <a href="index.php?p=editkategori&id=<?= $r['id_kategori']; ?>"><span class="fas fa-edit"></span></a>
                            
                        </td>
                      </tr>
                  <?php
                    }
                  ?>                     
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>ID </th>
                    <th>Kategori</th>                    
                    <th>Aksi</th>
                  </tr>
                  </tfoot>
                </table><br>
                <a href="index.php?p=addkategori">
                  <button type="button" class="btn btn-primary btn-block"><i class="fa fa-file"></i> Tambah</button>
                </a>
                <!--<a href="index.php?p=addunitkerja">
                  <button type="button" class="btn btn-primary btn-block"><i class="fa fa-file"></i> Tambah</button>
                </a> -->
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
    