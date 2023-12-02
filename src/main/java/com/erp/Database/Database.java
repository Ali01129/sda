package com.erp.Database;
import java.sql.Connection;
import java.sql.DriverManager;

public class Database {
    public Connection getConnection() {
        Connection conn;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdapro", "root", "bakhti");
            return conn;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    public static void main(String[] args) {
        System.out.println(new Database().getConnection());
    }
}