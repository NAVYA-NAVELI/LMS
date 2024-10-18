<%-- 
    Document   : issue_book
    Created on : 26 Dec, 2022, 7:27:54 AM
    Author     : dell
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css-code/issue_book.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            int bookid=Integer.parseInt(request.getParameter("bookid"));
            int userid=Integer.parseInt(request.getParameter("userid"));
            String issue_date=request.getParameter("issue_date");
            String due_date=request.getParameter("due_date");
            
   
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lms","root","");
                Statement stmt=con.createStatement();
                int i=stmt.executeUpdate("insert into issue_book values('"+bookid+"','"+userid+"','"+issue_date+"','"+due_date+"')");
                out.print("record inserted successfully");
                int j=stmt.executeUpdate("update book set quantity=quantity-1 where isbn='"+bookid+"' and quantity>0");
                
            }
            catch(Exception e){out.print(e);}
            %>
    </body>
</html>
