/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.news;

import java.sql.Connection;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
    public static Connection con;
    IndexController ind=new IndexController();
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String Homepage(org.springframework.ui.Model object1) {
        MysqlConnection obj = new MysqlConnection();
        obj.MysqlConnection();
        con = obj.con;
        ind.information(object1);
        object1.addAttribute("flag",0);
        return "index";
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String Loginpage(@RequestParam("Username") String Username, @RequestParam("Password") String Password, org.springframework.ui.Model object1) {
        object1.addAttribute("Username", Username);
        ind.information(object1);
        LoginSignUp log=new LoginSignUp();
        log.LoginSignUp(object1, Username, Password);
        return "index";
    }
    
    
    @RequestMapping(value = "/register", method=RequestMethod.POST)
    public String google1(@RequestParam("Username") String Username, @RequestParam("Password") String Password,@RequestParam("Email") String Email,Model object1) {
        object1.addAttribute("Username", Username);
        ind.information(object1);
        object1.addAttribute("flag", 1);
        return "index";
    }
}
