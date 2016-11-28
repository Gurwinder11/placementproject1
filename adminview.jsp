<%-- 
    Document   : adminview
    Created on : Nov 13, 2016, 12:47:19 PM
    Author     : dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
 <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" type="text/css" href="usereglink.css" media="screen" />

  <title></title>
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
 <li><a href="placementenrollment.jsp">Placements Enrollment</a></li>
    <li><a href="adminview.jsp">View Placements</a></li>
<li><a href="adminupcoming.jsp">Add Upcoming Placements</a></li>
<li><a href="placedstudents.jsp">Add placed Students</a></li>
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


            
