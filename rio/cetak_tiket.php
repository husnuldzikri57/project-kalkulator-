<center>
<table border="1">
	<tr align="center" bgcolor="yellow">
    <th width="50px">Kode_tiket</th>
    <th width="150px">No_ID</th>
    <th width="100px">Nama</th>
    <th width="200px">Asal kota</th>
    <th width="200px">Tujuan kota</th>
    <th width="200px">Nomer_Hp</th>
    <th width="200px">Harga</th>     
    </tr>
	<?php
	include 'konek.php';
	$coneksi = mysqli_query($coneksi,"SELECT * FROM cetak_tiket");
	foreach ($coneksi as $data) {
		?>
		<tr>
			<td><?php echo $data['kode_tiket'];?></td>
			<td><?php echo $data['no_id'];?></td>
			<td><?php echo $data['Nama'];?></td>
			<td><?php echo $data['asal_kota'];?></td>
			<td><?php echo $data['tujuan_kota'];?></td>
			<td><?php echo $data['nomer_telepon'];?></td>
			<td><?php echo $data['harga'];?></td>
		</tr>
		<?php } 
	 ?>
</table>
<script>
	window.print()
</script>
</center>