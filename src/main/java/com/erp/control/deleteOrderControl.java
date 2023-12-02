package com.erp.control;

import com.erp.entity.Admin;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "deleteOrderControl", value = "/orderDelete")
public class deleteOrderControl extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String orderId =request.getParameter("orderID");
        Admin user = new Admin();
        boolean deletionCheck = user.deleteOrder(orderId);
        if (deletionCheck)
            response.sendRedirect(request.getContextPath() + "/all-orders.jsp");
        else {
            request.setAttribute("valid", deletionCheck);
            RequestDispatcher view = request.getRequestDispatcher("/all-orders.jsp");
            view.forward(request, response);
        }
    }
}
