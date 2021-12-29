<?php 
session_start(); 
include "db_connect.php";

if (isset($_POST['username']) &&isset($_POST['fullname']) && isset($_POST['product_name']) && isset($_POST['price']) && isset($_POST['subcat']) && isset($_POST['quantity']) && isset($_POST['gen_name'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$uname = validate($_POST['username']);
	$fname = validate($_POST['fullname']);
	$pName = validate($_POST['product_name']);
	$price = validate($_POST['price']);
	$subcat = validate($_POST['subcat']);
	$quantity = validate($_POST['quantity']);
	$gen_name = validate($_POST['gen_name']);

	$sql= "INSERT INTO cart (username, fullname, product_name, price, subcat, quantity, gen_name ) VALUES('$uname', '$fname', '$pName', '$price', '$subcat', '$quantity', '$gen_name )";
           $result = mysqli_query($conn, $sql);
           if ($result) {
           	 echo "Added Successfully";
           }else {
	           	echo "Mali";
           }


}

?>