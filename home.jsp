<%-- 
    Document   : home
    Created on : Nov 6, 2016, 9:55:09 AM
    Author     : dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.lang.String"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>

<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>BTES Placement Portal</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="home.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="content">
<!-- header begins -->
	<div id="menu">
            
            
		<ul>
			<li id="button1"><a href="home.jsp"  title="">Home</a></li>
			
			<li id="button2"><a href="#" title="">Gallery</a></li>
			
			<li id="button3"><a href="Contact.jsp" title="">Contact</a></li>
		</ul>
	</div>

<!-- header ends -->
<!-- content begins -->
<div id="main">
	<div id="right">
	<div id="header">
	<div id="logo">
		
	</div>
	</div>
	<h4>BTES Placement Services</h4>
	<img src="images/pic01.jpg" alt="" title="" style=" float:right; padding-right: 20px; padding-left:15px;"/>
		
			<p>Bebo Technologies Pvt. Ltd., an ISO 9001:2008 compliant company, has emerged into providing practical training on various software technologies under the banner of bebo Technical Education Services (BTES).
                        Along with training Bebo also ensure about the placements of Students.It basically aim to transform the student into
                        valuable human resource for the Bebo Technologies.As the primary emphasis is to accomodate student in the Bebo itself But along with
                        that it have tie ups with various companies so that student will be able to place in reputed company.
                        </p>
			    
                <br />
			     
				
<h4>Company Tie ups</h4>
<div id="rightright">
			
    <img src="images/Placement1.jpg"  style="width:304px;">

</div>

<div id="rightleft">

   <img src="images/Placement2.jpg"  style="width:304px;">
    
</div>

	</div>
	<div id="left">
	<div id="left_top"></div>
	<div class="leftbg">
			<h3>Login</h3>
			<form name="f1" method="post" action="home.jsp" >
        <table>
            <tr>
                <td class="f1_label">User Name :</td><td><input type="text" name="name"/>
                </td>
            </tr>
            <tr>
                <td class="f1_label">Password  :</td><td><input type="password" name="pwd"/>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" name="login" value="login" style="font-size:14px;   " />
                </td>
                <td>
                    <a href="loginregister.jsp">Register</a>
                </td>
            </tr>
        </table>
    </form> 
	</div>
	<div class="leftbg">
		  <h3>Placements</h3>
		<div class="comnews">
			<a href="#">05-11-2009</a>
			
	
		</div>
<div class="lefthr"></div>

	</div>
	</div><div style="clear:both;">
<!--content ends -->
<!--footer begins -->
	</div>
<div id="footer">
<p> <a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a> | <a href="" title=""> 
	<p>Design by <a href="" title="Flash Templates">Flash Templates</a>
		</p>
	</div></div>
</div>
<!-- footer ends-->
</body>
</html>

<!-- code for login page-->

<%
    if(request.getParameter("login")!=null){
      String h= request.getParameter("name");
      String g=request.getParameter("pwd");
            
      try
{
Class.forName("com.mysql.jdbc.Driver");

  java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
 java.sql.PreparedStatement ps=con.prepareStatement("select * from loginreg where name=? and pwd=?");
 ps.setString(1, h);
 ps.setString(2, g);
 ResultSet rs =ps.executeQuery();
if(rs.next()){
    String v=rs.getString("name");
    String a=rs.getString("pwd");

if(v.equals(h) && a.equals(g))
{
    if(v.equals("shikhi"))
            {
    RequestDispatcher rd=request.getRequestDispatcher("Admin.jsp");  
        rd.forward(request, response);  

}
else
    {
   RequestDispatcher rd=request.getRequestDispatcher("userreglink.jsp");  
        rd.forward(request, response);  
}
}
else
{
    out.print("Again Login");
   RequestDispatcher rd=request.getRequestDispatcher("home.jsp");  
        rd.forward(request, response);  

}
}
}catch(Exception e)
{
e.printStackTrace();
}
    }
%>

