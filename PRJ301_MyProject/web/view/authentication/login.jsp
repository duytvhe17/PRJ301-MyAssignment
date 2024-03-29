<%-- 
    Document   : login
    Created on : Feb 21, 2024, 8:09:41 AM
    Author     : sonnt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!DOCTYPE html>
<!DOCTYPE html>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Đại học FPT Login</title>
    <style>
        body {
           
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('https://daihoc.fpt.edu.vn/templates/fpt-university/images/header.jpg'); 
            width: 50%;
            background-size: cover; 
            background-position: center;
            background-repeat: no-repeat; 
        }
        
        .logo{
             background-image: url('https://www.gddt.edu.vn/media/6/2024/01/logo-dai-hoc-fpt.png'); 
            
        }

        .login-container {
    background-color: rgba(255, 165, 0, 0.7);
    color: #000;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}


        .login-container form {
            max-width: 300px;
            margin: 0 auto;
        }

        .login-container input[type="text"],
        .login-container input[type="password"],
        .login-container input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }

        .login-container input[type="submit"] {
            background-color: #0C4DA2 ; 
            color: white;
            border: none;
            cursor: pointer;
        }

        .login-container input[type="submit"]:hover {
            background-color: #073D84; 

        .login-container input[type="checkbox"] {
            margin-right: 5px;
        }
        
       
    </style>
</head>
<body>
    <div class="logo"></div>
    <div class="login-container">
        <img src="https://gcs.tripi.vn/public-tripi/tripi-feed/img/474111jlW/logo-truong-dai-hoc-fpt-university_043152077.png" alt="Logo_FPT" style="width:300px; height: 70px;">
        <h2>Login</h2>  
        
        <form action="login" method="POST">
            <label for="username">Username:</label><br/>
            <input type="text" id="username" name="username"/><br/><br/>
            <label for="password">Password:</label><br/>
            <input type="password" id="password" name="password"/><br/><br/>
            <input type="checkbox" id="remember" name="remember"/>
            <label for="remember">Remember me</label><br/><br/>
            <input type="submit" value="Login"/>
        </form>
    </div>
</body>
</html>



