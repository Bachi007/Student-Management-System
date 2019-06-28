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
ResultSet res=ps.executeQuery("select * from sem2 where hall = '" + r + "'");
if(!res.next())
{
	out.println("invalid halltick number");
	

%>
<% 
}else{
	%><center><FONT COLOR='RED'><H1>II SEMISTER MARKS STUDENT DETAILS</H1></FONT></center><br> <br>
	<table width="757" border="2" align="center" cellpadding="2" cellspacing="2" bordercolor="#D4D0C8" bgcolor="#CC9966">
  
   <td width="127">NAME</td>
	 <td width="127">HALLTICKET NO</td>
    <td width="127">COOR</td>
    <td width="127">DS</td>
    <td width="127">OS</td>
   <td width="127">FS</td>
   <td width="127">AFM</td>
   <td width="127">S/W LAB2</td>
   <td width="127">DS LAB</td>
   <td width="127">FS LAB</td>
   <td width="127">TOTAL</td>
   <td width="127">PERCENTAGE</td>
 <td width="127">RESULT</td>
  </tr>

  <tr> 
    <td width="127 "><%=res.getString(1)%></td>
      <td width="127"><center><%=res.getString(2)%></center></td>
    <td width="127"><center><%=res.getInt(3)%></center></td>
    <td width="127"><center><%=res.getInt(4)%></center></td>
    <td width="127"><center><%=res.getInt(5)%></center></td>
     <td width="127"><center><%=res.getInt(6)%></center></td>
	 <td width="127"><center><%=res.getInt(7)%></center></td>
	 <td width="127"><center><%=res.getInt(8)%></center></td>
	 <td width="127"><center><%=res.getInt(9)%></center></td>
	 <td width="127"><center><%=res.getInt(10)%></center></td>
	 <td width="127"><center><%=res.getInt(11)%></center></td>
	 <td width="127"><center><%=res.getString(12)%></center></td>
	 <td width="127"><center><%=res.getString(13)%></center></td>
  </tr>

</table><BR><BR><BR> 
<%  

}
}catch(Exception e){
	System.out.println("Exception");
}



%><center><input type="button" value="print" onClick="window.print()"> </center>
<a href="reports.html"><h3 align="CENTER" color="red" FONT="7">BACK TO REPORTS</h3></a>
<a href="allret.html"><h3 align="CENTER" color="red" FONT="7">BACK TO MARKS DETAILS</h3></a>
</body>
</html>