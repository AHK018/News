/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.news;

import static com.mycompany.news.MainController.con;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import org.springframework.ui.Model;

/**
 *
 * @author amey
 */
public class IndexController {

    public void information(Model object1) {
        try {
            PreparedStatement stmt = con.prepareStatement("select * from top_stories");
            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l4 = new ArrayList<String>();

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                l1.add(rs.getString("heading"));
                l2.add(rs.getString("post_date"));
                l3.add(rs.getString("description"));
                l4.add(rs.getString("link"));
            }
            object1.addAttribute("l1", l1);
            object1.addAttribute("l2", l2);
            object1.addAttribute("l3", l3);
            object1.addAttribute("l4", l4);

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
    }
}
