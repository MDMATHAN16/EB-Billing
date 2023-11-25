<%-- 
    Document   : user
    Created on : Sep 3, 2023, 12:52:01 PM
    Author     : MADHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="user.css">
        <jsp:include page="Header.jsp"/>
        <%@page import="java.sql.*" %>
    </head>
    
        <%
        try{
                String add="a";
                String amt=")";
                String sts="9";
                String name="u";
                String uid=request.getParameter("user");
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/ebbill?zeroDateTimeBehavior=CONVERT_TO_NULL","root","MathuKavin@1");
                Statement s= c.createStatement();
                ResultSet rs= s.executeQuery("select * from  user where username='"+uid+"';");
                while(rs.next())
                {
                   name=rs.getString("Name");
                   add=rs.getString("address");amt=rs.getString("amount");sts=rs.getString("status");
                }
               %>
               <div class="lc">
                    <br><!-- comment --><br><!-- comment --><br><!-- comment -->
                    <form action="profile.jsp" method="post">
                        <input hidden value="<%=uid%>" name="user">
                      <input type="submit" value="Profile" class="toggle-btn"> 
                    </form>
                    <br><!-- comment --><br><!-- comment --><br><!-- comment -->
                   <form action="pay.jsp" method="post">
                        <input hidden value="<%=uid%>" name="user">
                      <input type="submit" value="Payment" class="toggle-btn"> 
                    </form>
                    <br><!-- comment --><br><!-- comment --><br><!-- comment -->
                   <form action="billg.jsp" method="post">
                        <input hidden value="<%=uid%>" name="user">
                      <input type="submit" value="Calculate" class="toggle-btn"> 
                    </form>
                    <br><!-- comment --><br><!-- comment --><br><!-- comment -->
                    <form action="his.jsp" method="post">
                        <input hidden value="<%=uid%>" name="user">
                      <input type="submit" value="Bill History" class="toggle-btn"> 
                    </form>
               </div>
               <div class="container">
                    <!--<h1 style="padding-top:2%; padding-left: 5%; color: black">Welcome <%= name%></h1>-->
                   <br><br><br>
                    <h2 style="padding-left: 17%; color: black">Payment</h2>
                    <div class="userd">
                   <h2>Amount : Rs.<%=amt%></h2>
                   <h2>Payment Status :
                   <%
                       if(sts.equals("No")){
                   %>
                   <span style="color: red;"> Not paid</span></h2>
                     <form action="process.jsp" method="post">
                        <input hidden value="<%=uid%>" name="user">
                      <input type="submit" value="Pay" class="Submit"> 
                    </form>
                   <%
                    }
                    else
                    {
                    %>
                    <span style="color: green">PAID</span></h2>
                    <h3 style="color: green">PAID SUCESSFULLY</h3>
                   <%
                    }
                   %>
                  </div>
               </div>
               
            <%
            }catch(Exception e)
            {
            %>
            <jsp:forward page="error.jsp"/>
            <%
            }
            %>
    
</html>
