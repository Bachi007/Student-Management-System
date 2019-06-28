<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page  import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>sem1 result</title>
</head>
<body background="img/9.jpg">
<% 
String r=request.getParameter("hall");


try{
Class.forName("oracle.jdbc.driver.OracleDriver");


Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
PreparedStatement stmt=con.prepareStatement("delete from sem2 where hall= '" + r + "'");
int ac=stmt.executeUpdate();
if(ac>0)
{
	 out.println("<font color='red' size='6'><center>sucessfully  delete Hall ticket details</center></font>");
	
	

%><%
}
else
{
	  out.println("<font color='red' size='6'><center>invalid Hall ticket number details</center></font>");
	%>
<%  
}

}catch(Exception e){
	System.out.println("Exception");
	
}



%><p>
<a href="reports.html"><h3 align="CENTER" color="red" FONT="7">BACK TO REPORTS</h3></a>
<a href="allret.html"><h3 align="CENTER" color="red" FONT="7">BACK TO MARKS DETAILS</h3></a>
</p></body>
</html>