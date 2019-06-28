<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page  import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>second sem result</title>
</head>
<body background="img/9.jpg">
<%
try{
	String n=request.getParameter("name");
	String h=request.getParameter("hall");
	
	String su1=request.getParameter("sub1");
	int s1=Integer.parseInt(su1);
	String su2=request.getParameter("sub2");
	int s2=Integer.parseInt(su2);
	String su3=request.getParameter("sub3");
	int s3=Integer.parseInt(su3);
	String su4=request.getParameter("sub4");
	int s4=Integer.parseInt(su4);
	String su5=request.getParameter("sub5");
	int s5=Integer.parseInt(su5);
	
	int l1=Integer.parseInt(request.getParameter("lab1"));
	int l2=Integer.parseInt(request.getParameter("lab2"));
	int l3=Integer.parseInt(request.getParameter("lab3"));
	int t=Integer.parseInt(request.getParameter("total"));
	String p=request.getParameter("per");
	String rt=request.getParameter("rtype");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
PreparedStatement stmt=con.prepareStatement("insert into sem2 values(?,?,?,?,?,?,?,?,?,?,?,?,?)");

stmt.setString(1,n);
stmt.setString(2,h);
stmt.setInt(3,s1);
stmt.setInt(4,s2);
stmt.setInt(5,s3);
stmt.setInt(6,s4);
stmt.setInt(7,s5);
stmt.setInt(8,l1);
stmt.setInt(9,l2);
stmt.setInt(10,l3);
stmt.setInt(11,t);
stmt.setString(12,p);
stmt.setString(13,rt);
int ac=stmt.executeUpdate();
if(ac>0)
{ out.println("<font color='black' size='6'><center>successfully Uploaded the second semister marks details</center></font>");
	}
con.close();
}catch(Exception e)
{
	System.out.println(e);
	out.println("<font color='red' size='6'><center>Check your Hall ticket Number Properly</center></font>"); 
}

%>
<a href="adminhome.html"><h3 align="CENTER" color="red" FONT="7">BACK TO UPLOADS</h3></a>
<a href="allupload.html"><h3 align="CENTER" color="red" FONT="7">BACK TO MRKS UPLOADS</h3></a>

</body>
</html>