<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>
<%@page import="java.util.Random"%>


<% 


String s1,s2,s3,s4,s5,s6;
s1=request.getParameter("t1");
s2=request.getParameter("t2");

//int randnum=rand.nextInt(1000);

//String id=s1.substring(0,2);

//out.println(randnum);

//String orderid=id+randnum;

//session.setAttribute("orderid",orderid);


try
{
out.println(s1);
ResultSet rs=st.executeQuery("select * from login where username='"+s1+"' ");
if(!rs.next())
{

    out.println("username not found");

}
else
{
	  String pwd=rs.getString(2);
	  if(s2.equals(pwd))
	  {
     // session.setAttribute("uname",s1);
		
    String type=rs.getString(3);
			
			if(type.equals("accountant"))
			{
			%>
			<script>
                alert("You have logged in as accountant");
                document.location="index.html";
            </script>
			<%
			}
			if(type.equals("tc"))
			{
			%>
			<script>
                alert("You have logged in as TC");
                document.location="index.html";
            </script>
			<%
			}
			if(type.equals("md"))
			{
			%>
			<script>
                alert("You have logged in as MD");
                document.location="index.html";
            </script>
			<%
			}
			if(type.equals("manager"))
			{
			%>
			<script>
                alert("You have logged in as manager");
                document.location="index.html";
            </script>
			<%
			}
				if(type.equals("inspector"))
			{
			%>
			<script>
                alert("You have logged in as inspector");
                document.location="index.html";
            </script>
			<%
			}
            if(type.equals("user"))
			{
			%>
			<script>
                alert("You have logged in as user");
                document.location="home.html";
            </script>
			<%
			}
			
		}

	else
	{
		
		%>
        
        <script>
		alert("invalid password!");
		document.location="login.html";
		</script>
        
        <%
	}
}
}
catch(Exception e)
{
	  out.println(e);
}

%>