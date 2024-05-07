<%@ page import="java.sql.*" %>
<%
  Connection con;
  Statement stmt;

  String s1,s2;

 s1=request.getParameter("t1");
 s2=request.getParameter("t2");

try
  {
   Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hdbrts","root","");
stmt=con.createStatement();

int k=stmt.executeUpdate("insert into faredetails values('"+s1+"','"+s2+"')");
con.close();
  }



 catch(Exception e)
 {
   out.println(e);
 }

%>

<script>
  alert("Successfully Inserted");
  document.location="fareview.jsp";
  </script>
  
