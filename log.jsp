<%@ page import="java.sql.*" %>
<%
  Connection con;
  Statement stmt;

  String s1,s2,s3,s4,s5,s6;

 s1=request.getParameter("t1");
 s2=request.getParameter("t2");
 s3=request.getParameter("t3");
 s4=request.getParameter("t4");
 s5=request.getParameter("t5");
 s6=request.getParameter("t6");

try
  {
   Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hdbrts","root","");
stmt=con.createStatement();

int k=stmt.executeUpdate("insert into login values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
con.close();
%>

<script>
alert("Login Succesfull");
document.location="logview.jsp";
</script>

<%

 }
 catch(Exception e)
 {
   out.println(e);
 }

%>
