package com.erp.dao;

import com.erp.Database.Database;
import com.erp.entity.Employee;

import java.sql.*;


public class EmployeeDao {
        public boolean addEmployeeDAO(Employee obj)
        {
            Database dataAccess = new Database();
            try(Connection connection = dataAccess.getConnection())
            {
                String storedProcedureCall = "{CALL InsertEmployee(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
                try (CallableStatement callableStatement = connection.prepareCall(storedProcedureCall)) {
                    // Set the parameters for the stored procedure
                    callableStatement.setInt(1, obj.getEmployeeId());
                    callableStatement.setString(2, obj.getName());
                    callableStatement.setString(3, obj.getDesignation());
                    callableStatement.setString(4, obj.getAddress());
                    callableStatement.setString(5, obj.getEmail());
                    callableStatement.setString(6, obj.getPhoneNumber());
                    callableStatement.setInt(7, obj.getAge());
                    callableStatement.setString(8, obj.getDateOfBirth());
                    callableStatement.setString(9, obj.getCnic());
                    callableStatement.setString(10, obj.getGender());
                    callableStatement.setString(11, obj.getDateOfJoining());
                    callableStatement.setInt(12, obj.getSalary());

                    // Execute the stored procedure
                    callableStatement.execute();

                   return true;
                }catch (SQLException e) {
                    // Handle SQLException and show an error message
                    e.printStackTrace();
                    return false;
                }

            }catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
        public boolean deleteEmployee(int id) {
            Database dataAccess = new Database();
            try (Connection connection = dataAccess.getConnection()) {
                String storedProcedureCall = "{CALL DeleteEmployee(?)}";
                try (CallableStatement callableStatement = connection.prepareCall(storedProcedureCall)) {
                    // Set the parameters for the stored procedure
                    callableStatement.setInt(1, id);
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
