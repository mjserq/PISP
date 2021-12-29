<?php

include('db_connect.php');

$stmt = $conn->prepare("SELECT product_name, subcat, price, gen_name, qty, product_image FROM products");

$stmt ->execute();
$stmt -> bind_result($product_name, $subcat, $price, $gen_name, $qty, $product_image);

$products = array();

while($stmt ->fetch()){

    $temp = array();
	
	$temp['product_name'] = $product_name;
	$temp['subcat'] = $subcat;
	$temp['price'] = $price;
	$temp['gen_name'] = $gen_name;
	$temp['qty'] = $qty;
	$temp['product_image'] = $product_image;

	array_push($products,$temp);
	}

	echo json_encode($products);


?>