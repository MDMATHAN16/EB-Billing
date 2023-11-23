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
                String uid=request.getParameter("user");
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/ebbill?zeroDateTimeBehavior=CONVERT_TO_NULL","root","MathuKavin@1");
                Statement s= c.createStatement();
                ResultSet rs= s.executeQuery("select * from  bill where username='"+uid+"';"); 
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
                    </form><br><!-- comment --><br><!-- comment --><br><!-- comment -->
                    <form action="his.jsp" method="post">
                        <input hidden value="<%=uid%>" name="user">
                      <input type="submit" value="Bill History" class="toggle-btn"> 
                    </form>
               </div>
               <div class="container">
                    <h2 style="padding-left: 17%; color: black">History</h2>
                    <div class="userd">
            <table border="2" style="width:100%">
            <th>S.no</th> ;
            <th> Period</th>
            <th>Category</th><th>Amount</th>
            <%
                int cu=1;
                while(rs.next())
                {
                %>
            <tr><td><%=cu %></td><td><%=rs.getString("t")%></td><td><%= rs.getString("cat")%></td><td><%=rs.getString("amount")%></td></tr>
            <%
                cu++;
                }
            %>
            </table>
                    </div></div>
            <%
            }catch(Exception e)
            {
            %>
            <jsp:forward page="error.jsp"/>
            <%
            }
            %>
    
</html>
