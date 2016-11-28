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

  <li id="active"><a href="userreglink.jsp" id="current">Enroll For Placement</a></li>

  <li><a href="viewplacement.jsp">View Placements</a></li>

  <li><a href="upcomingplacement.jsp">Upcoming Placements</a></li>

  </ul>
</div>
</div>


<div id="centerColumn">

<form action="userreglink.jsp" method="post">

<table cellpadding="2" width="20%" bgcolor="" align="center" cellspacing="2">
<tr>
<td colspan=2>
<center><font size=4><b>Student Registration Form</b></font></center>
</td>
</tr>

<tr>
<td colspan=2>
<center><font size=2><b>Form Filling is Mandatory</b></font></center>
</td>
</tr>

<tr>
<td>Interested in Placements</td>
<td><select name="interested">
  <option value="yes">Yes</option>
  <option value="No">No</option>
  
    </select></td>
</tr>

<tr>
<td>Name</td>
<td><input type="text" name="name"  size="30" required></td>
</tr>

<tr>
<td>Father Name</td>
<td><input type="text" name="fname"  size="30" required></td>
</tr>

<tr>
<td>Registration Id</td>
<td><input type=" text" name="id"  size="30" required></td>
</tr>

<tr>
<td>Technology</td>
<td><input type=" text" name="Tech"  size="30" required></td>
</tr>

<tr>
<td>DOB</td>
<td><input type="text" name="dob"  size="30" required></td>
</tr>

<tr>
<td>Sex</td>
<td><input type="radio" name="sex" value="male" size="10">Male
<input type="radio" name="sex" value="Female" size="10">Female</td>
</tr>

<tr>
<td> Address</td>
<td><textarea name="Address" rows="4" cols="30"></textarea></td>
</tr>


<tr>
<td> Pincode</td>
<td><input type="text" name="pincode"  size="30"></td>
</tr>

<tr>
<td>MobileNo</td>
<td><input type="text" name="mobileno"  size="30" required></td>
</tr>
<tr>
<td>Alternate Number</td>
<td><input type="text" name="ano"  size="30" required></td>

</tr>
<tr>
<td>EmailId</td>
<td><input type="email" name="emailid"  size="30"></td>
</tr>

<tr>
<td>Qualification
</td>
 
<td>
<table>
 
<tr>

<td align="center"><b>Class</b></td>

<td align="center"><b>Percentage</b></td>
</tr>
 
<tr>

<td>Class X</td>
<td><input type="text" name="Percent10" maxlength="30" /></td>
</tr>
 
<tr>

<td>Class XII</td>
<td><input type="text" name="Percent12" maxlength="30" /></td>
</tr>
 
<tr>

<td>Diploma</td>
<td><input type="text" name="diploma" maxlength="30" /></td>
</tr>
 
<tr>

<td>B.tech.</td>
<td><input type="text" name="graduation" maxlength="30" /></td>
</tr>


</table>

<tr>
<td>Is there any backlog</td>
<td><select >
  <option value="yes">Yes</option>
  <option value="No">No</option>
  
    </select></td>
</tr>
    <tr>
<td>Number of <b> Backlogs</b></td>
<td><input type="text" name="number" size="30" /></td>
</tr>

<tr>
<td>Reason for Backlogs</td>
<td><textarea name="Reason" rows="3" cols="30"></textarea></td>
</tr>


    
<tr>
<td>Any other Course Completed
</td>
 
<td>
<table>
 
<tr>
<td align="center"><b>Course Name</b></td>
<td align="center"><b>Institute Name</b></td>
<td align="center"><b>Place</b></td>
<td align="center"><b>Year</b></td>

</tr>
 
<tr>
<td><input type="text" name="cname" maxlength="30" /></td>
<td><input type="text" name="iname" maxlength="30" /></td>
<td><input type="text" name="place" maxlength="30" /></td>
<td><input type="text" name="year" maxlength="30" /></td>

</tr>
 
<tr>
<td><input type="text" name="course Name" maxlength="30" /></td>
<td><input type="text" name="iname" maxlength="30" /></td>
<td><input type="text" name="place" maxlength="30" /></td>
<td><input type="text" name="year" maxlength="30" /></td>

</tr>


</table>

<tr>
<td>Summer Training Organisation
</td>
 
<td>
<table>
 
<tr>
<td align="center"><b>Name Of Company</b></td>
<td align="center"><b>Trainer's Name</b></td>
<td align="center"><b>Place</b></td>
<td align="center"><b>Project Title</b></td>

</tr>
 
<tr>
<td><input type="text" name="company" maxlength="30" /></td>
<td><input type="text" name="Tname" maxlength="30" /></td>
<td><input type="text" name="Place" maxlength="30" /></td>
<td><input type="text" name="title" maxlength="30" /></td>

</tr>
 
<tr>
<td><input type="text" name="company" maxlength="30" /></td>
<td><input type="text" name="tname" maxlength="30" /></td>
<td><input type="text" name="place" maxlength="30" /></td>
<td><input type="text" name="title" maxlength="30" /></td>
</tr>
</table>
    
<tr>
    <td><b>Not Interested in Placement State Reason</b></td>
<td><textarea name="PReason" rows="3" cols="30"></textarea></td>
</tr>

<tr>
<td></td>
<td><input type="checkbox" name="agree" id="agree" size="30">
The information provided by me is true and correct to the best of my knowledge, and I am responsible for all information mentioned above </td>
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

<!--//end #wrapper -->
<!--footer begins -->


        </div>

</body>
</html>
<!-- database for table-->
<%
    if(request.getParameter("submit")!=null)
    { 
    String a= request.getParameter("name");
     String b= request.getParameter("fname");
    String c=request.getParameter("id");
    String d=request.getParameter("Tech");
    String e= request.getParameter("dob");
    String f=request.getParameter("sex");
    String g= request.getParameter("Address");
    String h=request.getParameter("pincode");
    String i= request.getParameter("mobileno");
    String j= request.getParameter("ano");
    String k=request.getParameter("emailid");
    String l= request.getParameter("number");
    String m= request.getParameter("Reason");
    String n=request.getParameter("PReason");
    String o=request.getParameter("interested");
     try
{
Class.forName("com.mysql.jdbc.Driver");

  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
 PreparedStatement ps=con.prepareStatement("insert into studentreg values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    ps.setString(1,a);
    ps.setString(2,b);
    ps.setString(3,c);
    ps.setString(4,d);
    ps.setString(5,e);
    ps.setString(6,f);
    ps.setString(7,g);
    ps.setString(8,h);
    ps.setString(9,i);
    ps.setString(10,j);
    ps.setString(11,k);
    ps.setString(12,l);
    ps.setString(13,m);
    ps.setString(14,n);
     ps.setString(15,o);
    
     int v=ps.executeUpdate();

    
      if(v>0);
      {
        RequestDispatcher rd=request.getRequestDispatcher("Regmessage.jsp");  
        rd.forward(request, response);
      }
   }
catch(Exception z)
{
    z.printStackTrace();
}
    }
          
    %>
    <!-- database for qualification -->
  <%
    if(request.getParameter("submit")!=null)
    { 
    String a= request.getParameter("Percent10");
     String b= request.getParameter("Percent12");
    String c=request.getParameter("diploma");
    String d=request.getParameter("graduation");
    
     try
{
Class.forName("com.mysql.jdbc.Driver");

  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
 PreparedStatement ps=con.prepareStatement("insert into qualification values(?,?,?,?)");
    ps.setString(1,a);
    ps.setString(2,b);
    ps.setString(3,c);
    ps.setString(4,d);
    
    int v=ps.executeUpdate();

    
      if(v>0);
      {
         RequestDispatcher rd=request.getRequestDispatcher("Regmessage.jsp");  
        rd.forward(request, response);
         
      }
   }
catch(Exception z)
{
    z.printStackTrace();
}
    }
          
    %>
      
    <!--database for course complete -->
    
  <%
    if(request.getParameter("submit")!=null)
    { 
    String a= request.getParameter("cname");
     String b= request.getParameter("iname");
    String c=request.getParameter("place");
    String d=request.getParameter("year");
    
     try
{
Class.forName("com.mysql.jdbc.Driver");

  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
 PreparedStatement ps=con.prepareStatement("insert into coursecomplete values(?,?,?,?)");
    ps.setString(1,a);
    ps.setString(2,b);
    ps.setString(3,c);
    ps.setString(4,d);
    
    int v=ps.executeUpdate();

    
      if(v>0);
      {
           RequestDispatcher rd=request.getRequestDispatcher("Regmessage.jsp");  
        rd.forward(request, response);
          
      }
   }
catch(Exception z)
{
    z.printStackTrace();
}
    }
          
    %>
      
    <!--database for summer training organisation -->
    
  <%
    if(request.getParameter("submit")!=null)
    { 
    String a= request.getParameter("company");
     String b= request.getParameter("tname");
    String c=request.getParameter("place");
    String d=request.getParameter("title");
    
     try
{
Class.forName("com.mysql.jdbc.Driver");

  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
 PreparedStatement ps=con.prepareStatement("insert into summertorg values(?,?,?,?)");
    ps.setString(1,a);
    ps.setString(2,b);
    ps.setString(3,c);
    ps.setString(4,d);
    
    int v=ps.executeUpdate();

    
      if(v>0);
      {
           RequestDispatcher rd=request.getRequestDispatcher("Regmessage.jsp");  
        rd.forward(request, response);
          
      }
   }
catch(Exception z)
{
    z.printStackTrace();
}
    }
          
    %>
      
    
    
    
    
    
    
    
    
    
    
    
    
    
    