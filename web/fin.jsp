<%-- 
    Document   : cal
    Created on : Sep 5, 2023, 11:01:28 PM
    Author     : MADHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@page import="java.sql.*" %>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String i=request.getParameter("user");
            try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/ebbill?zeroDateTimeBehavior=CONVERT_TO_NULL","root","MathuKavin@1");
            Statement s= c.createStatement();
            int x= s.executeUpdate("update user set amount=0,status='Yes' where username='"+i+"';");
            %>
            <jsp:forward page="payment.jsp"/>
            <%
            s.close();
            c.close();
            }
            catch(Exception e)
            {
            
            }
        %>
        <jsp:forward page="process.jsp"/>
    </body>
</html>
