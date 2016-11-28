<%-- 
    Document   : placementreglink
    Created on : Nov 9, 2016, 6:04:19 PM
    Author     : dell
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
    
 <meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="usereglink.css" media="screen" />

  <title></title>
</head>

<body >

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
<form action="" method="post">

<table cellpadding="2" width="20%" bgcolor="" align="center"
cellspacing="2">

<tr>
<td colspan=2>
<center><font size=4><b>Students are successfully added</b></font></center>
</td>
</tr>
</table>
</form>
</div>
</div>
</body>
</html>