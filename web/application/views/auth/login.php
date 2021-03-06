<?php $this->load->view('auth/header'); ?>
<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-7">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">
                                        Login Page
                                    </h1>

                                </div>

                                <?= $this->session->flashdata('message');
                                session_destroy(); ?>


                                <form class="user" method="POST" action="<?= base_url('auth');  ?>">
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-user" id="user" name="user" placeholder="Masukan Username..." value="<?= set_value('user');  ?>">
                                        <?= form_error('user', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="Password">
                                        <?= form_error('password', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-user btn-block">
                                        Login
                                    </button>
                                </form>


                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>
<?php $this->load->view('auth/footer'); ?>