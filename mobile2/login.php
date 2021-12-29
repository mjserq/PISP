<?php 
session_start(); 
include "db_connect.php";

if (isset($_POST['username']) && isset($_POST['password'])&&isset($_POST['fullname']) && isset($_POST['address'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$uname = validate($_POST['username']);
	$pass = validate($_POST['password']);
	$fname = validate($_POST['fullname']);
	$adrs = validate($_POST['address']);

	if (empty($uname)) {
		echo "Username is Required";
	}else if(empty($pass)){
        echo "Password is Required"; 
	}else if(empty($fname)){
        echo "Full Name is Required"; 
	}else if(empty($adrs)){
        echo "Address is Required"; 
	}else{
		// hashing the password
        $pass = md5($pass);

        
		$sql = "SELECT * FROM customer_user WHERE username='$uname' AND password='$pass' AND fullname='$fname' AND address='$adrs'";

		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) === 1) {
			$row = mysqli_fetch_assoc($result);
            if ($row['username'] === $uname && $row['password'] === $pass && $row['fullname'] === $fname && $row['address'] === $adrs) {
            	$_SESSION['username'] = $row['username'];
            	$_SESSION['fullname'] = $row['fullname'];
            	$_SESSION['address'] = $row['address'];
            	$_SESSION['user_id'] = $row['user_id'];
            	echo "Login Success";
            }else{
				echo "Incorect Credentials";
			}
		}else{
			echo "Incorect Credentials";
		}
	}
	
}else{
	echo "All Field are Required";
}