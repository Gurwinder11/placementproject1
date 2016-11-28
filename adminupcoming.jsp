<%-- 
    Document   : adminupcoming
    Created on : Nov 13, 2016, 12:48:02 PM
    Author     : dell
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
 <link rel="stylesheet" type="text/css" href="usereglink.css" media="screen" />

</head>
<body>
<div id="header">
<h1>Welcome</h1>
 <div id="menu">
     <ul><li>            
          <a href="logout.jsp" title="" >Logout</a>
         </li></ul>	
	</div>   
    </div>

<div id="wrapper">
<div id="leftColumn">
<div id="navcontainer">
<ul id="navlist">

<li id="active"><a href="placementenrollment.jsp" id="current">Placements Enrollment</a></li>
<li><a href="adminview.jsp">View Placements</a></li>
<li><a href="adminupcoming.jsp">Add Upcoming Placements</a></li>
<li><a href="placedstudents.jsp">Add placed students</a></li>
</ul>
</div>
</div>


<div id="centerColumn">
<form action="adminupcoming.jsp" method="post">
<table cellpadding="2" width="20%" bgcolor="" align="center"
cellspacing="2">

<tr>
<td colspan=2>
<center><font size=2><b> Add Upcoming Placements</b></font></center>
</td>
</tr>

<tr>
<td>Company Name</td>
<td><input type="text" name="name"  size="30"></td>
</tr>

<tr>
<td>Keyskills</td>
<td><input type="text" name="keyskill"  size="30"></td>
</tr>

<tr>
<td>Experience</td>
<td><input type=" text" name="Experience" 
size="30"></td>
</tr>

<tr>
<td> Location</td>
<td><input type="text" name="location"  size="30"></td>
</tr>

<tr>
<td>Date</td>
<td><input type="date" name="date" size="30"></td>
</tr>


<tr>
<td colspan="2" align="center">
<input type="submit" name="submit" value="submit">
<input type="reset" value="Reset">
</td>
</tr>   
    
</table>
</form>
</div>
</div>
</body>
</html>
<%
    
    if(request.getParameter("submit")!=null)
    {
    String a= request.getParameter("name");
    String b=request.getParameter("keyskill");
    String c=request.getParameter("Experience");
    String d= request.getParameter("location");
    String e= request.getParameter("date");
    
     try
{
Class.forName("com.mysql.jdbc.Driver");

  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
 PreparedStatement ps=con.prepareStatement("insert into upcomingplacements values(?,?,?,?,?)");
    ps.setString(1,a);
    ps.setString(2,b);
    ps.setString(3,c);
    ps.setString(4,d);
    ps.setString(5,e);
   
   
    int v=ps.executeUpdate();

    
      if(v>0)
      {
    
   RequestDispatcher rd=request.getRequestDispatcher("placementsadded.jsp");  
        rd.forward(request, response);   
      }
   }
catch(Exception z)
{
    z.printStackTrace();
}
    }
    %>