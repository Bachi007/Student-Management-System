<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page  import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ATTENDENCE DETIALS</title>
<style>



</style>
</head>
<body background="img/9.jpg">
<%
String acno=request.getParameter("regno");


try{
Class.forName("oracle.jdbc.driver.OracleDriver");


Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
//statement
Statement ps=con.createStatement();

ResultSet res=ps.executeQuery("select * from aten where regno = '" + acno + "'");
if(!res.next())
{
	out.println("invalid regno");

	%>
	<% 
	}else{
		%>
		<center>
		<table width="757" border="2" align="center" cellpadding="2" cellspacing="2" bordercolor="#D4D0C8" bgcolor="#CC9966">
  <tr> 
    <td colspan="7"><div align="center"><b><u>Attendence Details</u></b></div></td>
  </tr>
		<tr> 
     <td width="127">Register No</td>
	 <td width="127">Name</td>
    <td width="127">Semester</td>
    <td width="127">Month</td>
    <td width="127">Year</td>
   <td width="127">Working Days</td>
   <td width="127">Attended Days</td>
    <tr> 
     <%while(res.next()){%>
    <td width="127 "><%=res.getString(1)%></td>
      <td width="127"><center><%=res.getString(2)%></center></td>
    <td width="127"><center><%=res.getString(3)%></center></td>
    <td width="127"><center><%=res.getInt(4)%></center></td>
    <td width="127"><center><%=res.getInt(5)%></center></td>
     <td width="127"><center><%=res.getInt(6)%></center></td>
	 <td width="127"><center><%=res.getInt(7)%></center></td>
  </tr>
    <%}%>
  </table><br>
<%  

}
}catch(Exception e){
	System.out.println("Exception");
}



%>
  <p>
<center><input type="button" value="print" onClick="window.print()"> </center>
<a href="allcoursesattendancedetails.html"><h3 align="CENTER" color="red" FONT="7">BACK TO ATTENDANCE DETAILS</h3></a>
<a href="reports.html"><h3 align="CENTER" color="red" FONT="7">BACK TO REPORTS</h3></a></a></center></p>
</body>
</html>
