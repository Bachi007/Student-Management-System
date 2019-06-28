<%@ page import="java.sql.*" %>
<body background="img/9.jpg">
<%
try
{
	String name=request.getParameter("name");
	String pwd=request.getParameter("pwd");


 
if((name.equalsIgnoreCase("svucollege")) && (pwd.equalsIgnoreCase("123456"))||(name.equals("syam")) && (pwd.equals("reddy"))||(name.equalsIgnoreCase("admin")) && (pwd.equalsIgnoreCase("admin"))||(name.equalsIgnoreCase("svucollege")) && (pwd.equalsIgnoreCase("syamreddy")))
{
response.sendRedirect("adminhome.html");
}
else
{
	%>
<center><font color='red' size='6'>Login Failed invalid details</font>
</center>
	<%
	}
}catch(Exception e)
{
	System.out.println(e);
}

%>