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

  <li id="active"><a href="Reglink.jsp" id="current">Enroll For Placement</a></li>

  <li><a href="viewplacement.jsp">View Placements</a></li>

  <li><a href="upcomingplacement.jsp">Upcoming Placements</a></li>

  </ul>
</div>
</div>



<div id="centerColumn">

    <form>

<table cellpadding="2" width="20%" bgcolor="" align="center" cellspacing="2">

<tr>
<td colspan=2>
<center><font size=4><b>You are Successfully Registered</b></font></center>
</td>
</tr>
</table>
 </form>
</div>
</body>
</html>
