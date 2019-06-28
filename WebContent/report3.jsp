
<html>
<head><SCRIPT LANGUAGE="JavaScript">
function checkf(f2){
 
	if(f2.admn.value=="")
		{
		  alert("Plz enter the admn number");
		 f2.admn.focus();
		 f2.admn.value="";
		 return false;
			}
var exp=/^[0-9]+$/ ;
		if(!f2.admn.value.match(exp))
				{
			
			      alert(" enter numbers only");
				  f2.admn.value="";
				  f2.admn.focus();
				  return false;
			
				}

else
	{
	return true;
	}
}
</SCRIPT>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body background="img/9.jpg">
<div id=" ">
<h1>
<center><img src="img/title.jpg"></center></h1>
<a href="reports.jsp">
</div></div>
<div id=" "><center>
<a href="welcome.html"><b>HOME</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="admin.html"><b>ADMIN</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="student.html"><b>STUDENT</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="t1.html"><b>PHOTOGALLERY</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="reports.html"><b>REPORTS</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="contact.html"><b>CONTACT US</b></a>
</center>
</div>
<div id="con">
<center><form action ="stud.jsp"name="f2" onSubmit="return checkf(this)" method="post">
<table>
<tr><td><b>Admission No</b><td><input type="text" name="admno"size="25">
<tr><td><input type="submit" value="submit">
<input type="reset" value="cancel">
</table>

</form></center>

</body>
</html>

