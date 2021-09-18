<html>
<head>
	<title>Dashboard</title>
</head>
<body>

<?php include 'header.php'; ?>
<?php include('navfixed.php');?>
    <div class="container-fluid">
      <div class="row-fluid">

	
	
	<div class="contentheader">
			<i class    ="icon-dashboard"></i> Dashboard
			</div>
			<ul class="breadcrumb">
			<li class="active">Dashboard</li>
			</ul>
			
<div id="mainmain">
	<?php
$position=$_SESSION['SESS_LAST_NAME'];
if($position=='Cashier') {
?>
 <a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-2x"></i><br> Point of Sale</a>
<a href="customer.php"><i class="icon-group icon-2x"></i><br> Customer Reservation</a>  

<a href="../index.php"><i class="icon-signout icon-2x"></i><br>Logout</a>   
<?php
}
if($position=='Admin') {
?>

<a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-2x"></i><br> Point of Sale</a>               
<a href="products.php"><i class="icon-list-alt icon-2x"></i><br> Products</a>                
<a href="cat.php"><i class="icon-list-alt icon-2x"></i><br> Categories</a>     
<a href="customer.php"><i class="icon-group icon-2x"></i><br> Customer Reservation</a>     
<a href="supplier.php"><i class="icon-group icon-2x"></i><br> Suppliers</a>
<a href="sales_inventory.php"><i class="icon-group icon-2x"></i><br>Sales Inventory</a>      
<a href="salesreport.php?d1=0&d2=0"><i class="icon-bar-chart icon-2x"></i><br> Sales Report</a>     
<a href="admin-settings.php"><i class="icon-flag icon-2x"></i><br> User Manager</a>   
<a href="logs.php"><i class="icon-lock icon-2x"></i><br> Sales Logs</a> 
<?php 
    }                   
    ?>
<div class="clearfix"></div>
</div>
</div>
</div>
</body>
<footer><center>SysGrinder 2021</center></footer>
<?php include('footer.php'); ?>
</html>
