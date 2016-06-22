<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="delegate.TestDelegate"%>
<%@page import="delegate.StudentDelegate"%>
<%@page import="bean.StudentBean"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
   try{
       
	   StudentBean studentBean=new StudentBean();
	   TestDelegate delegate=new TestDelegate();
	   StudentDelegate studentDelegate=new StudentDelegate();
	   int test_key=(Integer)session.getAttribute("test_key");
  System.out.println("Test KeY :"+test_key);
	   String s_ans=request.getParameter("ans");
	   delegate.updateStudentAnswer(s_ans,test_key);
           
	  
	   studentBean=(StudentBean)session.getAttribute("StudentBean");
	   String rno=studentBean.getRollNo();
	   String studentName=studentBean.getStudent_name();
           System.out.println("Test KeY ,rno,name:"+test_key +rno+studentName); 
	   int oldResult=studentDelegate.getOldResult(rno,studentName);
	   System.out.println("OLD ReSulT: "+oldResult);
	   int result = studentDelegate.getResult(rno,studentName,test_key,oldResult);
	   System.out.println("Result :"+result);
	   delegate.insertAttempt(test_key,studentBean.getRollNo(),studentBean.getStudent_name());
	   
	   
	   
	   %>

     
    		


  
 <%  }
   catch(Exception e){
	   System.out.println("Exception Occure in _test.jsp");
   }
%>
  <script type="text/javascript">
         window.close();
  </script>
</body>
</html>