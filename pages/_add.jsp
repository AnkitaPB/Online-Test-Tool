<%@page import="bean.AddBean"%>
<%@page import="delegate.TestDelegate"%>
<html>
<head>
<title> Godavari College of Engineering, Jalgaon</title>
<script src="jquery-1.3.2.min.js" type="text/javascript"></script>
</head>
<body>
<%
int test_key,mark,subject_key,studentKey=0,i;
String subject,question,op1,op2,op3,op4,ans;
  test_key=Integer.parseInt(request.getParameter("test_key"));
  subject=request.getParameter("subject_name");
  question=request.getParameter("question");
  System.out.println("Question : "+question);
  op1=request.getParameter("op1");
  op2=request.getParameter("op2");
  op3=request.getParameter("op3");
  op4=request.getParameter("op4");
  ans=request.getParameter("ans");
  mark=Integer.parseInt(request.getParameter("mark"));

  AddBean addBean=new AddBean();
  addBean.setTest_key(test_key);
  addBean.setSubject(subject);
  addBean.setQuestion(question);
  addBean.setOp1(op1);
  addBean.setOp2(op2);
  addBean.setOp3(op3);
  addBean.setOp4(op4);
  addBean.setAns(ans);
  addBean.setMark(mark);
  try{

	  TestDelegate testDelegate=new TestDelegate();
	  i=testDelegate.insertQuestion(addBean,test_key);
 	  System.out.println("9999"+test_key);
   if(i!=0)
 {%>
    <jsp:forward page="add.jsp">
    		<jsp:param name="msg" value="Question added"/>
       		</jsp:forward>
	  
<%   }
  }
   catch(Exception e){
    System.out.println("Exception occur in _add.jsp Page: "+e);
}   %>
  

</body>
</html>
