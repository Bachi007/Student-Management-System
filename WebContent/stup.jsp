<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<SCRIPT LANGUAGE="JavaScript">
function checkf(f2)
{
	if(f2.admno.value=="")
		{
	  alert("Enter the admno");
	  f2.admno.value="";
	  f2.admno.focus();
	  
	  return false;
	}
		var exp=/^[0-9]+$/ ;
		if(!f2.admno.value.match(exp))
				{
			
			      alert(" enter numbers only");
				  f2.admno.value="";
				  f2.admno.focus();
				  return false;
			
				}                                                     

		if(f2.name.value=="")
		{
		  alert("Plz enter NAME");
		  f2.name.value="";
		  f2.name.focus();
		 
		 return false;
			}
		var exp=/^[a-zA-Z]+$/ ;
		if(!f2.name.value.match(exp))
				{
			
			      alert(" enter characters only");
				  f2.name.value="";
				  f2.name.focus();
				  return false;
			
				}
		if(f2.course.value=="")
		{
		  alert("Plz enter course");
		  f2.course.value="";
		  f2.course.focus();
		 
		 return false;
			}
		var exp=/^[a-zA-Z]+$/ ;
		if(!f2.course.value.match(exp))
				{
			
			      alert(" enter characters only");
				  f2.course.value="";
				  f2.course.focus();
				  return false;
			
				}
		





if(f2.email.value==""){
	  alert("Enter the  email address");
	  f2.email.focus();
	  f2.email.value="";
	  return false;
	}
	
if(f2.phone.value==" ")
	{
	alert("plz enter ur phone number");
	f2.phone.focus();
	f2.phone.value="";
	return false;
	}
	
	if(f2.phone.value.length<=9)
	{
		alert("plz enter phone no atleast 10 digits");
		f2.phone.value="";
		f2.phone.focus();
		return false;
	
	}
	if(f2.phone.value.length>12)
	{
		alert("plz enter phone no atleast 12 digit");
		f2.phone.focus();
		f2.phone.value="";
	return false;
	}
	var exp=/^[0-9]+$/ ;
		if(!f2.phone.value.match(exp))
				{
			
			      alert(" enter numbers only");
				  f2.phone.value="";
				  f2.phone.focus();
				  return false;
			
				}
		if(f2.adr.value==""){
			  alert("Enter the   address");
			  f2.adr.focus();
			  f2.adr.value="";
			  return false;
			}
	
else
	{
	return true;
	}
}

</SCRIPT>

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
	
  <h2><center><font color='red'>STUDENT REGISTRATION UPDATE FORM</center></h2></font><br><br><br>
	 
 <div id="con">
<center><form action="UP.jsp"  name="f2" onSubmit="return checkf(this)" method="post">
<table><tr><td>
<b>Admission No:&nbsp;</b><td><input type="text" minlength="10" maxlength="10" pattern="\d{10}" name="admno" value="<%= res.getString(1) %>" tittle="plese enter 10 digits"size="25"><tr><td>
<b>Student Name:&nbsp;</b><td><input type="text" name="name"style="text-transform:uppercase" pattern="[a-zA-Z /s]+" value="<%= res.getString(2) %>" size="25"><tr><td>
<b>Course:&nbsp;</b><td><input type="text" name="course"  value="<%= res.getString(3) %>" size="25" style="text-transform:uppercase">
<tr><td>
<b>Batch:&nbsp</b><td> <input type="text" name="batch" value="<%= res.getString(4) %>">
<tr><td>
<b>Email_Id:&nbsp;</b><td><input type="email" name="email" size="25" value="<%= res.getString(5) %>"><tr><td>
<b>Contact No:&nbsp;</b><td><input type="text"minlength="10" maxlength="10" pattern="\d{10}" value="<%= res.getString(6) %>" name="phone" size="25"><tr><td>
<b>Address:&nbsp;</b><td><textarea rows="3" cols="20"name="adr"  ><%= res.getString(7) %></textarea><tr><td>
<tr><td>
<input type="submit" value="submit" onclick="add()">
<input type="reset" value="cancel">
</table>
</form></center>
 
<%  

}
}catch(Exception e){
	System.out.println("Exception");
}



%>
<br><br><center> </center><center>
<a href="update.html"><h3 align="CENTER" color="red" FONT="7">BACK TO UPDATE</h3></a></center></p>
<br>




</body>
</html>
