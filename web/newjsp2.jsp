<%-- 
    Document   : newjsp2
    Created on : Oct 25, 2023, 12:20:27 PM
    Author     : MADHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <%
            try{
            String s = request.getParameter("na");
            StringBuffer ss= new StringBuffer(" ");
            for(int i=0;i<s.length();i++)
            {
                switch(s.charAt(i))
                {
                case '1':
                    ss.append("one ");
                    break;
                case '2':
                    ss.append("two ");
                    break;
                case '3':
                    ss.append("three ");
                    break;
                case '4':
                    ss.append("four ");
                    break;
                case '5':
                    ss.append("five ");
                    break;
                case '6':
                    ss.append("six ");
                    break;
                case '7':
                    ss.append("sevem ");
                    break;
                case '8':
                    ss.append("eight ");
                    break;
                case '9':
                    ss.append("nine ");
                    break;
                case '0':
                    ss.append("zero ");
                    break;
                default:
                    ss.append(" ");
                    break;
                }
            }
            %>
            <label>Number to text is </label>
            <%=new String(ss)%>
            <%
                }
                catch(Exception e)
{}
%>
    </body>
</html>
