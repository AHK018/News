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
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");
                System.out.println("Connected database successfully...");
//                con.close();
            } catch (Exception e) {
                e.toString();
            }
    }
}
