   <%-- 
    Document   : control
    Created on : Aug 27, 2023, 3:50:54 PM
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
        <jsp:include page="Header.jsp"/>
        <% 
            String uid = request.getParameter("uid");
            String pass = request.getParameter("pwd");
            String name =request.getParameter("name");
            String add=request.getParameter("add");
            try{
               Class.forName("com.mysql.cj.jdbc.Driver");
                Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/ebbill?zeroDateTimeBehavior=CONVERT_TO_NULL","root","MathuKavin@1");
                Statement s= c.createStatement();
                int x= s.executeUpdate("insert into user(username,Name,password,address,amount,status) values('"+uid+"','"+name+"','"+pass+"','"+add+"',0,'Yes');");
                s.close();
                c.close();
                %>
                <jsp:forward page="signin.jsp"/>
                <%
            }
            catch(Exception e)
            {
               out.println(e.getMessage());     
            }
            %>
    </body>
</html>
