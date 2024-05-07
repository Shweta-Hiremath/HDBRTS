<%@ page import="java.sql.*" %>
<%
  Connection con;
  Statement stmt;

  String s1,s2,s3;

 s1=request.getParameter("t1");
 s2=request.getParameter("t2");
 s3=request.getParameter("t3");


try
  {
   Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hdbrts","root","");
stmt=con.createStatement();

int k=stmt.executeUpdate("insert into forgot values('"+s1+"','"+s2+"','"+s3+"')");
con.close();

%>

<script>
alert("Password Reset Succesfull");
</script>

<%

 }
 catch(Exception e)
 {
   out.println(e);
 }

%>
