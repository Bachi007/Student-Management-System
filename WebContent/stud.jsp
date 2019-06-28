<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>





</head>
<body background="img/9.jpg">
<% 
String acno=request.getParameter("admno");

try{
Class.forName("oracle.jdbc.driver.OracleDriver");


Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
//statement
Statement ps=con.createStatement();

ResultSet res=ps.executeQuery("select * from std where admno = '" + acno + "'");
if(!res.next())
{
	out.println("<font color='red' size='6'><center>Check your Hall ticket Number Properly</center></font>");

%>
<% 
}else{
	%>
	<center>
	<table width="757" border="2" align="center" cellpadding="2" cellspacing="2" bordercolor="black" bgcolor="#cc9988">
  <tr> 
    <td colspan="6"><div align="center"><b><u>Students Details</u></b></div></td>
  </tr><br><br><br>
	 
<table border="4"><br>
 <th width="127">Admission No</th>
    <th width="127">Student Name</th>
    <th width="127">Course</th>
    <th width="127">Batch</th>
    <th width="205">Email_Id</th>
    <th width="205">ContactNo</th>
  <th width="205">Address</th>
</tr>
<tr>

     <td width="127 "><%=res.getString(1)%></td>
     <td width="127"> <center> <%=res.getString(2)%> </center></td>
    <td width="127"><center><%=res.getString(3)%></center></td>
    <td width="127"><center><%=res.getString(4)%></center></td>
    <td width="205"><center><%=res.getString(5)%></center></td>
     <td width="205"><center><%=res.getString(6)%></center></td>
<td width="205"><center><%=res.getString(7)%></center></td>
</tr>
</table><br>

<%  

}
}catch(Exception e){
	System.out.println("Exception");
}



%>
<br><br><center><input type="button" value="print" onClick="window.print()"> </center>
<center>
<a href="report3.html"><h3 align="CENTER" color="red" FONT="7">BACK TO REPORTS</h3></a></center></p>

</body>
</html>