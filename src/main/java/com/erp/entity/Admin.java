package com.erp.entity;

import com.erp.dao.EmployeeDao;
import com.erp.dao.InventoryDao;
import com.erp.dao.OrderDao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Admin extends User {
    public Admin() {
        super();

    }

    public Admin(String name, String userName, String password, int userId, String designation, String address, String email, String phoneNumber, int age, String dateOfBirth, String cnic, String gender) {
        super(name, userName, password, userId, designation, address, email, phoneNumber, age, dateOfBirth, cnic, gender);
    }

    public boolean addEmplyee(Employee obj) {
        //got data from controller not send it to doa and
        // then add the employee in database
        EmployeeDao insertData = new EmployeeDao();
        boolean insertionCheck = insertData.addEmployeeDAO(obj);
        return insertionCheck;
    }

    public boolean addInventory(Inventory obj, String status) {
        //got data from controller not send it to doa and
        // then add the employee in database
        boolean insertionCheck = false;
        if (status.equalsIgnoreCase("rawmaterial")) {
            List<RawMaterial> rawMaterials = obj.getRawMaterials(); //get the list from inventory
            // Get the last added raw material
            RawMaterial lastAddedRawMaterial = rawMaterials.get(rawMaterials.size() - 1); // get last obj of raw material added
            InventoryDao insertData = new InventoryDao();
            insertionCheck = insertData.addRawMaterialDAO(lastAddedRawMaterial);
        } else if (status.equalsIgnoreCase("product")) {
            List<Product> products = obj.getProducts(); //get the list from inventory
            // Get the last added raw material
            Product lastAddedProduct = products.get(products.size() - 1); // get last obj of raw material added
            InventoryDao insertData = new InventoryDao();
            insertionCheck = insertData.addProductDAO(lastAddedProduct);

        }

        return insertionCheck;
    }

    public boolean deleteEmployee(int id) {
        EmployeeDao deleteData = new EmployeeDao();
        boolean deletionCheck = deleteData.deleteEmployee(id);
        return deletionCheck;
    }

    public boolean deleteInventory(int id, String status) {
        //got data from controller not send it to doa and
        // then add the employee in database
        boolean insertionCheck = false;
        if (status.equalsIgnoreCase("rawmaterial")) {
            InventoryDao deleteData = new InventoryDao();
            insertionCheck = deleteData.deleteRowMaterial(id);
        } else if (status.equalsIgnoreCase("product")) {
            InventoryDao deleteData = new InventoryDao();
            insertionCheck = deleteData.deleteProductDao(id);

        }
        return insertionCheck;
    }

    public boolean deleteOrder(String orderNumber)
    {
        boolean insertionCheck = false;
        OrderDao deleteData =new OrderDao();
        insertionCheck = deleteData.deleteOrder(orderNumber);
        return insertionCheck;
    }

    public void sendEmailToVendor() throws SQLException {

        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdapro", "root", "bakhti");
        ArrayList<String> Material_name_List = new ArrayList<>();
        Statement st = conn.createStatement();
        String sql = ("SELECT * FROM rawmaterial");
        ResultSet rs = st.executeQuery(sql);
        String m_text="";

        while (rs.next()) {

            int id = rs.getInt("RawMaterialid");
            String m_name = rs.getString("name");
            String totatq = rs.getString("totalQuantity");
            int quantity = Integer.parseInt(totatq);
            if (quantity < 5) {
                Material_name_List.add(m_name);
                m_text +="This Material  "+ m_name+" is short"+"\n\n";
            }
        }

        GEmailSender gEmailSender = new GEmailSender();
        ArrayList<String> Vendor_name_List = new ArrayList<>();
        Statement v_st = conn.createStatement();
        String v_sql = ("SELECT * FROM vendor");
        ResultSet v_rs = v_st.executeQuery(v_sql);
        while (v_rs.next())
        {
            String v_e = v_rs.getString("email");
            Vendor_name_List.add(v_e);
        }

        String from = "mnoumanjaveed@gmail.com";
        String subject = "Notification of Materials Shortage and Request for Immediate Action";
        String text = "Dear Vendor ,\n" +
                "\n" +
                "I hope this email finds you well. We've identified a shortage in our material inventory. This shortage is affecting our production schedule and commitments to clients. Please urgently provide an update on material availability and potential delivery timelines. If there are any expedited options or alternatives, we'd appreciate your assistance. Your prompt attention to this matter is crucial. Feel free to reach out for additional details. Thank you for your swift action.\n" +
                "\n" +  m_text+
                "Best regards,";

        for (int i =0 ; i< Vendor_name_List.size() ;i++)
        {
            boolean b = gEmailSender.sendEmail(Vendor_name_List.get(i), from, subject, text);
            if (b) {
                System.out.println("Email is sent successfully"); // This message will be print on front-end
            } else {
                System.out.println("There is problem in sending email");
            }

        }

        conn.close();
    }

}
