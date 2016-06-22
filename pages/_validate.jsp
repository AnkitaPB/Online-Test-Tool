<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="delegate.UserDelegate"%>
<%@page import="bean.UserBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.StudentBean"%>
<%@page errorPage="ErrorPage.jsp" %>

<html>
<head>
<title>LOGIN VALIDATION</title>
</head>
<body>
<%


 try
{
   UserDelegate userDelegate = new UserDelegate();   
   String userName=request.getParameter("userName");   
   String passWord=request.getParameter("passWord");
   request.setAttribute("userName",userName);
   request.setAttribute("passWord",passWord);	 	
   //System.out.println("_validate "+ userName);
  // System.out.println("v " + passWord);
   UserBean userBean = new UserBean();
 
 
   userBean=userDelegate.getUserByUserNamePassword(userName,passWord);
  //System.out.println("v " + passWord);  
     session.setAttribute("userBean",userBean);
 System.out.println("v " + userBean.getUserName());
 System.out.println("v " + userBean.getPassword());

  
  if(userBean.getUserName().equals(userName) )
           
  	{
	   if(userBean.getPassword().equals(passWord))
	   { %>
           
    		<jsp:forward page="facultyPage.jsp">
    		<jsp:param name="username" value="<%=userName%>"/>
    		<jsp:param name="subject_name" value="<%=userBean.getSubjectName()%>"/>
    		</jsp:forward>

  	<%}
  	
          else
          {
		 out.println("INVALID USER NAME & PASSWORD");
		  
          }  
 
      }
      else
      {
	 out.println("INVALID USER NAME & PASSWORD");
      }  
}

   catch(Exception e){
   System.out.println("Exception Occure in _Validate page " + e);
}
%>

  

</body>
</html>