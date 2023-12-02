function disable(){
    var isQualityAnalysit = true;
	var isAdmin=false;
	var isManager=false;
	
	document.addEventListener("DOMContentLoaded", function() {

// Find the link element by its href attribute

//for quality
		var rateProductLink = document.querySelector('a[href="rate-product.html"]');
		var Reportlink=document.querySelector('a[href="report.html"]');
//for order
		var allorderlink =document.querySelector('a[href="all-orders.jsp"]');
		var addorderlink =document.querySelector('a[href="add-order.html"]');
//for product
		var allproductslink=document.querySelector('a[href="all-products.jsp"]');
		var addproductslink=document.querySelector('a[href="add-product.jsp"]');
//for venders
		var allvenderslink=document.querySelector('a[href="all-vendors.jsp"]');
		var addvenderslink=document.querySelector('a[href="add-vendors.html"]');
//for materials
		var allmateriallink=document.querySelector('a[href="all-materials.jsp"]');
		var addmateriallink=document.querySelector('a[href="add-material.jsp"]');
//for employee
		var allemployeelink=document.querySelector('a[href="all-employee.jsp"]');
		var addemployeelink=document.querySelector('a[href="add-employee.jsp"]');
		if (isAdmin) {
            //quotation pages
		}
		if (isManager) {

			rateProductLink.style.pointerEvents = "none";
			Reportlink.style.pointerEvents="none";
            //changing color to show its disabled
			rateProductLink.style.color = "#999";
			Reportlink.style.color="#999";

		}
		if(isQualityAnalysit){
			allorderlink.style.pointerEvents="none";
			addorderlink.style.pointerEvents="none";
			allproductslink.style.pointerEvents="none";
			addproductslink.style.pointerEvents="none";
			allvenderslink.style.pointerEvents="none";
			addvenderslink.style.pointerEvents="none";
			allmateriallink.style.pointerEvents="none";
			addmateriallink.style.pointerEvents="none";
			allemployeelink.style.pointerEvents="none";
			addemployeelink.style.pointerEvents="none";

			allorderlink.style.color="#999";
			addorderlink.style.color="#999";
			allproductslink.style.color="#999";
			addproductslink.style.color="#999";
			allvenderslink.style.color="#999";
			addvenderslink.style.color="#999";
			allmateriallink.style.color="#999";
			addmateriallink.style.color="#999";
			allemployeelink.style.color="#999";
			addemployeelink.style.color="#999";
		}
		});
}
disable();