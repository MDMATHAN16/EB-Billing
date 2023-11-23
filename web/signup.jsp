<%-- 
    Document   : signup
    Created on : Aug 27, 2023, 10:06:48 AM
    Author     : MADHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MD EB billing</title>
    <style type="text/css">
            input{margin: 5% auto;
            font-size: 21px;
            margin-bottom: 8%;
            border: none;
            outline: none;
            position: relative;
            background: transparent;
            color: white;
            border-bottom: 1px solid white;
            cursor: pointer;}
            #container{
                width: 960px;
                margin: 0 auto;
            }
            .col3{
                width: 450px;
                float: left;
            }
            .coll2{
                width: 450px;
                float: right;
            }
        </style>
    </head>
    
    <body style="color: white">
        <header><jsp:include page="head.jsp"/></header>
        <br>
        <br><!-- comment -->
        <b style="margin-left: 30%;  font-size: 25px; font-family: Tahoma; color : red;">"For your better Tomorrow save Energy Today "</b>

        <div id="container">
            <div class="col3">
                <h1 style ="margin-top: 15%; color: black ;">Online Electricity Billing System Sign up</h1> 
            </div>
        <form method="get" action="control.jsp" class="col2">
        <table style="margin-left : 50%; margin-top: 5%; text-align-last: center;">
            <tr><td style="font-size: 21px ;color: #3f5efb;">Name </td><td><input type ="text" name="name" style="font-size: 21px ;color: #fc466b; border-bottom-color: #3f5efb"></td></tr>
            <tr><td style="font-size: 21px ;color: #3f5efb;">Userid  </td><td><input type ="text" name="uid" style="font-size: 21px ;color: #fc466b; border-bottom-color: #3f5efb"></td></tr>
            <tr><td style="font-size: 21px ;color: #3f5efb;">Mobile No </td><td><input type ="text" name="mbno" style="font-size: 21px ;color: #fc466b; border-bottom-color: #3f5efb"></td></tr>
            <tr><td style="font-size: 21px ;color: #3f5efb;">Password </td><td><input type ="text" name="rpwd" style="font-size: 21px ;color: #fc466b; border-bottom-color: #3f5efb"></td></tr>
            <tr><td style="font-size: 21px ;color: #3f5efb;"> Re Type Password</td><td><input type ="text" name="pwd" style="font-size: 21px ;color: #fc466b; border-bottom-color: #3f5efb"></td></tr>
            <tr><td colspan="2" align="center"><input type="Submit" value="Register" name="submit" style="color :#fc466b ; font-size: 26px;"></td></tr>
      </table>
        </form>
        </div>
    </body>
    

</html>
