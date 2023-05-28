<!DOCTYPE html>
<html>
    <head>
    </head>
    <style>

        .login-container {
            position: relative;
            
            display: flex;
            align-items: center;
            justify-content: center;
            height: 0vh;
            width: 50vw;
            background-color: #f2f2f2;
        }

        .login-button {
            position: relative;
            display: flex;
/*            /justify-content: flex-start;/*/
            align-items: center;
            font-size: 16px;
            left: -6vw;
            margin-top: -35px;
            padding-left: 16px;
            width: 184px;
            height: 38px;
        }
      
        .login-button:hover
        {
            background-color: #606060;
        }

        .login-form {
            position: relative;
            margin-top: 77%;
             left: -20%; 
             top:25vh;
            width: 25vw;
            height: 50vh;
            transform: translate(-100%, -50%);
            background-color: #fff;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            border-radius: 10px;
            transition: all 0.3s ease-in-out;
            opacity: 0;
            visibility: hidden;
            z-index: 1;
            
        }
        

        .login-form.show {
            opacity: 1;
            visibility: visible;
            z-index: 1;
            
        }

        .login-form h2 {
            text-align: center;
            margin-bottom: 30px;
        }

        .login-form input,
        .login-form button{
            display: block;
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            color: black;
        }

        .login-form button {
            background-color: #4285f4;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
        }

        .login-form button:hover{
            background-color: #3c77d2;
        }

        .login-link{
            text-align: center;
        }

        .login-link a{
            color: #4285f4;
            font-weight: bold;
            text-decoration: none;
            cursor: pointer;
        }

        .profile-img{
          display: flex;
          flex-direction: column;
          align-items: center;
          justify-content: center;
          padding-bottom: 2rem;
        }
    </style>
    <body>
        <br>
        <br>
        
        <div class="login-container">
            <div class="login-button">
                Profile
            </div>
            <div>
            </div>
            <div class="login-form" method="POST">
                <form action="index2" method="POST">
                    <!-- <h2 style="color:black;">Profile</h2> -->
                    <div class="profile-img">
                      <img src="https://ui-avatars.com/api/?background=random&name=${UserName}" alt="Image" onclick="toggleDropdown()" style="border-radius:50%; height :100px; width:100px;">
                      <p style="font-size: 14px; font-weight: 200; text-align: center;">${username}</p>
                    </div>
                    
                    <input type="text" placeholder="${UserName}" name="UserName" value="${UserName}">
                    <input type="hidden" placeholder="${Email}" name="Email" value="${Email}">
                    <input type="password" placeholder="${Password}" name="Password" value="${Password}">
                    <button type="submit" >Apply</button>

                    
                </form>
            </div>
            
        </div>

        <script>
            const loginContainer = document.querySelector('.login-container');
            const loginButton = document.querySelector('.login-button');
            const loginButton1 = document.querySelector('.login-button1');
            const loginForm = document.querySelector('.login-form');
         
            // Show login form on login button click
            loginButton.addEventListener('click', () => {
                loginForm.classList.add('show');
                 });
            
            loginButton1.addEventListener('click', () => {
                loginForm.classList.add('show');
                });

            // Show register form on register button click
            loginButton.addEventListener('click', () => {
                 loginForm.classList.remove('show');
            });

            // Hide login and register forms on outside click
            document.addEventListener('click', (e) => {
                if (!loginContainer.contains(e.target)) {
                    loginForm.classList.remove('show');
                      }
            });
        </script>
    </body>
</html>