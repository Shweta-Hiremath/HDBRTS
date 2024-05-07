<%@ page import="java.sql.*" %>
<%
   Connection con;
   Statement stmt;
   
   String id=request.getParameter("id");
try
{
   Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hdbrts","root","");
   stmt = con.createStatement();
   int k=stmt.executeUpdate("delete from busdetails where BusNo='"+id+"' ");
   con.close();
}
catch(Exception e)
{
   System.out.println(e);
}
%>
<script>
   alert("Deleted successfully");
   document.location="busview.jsp";
</script>