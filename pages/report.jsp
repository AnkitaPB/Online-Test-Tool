<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="bean.StudentBean"%>
<%@page import="dao.StudentDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dao.StudentDAO"%>
<%@page import="bean.Attempt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test Review</title>
<link rel="stylesheet" href="godavari.css" type="text/css" media="screen">
<link rel="stylesheet" type="text/css" href="styles.css" />
<link rel="stylesheet" href="main.css" type="text/css" media="screen">
</head>
<body>
<img src="title.jpg" width="1000" height="80"></img>
<h3>Test Report</h3>
<center><i>Godavari Foundation's</i><br><b>Godavari College Of Engineering, Jalgaon<br> Online Test Report</b></center>
<div align="right"><b>Date:<%= new java.util.Date() %></div></b>


<font color="blue" size="7px">
<table align="center" border=1 hspace=10 vspace=10>
<tr>
<td><b><i>Roll No</i></b></td>
<td><b><i>Student Name</i></b></td>
<td><b><i>Subject</i></b></td>
<td><b><i>Result</i></b></td>
<td><b><i>Branch</i></b></td>
</tr></font>
<%
    	
try{
//	StudentBean studentBean=new StudentBean();

// studentBean=(StudentBean)session.getAttribute("StudentBean");
	StudentDAO delegate=new StudentDAO();
	
	ResultSet rs=delegate.getReport();
              
        while(rs.next()){
%> <tr>
   <font color="black" size="6px">
   <td><% out.println(rs.getString("roll_no"));%></td>

   <td><%  out.println(rs.getString("student_name"));%></td>
   <td><%  out.println(rs.getString("subject"));%></td>
    <td><% out.println(rs.getString("result"));%></td>
    <td><% out.println(rs.getString("branch"));%></td>
	</tr>
	
<%}

          

	
}
catch (Exception e){
	System.out.println("Exception Occured in review.jsp: "+e);
	
}%>
</table>
</font>
</body>
</html>