<%@ page import="java.sql.*" %>
<%
  Connection con;
  Statement stmt;

  String s1,s2,s3,s4,s5;

 s1=request.getParameter("t1");
 s2=request.getParameter("t2");
 s3=request.getParameter("t3");
 s4=request.getParameter("t4");
 s5=request.getParameter("t5");

try
  {
   Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hdbrts","root","");
stmt=con.createStatement();

int k=stmt.executeUpdate("insert into routedetails values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
con.close();

%>

<script>
alert("Successfully Inserted");
document.location="routeview.jsp";
</script>

<%

 }
 catch(Exception e)
 {
   out.println(e);
 }

%>
