<section class="fnavbar">
		<div class="navbar-fixed">
		<nav>
		    <div class="nav-wrapper">
		      <a href="#" class="brand-logo">Mie Gacoan</a>
		      <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
		      <ul class="right hide-on-med-and-down">
		        <li><a href="/MIEGACOAN" class="hvr-grow">HALAMAN UTAMA</a></li>
		        <li><a href="/MIEGACOAN/about-mie-gacoan.php" class="hvr-grow">TENTANG KAMI</a></li>
		        <li><a href="food-categories.php" class="hvr-grow">KATEGORI</a></li>
		        <li><a href="foods.php" class="hvr-grow">MAKANAN</a></li>
		        <li><a href="#" class="hvr-grow" onclick="toggleModal('Contact Info', 'Kamu bisa menghubungi kami di nomor ini 0891111111122. Untuk informasi lebih lanjut bisa lihat di bawah ya, jangan males-males...');">KONTAK</a></li>
		        
		        <?php

		        	if (isset($_SESSION['user'])) {
		        		echo '<li><a href="#" class="hvr-grow">Hi, '.$_SESSION['user'].'</a></li>
		        		<li><a href="logout.php" class="hvr-grow">Logout</a></li>';
		        	} else {
		        		echo '<li><a href="#" class="hvr-grow modal-trigger" data-target="modal1">LOGIN</a></li>
		        		<li><a href="#" class="hvr-grow modal-trigger" data-target="modal2">REGISTER</a></li>';
		        	}

		        ?>
		        
		      </ul>
		    </div>
		  </nav>
		</div>

		  <ul class="sidenav" id="mobile-demo">
		    <li><a href="/MIEGACOAN">halaman utama</a></li>
	        <li><a href="/MIEGACOAN/about-mie-gacoan.php">TENTANG KAMI</a></li>
	        <li><a href="food-categories.php">KATEGORI</a></li>
	        <li><a href="foods.php">MAKANAN</a></li>
	        <li><a href="#" onclick="toggleModal('Contact Info', 'Kamu bisa menghubungi kami di nomor ini 0891111111122. Untuk informasi lebih lanjut bisa lihat di bawah ya, jangan males-males...');">KONTAK</a></li>

	        <?php

		        	if (isset($_SESSION['user'])) {
		        		echo '<li><a href="#">Hi, '.$_SESSION['user'].'</a></li>
		        		<li><a href="logout.php">Logout</a></li>';
		        	} else {
		        		echo '<li><a href="#" class="modal-trigger" data-target="modal1">LOGIN</a></li>
		        		<li><a href="#" class="modal-trigger" data-target="modal2">REGISTER</a></li>';
		        	}

		        ?>
		  </ul>
	</section>