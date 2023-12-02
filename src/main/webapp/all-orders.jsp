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

	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<link rel="stylesheet" href="assets/css/table.css">
	<script>

		$(document).ready(function(){
			$('[data-toggle="tooltip"]').tooltip();
			var actions = $("table td:last-child").html();
			// Append table with add row form on add new button click

			// Add row on add button click
			$(document).on("click", ".add", function(){
				var empty = false;
				var input = $(this).parents("tr").find('input[type="text"]');
				input.each(function(){
					if(!$(this).val()){
						$(this).addClass("error");
						empty = true;
					} else{
						$(this).removeClass("error");
					}
				});
				$(this).parents("tr").find(".error").first().focus();
				if(!empty){
					input.each(function(){
						$(this).parent("td").html($(this).val());
					});
					$(this).parents("tr").find(".add, .edit").toggle();
					$(".add-new").removeAttr("disabled");
				}
			});
			// Edit row on edit button click
			$(document).on("click", ".edit", function(){
				$(this).parents("tr").find("td:not(:last-child):not(:first-child )").each(function(){
					$(this).html('<input type="text" class="form-control" value="' + $(this).text() + '">');
				});
				$(this).parents("tr").find(".add, .edit").toggle();
				$(".add-new").attr("disabled", "disabled");
			});
			// Delete row on delete button click
			//$(document).on("click", ".delete", function(){
			//$(this).parents("tr").remove();
			//$(".add-new").removeAttr("disabled")

			//;
			//});
		});

	</script>










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
				<div class="row align-items-center">
					<div class="col">
						<div class="mt-5">
							<h4 class="card-title float-left mt-2">All Materials</h4>

						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="card card-table">
						<div class="card-body booking_card">

							<div class="table-responsive">
								<table class="datatable table table-stripped table table-hover table-center mb-0">
									<thead>
									<tr>
										<th  >OrderNumber</th>
										<th  >TotalAmount</th>
										<th  >ItemList</th>
										<th >Date</th>
										<th >TotalItems</th>
									</tr>

									</thead>
									<tbody>
									<%
										Database dataAccess = new Database();
										Connection connection = dataAccess.getConnection();
										Statement statement = connection.createStatement();
										ResultSet result = statement.executeQuery("SELECT * FROM `order`");
										try {
											while (result.next()) {
									%>
									<tr>
										<td><%= result.getString("OrderNumber") %></td>
										<td><%= result.getInt("totalAmount") %></td>
										<td><%= result.getString("ItemList") %></td>
										<td><%= result.getDate("date") %></td>
										<td><%= result.getInt("totalItems") %></td>
										<td>
											<a class="add" title="Add"><i class="material-icons">&#xE03B;</i></a>
											<a class="edit" title="Edit"><i class="material-icons">&#xE254;</i></a>
											<a class="delete" title="Delete" data-target="#delete_asset" onclick="sendRequestWithId(this)" data-order-id="<%= result.getString("OrderNumber")%>"><i class="material-icons">&#xE872;</i></a>

											<%

												Boolean isValid = (Boolean) request.getAttribute("valid");
												if (isValid != null && !isValid) {
											%>
											</p>
											<div style="color: red;">Cannot delete order</div>
											<%
												}
											%>
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
		<div id="delete_asset" class="modal fade delete-modal" role="dialog">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-body text-center"> <img src="assets/img/sent.png" alt="" width="50" height="46">
						<h3 class="delete_class">Do you really want to delete these records? This process cannot be undone.</h3>
						<div class="m-t-20"> <a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
							<button type="submit" id="delete_button_modal" class="btn btn-danger ">Delete</button>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	function sendRequestWithId(element) {
		var orderId=element.getAttribute("data-order-id");
		//show alert by using its id and class
		$('#delete_asset').modal('show');

		// Attach a click event to the Delete button using its id in the modal then this function do the deletion
		$('#delete_button_modal').on('click', function () {
			// Make an AJAX request to delete the record
			$.ajax({
				type: 'GET',
				url: 'orderDelete?orderID=' + orderId,
				success: function (response) {
					// On successful deletion, remove the row
					$('#row_' + orderId).remove();
					// Hide the modal using its id after deletion
					$('#delete_asset').modal('hide');
					location.reload();
				},
				error: function (error) {
					$('#delete_asset').modal('hide');
				}
			});

			// Remove the click event to prevent multiple clicks
			$('#delete_button_modal').off('click');
		});
	}
</script>
<script src="disable.js"></script>
<script data-cfasync="false" src="../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script src="assets/js/jquery-3.5.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="assets/plugins/datatables/datatables.min.js"></script>
<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="assets/plugins/raphael/raphael.min.js"></script>
<script src="assets/js/script.js"></script>
</body>

</html>