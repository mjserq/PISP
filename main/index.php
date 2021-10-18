<html>
<head>
	<title>Dashboard</title>
</head>
<body>

<?php include 'header.php'; ?>
<?php include('navfixed.php');?>
<div style="margin-top: 25px;" class="container-fluid">
      <div class="row-fluid">
	<div class="span2">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
                                  <?php
                  $position=$_SESSION['SESS_LAST_NAME'];
                  if($position=='Cashier') {
                  ?>
                  <li><a href="index.php"><i class="icon-dashboard icon-large"></i> Dashboard <div class="pull-right"><i class="icon-circle-arrow-right icon-large"></i></div></a></li> 
                  <li><a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-large"></i> Point of Sale <div class="pull-right"><i class="icon-circle-arrow-right icon-large"></i></div></a></li>
                  <li><a href="customer.php"><i class="icon-group icon-large"></i> Customer Reservation <div class="pull-right"><i class="icon-circle-arrow-right icon-large"></i></div></a></li>
                  

                  <?php
                  }
                  if($position=='Admin') {
                  ?>

                  <li><a href="index.php"><i class="icon-dashboard icon-large"></i> Dashboard <div class="pull-right"><i class="icon-circle-arrow-right icon-large"></i></div></a></li> 
                  <li><a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-large"></i> Point of Sale <div class="pull-right"><i class="icon-circle-arrow-right icon-large"></i></div></a></li>
                  <li><a href="customer.php"><i class="icon-group icon-large"></i> Customer Reservation <div class="pull-right"><i class="icon-circle-arrow-right icon-large"></i></div></a></li>
                  <li><a href="products.php"><i class="icon-table icon-large"></i> Inventory <div class="pull-right"><i class="icon-circle-arrow-right icon-large"></i></div></a></li>
                  <li><a href="supplier.php"><i class="icon-group icon-large"></i> Suppliers <div class="pull-right"><i class="icon-circle-arrow-right icon-large"></i></div></a></li>
                  <li><a href="salesreport.php?d1=0&d2=0"><i class="icon-bar-chart icon-large"></i> Sales Report <div class="pull-right"><i class="icon-circle-arrow-right icon-large"></i></div></a></li>
                  <li><a href="sales_inventory.php"><i class="icon-inbox icon-large"></i> Sales Inventory <div class="pull-right"><i class="icon-circle-arrow-right icon-large"></i></div></a></li>
                  <li><a href="admin-settings.php"><i class="icon-user icon-large"></i> User Manager <div class="pull-right"><i class="icon-circle-arrow-right icon-large"></i></div></a></li>
                  <li><a href="logs.php"><i class="icon-book icon-large"></i> Logs <div class="pull-right"><i class="icon-circle-arrow-right icon-large"></i></div></a></li>
                  <?php 
                      }                   
                      ?>



              
            </ul>
          </div><!--/.well -->
        </div><!--/span-->


    <div style="margin-left: 200px" class="container-fluid">
      <div class="row-fluid">



	
	
	<div class="contentheader">
			<i class="icon-dashboard"></i> Dashboard
			</div>
			<ul class="breadcrumb">
			<li class="active">Dashboard</li>
			</ul>
			
			
<div id="mainmain">

	<h1>Top Customer</h1>

	<table class="table table-borderless"  data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
			
			<th > Customer Name </th>
			<th > No. of Purchase </th>
			
	</thead>
	<tbody>
		
			<?php
				include('../connect.php');
				$result = $db->prepare("SELECT name, COUNT(*) FROM sales GROUP BY name ORDER BY COUNT(*) DESC LIMIT 10");
				$result->execute();
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
			<td><?php echo $row['name']; ?></td>
			<td><?php echo $row['COUNT(*)']; ?></td>
			
			</tr>
			<?php
				}
			?>
		</tbody>
</table>	

</div>
</div>
</div>
</body>
<footer style="margin-left: 50%">SysGrinder 2021</footer>
<?php include('footer.php'); ?>
</html>
