<%-- 
    Document   : placementenrollment
    Created on : Nov 13, 2016, 1:04:32 PM
    Author     : dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<link rel="stylesheet" type="text/css" href="placementenrollment.css" media="screen" />
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
<li id="active"><a href="placementenrollment.jsp" id="current">Placement Enrollment</a></li>
<li><a href="adminview.jsp">View Placements</a></li>
<li><a href="adminupcoming.jsp">Add Upcoming Placements</a></li>
<li><a href="placedstudents.jsp">Add placed Students</a></li>
</ul>
</div>
</div>


<div id="centerColumn">
<table cellpadding="2" width="50%" bgcolor="" align="center"
cellspacing="2" >

<tr>
<td colspan=2>
<center><font size=4><b>Students enrolled for placements</b></font></center>
</td>
 </tr>
     </table>   
    <table cellpadding="2" width="20%" bgcolor="" align="center"
           cellspacing="2" border="1">
 
<tr>
<td align="center"><b>Id</b></td>
<td align="center"><b>Name</b></td>
<td align="center"><b>Technology</b></td>
<td align="center"><b>Interested</b></td>
</tr>


<%
  try
{
Class.forName("com.mysql.jdbc.Driver");

  java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
 java.sql.PreparedStatement ps=con.prepareStatement("select name,id,Tech from studentreg");

 ResultSet rs =ps.executeQuery();


while (rs.next()) {
       %>
                  
                 <tr>    
                 <td>&nbsp;<%=rs.getString(1)%></td>
                 <td>&nbsp;<%=rs.getString(2)%></td>
                 <td>&nbsp;<%=rs.getString(3)%></td>
                 
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
