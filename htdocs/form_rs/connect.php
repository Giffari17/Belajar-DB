<?php
	$nama_rs = $_POST['nama_rs'];
	$alamat_rs = $_POST['alamat_rs'];
	$telp_rs = $_POST['telp_rs'];

	// Database connection
	$conn = new mysqli('localhost','root','','db_inventaris');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		$stmt = $conn->prepare("insert into rumah_sakit(nama_rs, alamat_rs, telp_rs) values(?, ?, ?)");
		$stmt->bind_param("sss", $nama_rs, $alamat_rs, $telp_rs);
		$execval = $stmt->execute();
		echo $execval;
		echo ">>Submit success! Terima kasih telah menambahkan data rumah sakit.<<";
		$stmt->close();
		$conn->close();
	}
?>