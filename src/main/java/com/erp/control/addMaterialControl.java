package com.erp.control;

import com.erp.entity.Admin;
import com.erp.entity.Inventory;
import com.erp.entity.Product;
import com.erp.entity.RawMaterial;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "addMaterialControl", value = "/material")
public class addMaterialControl extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        Inventory inventory = (Inventory) session.getAttribute("inventory");

        // If the inventory object doesn't exist in the session, create a new one
        if (inventory == null) {
            inventory = new Inventory();
            session.setAttribute("inventory", inventory);
        }
        RawMaterial rawMaterial = new RawMaterial(
                Integer.parseInt(request.getParameter("id")),
                request.getParameter("name"),
                Double.parseDouble(request.getParameter("price")),
                Integer.parseInt(request.getParameter("stock"))
        );
        inventory.addRawMaterial(rawMaterial);
        if(Integer.parseInt(request.getParameter("id"))<0||Integer.parseInt(request.getParameter("price"))<0||Integer.parseInt(request.getParameter("stock"))<0)
        {
            request.setAttribute("valid", false);
            RequestDispatcher view = request.getRequestDispatcher("/add-material.jsp");
            view.forward(request, response);
            return;
        }
        Admin user = new Admin();
        String status ="rawmaterial";
        boolean insertionCheck = user.addInventory(inventory,status);
        if (insertionCheck)
            response.sendRedirect(request.getContextPath() + "/add-material.jsp");
        else {
            request.setAttribute("valid", insertionCheck);
            RequestDispatcher view = request.getRequestDispatcher("/add-material.jsp");
            view.forward(request, response);
        }
    }
}
