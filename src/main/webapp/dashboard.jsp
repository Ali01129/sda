<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.erp.Database.Database" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title>ERP</title>
	<link rel="shortcut icon" type="image/x-icon" href="download.png">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="assets/css/feathericon.min.css">
	<link rel="stylehseet" href="https://cdn.oesmith.co.uk/morris-0.5.1.css">
	<link rel="stylesheet" href="assets/plugins/morris/morris.css">
	<link rel="stylesheet" href="assets/css/style.css"> 
	<link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css" rel="stylesheet"  type='text/css'>
	<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
	<script src="https://kit.fontawesome.com/4ecf238d25.js" crossorigin="anonymous"></script>
</head>
	

<body>
	<div class="main-wrapper">
		<div class="header">
			<div class="header-left">
				<b><a href="dashboard.jsp" class="logo"> <span class="logoclass">ERP</span> </a></b>
				<b><a href="dashboard.jsp" class="logo logo-small" style="font-size: large; color:#009688;">ERP</a></b>
			</div>
			<a href="javascript:void(0);" id="toggle_btn"> <i class="fe fe-text-align-left"></i> </a>
			<a class="mobile_btn" id="mobile_btn"> <i class="fas fa-bars"></i> </a>
			<ul class="nav user-menu">
				
				<li class="nav-item dropdown has-arrow">
					<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"> <span class="user-img"><i class="fa-solid fa-bars"></i></span> </a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="profile.html">My Profile</a><a class="dropdown-item" href="login.html">Logout</a></div>
				</li>
			</ul>
		
		</div>
		<div class="sidebar" id="sidebar">
			<div class="sidebar-inner slimscroll">
				<div id="sidebar-menu" class="sidebar-menu">
					<ul>
						<li class="active"> <a href="dashboard.jsp"><i class="fas fa-tachometer-alt"></i> <span>Dashboard</span></a> </li>
						<li class="list-divider"></li>
						<li class="submenu"> <a href="#"><i class="fas fa-user"></i> <span>Employee</span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="all-employee.jsp"> All Employees </a></li>
								<li><a href="add-employee.jsp"> Add Employee </a></li>
							
							</ul>
						</li>
						<li class="submenu"> <a href="#"><i class="fa-solid fa-bars"></i></fa-solid><span>Products</span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="all-products.jsp">All Products </a></li>
								<li><a href="add-product.jsp"> Add Product </a></li>
							</ul>
						</li>
						<li class="submenu"> <a href="#"><i class="fas fa-suitcase"></i> <span>Materials</span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="all-materials.jsp"> All Materials </a></li>
								<li><a href="add-material.jsp"> Add Material </a></li>
								
							</ul>
						</li>
						<li class="submenu"> <a href="#"><i class="fa-solid fa-clipboard-list"></i><span>Order Material</span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="all-orders.jsp">All Orders </a></li>
								<li><a href="add-order.html"> Add Order </a></li>
							</ul>
						</li>
						<li class="submenu"> <a href="#"><i class="fa fa-industry"></i> <span>Vendors</span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="all-vendors.jsp"> All Vendors </a></li>
								<li><a href="add-vendors.html"> Add Vendors </a></li>

							</ul>
						</li>
						<li class="submenu"> <a href="#"><i class="fa-solid fa-star"></i><span>Quality</span> <span class="menu-arrow"></span></a>
							<ul class="submenu_class" style="display: none;">
								<li><a href="report.html">Quality Report</a></li>
								<li><a href="rate-product.html">Rate product</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="page-wrapper">
			<div class="content container-fluid">
				<div class="page-header">
					<div class="row">
						<div class="col-sm-12 mt-5">
							<h3 class="page-title mt-3">Good Morning User!</h3>
							<ul class="breadcrumb">
								<li class="breadcrumb-item active">Dashboard</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-3 col-sm-6 col-12">
						<div class="card board1 fill">
							<div class="card-body">
								<div class="dash-widget-header">
									<div>
										<h3 class="card_widget_header">5</h3>
										<h6 class="text-muted">Total Products</h6> </div>
									<div class="ml-auto mt-md-3 mt-lg-0"> <span class="opacity-7 text-muted"><i class="fa-solid fa-book fa-2x"></i></span> </div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 col-12">
						<div class="card board1 fill">
							<div class="card-body">
								<div class="dash-widget-header">
									<div>
										<h3 class="card_widget_header">200</h3>
										<h6 class="text-muted">Revenue</h6> </div>
									<div class="ml-auto mt-md-3 mt-lg-0"> <span class="opacity-7 text-muted"><i class="fa-solid fa-dollar-sign fa-2x"></i></span> </div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 col-12">
						<div class="card board1 fill">
							<div class="card-body">
								<div class="dash-widget-header">
									<div>
										<h3 class="card_widget_header">2</h3>
										<h6 class="text-muted">Products Completed</h6> </div>
									<div class="ml-auto mt-md-3 mt-lg-0"> <i class="fa-solid fa-check fa-2x"></i><span class="opacity-7 text-muted"></span> </div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 col-12">
						<div class="card board1 fill">
							<div class="card-body">
								<div class="dash-widget-header">
									<div>
										<h3 class="card_widget_header">3</h3>
										<h6 class="text-muted">Pending Products</h6> </div>
									<div class="ml-auto mt-md-3 mt-lg-0"> <span class="opacity-7 text-muted"><i class="fa-regular fa-clock fa-2x"></i></span> </div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-lg-6">
						<div class="card card-chart">
							<div class="card-header">
								<h4 class="card-title">Profit Rate</h4> </div>
							<div class="card-body">
								<div id="line-chart"></div>
							</div>
						</div>
					</div>
					<div class="col-md-12 col-lg-6">
						<div class="card card-chart">
							<div class="card-header">
								<h4 class="card-title">Orders</h4> </div>
							<div class="card-body">
								<div id="donut-chart"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 d-flex">
						<div class="card card-table flex-fill">
							<div class="card-header">
								<h4 class="card-title float-left mt-2">All Products</h4>
								<button type="button" class="btn btn-primary float-right veiwbutton">View All</button>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-hover table-center">

										<thead>
										<tr>
											<th  >ID</th>
											<th  >Name</th>
											<th  >Stock</th>
											<th >Price</th>
											<th ></th>
										</tr>
										</thead>
										<tbody>
										<%
											Database dataAccess = new Database();
											Connection connection = dataAccess.getConnection();
											Statement statement = connection.createStatement();
											ResultSet result = statement.executeQuery("SELECT * FROM product");
											try {
												while (result.next()) {
										%>
										<tr>
											<td><%= result.getInt("productId") %></td>
											<td><%= result.getString("name") %></td>
											<td><%= result.getInt("price") %></td>
											<td><%= result.getInt("totalQuantity") %></td>
											<td>
												<a class="add" title="Add"><i class="material-icons">&#xE03B;</i></a>
												<a class="edit" title="Edit"><i class="material-icons">&#xE254;</i></a>
												<a class="delete" title="Delete" data-target="#delete_asset" href="#" data-toggle="modal"><i class="material-icons">&#xE872;</i></a>
											</td>
										</tr>
										<%
												}
											} catch (Exception e) {
												throw new RuntimeException(e);
											}
										%>


										</tbody>

									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="disable.js"></script>
	<script data-cfasync="false" src="../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="assets/js/jquery-3.5.1.min.js"></script>
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/plugins/raphael/raphael.min.js"></script>
	<script src="assets/plugins/morris/morris.min.js"></script>
	<script src="assets/js/chart.morris.js"></script>
	<script src="assets/js/script.js"></script>
</body>

</html>