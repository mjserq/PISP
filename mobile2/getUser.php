<?php

include('db_connect.php');

$username = $_POST['username'];

$stmt = $conn->prepare("SELECT username, fullname, address FROM customer_user WHERE username = '$username'");
$stmt = $conn->prepare
$stmt ->execute();
$stmt -> bind_result($username, $fullname, $address);

$users = array();

while($stmt ->fetch()){

    $temp = array();
	
	$temp['username'] = $username;
	$temp['fullname'] = $fullname;
	$temp['address'] = $address;

	array_push($users,$temp);
	}

	echo json_encode($users);


?>