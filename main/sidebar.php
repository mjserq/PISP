

<div style="margin-top: 25px;" class="container-fluid">
      <div class="row-fluid">
	<div class="span2">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
                                  <?php
                  $position=$_SESSION['SESS_LAST_NAME'];
                  if($position=='Cashier') {
                  ?>
                  <li class="active"><a href="index.php"><i class="icon-dashboard icon-large"></i> Dashboard <div class="pull-right"><i class="icon-circle-arrow-right icon-large"></i></div></a></li> 
                  <li><a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-large"></i> Point of Sale <div class="pull-right"><i class="icon-circle-arrow-right icon-large"></i></div></a></li>
                  <li><a href="customer.php"><i class="icon-group icon-large"></i> Customer Reservation <div class="pull-right"><i class="icon-circle-arrow-right icon-large"></i></div></a></li>
                  

                  <?php
                  }
                  if($position=='Admin') {
                  ?>

                  <li class="active"><a href="index.php"><i class="icon-dashboard icon-large"></i> Dashboard <div class="pull-right"><i class="icon-circle-arrow-right icon-large"></i></div></a></li> 
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
   