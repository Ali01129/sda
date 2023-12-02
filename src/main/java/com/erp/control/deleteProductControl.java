package com.erp.control;

import com.erp.entity.Admin;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "deleteProductControl", value = "/productdelete")
public class deleteProductControl extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int productid = Integer.parseInt(request.getParameter("productID"));
        Admin user = new Admin();
        boolean deletionCheck = user.deleteInventory(productid,"product");
        if (deletionCheck)
            response.sendRedirect(request.getContextPath() + "/all-products.jsp");
        else {
            request.setAttribute("valid", deletionCheck);
            RequestDispatcher view = request.getRequestDispatcher("/all-products.jsp");
            view.forward(request, response);
        }
    }
}
