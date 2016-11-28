<%-- 
    Document   : 2016
    Created on : Nov 12, 2016, 11:09:17 AM
    Author     : dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="2016.css" media="screen" />
</head>
<body>
<div id="header">
<h1>Welcome</h1>
<h3> </h3>
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
 <li id="active"><a href="userreglink.jsp" id="current">Enroll For Placement</a></li>
 <li><a href="viewplacement.jsp">View Placements</a></li>
<li><a href="upcomingplacement.jsp">Upcoming Placements</a></li>
</ul>
</div>
</div>







<div id="centerColumn">
<table cellpadding="2" width="20%" bgcolor="" align="center"
cellspacing="2">

<tr>
<td colspan=2>
<center><font size=4><b>2016</b></font></center>
</td>
</tr>


<td>
<table id="myTable" border="1" cellpadding="2">
 <tr>
<td align="center"><b>Id</b></td>
<td align="center"><b>Name</b></td>
<td align="center"><b>Technology</b></td>
<td align="center"><b>Company</b></td>
<td align="center"><b>Offer Letter</b></td>
</tr>
 


<%
  try
{
Class.forName("com.mysql.jdbc.Driver");

  java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
 java.sql.PreparedStatement ps=con.prepareStatement("select * from placedstudents");

 ResultSet rs =ps.executeQuery();


while (rs.next()) {
       %>
                  
                 <tr>    
                 <td>&nbsp;<%=rs.getString(1)%></td>
                 <td>&nbsp;<%=rs.getString(2)%></td>
                 <td>&nbsp;<%=rs.getString(3)%></td>
                 <td>&nbsp;<%=rs.getString(4)%></td>
                 <td>&nbsp;<%=rs.getString(5)%></td>
                  </tr>
   
                 <% }
}catch(Exception e)
{
e.printStackTrace();
}
    
  %>

</table>
</table>
</div>
</div>
</body>
</html>
