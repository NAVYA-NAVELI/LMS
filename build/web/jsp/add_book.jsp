<%-- 
    Document   : add_book
    Created on : 26 Dec, 2022, 7:25:29 AM
    Author     : dell
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <%
            int isbn=Integer.parseInt(request.getParameter("isbn"));
            String title=request.getParameter("title");
            String author=request.getParameter("author");
            String edition=request.getParameter("edition");
            String publication=request.getParameter("publication");
            int quantity=Integer.parseInt(request.getParameter("quantity"));
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lms","root","");
                Statement stmt=con.createStatement();
                int i=stmt.executeUpdate("insert into book values('"+isbn+"','"+title+"','"+author+"','"+edition+"','"+publication+"','"+quantity+"')");
                out.print("record inserted successfully");
            }
            catch(Exception e){out.print(e);}
            %>
    </body>
</html>
