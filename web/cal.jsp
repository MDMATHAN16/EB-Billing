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
            out.println(i);
            String j=request.getParameter("unit");
            String o=request.getParameter("op");
            String f=request.getParameter("mon");
            String cat="select";
            int z=0;
            try{
            int x1=Integer.parseInt(o);
            int m= Integer.parseInt(j);
            switch(x1){
            case 1:
                cat="Domestic";
            if(m>100)
            {
                z+=200;
                m-=100;
                z+=(m*4);
            }
            break;
            case 2:
                cat="Industries- METRO";
                z+=2000;
                z+=(m*20);
            break;
            case 3:
                cat="private Institution/hotels";
                z+=2500;
                z+=(m*30);
            break;
            case 4:
                cat="Power Loom";
                z+=(m*6);
            break;
            case 5:
                cat="Agriculture";
                z+=(m*4);
            break;
            case 6:
                cat="Cottage and tiny Industries";
                z+=(m*15);
                z+=1000;
            break;
            default:
                cat="select";
            z=1500;
            break;
            }
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/ebbill?zeroDateTimeBehavior=CONVERT_TO_NULL","root","MathuKavin@1");
            Statement s= c.createStatement();
            if(z!=0){
            int q= s.executeUpdate("insert into bill values('"+i+"','"+f+"','"+cat+"','"+z+"');");
            int x= s.executeUpdate("update user set amount="+z+",status='No' where username='"+i+"';");
            }
            else
            {
            int x= s.executeUpdate("update user set amount="+z+",status='Yes' where username='"+i+"';");
            }
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
