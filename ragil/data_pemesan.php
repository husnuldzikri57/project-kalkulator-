<?php 
	include 'konek.php';
	$tanggal = $_POST['tanggal_keberangkatan'];
	$jumlah = $_POST['jumlah_penumpang'];
	$asal = $_POST['asal_kota'];
	$tujuan = $_POST['tujuan_kota'];
	$terminal = $_POST['tujuan_terminal'];

	mysqli_query($coneksi,"INSERT INTO pemesanan VALUES('$tanggal','$jumlah','$asal','$tujuan','$terminal')");

	include 'konek.php';
	$asal = $_POST['asal_kota'];
	$tujuan = $_POST['tujuan_kota'];
	mysqli_query($coneksi,"INSERT INTO cetak_tiket VALUES('$asal','$tujuan')");
	
	header("location:formulir.html?pesan=isi data diri cuy");
	

 ?>