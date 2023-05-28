/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.news;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class MainController {

    public static Connection con;
    IndexController ind = new IndexController();

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String Homepage(org.springframework.ui.Model object1) {
        MysqlConnection obj = new MysqlConnection();
        obj.MysqlConnection();
        con = obj.con;
        ind.information(object1);
        object1.addAttribute("flag", 0);
        return "index";
    }

    @RequestMapping(value = "/index1", method = RequestMethod.POST)
    public String Homepage1(
            @RequestParam("UserName") String UserName,
            @RequestParam("Email") String Email,
            @RequestParam("Password") String Password,
            Model object1) {

        ind.information(object1);
        object1.addAttribute("flag", 1);
        object1.addAttribute("UserName", UserName);
        object1.addAttribute("Email", Email);
        object1.addAttribute("Password", Password);

        return "index";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String Loginpage(@RequestParam("Email") String Email, @RequestParam("Password") String Password, Model object1) {
        if (Email.equals("Admin@123") && Password.equals("Admin")) {
            object1.addAttribute("select", "top_stories");
            return "Admin/list";
        };

        ind.information(object1);
        LoginSignUp log = new LoginSignUp();
        log.LoginSignUp(object1, Email, Password);

        return "index";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String google1(@RequestParam("Username") String Username, @RequestParam("Password") String Password, @RequestParam("Email") String Email, Model object1) {
        object1.addAttribute("Username", Username);
        ind.information(object1);
        object1.addAttribute("flag", 1);
        LoginSignUp log = new LoginSignUp();
        log.LoginSignUp(object1, Username, Password, Email);
        return "index";
    }

    @RequestMapping(value = "/PostAdding")
    public String postingNews() {

        return "PostAdding";
    }

    @RequestMapping(value = "/addNews", method = RequestMethod.POST)
    public String addNews(
            @RequestParam("a") String a,
            @RequestParam("b") String b,
            @RequestParam("c") String c,
            @RequestParam("d") CommonsMultipartFile file,
            @RequestParam("e") String e,
            @RequestParam("f") String f,
            Model object1
    ) {

        try {
            System.out.println(a + b + c + e);
            if (f.equals("Top Stories")) {
                PreparedStatement stmt = con.prepareStatement("INSERT INTO top_stories (heading, post_date, description, image, link) VALUES (?,?,?,?,?);");
                stmt.setString(1, a);
                stmt.setString(2, b);//1 specifies the first parameter in the query  
                stmt.setString(3, c);
                InputStream inputStream = null;

                if (file != null) {
                    inputStream = file.getInputStream();
                }

                if (inputStream != null) {
                    stmt.setBlob(4, inputStream);
                }
                stmt.setString(5, e);
                int row = stmt.executeUpdate();
                if (row > 0) {
                    object1.addAttribute("a", a);
                    object1.addAttribute("b", b);
                    object1.addAttribute("c", c);
                    object1.addAttribute("e", e);
                    return "print";
                }
            } else if (f.equals("Local News")) {
                PreparedStatement stmt = con.prepareStatement("INSERT INTO local_news (heading, post_date, description, image, link) VALUES (?,?,?,?,?);");
                stmt.setString(1, a);
                stmt.setString(2, b);//1 specifies the first parameter in the query  
                stmt.setString(3, c);
                InputStream inputStream = null;

                if (file != null) {
                    inputStream = file.getInputStream();
                }

                if (inputStream != null) {
                    stmt.setBlob(4, inputStream);
                }
                stmt.setString(5, e);
                int row = stmt.executeUpdate();
                if (row > 0) {
                    object1.addAttribute("a", a);
                    object1.addAttribute("b", b);
                    object1.addAttribute("c", c);
                    object1.addAttribute("e", e);
                    return "print";
                }
            } else if (f.equals("India")) {
                PreparedStatement stmt = con.prepareStatement("INSERT INTO india (heading, post_date, description, image, link) VALUES (?,?,?,?,?);");
                stmt.setString(1, a);
                stmt.setString(2, b);//1 specifies the first parameter in the query  
                stmt.setString(3, c);
                InputStream inputStream = null;

                if (file != null) {
                    inputStream = file.getInputStream();
                }

                if (inputStream != null) {
                    stmt.setBlob(4, inputStream);
                }
                stmt.setString(5, e);
                int row = stmt.executeUpdate();
                if (row > 0) {
                    object1.addAttribute("a", a);
                    object1.addAttribute("b", b);
                    object1.addAttribute("c", c);
                    object1.addAttribute("e", e);
                    return "print";
                }
            } else if (f.equals("World")) {
                PreparedStatement stmt = con.prepareStatement("INSERT INTO world (heading, post_date, description, image, link) VALUES (?,?,?,?,?);");
                stmt.setString(1, a);
                stmt.setString(2, b);//1 specifies the first parameter in the query  
                stmt.setString(3, c);
                InputStream inputStream = null;

                if (file != null) {
                    inputStream = file.getInputStream();
                }

                if (inputStream != null) {
                    stmt.setBlob(4, inputStream);
                }
                stmt.setString(5, e);
                int row = stmt.executeUpdate();
                if (row > 0) {
                    object1.addAttribute("a", a);
                    object1.addAttribute("b", b);
                    object1.addAttribute("c", c);
                    object1.addAttribute("e", e);
                    return "print";
                }
            } else {
                // latest post
                PreparedStatement stmt = con.prepareStatement("INSERT INTO latest_post (heading, post_date, description, image, link) VALUES (?,?,?,?,?);");
                stmt.setString(1, a);
                stmt.setString(2, b);//1 specifies the first parameter in the query  
                stmt.setString(3, c);
                InputStream inputStream = null;

                if (file != null) {
                    inputStream = file.getInputStream();
                }

                if (inputStream != null) {
                    stmt.setBlob(4, inputStream);
                }
                stmt.setString(5, e);
                int row = stmt.executeUpdate();
                if (row > 0) {
                    object1.addAttribute("a", a);
                    object1.addAttribute("b", b);
                    object1.addAttribute("c", c);
                    object1.addAttribute("e", e);
                    return "print";
                }

            }

        } catch (Exception K) {
            System.out.println(K.getMessage());
        }
        return "error";
    }

    @RequestMapping(value = "/index2", method = RequestMethod.POST)
    public String Homepage2(
            @RequestParam("UserName") String UserName,
            @RequestParam("Email") String Email,
            @RequestParam("Password") String Password,
            Model object1) {
        try {
            System.out.println("username: " + UserName);
            System.out.println("password:" + Password);
            PreparedStatement stmt = con.prepareStatement("update user set name=?, password=? where email=?");
            stmt.setString(1, UserName);
            stmt.setString(2, Password);
            stmt.setString(3, Email);
            stmt.executeUpdate();
        } catch (Exception e) {
            e.toString();
        }
        ind.information(object1);
        object1.addAttribute("flag", 1);
        object1.addAttribute("UserName", UserName);
        object1.addAttribute("Email", Email);
        object1.addAttribute("Password", Password);

        return "index";
    }
}
