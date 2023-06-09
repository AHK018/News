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
public class LoginSignUp {

    public String LoginSignUp(Model object1, String mail, String pass) {
        try {

            PreparedStatement stmt = con.prepareStatement("select * from user where email=? and password=?");
            stmt.setString(1, mail);
            stmt.setString(2, pass);
            ResultSet rs = stmt.executeQuery();
            String l = "", m = "", z = "";
            while (rs.next()) {
                m = rs.getString("email");
                l = rs.getString("password");
                z = rs.getString("name");
            }
            stmt = con.prepareStatement("insert into login (email,password) values(?,?)");
            stmt.setString(1, mail);
            stmt.setString(2, pass);
            stmt.executeUpdate();
            if (m.equals(mail) && l.equals(pass)) {
                object1.addAttribute("flag", 1);
                object1.addAttribute("UserName", z);
                object1.addAttribute("Email", mail);
                object1.addAttribute("Password", pass);

                return "index";
            } else {
                object1.addAttribute("flag", 0);
                return "index";
            }

        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
        object1.addAttribute("flag", 0);
        return "index";
    }

    public void LoginSignUp(Model object1, String str, String pass, String mail) {
        try {
            PreparedStatement stmt = con.prepareStatement("insert into user (name,email,password) values(?,?,?)");
            stmt.setString(1, str);
            stmt.setString(2, mail);
            stmt.setString(3, pass);
            stmt.executeUpdate();
            object1.addAttribute("UserName", str);
            object1.addAttribute("flag", 1);
            object1.addAttribute("Email", mail);
            object1.addAttribute("Password", pass);
        } catch (Exception k) {
            System.out.println(k.getMessage());
        }
    }
}
