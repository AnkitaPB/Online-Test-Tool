<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="bean.StudentBean"%>
<%@page import="dao.StudentDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dao.TestDAO"%>
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
<div id=topborder></div>
<h1>Test Review</h1>
<%
String studentName=request.getParameter("studentName");
String subjectName1=request.getParameter("subject");

%>

<font color="white" size="6px">Attempted Question:<br>
<%
    	
try{
	StudentBean studentBean=new StudentBean();

 studentBean=(StudentBean)session.getAttribute("StudentBean");
	TestDAO delegate=new TestDAO();
	
	ResultSet rs=delegate.getAttempt(studentBean.getRollNo(),studentBean.getStudent_name());
        while(rs.next())

           out.println(rs.getInt("test_key"));
	
}
catch (Exception e){
	System.out.println("Exception Occured in review.jsp: "+e);
	
}%>
</font>
</body>
</html>