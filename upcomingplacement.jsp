<%-- 
    Document   : upcomingplacement
    Created on : Nov 12, 2016, 11:29:54 AM
    Author     : dell
--%>

<%@page import="java.sql.ResultSetMetaData"%>
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
 <link rel="stylesheet" type="text/css" href="placementenrollment.css" media="screen" />
</head>
<body>

<div id="header">
<h1>Welcome</h1>
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

     <table cellpadding="2" width="50%" bgcolor="" align="center"
cellspacing="2" >

<tr>
<td colspan=2>
<center><font size=4><b>Upcoming Placements</b></font></center>
</td>
 </tr>
     </table>   
    <table cellpadding="2" width="20%" bgcolor="" align="center"
           cellspacing="2" border="1">
 
<tr>
<td align="center"><b>Company Name</b></td>
<td align="center"><b>Keyskills</b></td>
<td align="center"><b>Experience</b></td>
<td align="center"><b>Location</b></td>
<td align="center"><b>Date</b></td>
</tr>
 


    
<%
  try
{
Class.forName("com.mysql.jdbc.Driver");

  java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
 java.sql.PreparedStatement ps=con.prepareStatement("select * from upcomingplacements");

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
 </div>
</div>
</body>
</html>   