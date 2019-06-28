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
//statement
Statement ps=con.createStatement();
ResultSet res=ps.executeQuery("select * from sem2" );
if(!res.next())
{
	 out.println("<font color='red' size='6'><center>invalid halltick number details</center></font>");
	
	

%>
<% 
}else{
	%>
	<br> <br>  <center><FONT COLOR='RED'><H1>II SEMISTER MARKS ALL STUDENT DETAILS</H1></FONT></center>
	<br><%while(res.next()){%>
	<table width="400" border="2" align="center" cellpadding="" cellspacing="" bordercolor="#D4D0C8" bgcolor="#CC9966">
  <tr> 
   <br> <br><tr><tr>
  </tr></tr></tr>
 <tr>  
   <tr>  <td width="80">NAME</td><td width="80 "><%=res.getString(1)%></td></tr>
	 <tr> <td width="127">HALLTICKET NO </td> <td width="127 "><%=res.getString(2)%></td></tr>
    <tr> <td width="127">CG</td><td width="127"><%=res.getInt(3)%></td></tr>
    <tr> <td width="127">OOSD</td><td width="127"><%=res.getInt(4)%></td></tr>
     <tr><td width="127">SP</td><td width="127"><%=res.getInt(5)%></td></tr>
  <tr> <td width="127">DS</td><td width="127"><%=res.getInt(6)%></td></tr>
   <tr> <td width="127">MMS</td><td width="127"><%=res.getInt(7)%></td></tr>
   <tr> <td width="127">S/W LAB5</td><td width="127"><%=res.getInt(8)%></td></tr>
    <tr><td width="127">S/W LAB6</td><td width="127"><%=res.getInt(9)%></td></tr>
    <tr><td width="127">MINOR PROJECT</td><td width="127"><%=res.getInt(10)%></td></tr>
    <tr><td width="127">TOTAL</td><td width="127"><%=res.getInt(11)%></td></tr>
    <tr><td width="127">PERCENTAGE</td><td width="127 "><%=res.getString(12)%></td></tr>
   <tr> <td width="127">RESULT</td><td width="127 "><%=res.getString(13)%></td></tr>
<br><br><br>
      <%}%>
</table><BR><BR><BR> 
<%  

}
}catch(Exception e){
	System.out.println("Exception");
	out.println("<font color='red' size='6'><center>Check your Hall ticket Number Properly</center></font>");
}



%><center><input type="button" value="print" onClick="window.print()"> </center>
<a href="reports.html"><h3 align="CENTER" color="red" FONT="7">BACK TO REPORTS</h3></a>
<a href="allret.html"><h3 align="CENTER" color="red" FONT="7">BACK TO MARKS DETAILS</h3></a>
</body>
</html>