package com.erp.dao;

import com.erp.Database.Database;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

public class OrderDao {
    public boolean deleteOrder(String id) {
        Database dataAccess = new Database();
        try (Connection connection = dataAccess.getConnection()) {
            String storedProcedureCall = "{CALL DeleteOrder(?)}";
            try (CallableStatement callableStatement = connection.prepareCall(storedProcedureCall)) {
                // Set the parameters for the stored procedure
                callableStatement.setString(1, id);
                callableStatement.execute();
                return true;
            } catch (SQLException e) {
                // Handle SQLException and show an error message
                e.printStackTrace();
                return false;
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
