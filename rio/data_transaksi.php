<?php 
	include 'konek.php';
	$id = $_POST['no_id'];
	$nama = $_POST['Nama'];
	$alamat = $_POST['alamat'];
	$hp = $_POST['nomer_telepon'];
	$umur = $_POST['umur'];
	$jk = $_POST['jenis_kelamin'];

	mysqli_query($coneksi,"INSERT INTO formulir VALUES('$id','$nama','$alamat','$hp','$umur','$jk')");
	

	header("location:transaksi.php?pesan=silahkan bayar");

 ?>