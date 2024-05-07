<%@ page import="java.sql.*" %>

<html>
 <center> 
<head>
    <title>Employee Details</title>
    <style>
      table {
    width: 80%;
    border-collapse: collapse;
}

table, th, td {
    border: 1px solid #f07b26;
}

th, td {
    padding: 8px;
    text-align: center;
    font-size: 20px;
}

td{
  background-color: #fff;
}

th {
    background-color: #f07b26;
    color: #fff;
}
    </style>
</head>
<body>
    <h1 style="text-align: center;">Employee Details</h1>
    <table border="2px solid black">
        <tr>
            <th>Emp id</th>
            <th>Emp Type</th>
            <th>Name</th>
            <th>Phone No</th>
            <th>Adress</th>
            <th>Working Time</th>
            <th>Designation</th>
            <th>Education</th>
            <th>Email id</th>
            <th>Gender</th>
            <th>A_Adress</th>
            <th>Introduced By</th>
            <th>Action</th> <!-- Added for delete link -->
        </tr>
        <%
            Connection con;
            Statement stmt;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hdbrts", "root", "");
                stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("select * from employeedetails");
                while (rs.next()) {
        %>
                    <tr>
                        <td><%= rs.getString(1) %></td>
                        <td><%= rs.getString(2) %></td>
                        <td><%= rs.getString(3) %></td>
                        <td><%= rs.getString(4) %></td>
                        <td><%= rs.getString(5) %></td>
                        <td><%= rs.getString(6) %></td>
                        <td><%= rs.getString(7) %></td>
                        <td><%= rs.getString(8) %></td>
                        <td><%= rs.getString(9) %></td>
                        <td><%= rs.getString(10) %></td>
                        <td><%= rs.getString(11) %></td>
                        <td><%= rs.getString(12) %></td>
                        <td><a href="empdel.jsp?id=<%= rs.getString(1) %>">Delete</a></td>
                    </tr>
        <%
                }
                rs.close(); // Close ResultSet
                stmt.close(); // Close Statement
                con.close(); // Close Connection
            } catch (Exception e) {
                out.println(e);
            }
        %>
    </table>
</body>
</center>
</html>
