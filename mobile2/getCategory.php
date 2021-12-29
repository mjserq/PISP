<?php

include('db_connect.php');

$stmt = $conn->prepare("SELECT category_name, category_image FROM category");

$stmt ->execute();
$stmt -> bind_result($category_name, $category_image);

$categories = array();

while($stmt ->fetch()){

    $temp = array(); 
	
	$temp['category_name'] = $category_name;
	$temp['category_image'] = $category_image;
	array_push($categories,$temp);
	}

	echo json_encode($categories);

?>