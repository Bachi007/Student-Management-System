<%@page  import="java.sql.*"%>
<body background="img/9.jpg">
<%
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","cms","cms");
PreparedStatement stmt=con.prepareStatement("insert into res values(?,?,?,?,?,?,?,?,?,?,?)");
String n=request.getParameter("name").trim();
String h=request.getParameter("hall").trim();
String b=request.getParameter("dept").trim();
int s1=Integer.parseInt(request.getParameter("sem1").trim());
int s2=Integer.parseInt(request.getParameter("sem2").trim());
int s3=Integer.parseInt(request.getParameter("sem3").trim());
int s4=Integer.parseInt(request.getParameter("sem4").trim());
int s5=Integer.parseInt(request.getParameter("sem5").trim());
int s6=Integer.parseInt(request.getParameter("sem6").trim());
String r=request.getParameter("result").trim();
float g=Float.parseFloat(request.getParameter("gpa").trim());
stmt.setString(1,n);
stmt.setString(2,h);
stmt.setString(3,b);
stmt.setInt(4,s1);
stmt.setInt(5,s2);
stmt.setInt(6,s3);
stmt.setInt(7,s4);
stmt.setInt(8,s5);
stmt.setInt(9,s6);
stmt.setString(10,r);
stmt.setFloat(11,g);
stmt.execute();
out.println("<font color='black' size='6'><center>successfully inserted the Result details</center></font>");
%>
<a href="adminhome.html"><h3 align="CENTER" color="red" FONT="7">BACK TO ADMIN</h3>></a>
</body>