<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
        <title>MD EB Billing</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <header><jsp:include page="head.jsp"/></header>
    <br/>
    <b style="margin-left: 5%; font-size: 30px;">"The use of Solar energy has not been opened up because the Oil company does not own the sun"</b>
    <body>
        <div class="container">
            <div class ="form-box">
                <div class="button-box">
                    <div id="btn"></div>  
                    <button type="button" class="toggle-btn" onclick="login()">LogIn</button>
                    <button type="button" class="toggle-btn" onclick="register()">Register</button>
                    </div>
            <form  method="post" action="log.jsp" class="login-form" id="login">
                <input type="text" class="form-field" placeholder="username" name="uid" required>
                <input type="password" class="form-field" placeholder="password" name="pwd" required>
                <button type="submit" class="Submit">LogIn</button>
            </form>
                <form method="post" class="login-form" id="register" action="control.jsp">
                <input type="text" class="form-field" placeholder="name" name="name" required>
                <input type="text" class="form-field" placeholder="username" name="uid" required>
                <input type="password" class="form-field" placeholder="password" name="pwd" required>
                <input type="text" class="form-field" placeholder="Address" name="add">
                <button type="submit" class="Submit">Register</button>
            </form>
        </div>
        </div>
        <script>
            var x=document.getElementById("login");
            var y=document.getElementById("register");
            var z=document.getElementById("btn");
            function register(){
                x.style.left="-400px";
                y.style.left="50px";
                z.style.left="110px";
            }
            function login(){
                x.style.left="50px";
                y.style.left="450px";
                z.style.left="0px";
            }
        </script> 
    </body>
</html>

