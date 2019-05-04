<?php
  include '../database/conn.php';
?>

<!-- modal absen  -->
<div class="modal fade" id="updateAbsen" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Konfirmasi</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <input type="hidden" class="myidbox" name="id" value="">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body">
        <form class="" action="../database/serverdataabsen.php" method="post"  enctype="multipart/form-data">
          <div class="form-group">
			<input type="hidden" name="idAbsenUtama" id="idAbsenUtama">
            <label for="recipient-name" class="col-form-label">Nama Siswa :</label><br>
            <input type="text" class="form-control" name="namasiswa" id="namasiswa" value="" readonly>
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Keterangan :</label>
            <select class='custom-select' id="ket" name='ket'>
              <option value='S'>Sakit</option>
              <option value='I'>Izin</option>
              <option value='A'>Alfa</option>
            </select><br>
          </div>
          <div class="form-group">
            <label class=''>Surat :</label><br>
    				<input type='file' name='file' id='surat'>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" name="edit" id="confirm-edit" class="btn btn-primary" value="">Send Target</button>
        </div>
      </form>

    </div>
  </div>
</div>
<!-- end modal absen  -->

<!-- modal update siswa  -->
<div class="modal fade" id="updateSiswa" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Simpan Siswa</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <input type="hidden" class="myidbox" name="id" value="">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body">
        <!-- action="../database/serverdaftarsiswa.php" -->
        <form class="FormSimpan" method="post">
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">NIS :</label><br>
            <input type="text" class="form-control" name="nis" id="nis" value="">
          </div>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Nama Siswa :</label><br>
            <input type="text" class="form-control" name="namasiswa" id="namaSiswa" value="">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Jenis Kelamin :</label>
            <select class='custom-select' id="kelamin" name='kelamin'>
              <optgroup label= "Pilih">
              <option value='Laki-Laki'>Laki-Laki</option>
              <option value='Perempuan'>Perempuan</option>
            </select><br>
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Kelas :</label>
            <select class='custom-select' id="kelas" name='kelas'>
              <?php
              $query = mysqli_query($connect,'select * from ruangKelas');
              foreach ($query as $data): ?>
                <option value="<?php echo $data['kodeKelas'] ?>"><?php echo $data['kodeKelas'] ?></option>
              <?php endforeach; ?>
            </select><br>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" id="close" data-dismiss="modal">Close</button>
          <button type="submit" name="" id="confirm-simpan-siswa" class="btn btn-primary" value="">Send Target</button>
        </div>
      </form>

    </div>
  </div>
</div>
<!-- end modal update siswa  -->
