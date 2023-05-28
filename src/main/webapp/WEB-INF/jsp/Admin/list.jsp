<%@page import="java.util.*"%>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.ByteArrayOutputStream" %>
<%@ page import="java.util.Base64" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List</title>
        <style>
            body
            {
                background-color: #303030;
            }
            table{
                border-collapse: separate;
            }
            thead{
                background-color: #282828;
            }
            td{

                border: 2px 0 solid rgb(209, 242, 247);
                font-size: 1.1rem;
                text-align: center;
                background-color: #404040;
                height: 3rem;
                border: 0px solid;
            }
            th{
                font-size: 0,7rem;
                height: 3rem;
                font-weight: 550;
                background-color: rgb(247, 252, 250);
                text-align: center;
            }
            tr:hover{
                background-color: rgba(236, 251, 245, 0.836);
            }
            td:hover{
                background-color: #282828;

            }
            input[name="deleteid"] {
                padding: 10px;
                font-size: 16px;
                border: 2px solid #ccc;
                border-radius: 4px;
                width: 300px;
            }
            button[type="submit"] {
                padding: 10px 20px;
                font-size: 16px;
                background-color: #4CAF50;
                color: white;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            button[type="submit"]:hover {
                background-color: #45a049;
            }

            select {
                padding: 8px;
                font-size: 16px;
                border: 1px solid #ccc;
                border-radius: 4px;
                width: 200px;
            }

            option {
                padding: 8px;
            }

        </style>
    </head>
    <body>
        <form action="ListDisplay" method="post">
            <select name="select">
                <option></option>
                <option>india</option>
                <option>world</option>
                <option>local_News</option>
                <option>top_stories</option>
            </select>
            <button type="submit" value="click">Click</button>
        </form>
        <p style="color:white; font-size: 30px;">Selected : ${select}</p>

        <%
            List<String> l1 = new ArrayList<String>();
            List<String> l2 = new ArrayList<String>();
            List<String> l3 = new ArrayList<String>();
            List<String> l4 = new ArrayList<String>();
            List<String> l5 = new ArrayList<String>();
            String value = (String) request.getAttribute("select");
        %>
        <%
            if (value.equals("top_stories")) {

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    System.out.println("Connecting to a selected database...");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");
                    PreparedStatement stmt = con.prepareStatement("select * from top_stories");

                    ResultSet rs = stmt.executeQuery();
                    while (rs.next()) {
                        l1.add(rs.getString("id"));
                        l2.add(rs.getString("heading"));
                        l3.add(rs.getString("post_date"));
                        l4.add(rs.getString("description"));
                        l5.add(rs.getString("link"));
                    }

                } catch (Exception k) {
                    System.out.println(k.getMessage());
                }
            } else if (value.equals("india")) {
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    System.out.println("Connecting to a selected database...");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");
                    PreparedStatement stmt = con.prepareStatement("select * from india");

                    ResultSet rs = stmt.executeQuery();
                    while (rs.next()) {
                        l1.add(rs.getString("id"));
                        l2.add(rs.getString("heading"));
                        l3.add(rs.getString("post_date"));
                        l4.add(rs.getString("description"));
                        l5.add(rs.getString("link"));
                    }

                } catch (Exception k) {
                    System.out.println(k.getMessage());
                }
            } else if (value.equals("world")) {
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    System.out.println("Connecting to a selected database...");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");
                    PreparedStatement stmt = con.prepareStatement("select * from world");

                    ResultSet rs = stmt.executeQuery();
                    while (rs.next()) {
                        l1.add(rs.getString("id"));
                        l2.add(rs.getString("heading"));
                        l3.add(rs.getString("post_date"));
                        l4.add(rs.getString("description"));
                        l5.add(rs.getString("link"));
                    }

                } catch (Exception k) {
                    System.out.println(k.getMessage());
                }
            } else if (value.equals("local_News")) {
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    System.out.println("Connecting to a selected database...");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");
                    PreparedStatement stmt = con.prepareStatement("select * from local_news");

                    ResultSet rs = stmt.executeQuery();
                    while (rs.next()) {
                        l1.add(rs.getString("id"));
                        l2.add(rs.getString("heading"));
                        l3.add(rs.getString("post_date"));
                        l4.add(rs.getString("description"));
                        l5.add(rs.getString("link"));
                    }

                } catch (Exception k) {
                    System.out.println(k.getMessage());
                }
            } else {

            }
        %>

        <table  style="width:115%">
            <thead>
                <tr>
                    <td>ID</td>
                    <td>heading</td>
                    <td>post_date</td>
                    <td>description</td>
                    <td>link</td>
                </tr>
            </thead>


            <%
                int i = 0;
                for (String o : l1) {
                    out.print("<tr>"
                            + "<td>" + l1.get(i) + "</td> "
                            + "<td>" + l2.get(i) + "</td> "
                            + "<td>" + l3.get(i) + "</td>"
                            + "<td>" + l4.get(i) + "</td>"
                            + "<td>" + l5.get(i) + "</td> "
                            + "</tr>"
                    );
                    i++;
                }
            %>



        </table>
        <form action="deleteNews" method="post">
            <br>
            <input type="text" name="deleteid" placeholder="Enter the is that you want to delete">

            <input type="hidden" name="selected" value="${select}">
            <button type="submit">Click</button>
        </form>
    </body>
</html>
