<!DOCTYPE html>
<html>
<head>
	<title>Silahkan Lakukan Pembayaran</title>
</head>
<body>
	
<?php
function acak($panjang)
{
    $karakter= 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890';
    $string = '';
    for ($i = 0; $i < $panjang; $i++) {
  $pos = rand(0, strlen($karakter)-1);
  $string .= $karakter{$pos};
    }
    return $string;
}
$kode_tiket= acak(7);
?>
	<table align="center">
		<tr>
			<td colspan="3"><h3 align="center">VIA TRANSFER</h3></td>
		</tr>
		<tr>
			<td>Nama Perusahaan</td><td>:</td><td>Bukan Kaleng Kaleng</td>
		</tr>
		<tr>
			<td>Nomer Rekening</td><td>:</td><td>1234567890</td>
		</tr>
		<tr>
			<td>Jumlah Pembayaran</td><td>:</td><td>Rp:500.000</td>
		</tr>
	</table>
	<br>
	<table align="center">
		<form action="data_pembayaran.php" method="POST">
			<tr>
				<td>Kode Tiket</td>
				<td colspan="" align="center"><?php echo $kode_tiket;?></td>
				<td>
					<input type="reload" value="Reload" onClick="document.location.reload(true)">
					<script>
						function reloadpage()
						{
							location.reload()
						}
					</script>
				</td>
			</tr>
			<tr>
				<td>Ketik Ulang Kode Tiket</td><td>:</td><td><input type="text" name="kode_tiket"></td>
			</tr>
			<tr>
			<td colspan="3" align="center"><button type="submit" value="simpan" id="data_pembayaran.php">Cetak Tiket</button></td>
		</tr>
		</form>
	</table>
</body>
</html>