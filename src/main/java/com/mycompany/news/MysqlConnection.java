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
public class MysqlConnection {
    public Connection con;
    public void MysqlConnection() {
        
            try {
                
                Class.forName("com.mysql.cj.jdbc.Driver");            
                System.out.println("Connecting to a selected database...");
                con = DriverManager.getConnection("jdbc:mysql://database-1.crz3orvnmv7e.us-east-1.rds.amazonaws.com:3306/News", "admin", "rootadmin");
                System.out.println("Connected database successfully...");
//                con.close();
            } catch (Exception e) {
                e.toString();
            }
    }
}
