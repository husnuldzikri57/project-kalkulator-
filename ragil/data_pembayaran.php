<?php 
	include 'konek.php';
	$kode = $_POST['kode_tiket'];
	$Transfer = $_POST['Transfer'];

	mysqli_query($coneksi,"INSERT INTO pembayaran VALUES('$kode','$Transfer')");


	header("location:cetak_tiket.php?pesan=isi data diri cuy");

 ?>