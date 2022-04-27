<%@page contentType="text/html"  language="java"  import="java.sql.*"%>
  <html>
    <head>
      <title>Online Exam Server</title>
    </head>
    <body>
      <h2 style="text-align:center">Catalog</h2>
      <hr/>
      <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/q4","root","girish");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("SELECT * FROM books");
        out.println("<table>");
        out.println("<td>Book Id</td>");
        out.println("<td>Book Name</td>");
        out.println("<td>Book Author</td>");
        while(rs.next())
        {
          out.println("<tr>");
          out.println("<td>"+rs.getString(1)+"</td>");
          out.println("<td>"+rs.getString(2)+"</td>");
          out.println("<td>"+rs.getString(3)+"</td>");
          out.println("</tr>");
        }
        out.println("</table>");
        rs.close();

        %>
      </body>
    </html>
  