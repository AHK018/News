/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.news;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import static javax.management.Query.value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author amey
 */
@Controller
public class AdminController {

    @RequestMapping(value = "/ListDisplay", method = RequestMethod.POST)
    public String admincotroll(@RequestParam("select") String select, Model object) {
        object.addAttribute("select", select);
        return "Admin/list";
    }

    @RequestMapping(value = "/deleteNews", method = RequestMethod.POST)
    public String admincotroll(@RequestParam("selected") String select,
            @RequestParam("deleteid") String id,
            Model object) {
        object.addAttribute("select", select);
        if (select.equals("top_stories")) {
            try {

                Class.forName("com.mysql.cj.jdbc.Driver");
                System.out.println("Connecting to a selected database...");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");
                PreparedStatement stmt = con.prepareStatement("select * from top_stories where id=?");
                stmt.setInt(1, Integer.parseInt(id));
                String l = "";
                ResultSet rs = stmt.executeQuery();
                while (rs.next()) {
                    l = rs.getString("id");
                }
                if (l.equals(id)) {
                    stmt = con.prepareStatement("delete from top_stories where id=?");
                    stmt.setInt(1, Integer.parseInt(id));
                    stmt.executeUpdate();
                } else {
                    return "error";
                }

            } catch (Exception k) {
                System.out.println(k.getMessage());
            }
        } else if (select.equals("india")) {
            try {

                Class.forName("com.mysql.cj.jdbc.Driver");
                System.out.println("Connecting to a selected database...");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");
                PreparedStatement stmt = con.prepareStatement("select * from india where id=?");
                stmt.setInt(1, Integer.parseInt(id));
                String l = "";
                ResultSet rs = stmt.executeQuery();
                while (rs.next()) {
                    l = rs.getString("id");
                }
                if (l.equals(id)) {
                    stmt = con.prepareStatement("delete from india where id=?");
                    stmt.setInt(1, Integer.parseInt(id));
                    stmt.executeUpdate();
                } else {
                    return "error";
                }

            } catch (Exception k) {
                System.out.println(k.getMessage());
            }
        } else if (select.equals("world")) {
            try {

                Class.forName("com.mysql.cj.jdbc.Driver");
                System.out.println("Connecting to a selected database...");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");
                PreparedStatement stmt = con.prepareStatement("select * from world where id=?");
                stmt.setInt(1, Integer.parseInt(id));
                String l = "";
                ResultSet rs = stmt.executeQuery();
                while (rs.next()) {
                    l = rs.getString("id");
                }
                if (l.equals(id)) {
                    stmt = con.prepareStatement("delete from world where id=?");
                    stmt.setInt(1, Integer.parseInt(id));
                    stmt.executeUpdate();
                } else {
                    return "error";
                }

            } catch (Exception k) {
                System.out.println(k.getMessage());
            }
        } else if (select.equals("local_News")) {
            try {

                Class.forName("com.mysql.cj.jdbc.Driver");
                System.out.println("Connecting to a selected database...");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");
                PreparedStatement stmt = con.prepareStatement("select * from local_news where id=?");
                stmt.setInt(1, Integer.parseInt(id));
                String l = "";
                ResultSet rs = stmt.executeQuery();
                while (rs.next()) {
                    l = rs.getString("id");
                }
                if (l.equals(id)) {
                    stmt = con.prepareStatement("delete from local_news where id=?");
                    stmt.setInt(1, Integer.parseInt(id));
                    stmt.executeUpdate();
                } else {
                    return "error";
                }

            } catch (Exception k) {
                System.out.println(k.getMessage());
            }
        }
        else
        {
            return "error";
        }
        return "Admin/list";
    }

}
