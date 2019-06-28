<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page  import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
<SCRIPT LANGUAGE="JavaScript">
function checkf(f2){
if(f2.name.value=="")
		{
		  alert("Plz enter NAME");
		 f2.name.focus();
		 f2.name.value="";
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
if(f2.hall.value=="")
		{
		  alert("Plz enter the Hallticket number");
		 f2.hall.focus();
		 f2.hall.value="";
		 return false;
			}
		var exp=/^[0-9]+$/ ;
		if(!f2.hall.value.match(exp))
				{
			
			      alert(" enter numbers only");
				  f2.hall.value="";
				  f2.hall.focus();
				  return false;
			
				}
 
if(f2.sub1.value==""){
	  alert("Enter the sub1 marks");
	  f2.sub1.focus();
	  f2.sub1.value="";
	  return false;
	}
var exp=/^[0-9]+$/ ;
		if(!f2.sub1.value.match(exp))
				{
			
			      alert(" enter numbers only");
				  f2.sub1.value="";
				  f2.sub1.focus();
				  return false;
			
		}
if(f2.sub2.value==""){
			  alert("Enter the sub2 marks");
			  f2.sub2.focus();
			  f2.sub2.value="";
			  return false;
			}
	var exp=/^[0-9]+$/ ;
				if(!f2.sub2.value.match(exp))
						{
					
					      alert(" enter numbers only");
						  f2.sub2.value="";
						  f2.sub2.focus();
						  return false;
					
				}


if(f2.sub3.value==""){
	  alert("Enter the sub3 marks");
	  f2.sub3.focus();
	  f2.sub3.value="";
	  return false;
 			}
    var exp=/^[0-9]+$/ ;
		if(!f2.sub3.value.match(exp))
			{
							
	                   alert(" enter numbers only");
					   f2.sub3.value="";
					   f2.sub3.focus();
					   return false;
							
						}


if(f2.sub4.value==""){
		  alert("Enter sub4 marks");
		  f2.sub4.focus();
		  f2.sub4.value="";
		  return false;
							}
		var exp=/^[0-9]+$/ ;
    	if(!f2.sub4.value.match(exp))
			{
				
	    	      alert(" enter numbers only");
				  f2.sub4.value="";
				  f2.sub4.focus();
				  return false;
									
								}
if(f2.sub5.value==""){
  		  alert("Enter sub5 marks");
  		  f2.sub5.focus();
  		  f2.sub5.value="";
  		  return false;
  							}
  		var exp=/^[0-9]+$/ ;
      	if(!f2.sub5.value.match(exp))
  			{
  				
  	    	      alert(" enter numbers only");
  				  f2.sub5.value="";
  				  f2.sub5.focus();
  				  return false;
  									
  								}
if(f2.lab1.value==""){
  		  alert("Enter lab1 marks");
  		  f2.lab1.focus();
  		  f2.lab1.value="";
  		  return false;
  							}
  		var exp=/^[0-9]+$/ ;
      	if(!f2.lab1.value.match(exp))
  			{
  				
  	    	      alert(" enter numbers only");
  				  f2.lab1.value="";
  				  f2.lab1.focus();
  				  return false;
  									
  								}
  if(f2.lab2.value==""){
  		  alert("Enter lab2 marks");
  		  f2.lab2.focus();
  		  f2.lab2.value="";
  		  return false;
  							}
  		var exp=/^[0-9]+$/ ;
      	if(!f2.lab2.value.match(exp))
  			{
  				
  	    	      alert(" enter numbers only");
  				  f2.lab2.value="";
  				  f2.lab2.focus();
  				  return false;
  									
  								}
if(f2.lab3.value==""){
  		  alert("Enter lab3 marks");
  		  f2.lab3.focus();
  		  f2.lab3.value="";
  		  return false;
  							}
  		var exp=/^[0-9]+$/ ;
      	if(!f2.lab3.value.match(exp))
  			{
  				
  	    	      alert(" enter numbers only");
  				  f2.lab3.value="";
  				  f2.lab3.focus();
  				  return false;
  									
  								}


if(f2.total.value=="")
		{
		  alert("Plz enter the total ");
		 f2.total.focus();
		 f2.total.value="";
		 return false;
			}
		var exp=/^[0-9]+$/ ;
		if(!f2.total.value.match(exp))
				{
			
			      alert(" enter numbers only");
				  f2.total.value="";
				  f2.total.focus();
				  return false;
				}
if(f2.percentage.value=="")
		{
		  alert("Plz enter numbers only");
		 f2.percentage.focus();
		 f2.percentage.value="";
		 return false;
			}
		var exp=/^[0-9]+$/ ;
		if(!f2.percentage.value.match(exp))
				{
			
			      alert(" enter numbers only");
					  f2.percentage.value="";
				  f2.percentage.focus();
				  return false;
			
				}

else
	{
	return true;
	}
} 
function add()
{
var a,b,c,d,e,f,g,h,i,j;
a=Number(document.getElementById("sub1").value);

b=Number(document.getElementById("sub2").value);
c=Number(document.getElementById("sub3").value);
d=Number(document.getElementById("sub4").value);
e=Number(document.getElementById("sub5").value);
f=Number(document.getElementById("lab1").value);
g=Number(document.getElementById("lab2").value);
h=Number(document.getElementById("lab3").value);
i=(a+b+c+d+e+f+g+h);j=(i/8);


document.getElementById("total").value=i;
document.getElementById("per").value=j;
var a1="PASS";
var a2="FAIL";
if (a>=40 && b>=40 && c>=40 && d>=40 && e>=40 && f>=40 && g>=40 && h>=40)
{
document.getElementById("rtype").value=a1;
}
else
{
document.getElementById("rtype").value=a2;	
}


}

</script>
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
ResultSet res=ps.executeQuery("select * from sem1 where hall = '" + r + "'");
if(!res.next())
{
	 out.println("<font color='red' size='6'><center>invalid halltick number details</center></font>");
	
	

%>
<% 
}else{
	%>
	<center><font color='blue' size='6'> THIRD SEM MARKS UPDATE</font></center></h2><br>
<center><form action="3htup.jsp"   name="f2" onSubmit="return checkf(this)" method="post">
<table>
<tr><td><b>NAME:&nbsp;</b><td><input type="text" pattern="[a-zA-z]+{50}" name="name"size="25" value="<%= res.getString(1) %>">
<tr><td><b>Hallticket NO:&nbsp;</b><td><input type="text" minlength="10" maxlength="10" pattern="\d{10}" name="hall"size="25" value="<%= res.getString(2) %>">
<tr><td><b>COOR:&nbsp;</b><td><input type="number" min="0"max="100" name="sub1"size="25" id="sub1" value="<%= res.getInt(3) %>">
<tr><td><b>DCCN:&nbsp;</b><td><input type="number" min="0"max="100" name="sub2" size="25"id="sub2"value="<%= res.getInt(4) %>">
<tr><td><b>SE:&nbsp;</b><td><input type="number" min="0"max="100"name="sub3"size="25"id="sub3" value="<%= res.getInt(5) %>">
<tr><td><b>DAA:&nbsp;</b><td><input type="number" min="0"max="100" name="sub4"size="25"id="sub4" value="<%= res.getInt(6) %>">
<tr><td><b>TCCE:&nbsp;</b><td><input type="number" min="0"max="100" name="sub5"size="25"id="sub5" value="<%= res.getInt(7) %>">
<tr><td><b>S/W LAB3:&nbsp;</b><td><input type="number" min="0"max="100" name="lab1"size="25"id="lab1" value="<%= res.getInt(8) %>">
<tr><td><b>SE LAB:&nbsp;</b><td><input type="number" min="0"max="100" name="lab2"size="25"id="lab2" value="<%= res.getInt(9) %>">
<tr><td><b>DBMS LAB:&nbsp;</b><td><input type="number" min="0"max="100" name="lab3"size="25"id="lab3" value="<%= res.getInt(10) %>">
<tr><td><b>TOTAL&nbsp;</b><td><input type="text" name="total"size="25"min="0" max="800"  id="total" value="<%= res.getInt(11) %>">
<tr><td><b>PERCENTAGE:&nbsp;</b><td><input type="float" name="per"size="25"id="per" value="<%= res.getString(12) %>">
<tr><td><b>RESULT:&nbsp;</b><td><input type="text"  name="rtype"size="25" id="rtype"value="<%= res.getString(13) %>">
</td></tr>
<td><center><input type="submit" value="UPDATE" onclick="add()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" value="CLEAR"></center>
</table>
</form>
<%  

}
}catch(Exception e){
	System.out.println("Exception");
}



%><p>
<a href="update.html"><h3 align="CENTER" color="red" FONT="7">BACK TO UPDATE</h3></a>
<a href="2htup.html"><h3 align="CENTER" color="red" FONT="7">BACK TO MARKS DETAILS</h3></a>
</p></body>
</html>