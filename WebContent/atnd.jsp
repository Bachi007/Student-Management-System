
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page  import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>stue</title>
</head>
<body background="img/9.jpg">
<% 
  try{
String a=request.getParameter("regno");

String n=request.getParameter("name");
String a2=request.getParameter("sem");
int s=Integer.parseInt(a2);
String a3=request.getParameter("month");
int m=Integer.parseInt(a3);
String a4=request.getParameter("year");
int y=Integer.parseInt(a4);
String a5=request.getParameter("days");
int d=Integer.parseInt(a5);
String a6=request.getParameter("atten");
int dd=Integer.parseInt(a6);
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
PreparedStatement stmt=con.prepareStatement("insert into aten values(?,?,?,?,?,?,?)");

stmt.setString(1,a);
stmt.setString(2,n);
stmt.setInt(3,s);
stmt.setInt(4,m);
stmt.setInt(5,y);
stmt.setInt(6,d);
stmt.setInt(7,dd);
int ac=stmt.executeUpdate();
if(ac>0)
{ 
	out.println("<font color='black' size='6'><center>successfully inserted the attendence details</center></font>");
	}
else
{
	out.println("incurect details");
}
con.close();
}catch(Exception e)
{out.println("<font color='red' size='6'><center>check inserted the attendence details</center></font>");
	System.out.println(e);
}

%>

<a href="allcourses.html"><h3 align="CENTER" color="red" FONT="7">BACK TO ATTENDANCE UPLOAD</h3></a>
<a href="adminhome.html"><h3 align="CENTER" color="red" FONT="7">BACK TO ADMIN</h3></a>
</body>
</html>