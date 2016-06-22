<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="bean.UserBean"%>
<%@page import="delegate.UserDelegate"%>
<html>
<head>
<title>Godavari College of Engineering, Jalgaon</title>
<script src="jquery-1.3.2.min.js" type="text/javascript"></script>
<script type="text/javascript" src="sliding_effect.js"></script>
<script type="text/javascript" src="jquery-color.js"></script>
<script type="text/javascript" src="facultypage.js"></script>

<script language="JavaScript">

function redirect_rep()
{
location.href="report.jsp";
}
</script>
<link href="lightBoxPopup.css" rel="stylesheet" type="text/css" media=screen>   
<link rel="stylesheet" href="godavari.css" type="text/css" media="screen">
<link rel="stylesheet" type="text/css" href="styles.css" />

</head>
<body>
<div id=topborder></div>
<h1>Faculty </h1>
<font color="white" size="4px"><b>Success is the sum of small efforts, repeated day in and day out.</b></font>

<%
   String subjectName=null;
 try{
 subjectName =request.getParameter("subject_name");
 System.out.println("^^^"+subjectName);
 session.setAttribute("subjectName",subjectName);
 UserDelegate userDelegate=new UserDelegate();
 int test_key=userDelegate.getTestKeyBySubject(subjectName);
 session.setAttribute("TestKey",test_key);
  }
  catch(Exception e){
  System.out.println("Exception occur in faculty.jsp : "+e);
	}
 
%>
<input type="hidden" value="<%=subjectName%>" name="sb">
<div align="right">
<br>
<button class="button" onclick="javascript:redirect_student()">Student Login</button>&nbsp;&nbsp;
<button class="button" onclick="javascript:redirect()">Add Question</button>&nbsp;&nbsp;
<button class="button" onclick="redirect_rep()">Generate Previous Test Report</button>&nbsp;&nbsp;
<button class="button" onclick="javascript:redirect_index()">Log Out</button>&nbsp;&nbsp;

</div>
<br><br>
<table width="1150" cellspacing="2">
<tr>
<td width="200" valign="top">
<div id="navigation-block">



<ul id="sliding-navigation">
 <li class="sliding-element"><h3>Test:</h3></li>
<li class="sliding-element">
 <a><font size="4px"><%=subjectName%></font></a></li>
 

 </ul>
 </div>
 </td>
 
</tr></table><br><br><br>

</body>
</html>
