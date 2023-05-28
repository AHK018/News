<%@page import="java.util.*"%>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.ByteArrayOutputStream" %>
<%@ page import="java.util.Base64" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <title>Dashboard Screen</title>
    </head>

    <style>
        *{
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-weight: 400;
            color: azure;
            scroll-behavior: smooth;

        }


        .flex{
            background-color:	#303030 ;
        }

        main{
            display: grid;
            height: auto;
            max-width: 100vw;
            grid-template-columns: 6fr 4fr;
            grid-auto-rows: 1240px auto ;
            overflow-x: hidden;
            /* z-index: -1; */
        }
        .main-card{
            position: relative;
            display: flex;
            flex-direction: column;
            gap: 1px;
            top: 80px;
            max-width:50vw;
            height: auto;
            margin-left: -4vw;
            padding-left: 15vw;
            /* z-index: -1; */
            /* background-color: rgba(18, 23, 24, 0.875); */
        }
        .card-i{
            display: grid;
            position: relative;
            grid-template-columns: 2fr 4fr;
            grid-gap: 3vw;
            width: 50vw;
            height: 300px;
            top: 5vh;
            background:#202020;
            border-top:  0.2px solid rgba(225, 251, 249, 0.522);
            padding-bottom: 2vh;
            margin-bottom: 0px;
            /* z-index: 1; */
            padding: 10px;
        }

        .card-i:nth-child(1) {
            border: 1px;
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
            border: 90%;
        }
        .card-i:nth-child(2) {
            border: 1px;
            border-bottom-left-radius: 40px;
            border-bottom-right-radius: 40px;
            border: 90%;
        }

        .pub-name-card{
            display: inline;
            position: relative;
            top:0.5vh;
        }
        .pub-card-content{
            position: relative;
            display: grid;
            grid-template-rows: 3fr 3fr 3fr;
            grid-gap:5px;
            height: 35vh;
            max-height: 40vh;
            /* left: 0.3vw; */
        }
        .pub-name{
            display: block;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-weight: 400;
            font-size: 14px;
            color: whitesmoke;
            font-style: normal;
        }

        .pub-desc{
            display: flex;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif ;
            font-weight: 400;
            font-size: 16px;
            font-style: normal;
            padding-bottom: 1rem;
            color: whitesmoke;
            max-height: 9vh;
            content: "\a";
            text-overflow:ellipsis;
            overflow:hidden;
        }
        .left-content{
            position: relative;
            display: grid;
            grid-template-rows: 7fr 0.1fr 3fr;
            max-width: 100%;
            overflow-wrap: break-word;
        }

        .card-headline{
            position: relative;
            display: flex;
            font-size:18px;
            font-weight: 400;
            font-style:normal;
            padding-left: 1vw;
            top: 0;
            /* z-index: 111; */
            width: 13vw;
            height: 9vh;
            max-height: 9vh;
            content: "\a";
            white-space:normal;
            text-overflow:ellipsis;
            overflow:hidden;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }

        .img-dsc{
            position: relative;
            display: block;
            left: 1vw;
            top: 3vh;
            background:url("images/coding.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
            border: 1px;
            border-radius: 10px ;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            /* z-index: 11; */
        }
        .main-brand{
            display: inline;
            position: relative;
            top: -2vh;
            left: 1vw;
            font-size: 12px;
            font-weight: 200;
            color: #5a5a5a;
        }
        .widges{
            display: flex;
            flex-direction: row;
            position: relative;
            height: 10vh;
            align-items: end;
        }
        .breif-intro{
            position: relative;
            display: flex;
            flex-direction: row;
            left:0vw;
            width: 15vw;
            min-height: 10vh;
            background-color: rgba(105, 100, 100, 0.077);
            border-radius: 10px;
            font-size: 25px;
        }
        .breif-intro span{
            font-size: 12px;
            color: rgb(129, 138, 146);
            position: relative;
            top:7vh;

        }
        .weather-bar{
            display: inline-flex;
            position: relative;
            left: 47vw;
            width: 15vw;
            height: 10vh;
            background-color: rgba(71, 64, 64, 0.687);
            border-radius: 10px;
        }

        .brefings{
            position: relative;
            display:flex;
            flex-direction: column;
            gap: 3px;

            top:-106vh;
            left: 62vw;
            height:auto;
            max-height: 70vh;
            width: 25vw;
            border-radius: 10px;
            background: #202020;
            /* z-index: -1; */
        }



        .trail{
            height: 20px;
            width: 20px;
            border-radius: 50%;
            border:1px solid rgb(255, 136, 0);
            position: fixed;
            /* z-index: 11; */
            animation: come 1s linear forwards;
        }

        @keyframes come {
            0%{
                transform: scale(0);
            }
            10%{
                transform: scale(1) translateY(0px);
                opacity: 1;
            }

        }

        .main-card-container{
            position: absolute;
            display: block;
            left: 0;
            width: 0vw;
        }

        .short-news{
            position: relative;
            display: block;
            border-top: 1px solid white;
            height: 18vh;
            width: 90%;
            left: 5%;
            padding-top: 10px;
            padding-bottom: 10px;
            background: rgba(19, 1, 26, 0.064);
        }
        .head-use{
            font-size: 23px;
            padding-left: 5%;
            padding-bottom: 5px;
            padding-top: 5px;
        }
        .short-brand{
            position: relative;
            display: inline;
            padding:10px 10px 0 0;
            font-weight: 100;
            font-size: 12px;
        }
        .consist-short{
            position: relative;
            display: grid;
            grid-template-columns: 7fr 3fr;
            gap:5px;
        }
        .short-img{
            position: relative;
            display: block;
            background: url("images/loading.gif");
            background-repeat: no-repeat;
            background-size: 100%;
            border-radius: 10px;
        }
        .short-coverage{
            display: block;
            position: relative;
            padding: 0 5px 5px 5px;
            left: 90%;
        }
        .container-head{
            position: relative;
            display: block;
            top: 5vh;
            background: #202020;
            font-size: 23px;
            color:aliceblue;
            /* z-index: 21; */
            padding:1vh 0 2vh 2vw;
            width: 143%;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .special-container{
            position: relative;
            height: 100%; /* Set container height */
            overflow-y: auto;
            overflow-x: hidden;
            scroll-behavior: smooth;
            background-color: #202020;
            width: 75vw;
            top: -35vh;
            left: 11vw;
        }

        .specials{
            position:relative;
            width: 70vw;
            height: 70vh;
            max-width: 70vw;
            top:-1vh;
            display:flex;
            flex-direction: row;
            gap: 3vw;
            overflow-x:auto;
            white-space: nowrap;
            left: -1vw;
            background: rgba(61, 48, 96, 0.023);


        }
        .specials::-webkit-scrollbar{
            width: 0;
        }


        .special-cards {
            position: relative;
            display: block;
            left: 2vw;
            min-width: 22vw;
            top:4%;
            max-height: 96%;
            background-color: #202020;
            border: 0.1px solid whitesmoke;
            border-radius: 10px;
            scroll-snap-align: start;
            scroll-snap-stop: always;
        }


        .special-title{
            position: relative;
            top:0vh;
            left: 0vw;
            font-size: 30px;
            padding: 1vw;
            /* z-index: -1; */
        }
        .special-desc{
            position: relative;
            display: inline-flex;
            max-height: 9vh;
            content: "\a";
            white-space:normal;
            text-overflow:ellipsis;
            overflow:hidden;
        }
        .title-special-card{
            position: relative;
            display: inline;
            top:3vh;
            left: 1vw;
            font-size: 23px;
        }
        .sec-short-news{
            position: relative;
            display: block;
            border-top: 1px solid white;
            height: 18vh;
            width: 90%;
            left: 5%;
            top: 5vh;
            padding-top: 10px;
            padding-bottom: 10px;
            background: rgba(19, 1, 26, 0);
        }

        /* Media queries for different screen sizes */
        @media screen and (max-width: 768px) {
            main {
                grid-template-columns: 1fr;
            }

            .main-card {
                max-width: 100%;
                margin-left: 0;
                padding-left: 0;
            }

            .card-i {
                width: 100%;
            }
        }

        @media screen and (max-width: 480px) {
            .main-card {
                top: 20px;
            }
        }
    </style>
    <%
        int j = (int) request.getAttribute("flag");
        if (j == 1) {
    %>
    <header>
        <%@include file="TopNavBar_1.jsp" %>
    </header>
    <% } else {
    %>
    <header>
        <%@include file="TopNavBar.jsp" %>
    </header>
    <% } %>
    <body class='flex'>

        <%
            List<String> l1 = (List<String>) request.getAttribute("l1");
            List<String> l2 = (List<String>) request.getAttribute("l2");
            List<String> l3 = (List<String>) request.getAttribute("l3");
            List<String> l4 = (List<String>) request.getAttribute("l4");
            List<String> l5 = new ArrayList<String>();
            List<String> l6 = new ArrayList<String>();
            List<String> l7 = new ArrayList<String>();
            List<String> l8 = new ArrayList<String>();
            List<String> l9 = new ArrayList<String>();
            List<String> l10 = new ArrayList<String>();
            List<String> l11 = new ArrayList<String>();
            List<String> l12 = new ArrayList<String>();
            List<String> l13 = new ArrayList<String>();
            List<String> l14 = new ArrayList<String>();
            List<String> l15 = new ArrayList<String>();
            List<String> l16 = new ArrayList<String>();
            int i = l1.size() - 1;
            int op = 0;
            int op1=0;
            int op2=0;
        %>



        <main>
            <div class="main-card-container"></div>
            <div class="main-card">
                <div class="widges">
                    <div class="breif-intro">Your briefing <span> Sunday, 14 May</span>
                    </div>
                    <div class="weather-bar">
                    </div>
                </div>
                <span class="container-head">Top Stories ></span>
                <div class="card-i">
                    <%                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");

                            //                                Connection con = DriverManager.getConnection("jdbc:mysql://database-1.crz3orvnmv7e.us-east-1.rds.amazonaws.com:3306/News", "admin", "rootadmin");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");

                            PreparedStatement stmt = con.prepareStatement("SELECT (image) FROM top_stories ORDER BY id DESC LIMIT 1");
                            ResultSet rs = stmt.executeQuery();
                            System.out.println("this reach");
                            int ij = 0;
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
                                ij++;
                    %>



                    <div class="left-content">
                        <div class="img-dsc">
                            <img class="card-img-top" alt="..." align="center" margin="40px" style="width: 150px; height: 150px;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes)%>"/>
                        </div>
                        <span class="main-brand"><% out.print(l1.get(i)); %></span>
                        <span class="main-brand"><% out.print(l2.get(i)); %></span>
                        <a href="<% out.print(l4.get(i)); %>"><span class="card-headline"><% out.print(l3.get(i));%></span></a>
                    </div>

                    <%
                            }
                        } catch (Exception k) {
                            System.out.println(k.getMessage());
                        }
                    %>
                    <div class="pub-card-content">

                        <div class="pub-name-card">
                            <span class="pub-name"><% out.print(l1.get(i - 3)); %></span>
                            <span class="pub-name"><% out.print(l2.get(i - 3)); %></span>
                            <a href="<% out.print(l4.get(i - 3)); %>"><span class="pub-desc"><% out.print(l3.get(i - 3));%></span></a>
                        </div>

                        <div class="pub-name-card">
                            <span class="pub-name"><% out.print(l1.get(i - 4)); %></span>
                            <span class="pub-name"><% out.print(l2.get(i - 4)); %></span>
                            <a href="<% out.print(l4.get(i - 4)); %>"><span class="pub-desc"><% out.print(l3.get(i - 4));%></span></a>
                        </div>

                        <div class="pub-name-card">
                            <span class="pub-name"><% out.print(l1.get(i - 5)); %></span>
                            <span class="pub-name"><% out.print(l2.get(i - 5)); %></span>
                            <a href="<% out.print(l4.get(i - 5)); %>"><span class="pub-desc"><% out.print(l3.get(i - 5));%></span></a>
                        </div>

                    </div>
                </div>



                <div class="card-i">
                    <%
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");

                            //                                Connection con = DriverManager.getConnection("jdbc:mysql://database-1.crz3orvnmv7e.us-east-1.rds.amazonaws.com:3306/News", "admin", "rootadmin");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");

                            PreparedStatement stmt = con.prepareStatement("SELECT (image) FROM top_stories ORDER BY id DESC LIMIT 1 OFFSET 1");
                            ResultSet rs = stmt.executeQuery();
                            System.out.println("this reach");
                            int ij = 0;
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
                                ij++;
                    %>
                    <div class="left-content">
                        <div class="img-dsc">
                            <img class="card-img-top" alt="..." align="center" margin="40px" style="width: 150px; height: 150px;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes)%>"/>
                        </div>
                        <span class="main-brand"><% out.print(l1.get(i - 1)); %></span>
                        <span class="main-brand"><% out.print(l2.get(i - 1)); %></span>
                        <a href=<% out.print(l4.get(i - 1)); %>><span class="card-headline"><% out.print(l3.get(i - 1));%></span></a>
                    </div>
                    <%
                            }
                        } catch (Exception k) {
                            System.out.println(k.getMessage());
                        }
                    %>
                    <div class="pub-card-content">

                        <div class="pub-name-card">
                            <span class="pub-name"><% out.print(l1.get(i - 6)); %></span>
                            <span class="pub-name"><% out.print(l2.get(i - 6)); %></span>
                            <a href="<% out.print(l4.get(i - 6)); %>"><span class="pub-desc"><% out.print(l3.get(i - 6));%></span></a>
                        </div>

                        <div class="pub-name-card">
                            <span class="pub-name"><% out.print(l1.get(i - 7)); %></span>
                            <span class="pub-name"><% out.print(l2.get(i - 7)); %></span>
                            <a href="<% out.print(l4.get(i - 7)); %>"><span class="pub-desc"><% out.print(l3.get(i - 7));%></span></a>
                        </div>

                        <div class="pub-name-card">
                            <span class="pub-name"><% out.print(l1.get(i - 8)); %></span>
                            <span class="pub-name"><% out.print(l2.get(i - 8)); %></span>
                            <a href="<% out.print(l4.get(i - 8)); %>"><span class="pub-desc"><% out.print(l3.get(i - 8));%></span></a>
                        </div>

                    </div>
                </div>

                <div class="card-i">
                    <%
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");

                            //                                Connection con = DriverManager.getConnection("jdbc:mysql://database-1.crz3orvnmv7e.us-east-1.rds.amazonaws.com:3306/News", "admin", "rootadmin");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");

                            PreparedStatement stmt = con.prepareStatement("SELECT (image) FROM top_stories ORDER BY id DESC LIMIT 1 OFFSET 2");
                            ResultSet rs = stmt.executeQuery();
                            System.out.println("this reach");
                            int ij = 0;
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
                                ij++;
                    %>
                    <div class="left-content">
                        <div class="img-dsc">
                            <img class="card-img-top" alt="..." align="center" margin="40px" style="width: 150px; height: 150px;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes)%>"/>
                        </div>
                        <span class="main-brand"><% out.print(l1.get(i - 2)); %></span>
                        <span class="main-brand"><% out.print(l2.get(i - 2)); %></span>
                        <a href="<% out.print(l4.get(i - 2)); %>"><span class="card-headline"><% out.print(l3.get(i - 2));%></span></a>
                    </div>
                    <%
                            }
                        } catch (Exception k) {
                            System.out.println(k.getMessage());
                        }
                    %>
                    <div class="pub-card-content">

                        <div class="pub-name-card">
                            <span class="pub-name"><% out.print(l1.get(i - 9)); %></span>
                            <span class="pub-name"><% out.print(l2.get(i - 9)); %></span>
                            <a href="<% out.print(l4.get(i - 9)); %>"><span class="pub-desc"><% out.print(l3.get(i - 9));%></span></a>
                        </div>

                        <div class="pub-name-card">
                            <span class="pub-name"><% out.print(l1.get(i - 10)); %></span>
                            <span class="pub-name"><% out.print(l2.get(i - 10)); %></span>
                            <a href="<% out.print(l4.get(i - 10)); %>"><span class="pub-desc"><% out.print(l3.get(i - 10));%></span></a>
                        </div>

                        <div class="pub-name-card">
                            <span class="pub-name"><% out.print(l1.get(i - 11)); %></span>
                            <span class="pub-name"><% out.print(l2.get(i - 11)); %></span>
                            <a href="<% out.print(l4.get(i - 11)); %>"><span class="pub-desc"><% out.print(l3.get(i - 11));%></span></a>
                        </div>

                    </div>
                </div>
            </div>

            <div class="brefings">
                <span class="head-use">Local News</span>
                <%

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");
                        PreparedStatement stmt = con.prepareStatement("select * from local_news");

                        ResultSet rs = stmt.executeQuery();
                        while (rs.next()) {
                            l5.add(rs.getString("heading"));
                            l6.add(rs.getString("post_date"));
                            l7.add(rs.getString("description"));
                            l8.add(rs.getString("link"));
                        }
                        System.out.println("asdasdasd");
                        op = l5.size() - 1;
                        System.out.println(l5.get(1));
                        System.out.println(l5.get(2));
                        System.out.println(l5.get(3));
                    } catch (Exception k) {
                        System.out.println(k.getMessage());
                    }
                %>
                <div class="short-news">
                    <div class="short-brand">?? <%out.print(l5.get(op));%></div>
                    <div class="short-brand">?? <%out.print(l6.get(op));%></div>
                    <div class="consist-short">
                        <a href="<%out.print(l8.get(op));%>"><span class="pub-desc"><%out.print(l7.get(op));%></span></a>
                            <%
                                try {
                                    Class.forName("com.mysql.cj.jdbc.Driver");

                                    //                                Connection con = DriverManager.getConnection("jdbc:mysql://database-1.crz3orvnmv7e.us-east-1.rds.amazonaws.com:3306/News", "admin", "rootadmin");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");

                                    PreparedStatement stmt = con.prepareStatement("SELECT (image) FROM local_news ORDER BY id DESC LIMIT 1");
                                    ResultSet rs = stmt.executeQuery();
                                    System.out.println("this reach");
                                    int ij = 0;
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
                                        ij++;
                            %>
                            <div class="short-img">

                                <img class="card-img-top" alt="..." align="center" margin="40px" style="width: 50px; height: 50px;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes)%>"/>

                            </div>
                            <%
                                    }
                                } catch (Exception k) {
                                    System.out.println(k.getMessage());
                                }
                            %>
                    </div>
                    <div class="short-coverage"><i class="las la-window-maximize"></i></div>
                </div>

                <div class="short-news">
                    <div class="short-brand">?? <%out.print(l5.get(op - 1));%></div>
                    <div class="short-brand">?? <%out.print(l6.get(op - 1));%></div>
                    <div class="consist-short">
                        <a href="<%out.print(l8.get(op - 1));%>"><span class="pub-desc"><%out.print(l7.get(op - 1));%></span></a>
                            <%
                                try {
                                    Class.forName("com.mysql.cj.jdbc.Driver");

                                    //                                Connection con = DriverManager.getConnection("jdbc:mysql://database-1.crz3orvnmv7e.us-east-1.rds.amazonaws.com:3306/News", "admin", "rootadmin");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");

                                    PreparedStatement stmt = con.prepareStatement("SELECT (image) FROM local_news ORDER BY id DESC LIMIT 1 OFFSET 1");
                                    ResultSet rs = stmt.executeQuery();
                                    System.out.println("this reach");
                                    int ij = 0;
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
                                        ij++;
                            %>
                            <div class="short-img">

                                <img class="card-img-top" alt="..." align="center" margin="40px" style="width: 50px; height: 50px;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes)%>"/>

                            </div>
                            <%
                                    }
                                } catch (Exception k) {
                                    System.out.println(k.getMessage());
                                }
                            %>
                    </div>
                    <div class="short-coverage"><i class="las la-window-maximize"></i></div>
                </div>

                <div class="short-news">
                    <div class="short-brand">?? <%out.print(l5.get(op - 2));%></div>
                    <div class="short-brand">?? <%out.print(l6.get(op - 2));%></div>
                    <div class="consist-short">
                        <a href="<%out.print(l8.get(op - 2));%>"><span class="pub-desc"><%out.print(l7.get(op - 2));%></span></a>
                            <%
                                try {
                                    Class.forName("com.mysql.cj.jdbc.Driver");

                                    //                                Connection con = DriverManager.getConnection("jdbc:mysql://database-1.crz3orvnmv7e.us-east-1.rds.amazonaws.com:3306/News", "admin", "rootadmin");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");

                                    PreparedStatement stmt = con.prepareStatement("SELECT (image) FROM local_news ORDER BY id DESC LIMIT 1 OFFSET 2");
                                    ResultSet rs = stmt.executeQuery();
                                    System.out.println("this reach");
                                    int ij = 0;
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
                                        ij++;
                            %>
                            <div class="short-img">

                                <img class="card-img-top" alt="..." align="center" margin="40px" style="width: 50px; height: 50px;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes)%>"/>

                            </div>
                            <%
                                    }   
                                } catch (Exception k) {
                                    System.out.println(k.getMessage());
                                }
                            %>
                    </div>
                    <div class="short-coverage"><i class="las la-window-maximize"></i></div>
                </div>
            </div>
        </div>

    </main>

    <div class="special-container">

        <span class="special-title">Your Topics</span>
<%

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");
                        PreparedStatement stmt = con.prepareStatement("select * from india");

                        ResultSet rs = stmt.executeQuery();
                        while (rs.next()) {
                            l9.add(rs.getString("heading"));
                            l10.add(rs.getString("post_date"));
                            l11.add(rs.getString("description"));
                            l12.add(rs.getString("link"));
                        }
                        op1 = l9.size() - 1;
                    } catch (Exception k) {
                        System.out.println(k.getMessage());
                    }
                %>
        <div class="specials">

            <div class="special-cards">
                <span class="title-special-card">India</span>
                <div class="sec-short-news">
                    <div class="short-brand">?? <%out.print(l9.get(op1));%></div>
                    <div class="short-brand">?? <%out.print(l10.get(op1));%></div>
                    <div class="consist-short">
                        <a href="<%out.print(l12.get(op1));%>"><span class="special-desc"><%out.print(l11.get(op1));%></span></a>
                         <%
                                try {
                                    Class.forName("com.mysql.cj.jdbc.Driver");

                                    //                                Connection con = DriverManager.getConnection("jdbc:mysql://database-1.crz3orvnmv7e.us-east-1.rds.amazonaws.com:3306/News", "admin", "rootadmin");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");

                                    PreparedStatement stmt = con.prepareStatement("SELECT (image) FROM india ORDER BY id DESC LIMIT 1 OFFSET 0");
                                    ResultSet rs = stmt.executeQuery();
                                    System.out.println("this reach");
                                    int ij = 0;
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
                                        ij++;
                            %>
                            <div class="short-img">

                                <img class="card-img-top" alt="..." align="center" margin="40px" style="width: 50px; height: 50px;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes)%>"/>

                            </div>
                            <%
                                    }   
                                } catch (Exception k) {
                                    System.out.println(k.getMessage());
                                }
                            %>
                    </div>
                    <div class="short-coverage"><i class="las la-window-maximize"></i></div>
                </div>
                <div class="sec-short-news">
                    <div class="short-brand">?? <%out.print(l9.get(op1-1));%></div>
                    <div class="short-brand">?? <%out.print(l10.get(op1-1));%></div>
                    <div class="consist-short">
                        <a href="<%out.print(l12.get(op1-1));%>"><span class="special-desc"><%out.print(l11.get(op1-1));%></span></a>
                        <%
                                try {
                                    Class.forName("com.mysql.cj.jdbc.Driver");

                                    //                                Connection con = DriverManager.getConnection("jdbc:mysql://database-1.crz3orvnmv7e.us-east-1.rds.amazonaws.com:3306/News", "admin", "rootadmin");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");

                                    PreparedStatement stmt = con.prepareStatement("SELECT (image) FROM india ORDER BY id DESC LIMIT 1 OFFSET 1");
                                    ResultSet rs = stmt.executeQuery();
                                    System.out.println("this reach");
                                    int ij = 0;
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
                                        ij++;
                            %>
                            <div class="short-img">

                                <img class="card-img-top" alt="..." align="center" margin="40px" style="width: 50px; height: 50px;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes)%>"/>

                            </div>
                            <%
                                    }   
                                } catch (Exception k) {
                                    System.out.println(k.getMessage());
                                }
                            %>
                    </div>
                    <div class="short-coverage"><i class="las la-window-maximize"></i></div>
                </div>
                <div class="sec-short-news">
                    <div class="short-brand">?? <%out.print(l9.get(op1-2));%></div>
                    <div class="short-brand">?? <%out.print(l10.get(op1-2));%></div>
                    <div class="consist-short">
                        <a href="<%out.print(l12.get(op1-2));%>"><span class="special-desc"><%out.print(l11.get(op1-2));%></span></a>
                        <%
                                try {
                                    Class.forName("com.mysql.cj.jdbc.Driver");

                                    //                                Connection con = DriverManager.getConnection("jdbc:mysql://database-1.crz3orvnmv7e.us-east-1.rds.amazonaws.com:3306/News", "admin", "rootadmin");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");

                                    PreparedStatement stmt = con.prepareStatement("SELECT (image) FROM india ORDER BY id DESC LIMIT 1 OFFSET 2");
                                    ResultSet rs = stmt.executeQuery();
                                    System.out.println("this reach");
                                    int ij = 0;
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
                                        ij++;
                            %>
                            <div class="short-img">

                                <img class="card-img-top" alt="..." align="center" margin="40px" style="width: 50px; height: 50px;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes)%>"/>

                            </div>
                            <%
                                    }   
                                } catch (Exception k) {
                                    System.out.println(k.getMessage());
                                }
                            %>
                    </div>
                    <div class="short-coverage"><i class="las la-window-maximize"></i></div>
                </div>
            </div>

           

<%

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");
                        PreparedStatement stmt = con.prepareStatement("select * from world");

                        ResultSet rs = stmt.executeQuery();
                        while (rs.next()) {
                            l13.add(rs.getString("heading"));
                            l14.add(rs.getString("post_date"));
                            l15.add(rs.getString("description"));
                            l16.add(rs.getString("link"));
                        }
                        op2 = l13.size() - 1;
                    } catch (Exception k) {
                        System.out.println(k.getMessage());
                    }
                %>
            <div class="special-cards">
                <span class="title-special-card">World ></span>
                <div class="sec-short-news">
                    <div class="short-brand">?? <%out.print(l13.get(op2));%></div>
                    <div class="short-brand">?? <%out.print(l14.get(op2));%></div>
                    <div class="consist-short">
                        <a href="<%out.print(l16.get(op2));%>"><span class="special-desc"><%out.print(l15.get(op2));%></span></a>
                        <%
                                try {
                                    Class.forName("com.mysql.cj.jdbc.Driver");

                                    //                                Connection con = DriverManager.getConnection("jdbc:mysql://database-1.crz3orvnmv7e.us-east-1.rds.amazonaws.com:3306/News", "admin", "rootadmin");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");

                                    PreparedStatement stmt = con.prepareStatement("SELECT (image) FROM world ORDER BY id DESC LIMIT 1 OFFSET 0");
                                    ResultSet rs = stmt.executeQuery();
                                    System.out.println("this reach");
                                    int ij = 0;
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
                                        ij++;
                            %>
                            <div class="short-img">

                                <img class="card-img-top" alt="..." align="center" margin="40px" style="width: 50px; height: 50px;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes)%>"/>

                            </div>
                            <%
                                    }   
                                } catch (Exception k) {
                                    System.out.println(k.getMessage());
                                }
                            %>
                    </div>
                    <div class="short-coverage"><i class="las la-window-maximize"></i></div>
                </div>
                <div class="sec-short-news">
                    <div class="short-brand">?? <%out.print(l13.get(op2-1));%></div>
                    <div class="short-brand">?? <%out.print(l14.get(op2-1));%></div>
                    <div class="consist-short">
                        <a href="<%out.print(l16.get(op2-1));%>"><span class="special-desc"><%out.print(l15.get(op2-1));%></span></a>
                        <%
                                try {
                                    Class.forName("com.mysql.cj.jdbc.Driver");

                                    //                                Connection con = DriverManager.getConnection("jdbc:mysql://database-1.crz3orvnmv7e.us-east-1.rds.amazonaws.com:3306/News", "admin", "rootadmin");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");

                                    PreparedStatement stmt = con.prepareStatement("SELECT (image) FROM world ORDER BY id DESC LIMIT 1 OFFSET 1");
                                    ResultSet rs = stmt.executeQuery();
                                    System.out.println("this reach");
                                    int ij = 0;
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
                                        ij++;
                            %>
                            <div class="short-img">

                                <img class="card-img-top" alt="..." align="center" margin="40px" style="width: 50px; height: 50px;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes)%>"/>

                            </div>
                            <%
                                    }   
                                } catch (Exception k) {
                                    System.out.println(k.getMessage());
                                }
                            %>
                    </div>
                    <div class="short-coverage"><i class="las la-window-maximize"></i></div>
                </div>
                <div class="sec-short-news">
                    <div class="short-brand">?? <%out.print(l13.get(op2-2));%></div>
                    <div class="short-brand">?? <%out.print(l14.get(op2-2));%></div>
                    <div class="consist-short">
                        <a href="<%out.print(l16.get(op2-2));%>"><span class="special-desc"><%out.print(l15.get(op2-2));%></span></a>
                        <%
                                try {
                                    Class.forName("com.mysql.cj.jdbc.Driver");

                                    //                                Connection con = DriverManager.getConnection("jdbc:mysql://database-1.crz3orvnmv7e.us-east-1.rds.amazonaws.com:3306/News", "admin", "rootadmin");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "Amey@123");

                                    PreparedStatement stmt = con.prepareStatement("SELECT (image) FROM world ORDER BY id DESC LIMIT 1 OFFSET 2");
                                    ResultSet rs = stmt.executeQuery();
                                    System.out.println("this reach");
                                    int ij = 0;
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
                                        ij++;
                            %>
                            <div class="short-img">

                                <img class="card-img-top" alt="..." align="center" margin="40px" style="width: 50px; height: 50px;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes)%>"/>

                            </div>
                            <%
                                    }   
                                } catch (Exception k) {
                                    System.out.println(k.getMessage());
                                }
                            %>
                    </div>
                    <div class="short-coverage"><i class="las la-window-maximize"></i></div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <%@ include file="Footer.jsp" %>
    </footer>

</body>

<script>

    // *Code: Search bar of page 

    // Get the input field and the button
    var input = document.querySelector('.search-box input[type="text"]');
    var button = document.querySelector('.search-box button[type="submit"]');

    // Add an event listener to the button
    button.addEventListener('click', function (event) {
        // Prevent the default form submission behavior
        event.preventDefault();

        // Get the search query
        var query = input.value.trim();

        // Do something with the search query, like redirect to a search results page
        window.location.href = '' + encodeURIComponent(query);
    });


    // *Code: Loading page animation
    var loader = document.getElementById("loader");
    window.addEventListener("load", function () {
        // const content = document.getElementById("Content-header");
        loader.style.display = "none";
        // content.style.display = "block";
    });



</script>

<script>
    var body = document.body;

    document.addEventListener('mousemove', (e) => {
        var elem = document.createElement('div');
        elem.setAttribute('class', 'trail')
        elem.setAttribute('style', 'left: ${e.clientX - 10}px; top: ${e.clientY -10}px;');

        // elem.onanimationend()=>{
        //     elem.remove();
        // }
        elem.onanimationend = function () {
            elem.remove();
        };


        body.insertAdjacentElement('beforeend', elem);

    })
</script>

<script>
    const parent = document.querySelector('.specials');
    const child = document.querySelector('.special-cards');

    child.addEventListener('wheel', event => {
        event.preventDefault();
        parent.scrollBy({
            left: event.deltaY,
            behavior: 'smooth'
        });
    });
</script>
</html>