<?php require('layout/header.php'); ?>
<?php require('layout/left-sidebar-long.php'); ?>
<?php require('layout/topnav.php'); ?>
<?php require('layout/left-sidebar-short.php'); ?>


<div class="section black-text" style="background: #80deea;">

	<div class="section">
		<h3><b>TAMBAH KATEGORI<b></h3>
	</div>


    <div class="section center" style="padding: 40px;">

        <form action="../backends/admin/cat-add.php" method="post">

            <?php

            if (isset($_SESSION['msg'])) {
                echo '<div class="row" style="background: blue; color: white;">
                <div class="col s12">
                    <h6>'.$_SESSION['msg'].'</h6>
                    </div>
                </div>';
                unset($_SESSION['msg']);
            }

            ?>

            <div class="row">
                <div class="col s6" style="">
                            <div class="input-field">
                            <input id="name" name="name" type="text" class="validate" style="color: pink-text text-accent-3; width: 70%">
                            <label for="name" style="color: pink-text text-accent-3;"><b>Nama Ketegori :</b></label>
                            </div>
                </div>
                <div class="col s6" style="">
                            <div class="input-field">
                            <input id="short_desc" name="short_desc" type="text" class="validate" style="color: pink-text text-accent-3; width: 70%">
                            <label for="short_desc" style="color: pink-text text-accent-3;"><b>Deskripsi Singkat :</b></label>
                            </div>
                </div>
            </div>

            <div class="row">
                <div class="col s12">

                <div class="input-field">
                <input id="long_desc" name="long_desc" type="text" class="validate" style="color: pink-text text-accent-3; width: 70%">
                <label for="long_desc" style="color: pink-text text-accent-3;"><b>Deskripsi Panjang :</b></label>
                </div>
                
                </div>
            
            </div>

            <div class="row">
                <div class="col s12">
                    <div class="section right" style="padding: 15px 10px;">
                        <a href="category-list.php" class="waves-effect waves-light btn">Batalkan</a>
                    </div>
                    <div class="section right" style="padding: 15px 20px;">
                        <button type="submit" class="waves-effect waves-light btn">Tambah Baru</button>
                    </div>
                </div>
            </div>

        </form>


    </div>

</div>

<?php require('layout/about-modal.php'); ?>
<?php require('layout/footer.php'); ?>