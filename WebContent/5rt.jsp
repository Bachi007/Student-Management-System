<%@page  import="java.sql.*"%>
<html>
<head>
</head>
<body background="img/9.jpg">
<% 
String r=request.getParameter("hall");
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","cms","cms");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from sem5 where htno="+r);
 %>
<table width="757" border="2" align="center" cellpadding="2" cellspacing="2" bordercolor="#D4D0C8" bgcolor="#CC9966">
  <tr> 
    <td colspan="15"><div align="center"><b><u>V SEM MARKS</u></b></div></td>
  </tr>
  <tr> 
     <td width="127">NAME</td>
	 <td width="127">HALLTICKET NO</td>
    <td width="127">CG</td>
    <td width="127">OOSD</td>
    <td width="127">SP</td>
   <td width="127">DS</td>
   <td width="127">MMS</td>
   <td width="127">S/W LAB5</td>
   <td width="127">S/W LAB6</td>
   <td width="127">MINOR PROJECT</td>
   <td width="127">TOTAL</td>
   <td width="127">PERCENTAGE</td>
  </tr>
  <%while(rs.next()){%>
  <tr> 
    <td width="127 "><%=rs.getString(1)%></td>
      <td width="127"><center><%=rs.getString(2)%></center></td>
    <td width="127"><center><%=rs.getInt(3)%></center></td>
    <td width="127"><center><%=rs.getInt(4)%></center></td>
    <td width="127"><center><%=rs.getInt(5)%></center></td>
     <td width="127"><center><%=rs.getInt(6)%></center></td>
	 <td width="127"><center><%=rs.getInt(7)%></center></td>
	 <td width="127"><center><%=rs.getInt(8)%></center></td>
	 <td width="127"><center><%=rs.getInt(9)%></center></td>
	 <td width="127"><center><%=rs.getInt(10)%></center></td>
	 <td width="127"><center><%=rs.getInt(11)%></center></td>
	 <td width="127"><center><%=rs.getInt(12)%></center></td>
  </tr>
  <%}%>
</table><BR><BR><BR>
<a href="reports.html"><h3 align="CENTER" color="red" FONT="7">BACK TO REPORTS</h3>></a>
<a href="allret.html"><h3 align="CENTER" color="red" FONT="7">BACK TO MARKS DETAILS</h3>></a>
</body>
</html>
