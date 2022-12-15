<?php
	$nama_radionuklida = $_POST['nama_radionuklida'];
	$aktivitas_radionuklida = $_POST['aktivitas_radionuklida'];
	$waktuparo_radionuklida = $_POST['waktuparo_radionuklida'];
	$ket_radionuklida = $_POST['ket_radionuklida'];

	// Database connection
	$conn = new mysqli('sql212.byetcluster.com','epiz_33208010','5QwPkEOvLubr','epiz_33208010_db_inventaris');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		$stmt = $conn->prepare("insert into radionuklida(nama_radionuklida, aktivitas_radionuklida, waktuparo_radionuklida, ket_radionuklida) values(?, ?, ?, ?)");
		$stmt->bind_param("ssss", $nama_radionuklida, $aktivitas_radionuklida, $waktuparo_radionuklida, $ket_radionuklida);
		$execval = $stmt->execute();
		echo $execval;
		echo ">>Submit success! Terima kasih telah menambahkan data radionuklida.<<";
		$stmt->close();
		$conn->close();
	}
?>