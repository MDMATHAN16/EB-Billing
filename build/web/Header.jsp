<%-- 
    Document   : head
    Created on : Aug 27, 2023, 11:07:50 AM
    Author     : MADHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>MD EB Billing</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style type="text/css">
            body{
                    margin: 0%;
            }
            *{
                text-decoration: none;
            }
            .nv{
                background:linear-gradient(to right,#3f5efb,#fc466b); font-family: calibri;padding-right: 15px;padding-left: 15px;
            }
            .nb{
                display:flex; align-items: center;justify-content: space-between;
                padding-top: 25px;
                padding-bottom: 25px;
            }
            .logo{
                font-size: 37px; font-weight: 600;
            }
            li{
                list-style: none; display: inline-block;
            }
            li a{
                position: relative;color:white; font-size: 21px;font-weight: bold; margin-right: 22px;
                padding: 0 10px;
            }
            li a:after{
                content:"";
                position: absolute;
                background-color:aquamarine;
                height:3px;
                width:0%;
                left:0;
                bottom: -5px; 
                transition: 0.3s;
            }
            l1 a:hover{
                color: lightblue;
            }
            li a:hover:after{
                width:100%;
            }
            button{
                background-color: black;margin-left: 10px;border-radius: 10px;padding: 10px;width: 90px;
            }
            button a{
                color: white; font-weight: bold;font-size:15px;
            }
        </style>
    </head>
    <body>
        <header>
        <nav class="nv">
        <div class="nb">
            <div class="logo"><a href="#" style="color: aquamarine">Smart Electric Board</a></div>
            <ul>
                <li><a href ="index.html">Home</a></li>
                <li><a href ="about.jsp">About</a></li>
                <li><a href ="contact.jsp">Contact</a></li>
                <li><a href ="index.html">Logout</a></li>
            </ul>
            </div>
        </nav>
        </header>
    </body>
</html>

