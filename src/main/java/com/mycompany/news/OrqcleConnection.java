/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.news;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author amey
 */
public class OrqcleConnection {
    public Connection con;
    public void OrqcleConnection() {
            try {
                
                Class.forName("oracle.jdbc.driver.OracleDriver");  //Load the driver class
            
                System.out.println("Connecting to a selected database...");

                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "hr", "hr"); // Creating a connection object

                System.out.println("Connected database successfully...");

//                con.close();
            } catch (Exception e) {
                e.toString();
            }
    }
}
