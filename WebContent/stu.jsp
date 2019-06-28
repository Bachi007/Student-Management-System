<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>student details</title>
</head>
<body background="img/9.jpg">
<% 
  

try{
String a=request.getParameter("admno");

String a1=request.getParameter("name");
String a8=request.getParameter("course");
String a3=request.getParameter("batch");

String a4=request.getParameter("email");
String a5=request.getParameter("phone");
String a6=request.getParameter("adr");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
PreparedStatement stmt=con.prepareStatement("insert into std values(?,?,?,?,?,?,?)");

stmt.setString(1,a);
stmt.setString(2,a1);
stmt.setString(3,a8);
stmt.setString(4,a3);
stmt.setString(5,a4);
stmt.setString(6,a5);
stmt.setString(7,a6);
int ac=stmt.executeUpdate();
 if(ac>0)
{ out.println("<font color='black' size='7'><center>successfully inserted the Student registration details</center></font>");
	}
 else
	{
		
	}
con.close();
}
catch(Exception e)
{
	out.println("<font color='red' size='7'><center> check not inserted the   Student registration details</center></font>");
	System.out.println(e);
}

%>
<a href="student.html"><h3 ALIGN="CENTER" COLOR="RED">BACK TO STUDENT</h3></a>
</body>
</html>