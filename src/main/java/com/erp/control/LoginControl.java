package com.erp.control;

import com.erp.dao.AccountDao;
import com.erp.entity.Inventory;
import com.erp.entity.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginControl", value = "/login")
public class LoginControl extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        AccountDao user = new AccountDao();
        boolean isValid = user.checkCredentials(request.getParameter("email"), request.getParameter("password"));
        if (isValid) {
            // make an obj of inventory for this session
            HttpSession session = request.getSession();
            Inventory inventory = (Inventory) session.getAttribute("inventory");

            // If the inventory object doesn't exist, create a new one and store it in the session
            if (inventory == null) {
                inventory = new Inventory();
                session.setAttribute("inventory", inventory);
            }
            response.sendRedirect(request.getContextPath() + "/dashboard.jsp");
        }
        else {
            request.setAttribute("valid", isValid);
            RequestDispatcher view = request.getRequestDispatcher("/index.jsp");
            view.forward(request, response);
        }
    }
}