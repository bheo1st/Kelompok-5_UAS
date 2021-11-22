<?php $this->load->view('admin/header');?>

<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Tambah Nasabah</h1>
<p class="mb-4"></p>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Tambah Nasabah</h6>
    </div>
    <div class="card-body">
    <form method="POST" action="<?php echo base_url();?>nasabah/prcAddNasabah">
        <div class="form-group">
            <label for="exampleInputEmail1">Nama Nasabah</label>
            <input type="text" name="namaNasabah" class="form-control" id="exampleInputEmail1"  placeholder="Input nama nasabah">
            
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    </div>
</div>

</div>
<!-- /.container-fluid -->

<?php $this->load->view('admin/footer');?>