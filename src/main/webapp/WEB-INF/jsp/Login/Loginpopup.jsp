
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
            background-color: #f2f2f2;
        }

        .login-button {
            position: relative;
            display: flex;
            align-items: center;
            font-size: 16px;
            margin-top: -35px;
            padding-left: 16px;
            width: 184px;
            height: 38px;
        }
        .register-button{
            position: relative;
            margin-right: 50px;
            padding-right: 20px;
            color:skyblue;
        }
        .login-button:hover
        {
            background-color: #606060;
        }

        .login-form {
            position: relative;
            margin-top: 77%;
            left: -20%;
            width: 25vw;
            transform: translate(-50%, -50%);
            background-color: #fff;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            border-radius: 10px;
            transition: all 0.3s ease-in-out;
            opacity: 0;
            visibility: hidden;
            z-index: 1;
            
        }
        .register-form {
            position: relative;
            margin-top: 91%;
            left: -60%;
            width: 25vw;
            transform: translate(-50%, -50%);
            background-color: #fff;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            border-radius: 10px;
            transition: all 0.3s ease-in-out;
            opacity: 0;
            visibility: hidden;
            z-index: 1;
        }

        .login-form.show,
        .register-form.show {
            opacity: 1;
            visibility: visible;
            z-index: 1;
            
        }

        .login-form h2,
        .register-form h2 {
            text-align: center;
            margin-bottom: 30px;
        }

        .login-form input,
        .register-form input,
        .login-form button,
        .register-form button {
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

        .login-form button,
        .register-form button {
            background-color: #4285f4;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
        }

        .login-form button:hover,
        .register-form button:hover {
            background-color: #3c77d2;
        }

        .login-link,
        .register-link {
            text-align: center;
        }

        .login-link a,
        .register-link a {
            color: #4285f4;
            font-weight: bold;
            text-decoration: none;
            cursor: pointer;
        }

    </style>
    <body>
        <br>
        <br>
        <!--        <div class="login-container">
                    <div class="login-button">
                        <i class="fas fa-user"></i>
                        <span>Login</span>
                    </div>
                </div>-->
        <div class="login-container">
            <div class="login-button">
                Login
            </div>
            <div></div>
            <div class="login-form" method="POST">
                <form action="login" method="POST">
                    <h2 style="color:black;">Login</h2>
                    <input type="Username" placeholder="Username" name="Username">
                    <input type="password" placeholder="Password" name="Password">
                    <button type="submit" >Login</button>

                    <p class="register-link" style="color:black;">
                        Don't have an account? 
                    <div class="register-button">Register here</div>
                    </p>
                </form>
            </div>
            <div class="register-form" method="post">
                <form action="register" methos="post">
                    <h2 style="color:black;">Register</h2>
                    <input type="text" placeholder="Username">
                    <input type="email" placeholder="Email">
                    <input type="password" placeholder="Password">
                    <button type="submit">Register</button>
                    <p class="login-link" style="color:black;">
                        Already have an account? 
                    <div class="login-button1" style="color:skyblue;">Login here</div>
                    </p>
                </form>
            </div>
        </div>

        <script>
            const loginContainer = document.querySelector('.login-container');
            const loginButton = document.querySelector('.login-button');
            const loginButton1 = document.querySelector('.login-button1');
            const loginForm = document.querySelector('.login-form');
            const registerForm = document.querySelector('.register-form');
            const registerButton = document.querySelector('.register-button');

            // Show login form on login button click
            loginButton.addEventListener('click', () => {
                loginForm.classList.add('show');
                registerForm.classList.remove('show');
            });
            
            loginButton1.addEventListener('click', () => {
                loginForm.classList.add('show');
                registerForm.classList.remove('show');
            });

            // Show register form on register button click
            registerButton.addEventListener('click', () => {
                registerForm.classList.add('show');
                loginForm.classList.remove('show');
            });

            // Hide login and register forms on outside click
            document.addEventListener('click', (e) => {
                if (!loginContainer.contains(e.target)) {
                    loginForm.classList.remove('show');
                    registerForm.classList.remove('show');
                }
            });
        </script>
    </body>
</html>