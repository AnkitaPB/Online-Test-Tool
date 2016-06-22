<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@page import="delegate.StudentDelegate"%>
<%@page import="bean.StudentBean"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>


<link rel="stylesheet" href="godavari.css" type="text/css" media="screen">
<link rel="stylesheet" type="text/css" href="styles.css" />
<link rel="stylesheet" href="main.css" type="text/css" media="screen">
</head>
<body oncontextmenu="return false;">
<div id=topborder></div>
<br>
<center><h1><u>Result:</u></h1></center>
<font color="white" size="4px"><b>Success is the sum of small efforts, repeated day in and day out.</b></font><br><br>
<div style="position:absolute;left:380px;width:300px;top:160px;BORDER-RIGHT: #2a2a2a 6px solid;PADDING-RIGHT: 3px;BORDER-TOP: #2a2a2a 2px solid;PADDING-LEFT: 4px;FLOAT:left;MARGIN-BOTTOM: 10px;PADDING-BOTTOM: 8px;BORDER-LEFT: #2a2a2a 2px solid;MARGIN-RIGHT: 10px;PADDING-TOP: 2px;BORDER-BOTTOM: #2a2a2a 6px solid;background-color:#806D7E;">

<br><br>
<%
  try{
  StudentDelegate delegate  =new StudentDelegate();
  
   StudentBean studentBean=new StudentBean();
   studentBean=(StudentBean)session.getAttribute("StudentBean");
   
  String studentName=studentBean.getStudent_name();
  String rno=studentBean.getRollNo();
  String result=null;
  System.out.println("Final REsult ");
  int res =delegate.result(studentName,rno);
  System.out.println("Final REsult "+res);%>
   <center>
   <b><font color="white"> Roll Number :&nbsp;&nbsp;&nbsp;&nbsp;<%=rno%>  <br><br>
   <b> Student Name:&nbsp;&nbsp;&nbsp;&nbsp;<%=studentName%><br><br>
   <b> Result:&nbsp;&nbsp;&nbsp;&nbsp;<%=res%><br></font></center>


  
  <%}
  catch(Exception e){
	   System.out.println("Exception e"+e);
	  
  }


%><br><br>
</div>
</body>
</html>
