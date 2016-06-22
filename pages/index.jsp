<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Godavari college of Engineering</title>
<script language="JavaScript">

function loginStartup(){
   document.loginForm.userName.focus();
}


</script>
<link rel="stylesheet" href="main.css" type="text/css" media="screen">
</head>
<body style="background-color:#bbaab4;" onload="loginStartup();">

<img src="title.jpg" width="1000" height="80"></img>
<h1>online Test</h1>
<font color="white" size="4px"><b>Success is the sum of small efforts, repeated day in and day out.</b></font>
<br><br>
<img src="Exam.jpg" width="500" height="300"></img>
<div style="position:absolute;left:750px;top:190px;BORDER-RIGHT: #2a2a2a 6px solid;PADDING-RIGHT: 3px;BORDER-TOP: #2a2a2a 2px solid;PADDING-LEFT: 4px;FLOAT:left;MARGIN-BOTTOM: 10px;PADDING-BOTTOM: 8px;BORDER-LEFT: #2a2a2a 2px solid;MARGIN-RIGHT: 10px;PADDING-TOP: 3px;BORDER-BOTTOM: #2a2a2a 6px solid;background-color:#806D7E;">

<br><h2 align="center"><i><font color="White">&nbsp;Sign in.......</font></i></h2>

<form name="loginForm" action="_validate.jsp" method="post" >
<table>
<tr>

	<td><b>Faculty name:&nbsp;</b></td>
	<td><input type="text" name="userName"><br></td>				 
</tr>
<tr>
	<td align="right"><br><b>Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</b></td>
	<td><input type="password" name="passWord"><br></td>
</tr>
<tr>
	<td colspan="3" align="center"><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" class="button" value="Sign In" onclick="validate_form();">&nbsp;&nbsp;
	<input type="reset"  class="button" value="Reset"><br></td>
</tr>

</table>
</form>			
</div>
<div align="right"><br><b><font color="white"> Developed By:&nbsp;&nbsp;</font>Ankita Kolhe<br><font color="white">Guided by: </font>Prof. Umesh Bhadade Sir.</b></font></div>
</body>
