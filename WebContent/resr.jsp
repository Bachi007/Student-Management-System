<%@page  import="java.sql.*"%>
<html>
<head>
</head>
<body background="img/9.jpg">
<% 
String h=request.getParameter("hall");
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","cms","cms");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from res where hallticket="+h);
 %>
<table width="757" border="2" align="center" cellpadding="2" cellspacing="2" bordercolor="#D4D0C8" bgcolor="#CC9966">
  <tr> 
    <td colspan="15"><div align="center"><b><u>Result Details</u></b></div></td>
  </tr>
  <tr> 
     <td width="127">Name</th>
	 <td width="127">HallTicket No</th>
    <td width="127">Dept</th>
    <td width="127">I Sem Marks</th>
    <td width="127">II Sem Marks </td> 
    <td width="127">III Sem Marks </td>
    <td width="127">IV Sem Marks </td>
    <td width="127">V Sem Marks </td>
    <td width="127">VI Sem Marks </td>    
   <td width="127">Result</td>
   <td width="127">GPA</td>
   
  </tr>
  <%while(rs.next()){%>
  <tr> 
    <td width="127 "><%=rs.getString(1)%></td>
      <td width="127"><center><%=rs.getString(2)%></center></td>
    <td width="127"><center><%=rs.getString(3)%></center></td>
    <td width="127"><center><%=rs.getInt(4)%></center></td>
    <td width="127"><center><%=rs.getInt(5)%></center></td>
    <td width="127"><center><%=rs.getInt(6)%></center></td>
    <td width="127"><center><%=rs.getInt(7)%></center></td>
    <td width="127"><center><%=rs.getInt(8)%></center></td>
    <td width="127"><center><%=rs.getInt(9)%></center></td> 
	<td width="127"><center><%=rs.getString(10)%></center></td> 
	<td width="127"><center><%=rs.getFloat(11)%></center></td>
  </tr>
  <%}%>
</table><BR><BR><BR>
<a href="reports.html"><h3 align="CENTER" color="red" FONT="7">BACK TO REPORTS</h3>></a>
</body>
</html>
