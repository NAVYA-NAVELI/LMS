<%-- 
    Document   : add_user
    Created on : 26 Dec, 2022, 7:25:52 AM
    Author     : dell
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css-code/add_user.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%

            String names=request.getParameter("names");
            String gender=request.getParameter("gender");
            String mobile=request.getParameter("mobile");
            String email=request.getParameter("email");
            String course=request.getParameter("course");
   
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lms","root","");
                Statement stmt=con.createStatement();
                int i=stmt.executeUpdate("insert into users(name,gender,mobile,email,course) values('"+names+"','"+gender+"','"+mobile+"','"+email+"','"+course+"')");
                out.print("record inserted successfully");
            }
            catch(Exception e){out.print(e);}
            %>
    </body>
</html>
