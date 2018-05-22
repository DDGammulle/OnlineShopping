package ExamplePackage;

import java.sql.*;
import java.util.*;

public class ConnectionManager {

    static Connection con;
    static String url;

    public static Connection getConnection() {
        System.out.println("Start");

        try {
            //String url = "jdbc:odbc:" + "DataSource"; 	// Assuming "DataSource" is your DataSource name
            String url = "jdbc:mysql://localhost:3306/mysql";

            //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Class.forName("com.mysql.jdbc.Driver");

            try {
                //con = DriverManager.getConnection(url, "username", "password");
                con = DriverManager.getConnection(url, "root", "lanka");
                // Assuming your SQL Server's	username is "username"
                // And password is "password"
                System.out.println("Connected");

            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } catch (ClassNotFoundException e) {
            System.out.println(e);
        }
        return con;
    }

}
