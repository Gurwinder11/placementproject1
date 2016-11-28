<%-- 
    Document   : placementreglink
    Created on : Nov 9, 2016, 6:04:19 PM
    Author     : dell
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "javax.servlet.RequestDispatcher"%>





<!DOCTYPE html>
<html>
    <head>
        <!--code for agree at end -->
    
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
<div id="left12" style="float: left ; height:20%; margin-left:300px">
             


<!--
<tr>
<td colspan=2>
<center><font size=2><b>Add placed Students</b></font></center>
</td>
</tr>-->

<div id="upload" style="color:red;    height:5%; float:top">
    <form action="upload1" enctype="multipart/form-data" method="post">
    <table>
<tr>
<td>Upload file</td>
<td><input type="file" name="file"  ></td>
<td><input type="submit" value="Upload" name="upload"></td>
<td >    </td>
</tr>
    </table>
    </form>
</div>
<form action="placedstudents.jsp"  method="post">
<table cellpadding="2" width="" bgcolor="" align="center"
cellspacing="2">
<tr>
<td>Name</td>
<td><input type="text" name="name"  size="30" ></td>
</tr>

<tr>
<td>Registration Id</td>
<td><input type=" text" name="id"  size="30" ></td>
</tr>

<tr>
<td>Technology</td>
<td><input type=" text" name="Tech"  size="30" ></td>
</tr>

<tr>
<td>company</td>
<td><input type="text" name="company"  size="30" ></td>
</tr>


<tr>
<td colspan="2" align="center">
<input type="submit" name="submit" value="submit">
<input type="reset" value="Reset">
</td>
</tr>   
    
</table>
             </form></div>
    <div id="right12" style="float: right; height:50px; width:30px; margin-right:150px;">
        
    <%!String s,j="images/Vaibhav.jpg";%>
        <%
            if(request.getAttribute("img")!=null)
            {
     %>
            
            <img src="images/<%=request.getAttribute("img")%>" width="130" height="170"  />
            <%
            }
            else
            {
            
            %>
            <img src="<%=j%>"/>
            <%}%>    
        
        
    </div>
</div>
</div>
            <%
    if(request.getParameter("submit")!=null)
    {
    String a= request.getParameter("name");
    String b=request.getParameter("id");
    String c=request.getParameter("Tech");
    String d= request.getParameter("company");
    String e=request.getParameter("file");
    
     try{
Class.forName("com.mysql.jdbc.Driver");

  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
 PreparedStatement ps=con.prepareStatement("insert into placedstudents values(?,?,?,?,?)");
    ps.setString(1,a);
    ps.setString(2,b);
    ps.setString(3,c);
    ps.setString(4,d);
    ps.setString(5,e);
   
   
    int v=ps.executeUpdate();
    if(v>0)
      {
    
   RequestDispatcher rd=request.getRequestDispatcher("placedstudentsmessage.jsp");  
        rd.forward(request, response);   
      }
   }catch(Exception z)
{
    z.printStackTrace();
}
    
           
    }
    
 %>
 </body>
</html>

 
  
    
    
    
   