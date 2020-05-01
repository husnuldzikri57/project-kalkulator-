<center>
	<h1>Daftar Penumpang</h1>
<br>
<table border="1" align="center">
	<tr align="center">
		<td>No</td>
		<td>tanggal keberangkatan</td>
		<td>jumlah penumpang</td>
		<td>asal kota</td>
		<td>tujuan kota</td>
		<td>tujuan terminal</td>
	</tr>
	<?php
	include 'konek.php';
	$coneksi = mysqli_query($coneksi,"SELECT * FROM pemesanan");
	$no=1;
	foreach ($coneksi as $data) {
		?>
		<tr>
			<td><?php echo $no++;?></td>
			<td><?php echo $data['tanggal_keberangkatan'];?></td>
			<td><?php echo $data['jumlah_penumpang'];?></td>
			<td><?php echo $data['asal_kota'];?></td>
			<td><?php echo $data['tujuan_kota'];?></td>
			<td><?php echo $data['tujuan_terminal'];?></td>
		</tr>
	<?php } ?>
</table><br>
	<center><h4>&copyCopyright Ragil Margiono 2019</h4></center>
</center>