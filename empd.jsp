<%@ page import="java.sql.*" %>
<%
  Connection con;
  Statement stmt;

  String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12;

 s1=request.getParameter("t1");
 s2=request.getParameter("t2");
 s3=request.getParameter("t3");
 s4=request.getParameter("t4");
 s5=request.getParameter("t5");
 s6=request.getParameter("t6");
 s7=request.getParameter("t7");
 s8=request.getParameter("t8");
 s9=request.getParameter("t9");
 s10=request.getParameter("t10");
 s11=request.getParameter("t11");
 s12=request.getParameter("t12");

try
  {
   Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hdbrts","root","");
stmt=con.createStatement();

int k=stmt.executeUpdate("insert into employeedetails values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"','"+s12+"')");
con.close();

%>

<script>
alert("Successfully Inserted");
document.location="empview.jsp";
</script>

<%

 }
 catch(Exception e)
 {
   out.println(e);
 }

%>
