package com.erp.control;

import com.erp.entity.Admin;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "deleteMaterialControl", value = "/materialdelete")
public class deleteMaterialControl extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int materialID = Integer.parseInt(request.getParameter("materialID"));
        Admin user = new Admin();
        boolean deletionCheck = user.deleteInventory(materialID,"rawmaterial");
        if (deletionCheck)
            response.sendRedirect(request.getContextPath() + "/all-materials.jsp");
        else {
            request.setAttribute("valid", deletionCheck);
            RequestDispatcher view = request.getRequestDispatcher("/all-materials.jsp");
            view.forward(request, response);
        }
    }
}
