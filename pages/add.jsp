
<%@page import="bean.UserBean"%>
<%@page import="delegate.UserDelegate"%>
<html>
<head>
<title> Godavari College of Engineering, Jalgaon</title>
<script src="jquery-1.3.2.min.js" type="text/javascript"></script>
<script type="text/javascript" src="sliding_effect.js"></script>
<script type="text/javascript" src="jquery-color.js"></script>
<script type="text/javascript" src="facultypage.js"></script>
<link href="lightBoxPopup.css" rel="stylesheet" type="text/css" media=screen>   
<link rel="stylesheet" href="godavari.css" type="text/css" media="screen">
<link rel="stylesheet" type="text/css" href="styles.css" />
<link rel="stylesheet" href="main.css" type="text/css" media="screen">
</head>
<body>
<div id=topborder></div>

<center><h1> Add Question</h1></center>
<div align="right">&nbsp;&nbsp;&nbsp;<button class="button" onclick="javascript:redirect_index()">Log Out</button>&nbsp;&nbsp;</div>

<form method="get" action="_add.jsp">

<b>Enter Question Here:</b> <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


<textarea rows="10" cols="50" name="question">Type question Here.....</textarea>

<br><br>


<%
    int test_key=0;
    String subName=(String)session.getAttribute("subjectName");
   
    System.out.println("$$$$"+subName);
    
    //UserBean userBean=new UserBean();
    //userBean=(UserBean)session.getAttribute("userBean");//    System.out.println("Subject Key"+userBean.getSubject)
    try{
    	UserDelegate userDelegate=new UserDelegate();
    	test_key=userDelegate.getTestKeyBySubject(subName);
   	    System.out.print("hhhh "+test_key);
    }
    catch(Exception e){
    	System.out.println("Exception occur in add.jsp : "+ e);
    }
    
%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Test No.:</b> <input type="text" name="test_key" value="<%=test_key%>"><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Subject:</b> <input type="text" name="subject_name" value="<%=subName%>"><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Option A:</b> <input type="text" name="op1" value="A:"><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Option B:</b> <input type="text" name="op2" value="B:"><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Option C:</b> <input type="text" name="op3" value="C:"><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Option D:</b> <input type="text" name="op4" value="D:"><br><br>
 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Answer :</b> <input type="text" name="ans"><br><br> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Mark :</b> <input type="text" name="mark"><br><br> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="button" value="Add">&nbsp;&nbsp;
&nbsp;&nbsp;<input class="button" type="reset" value="reset"> &nbsp;&nbsp;

</form>
</body>
</html>
