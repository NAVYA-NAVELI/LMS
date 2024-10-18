<%-- 
    Document   : user
    Created on : 26 Dec, 2022, 7:29:05 AM
    Author     : dell
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css-code/user.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
    <center>
        <h1>User Details</h1>
        <%
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lms","root","");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select*from users");
        %>
        <table border="1" width="500">
            <tr>
                <th>User_id</th>
                <th>Name</th>
                 <th>Gender</th>
                  <th>Mobile</th>
                   <th>Email</th>
                    <th>Course</th>
                 
            </tr>
       <%
        while(rs.next())
        {
            %>
            <tr>
                <td><%=rs.getInt(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                                
            </tr>
        <%   
        }
            con.close();
        }
        catch(Exception e){out.print(e);}
        %>
         </table>
    </center>
    </body>
</html>
