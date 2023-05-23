<%@ page import="java.io.InputStream" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.ByteArrayOutputStream" %>
<%@ page import="java.util.Base64" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <style>
            /* Center the card */
            body {
                display: flex;
                align-items: center;
                justify-content: center;
                height: 100vh;
            }

            /* Card styles */
            .card {
                width: 400px;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 8px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                background-color: #fff;
                transition: box-shadow 0.3s;
            }

            /* Highlight card on hover */
            .card:hover {
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            }

            /* Date styles */
            .date {
                font-size: 12px;
                text-align: right;
                color: #888;
            }

            /* Image styles */
            .image {
                width: 100%;
                height: auto;
                margin-top: 10px;
            }

            /* Description styles */
            .description {
                margin-top: 10px;
                line-height: 1.5;
            }
        </style>
    </head>
    <body>
        <div class="card">
            <h2>Headline: ${a}</h2>
            <p class="date">Date ${b}</p>
       
            <p>${c}</p>
            
            
            <div class="container">
            <div class="row">
                <div class="col">
                    <table>
                        <%
                            
                            try {
                                Class.forName("com.mysql.cj.jdbc.Driver");

                                Connection con = DriverManager.getConnection("jdbc:mysql://database-1.crz3orvnmv7e.us-east-1.rds.amazonaws.com:3306/News", "admin", "rootadmin");

                                PreparedStatement stmt = con.prepareStatement("select (image) from top_stories");
                                ResultSet rs = stmt.executeQuery();
                                System.out.println("this reach");
                                while (rs.next()) {

                                    Blob imageBlob = rs.getBlob("image");
                                    InputStream imageStream = imageBlob.getBinaryStream();
                                    ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                                    byte[] buffer = new byte[4096];
                                    int n = 0;
                                    while (-1 != (n = imageStream.read(buffer))) {
                                        outputStream.write(buffer, 0, n);
                                    }
                                    byte[] imageBytes = outputStream.toByteArray();
                        %>
                        <td class="item-td">
                            <div class="card item-card" align="center" style="width: 14rem;">
                                <img class="card-img-top" alt="..." align="center" margin="40px" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes)%>"/>
                            </div>
                        </td>
                        </tr><tr>
                            <%
                                    }
                                } catch (Exception k) {
                                    System.out.println(k.getMessage());
                                }
                            %>
                    </table>
                </div>
            </div>   
        </div>
        </div>
    </body>
</html>