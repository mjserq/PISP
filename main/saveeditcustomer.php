<?php
	include('../connect.php');
// query
if (isset($_POST['btnUpdate'])) {

		$id = $_POST['memi'];
		$stat = $_POST['stats'];

		$update = "UPDATE customer SET status = '$stat' WHERE customer_id = '$id' ";
		$query = mysqli_query($connect,$update);

		if ($query == TRUE) {
			echo '<script> alert ("Status Updated"); </script>';
			header("location: customer.php");
			exit();
		}
		else{
			echo '<script> alert ("Status not Updated"); </script>';
			exit();
		}


}

?>