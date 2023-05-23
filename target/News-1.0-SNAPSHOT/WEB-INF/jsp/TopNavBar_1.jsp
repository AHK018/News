<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
        <link rel="stylesheet"
              href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <link rel="stylesheet" href="path/to/line-awesome/css/line-awesome-font-awesome.min.css">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <style>
        nav {
            height: 70px;
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 1;
        }

        .nav-container {
            position: fixed;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #282828;
            width: 100vw;
            height: 20vh;
            z-index: 1;
        }

        .logo a {
            margin-left: 20px;
            font-size: 25px;
            color: aliceblue;
            text-decoration: none;
        }

        .logo a:hover {
        }

        .search_box {
            justify-content: center;
            align-items: center;
            flex-grow: 1;
        }

        .search-box input[type="text"] {
            position: relative;
            background-color: #484848;
            color: white;
            left: 159px;
            width: 67%;
            height: 50px;
            border: 2px;
            border-radius: 7px;
            padding: 20px;
            padding-left: 70px;
            font-size: 20px;
        }

        .search-box input[type="text"]:focus {
            background-color: #404040;
            border-color: #404040;
            outline: none;
        }

        .nav-options ul {
            position: absolute;
            left: 10vw;
            top: 14.5vh;
            display: flex;
            list-style-type: none;
            margin: 0;
            padding: 10px;
        }

        .nav-options li {
            margin-right: 30px;
        }

        .nav-options a {
            color: aliceblue;
            text-decoration: none;
            font-size: 15px;
        }

        .nav-options a:hover {
            color: #ffffff;
        }

        .icon1 {
            position: relative;
            left: -11vw;
        }

        .icon1:hover .tooltip {
            visibility: visible;
            opacity: 1;
        }

        .icon1 .icon {
            font-size: 33px;
            color: white;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 50px;
            height: 50px;
            transition: all 0.2s ease-in-out;
        }

        .icon1:hover .icon {
            background-color: #555555;
        }

        .icon1 .tooltip {
            visibility: hidden;
            opacity: 0;
            position: absolute;
            top: 105%;
            left: 50%;
            transform: translateX(-50%);
            background-color: gray;
            color: white;
            border-radius: 4px;
            padding: 5px;
            font-size: 12px;
            transition: all 0.2s ease-in-out;
        }

        .icon2 {
            position: relative;
            left: -10.5vw;
        }

        .icon2:hover .tooltip {
            visibility: visible;
            opacity: 1;
        }

        .icon2 .icon {
            font-size: 33px;
            color: white;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 50px;
            height: 50px;
            transition: all 0.2s ease-in-out;
        }

        .icon2:hover .icon {
            background-color: #555555;
        }

        .icon2 .tooltip {
            visibility: hidden;
            opacity: 0;
            position: absolute;
            top: 105%;
            left: 50%;
            transform: translateX(-50%);
            background-color: gray;
            color: white;
            border-radius: 4px;
            padding: 5px;
            font-size: 12px;
            transition: all 0.2s ease-in-out;
        }

        .icon3 {
            position: relative;
            left: 1.5vw;
        }

        .icon3:hover .tooltip {
            visibility: visible;
            opacity: 1;
        }

        .icon3 .icon {
            font-size: 33px;
            color: white;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 50px;
            height: 50px;
            transition: all 0.2s ease-in-out;
        }

        .icon3:hover .icon {
            background-color: #555555;
        }

        .icon3 .tooltip {
            visibility: hidden;
            opacity: 0;
            position: absolute;
            top: 105%;
            left: 50%;
            transform: translateX(-50%);
            background-color: gray;
            color: white;
            border-radius: 4px;
            padding: 5px;
            font-size: 12px;
            transition: all 0.2s ease-in-out;
        }

        .icon4 {
            position: relative;
            left: 2vw;
        }

        .icon4:hover .tooltip {
            visibility: visible;
            opacity: 1;
        }

        .icon4 .icon {
            font-size: 28px;
            color: white;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 50px;
            height: 50px;
            transition: all 0.2s ease-in-out;
        }

        .icon4:hover .icon {
            background-color: #555555;
        }

        .icon4 .tooltip {
            visibility: hidden;
            opacity: 0;
            position: absolute;
            top: 105%;
            left: 50%;
            transform: translateX(-50%);
            background-color: gray;
            color: white;
            border-radius: 4px;
            padding: 5px;
            font-size: 12px;
            transition: all 0.2s ease-in-out;
        }

        .icon5 {
            position: relative;
            left: -71vw;
        }

        .icon5:hover .tooltip {
            visibility: visible;
            opacity: 1;
        }

        .icon5 .icon {
            font-size: 28px;
            color: white;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 50px;
            height: 50px;
            transition: all 0.2s ease-in-out;
        }

        .icon5:hover .icon {
            background-color: #555555;
        }

        .icon5 .tooltip {
            visibility: hidden;
            opacity: 0;
            position: absolute;
            top: 105%;
            left: 50%;
            transform: translateX(-50%);
            background-color: gray;
            color: white;
            border-radius: 4px;
            padding: 5px;
            font-size: 12px;
            transition: all 0.2s ease-in-out;
        }

        .separator {
            border-left: 1px solid #ccc;
        }



        .nav-options li a.active {
            border-bottom: 5px solid #6CB4EE;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
            color: #6CB4EE;
            padding-bottom: 8px;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            right: 0;
            top: 6.5vh;
            width: 495%;
            top: 5.3vh;
            font-size: 15px;
            padding: 0px;
            padding-top: 4px;
            padding-bottom: 4px;
            z-index: 1;
            background-color: #383838;
            border-radius: 5px;
        }

        .dropdown-content a {
            display: block;
            color: whitesmoke;
            text-decoration: none;
            padding: 8px 16px;
        }

        .dropdown-content a:hover {
            width: 215.3%;
            background-color: #606060;
        }

        .show {
            display: block;
        }


        /*2*/
        .dropdown1 {
            position: relative;
            display: inline-block;
        }

        .dropdown-content1 {
            display: none;
            position: absolute;
            right: 0vw;
            top: 5.3vh;
            width: 950%;
            height: 1300%;
            font-size: 15px;
            padding: 1px;
            z-index: 1;
            background-color: #383838;
            border-radius: 5px;
            overflow: auto;
        }

        .dropdown-content1 .dropdown-images {
            padding-left: 35px;
            padding-right: 35px;

            padding-top: 10px;
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 70px;
        }

        .dropdown-content1 .row {
            display: flex;
            justify-content: space-between;
            gap: 0px;
        }

        .dropdown-content1 .column {
            text-align: center;
            width: 100px;
            height: 100px;
            margin-left: -30px;
        }

        .dropdown-content1 .column:hover {
            background-color:#303030;
            border-radius: 5px;
        }

        .dropdown-content1 .column img {
            display: block;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            margin: 0 auto;
            margin-top: 17px;
        }

        .dropdown-content1 a {
            display: block;
            color: whitesmoke;
            text-decoration: none;
        }

        /*        .dropdown-content1 a:hover {
                    background-color: #606060;
                    width: 100%;
                    height: 100%;
                }*/

        .show1 {
            display: block;
        }



        /*3*/

        .dropdown2 {
            position: relative;
            display: inline-block;
        }

        .dropdown-content2 {
            display: none;
            position: absolute;
            right: 0;
            width: 495%;
            top: 5.3vh;
            font-size: 15px;
            padding: 0px;
            padding-top: 4px;
            padding-bottom: 4px;
            z-index: 1;
            background-color: #383838;
            border-radius: 5px;
        }

        .dropdown-content2 a {
            display: block;
            color: whitesmoke;
            text-decoration: none;
            padding: 8px 16px;
        }

        .dropdown-content2 a:hover {
            background-color: #606060;
        }

        .show2 {
            display: block;
        }

        /*4*/
        .dropdown3 {
            position: relative;
            display: inline-block;
        }

        .dropdown-content3 {
            display: none;
            position: absolute;
            right: 0;
            width: 530%;
            top: 5.3vh;
            font-size: 15px;
            padding: 0px;
            padding-top: 4px;
            padding-bottom: 4px;
            z-index: 1;
            background-color: #383838;
            border-radius: 5px;
        }

        .dropdown-content3 a {
            display: block;
            color: whitesmoke;
            text-decoration: none;
            padding: 8px 16px;
        }

        .dropdown-content3 a:hover {
            background-color: #606060;
        }

        .show3 {
            display: block;
        }

        .separator1 {
            height: 1px;
            background-color: #606060;
        }

        .line {
            width: 100%;
            background-color: #606060;
        }
        button{
           background-color: transparent;
           background: transparent;
           border: 0px;
           
        }
        button:focus{
            border: 0px;
            
        }


    </style>
    <nav>
        <div class="nav-container">
            <div class="logo">
                <a href="#">AXiomatic News</a>
            </div>

            <div class="search_box">
                <div class="search-box">
                    <input type="text" placeholder="Search...">
                </div>
            </div>

            <div class="icon1">
                <div class="icon">
                    <div class="dropdown3">
                        <i class="las la-question-circle" alt="Image" onclick="toggleDropdown3()"></i>
                        <div class="dropdown-content3">
                            <table>
                                <tr>
                                    <td><a href="#">Help</a></td>
                                </tr>
                                <tr>
                                    <td><a href="#">Privacy</a></td>
                                </tr>
                                <tr>
                                    <td><a href="#">Terms</a></td>
                                </tr>
                                <tr>
                                    <td><a href="#">About AXiomatic</a></td>
                                </tr>
                                <tr class="separator1">
                                    <td><div class="line"></div></td>
                                </tr>
                                <tr>
                                    <td><a href="#">Get the Android App</a></td>
                                </tr>
                                <tr>
                                    <td><a href="#">Get the ios App</a></td>
                                </tr>
                                <tr class="separator1">
                                    <td><div class="line"></div></td>
                                </tr>
                                <tr>
                                    <td><a href="#">Send feedback</a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <span class="tooltip">Help</span>
            </div>


            <div class="icon2">
                <div class="icon">
                    <div class="dropdown2">
                        <i class="las la-cog" alt="Image" onclick="toggleDropdown2()"></i>
                        <div class="dropdown-content2">
                            <table>
                                <tr>
                                    <td><a href="#">Settings</a></td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">Language & region<br>
                                            <div style="color: gray;">English(India)</div>
                                        </a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <span class="tooltip">Settings</span>
            </div>

            <div class="icon3">
                <div class="icon">
                    <div class="dropdown1">
                        <i class="las la-braille" alt="Image" onclick="toggleDropdown1()"></i>
                        <div class="dropdown-content1">
                            <div class="dropdown-images">
                                <div class="row">
                                    <div class="column">
                                        <img src="<c:url value='/resources/img/google.png' />" />
                                        <p style="padding-top: 4px;">Google</p>
                                    </div>
                                    <div class="column">
                                        <img src="<c:url value='/resources/img/facebook1.png' />" />
                                        <p style="padding-top: 4px;">Facebook</p>
                                    </div>
                                    <div class="column">
                                        <img src="<c:url value='/resources/img/apple3.jpg' />" />
                                        <p style="padding-top: 4px;">Apple</p>
                                    </div>
                                    <div class="column">
                                        <img src="<c:url value='/resources/img/BMW.png' />" />
                                        <p style="padding-top: 4px;">BMW</p>
                                    </div>
                                    <div class="column">
                                        <img src="<c:url value='/resources/img/Tomcat.png' />" />
                                        <p style="padding-top: 4px;">Tomcat</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="column">
                                        <img src="<c:url value='/resources/img/amazon.png' />" />
                                        <p style="padding-top: 4px;">Amazon</p>
                                    </div>
                                    <div class="column">
                                        <img src="<c:url value='/resources/img/flipkart.png' />" />
                                        <p style="padding-top: 4px;">Flipkart</p>
                                    </div>
                                    <div class="column">
                                        <img src="<c:url value='/resources/img/DBMS.jpg' />" />
                                        <p style="padding-top: 4px;">DBMS</p>
                                    </div>
                                    <div class="column">
                                        <img src="<c:url value='/resources/img/Visual.png' />" />
                                        <p style="padding-top: 4px;">VS code</p>
                                    </div>
                                    <div class="column">
                                        <img src="<c:url value='/resources/img/drive.png' />" />
                                        <p style="padding-top: 4px;">G Drive</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="column">
                                        <img src="<c:url value='/resources/img/lamborghini-.png' />" />
                                        <p style="padding-top: 4px;">Lamborghini</p>
                                    </div>
                                    <div class="column">
                                        <img src="<c:url value='/resources/img/walmart.jpg' />" />
                                        <p style="padding-top: 4px;">Walmart</p>
                                    </div>
                                    <div class="column">
                                        <img src="<c:url value='/resources/img/rolce-royal.png' />" />
                                        <p style="padding-top: 4px;">Rolce Royal</p>
                                    </div>
                                    <div class="column">
                                        <img src="<c:url value='/resources/img/Gmail_2.png' />" />
                                        <p style="padding-top: 4px;">Gmail</p>
                                    </div>
                                    <div class="column">
                                        <img src="<c:url value='/resources/img/eclipse.png' />" />
                                        <p style="padding-top: 4px;">Eclipse</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <span class="tooltip">App</span>
            </div>

            <div class="icon4" onclick="dropmenu()">
                <div class="icon">
                    <div class="dropdown">
                        <img src="https://ui-avatars.com/api/?background=random&name=${UserName}" alt="Image" onclick="toggleDropdown()" style="border-radius:50%; height :37px; width:37px;">
                        <div class="dropdown-content">
                            <table>
                                 <tr>
                                    <td><a href="#" id="name">${UserName}</a></td>
                                </tr>
                                <tr>
                                    <td><a href="#">Sign Out</a></td>
                                </tr>
                            </table>
                        </div>
                    </div>  
                </div>
                <span class="tooltip">Profile</span>
            </div>

            <div class="icon5">
                <div class="icon">
                    <i class="las la-search la-flip-horizontal"></i>
                </div>
                <span class="tooltip">search</span>
            </div>


            <div class="nav-options">
                <ul>
                    <form action="index1" method="POST">
                        <input type="hidden" name="UserName" value="${UserName}"/>
                        <input type="hidden" name="Email" value="${Email}"/>
                        <input type="hidden" name="Password" value="${Password}"/>
                        <button> <li><a class="active">Home</a></li></button>
                    </form>
                    <li><a href="try1">For you</a></li>
                    <li><a href="#">Following</a></li>
                    <li><a href="#">News Showcase</a></li>
                    <li class="separator"></li>
                    <li><a href="#">India</a></li>
                    <li><a href="#">World</a></li>
                    <li><a href="#">Local</a></li>
                    <li><a href="#">Business</a></li>
                    <li><a href="#">Technology</a></li>
                    <li><a href="#">Entertainment</a></li>
                    <li><a href="#">Sports</a></li>
                    <li><a href="#">Science</a></li>
                    <li><a href="#">Health</a></li>
                </ul>
            </div>

    </nav>

    <script>
        const navLinks = document.querySelectorAll(".nav-options li a");

        navLinks.forEach(link => {
            link.addEventListener("click", () => {
                // Remove the "active" class from all links
                navLinks.forEach(link => {
                    link.classList.remove("active");
                });
                // Add the "active" class to the clicked link
                link.classList.add("active");
            });
        });


        function toggleDropdown() {
            var dropdownContent = document.querySelector(".dropdown-content");
            dropdownContent.classList.toggle("show");
        }

        document.addEventListener("click", function (event) {
            var dropdowns = document.querySelectorAll(".dropdown");
            for (var i = 0; i < dropdowns.length; i++) {
                var dropdown = dropdowns[i];
                if (dropdown.contains(event.target)) {
                    continue;
                }
                dropdown.querySelector(".dropdown-content").classList.remove("show");
            }
        });

        function toggleDropdown1() {
            var dropdownContent = document.querySelector(".dropdown-content1");
            dropdownContent.classList.toggle("show1");
        }

        document.addEventListener("click", function (event) {
            var dropdowns = document.querySelectorAll(".dropdown1");
            for (var i = 0; i < dropdowns.length; i++) {
                var dropdown = dropdowns[i];
                if (dropdown.contains(event.target)) {
                    continue;
                }
                dropdown.querySelector(".dropdown-content1").classList.remove("show1");
            }
        });


        function toggleDropdown2() {
            var dropdownContent = document.querySelector(".dropdown-content2");
            dropdownContent.classList.toggle("show2");
        }

        document.addEventListener("click", function (event) {
            var dropdowns = document.querySelectorAll(".dropdown2");
            for (var i = 0; i < dropdowns.length; i++) {
                var dropdown = dropdowns[i];
                if (dropdown.contains(event.target)) {
                    continue;
                }
                dropdown.querySelector(".dropdown-content2").classList.remove("show2");
            }
        });

        function toggleDropdown3() {
            var dropdownContent = document.querySelector(".dropdown-content3");
            dropdownContent.classList.toggle("show3");
        }

        document.addEventListener("click", function (event) {
            var dropdowns = document.querySelectorAll(".dropdown3");
            for (var i = 0; i < dropdowns.length; i++) {
                var dropdown = dropdowns[i];
                if (dropdown.contains(event.target)) {
                    continue;
                }
                dropdown.querySelector(".dropdown-content3").classList.remove("show3");
            }
        });

    </script>

</html>