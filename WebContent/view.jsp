<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
         <%@ page import="java.lang.*" %>
             <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String rollno=null;
String name=null;
String sub11=null;
String sub12=null;
String sub13=null;
String sub14=null;
String sub15=null;
String sub16=null;
String sub17=null;
String sub18=null;
int m11=0;
int m12=0;
int m13=0;
int m14=0;
int m15=0;
int m16=0;
int m17=0;
int m18=0;
int m21=0;
int m22=0;
int m23=0;
int m24=0;
int m25=0;
int m26=0;
int m27=0;
int m28=0;
int a1=0;
int a2=0;
int a3=0;
int a4=0;
int a5=0;
int a6=0;
int a7=0;
int a8=0;
int ic=0;
String batch=request.getParameter("batch");
String year=request.getParameter("country");
String sem=request.getParameter("state");
System.out.println(batch+" "+year+" "+sem);
 try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	//sSystem.out.println("hai1");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","mini","mini");
     PreparedStatement ps=con.prepareStatement("select rollno,name,sub11,m11,m21,sub12,m12,m22,sub13,m13,m23,sub14,m14,m24,sub15,m15,m25,sub16,m16,m26,sub17,m17,m27,sub18,m18,m28 from student12  where internal1='1' and internal2='2' and batch=?  and year=?  and sem=?");
	ps.setString(1,batch);
	ps.setString(2,year);
	ps.setString(3,sem);
	ResultSet rs=ps.executeQuery();
	////System.out.println("hai2");
	
while(rs.next())
{
	
//System.out.println("hai3");
rollno=rs.getString(1);
name=rs.getString(2);
sub11=rs.getString(3);
m11=rs.getInt(4);
m21=rs.getInt(5);
a1=((m11+m21)/2);
sub12=rs.getString(6);
m12=rs.getInt(7);
m22=rs.getInt(8);
a2=((m12+m22)/2);
sub13=rs.getString(9);
m13=rs.getInt(10);
m23=rs.getInt(11);
a3=((m13+m23)/2);
sub14=rs.getString(12);
m14=rs.getInt(13);
m24=rs.getInt(14);
a4=((m14+m24)/2);
sub15=rs.getString(15);
m15=rs.getInt(16);
m25=rs.getInt(17);
a5=((m15+m25)/2);
sub16=rs.getString(18);
m16=rs.getInt(19);
m26=rs.getInt(20);
a6=((m16+m26)/2);
sub17=rs.getString(21);
m17=rs.getInt(22);
m27=rs.getInt(23);
a7=((m17+m27)/2);
sub18=rs.getString(24);
m18=rs.getInt(25);
m28=rs.getInt(26);
a8=((m18+m28)/2);
%>
<table border="bold">


<tr><th>rollno</th><td><%=rollno %></td></tr>
<tr><th>name</th><td><%=name %></td></tr>

<tr><th>sub1</th><td><%=sub11 %></td></tr>
<tr><th>internal 1</th><td><%=m11 %></td></tr>
<tr><th>internal 2</th><td><%=m21 %></td></tr>
<tr><th>avg1</th><td><%=a1 %></td></tr>



<tr><th>sub2</th><td><%=sub12 %></td></tr>
<tr><th>internal 1</th><td><%=m12 %></td></tr>
<tr><th>internal 2</th><td><%=m22 %></td></tr>
<tr><th>avg 2</th><td><%=a2 %></td></tr>


<tr><th>sub3</th><td><%=sub13 %></td></tr>
<tr><th>internal 1</th><td><%=m13 %></td></tr>
<tr><th>internal 2</th><td><%=m23 %></td></tr>
<tr><th>avg 3</th><td><%=a3 %></td></tr>



<tr><th>sub4</th><td><%=sub14 %></td></tr>
<tr><th>internal 1</th><td><%=m14 %></td></tr>
<tr><th>internal 2</th><td><%=m24 %></td></tr>
<tr><th>avg 4</th><td><%=a4 %></td></tr>

<tr><th>sub5</th><td><%=sub15 %></td></tr>
<tr><th>internal 1</th><td><%=m15 %></td></tr>
<tr><th>internal 2</th><td><%=m25 %></td></tr>
<tr><th>avg 5</th><td><%=a5 %></td></tr>

<tr><th>sub6</th><td><%=sub16 %></td></tr>
<tr><th>internal 1</th><td><%=m16 %></td></tr>
<tr><th>internal 2</th><td><%=m26 %></td></tr>
<tr><th>avg 6</th><td><%=a6 %></td></tr>

<tr><th>sub7</th><td><%=sub17 %></td></tr>
<tr><th>internal 1</th><td><%=m17 %></td></tr>
<tr><th>internal 2</th><td><%=m27 %></td></tr>
<tr><th>avg 7</th><td><%=a7 %></td></tr>

<tr><th>sub8</th><td><%=sub18 %></td></tr>
<tr><th>internal 1</th><td><%=m18 %></td></tr>
<tr><th>internal 2</th><td><%=m28 %></td></tr>
<tr><th>avg 8</th><td><%=a8 %></td></tr>


</table>






<%
}
if(ic==1)
{
	out.println("success");
}
else
{
	out.println("ha ha ah aha ha a u done it man");
}

con.close();

}catch(Exception e)
{
System.out.println(e);
}
%> 

</body>
</html>
