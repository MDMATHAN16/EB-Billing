<%-- 
    Document   : log
    Created on : Aug 30, 2023, 6:33:13 PM
    Author     : MADHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <
        <%@page import="java.sql.*" %>
    </head>
    <body>
        <jsp:include page="Header.jsp"/><%
            String uid = request.getParameter("uid");
            String pass = request.getParameter("pwd");
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/ebbill?zeroDateTimeBehavior=CONVERT_TO_NULL","root","MathuKavin@1");
                Statement s= c.createStatement();
                ResultSet rs= s.executeQuery("select * from  user;");
                while(rs.next())
                {
                if(rs.getString("username").equals(uid) && rs.getString("password").equals(pass))
                {
                rs.close();
                s.close();
                c.close();
                %>
                <jsp:forward page="user.jsp" />
                <%
                }
                }
                rs.close();
                s.close();
                c.close();
                %>
                <jsp:forward page="inerror.jsp"/>
                <%
            }
            catch(Exception e)
            {
            %>
            <jsp:forward page="error.jsp"/>
            <%
            }
            %>
    </body>
</html>
