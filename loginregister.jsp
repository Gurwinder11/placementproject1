<%-- 
    Document   : loginregister
    Created on : Nov 14, 2016, 3:32:29 PM
    Author     : dell
--%>

<%@page import="java.lang.Exception"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        
    </head>
    <body>
       
             <form action="loginregister.jsp" method="post">

<table cellpadding="2" width="20%" bgcolor="" align="center" 
cellspacing="2">

<tr>
<td colspan=2>
<center><font size=6><b> Register Yourself</b></font></center>
</td>
</tr>

<tr>
<td>Username</td>
<td><input type="text" name="name"  size="30"></td>
</tr>

<tr>
<td>Registration Id</td>
<td><input type="text" name="id" size="30"></td>
</tr>

<tr>
<td>Technology</td>
<td><input type=" text" name="Tech" size="30"></td>
</tr>

<tr>
<td>Password</td>
<td><input type="text" name="Pwd" size="30"></td>
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
<td><input type="text" name="Pincode"  size="30"></td>
</tr>

<tr>
<td>MobileNo</td>
<td><input type="text" name="mobileno"  size="30"></td>
</tr>

<tr>
<td>EmailId</td>
<td><input type="email" name="emailid"  size="30"></td>
</tr>

<tr>
<td colspan="2" align="center">
<input type="submit" name="submit" value="submit">
<input type="reset" value="Reset">
</td>
</tr>   
    
</table>
</form>
    </body>
</html>
<%
    if(request.getParameter("submit")!=null)
    {
    String a= request.getParameter("name");
    String b=request.getParameter("id");
    String c=request.getParameter("Tech");
    String d= request.getParameter("Pwd");
    String e=request.getParameter("sex");
    String f= request.getParameter("Address");
    String g=request.getParameter("Pincode");
    String h= request.getParameter("mobileno");
    String i=request.getParameter("emailid");
   
     try
{
Class.forName("com.mysql.jdbc.Driver");

  java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
 java.sql.PreparedStatement ps=con.prepareStatement("insert into loginreg values(?,?,?,?,?,?,?,?,?)");
    ps.setString(1,a);
    ps.setString(2,b);
    ps.setString(3,c);
    ps.setString(4,d);
    ps.setString(5,e);
    ps.setString(6,f);
    ps.setString(7,g);
    ps.setString(8,h);
    ps.setString(9,i);
    int v=ps.executeUpdate();

    
      if(v>0){
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