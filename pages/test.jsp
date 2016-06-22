<%@page import="bean.TestBean"%>
<%@page import="delegate.TestDelegate"%>
<%@page import="bean.UserBean"%>
<%@page import="bean.StudentBean"%>
<%@page import="delegate.StudentDelegate"%>
<html>
<head>
<title>Student Login</title>
<script type="text/javascript" src="facultypage.js"></script>
<script language="JavaScript">

var time = null;
function openPopup(a){
var url = 'test1.jsp?i='+a;
                         child=window.open(url,'childWin','height=650,width=820,left = 350,top = 350');
                         
			}
function result(){

      location.href="result.jsp"
                           
			}

function move() {
window.location = 'result.jsp'
}
</script>
<script language="Javascript">
setInterval("settime()", 1000);
 
function settime () {
  var curtime = new Date();
  var curhour = curtime.getHours();
  var curmin = curtime.getMinutes();
  var cursec = curtime.getSeconds();
  var time = "";
 
  if(curhour == 0) curhour = 12;
  time = (curhour > 12 ? curhour - 12 : curhour) + ":" +
         (curmin < 10 ? "0" : "") + curmin + ":" +
         (cursec < 10 ? "0" : "") + cursec + " " +
         (curhour > 12 ? "PM" : "AM");
 
  document.TestForm.clock.value = time;
}
</script>

<script language="Javascript">
window.history.forward();     
function noBack() { window.history.forward(); 
}
</script> 

<script src="jquery-1.3.2.min.js" type="text/javascript"></script>
<script type="text/javascript" src="sliding_effect.js"></script>
<script type="text/javascript" src="jquery-color.js"></script>
<link href="lightBoxPopup.css" rel="stylesheet" type="text/css" media=screen>   
<link rel="stylesheet" href="godavari.css" type="text/css" media="screen">
<link rel="stylesheet" type="text/css" href="styles.css" />
<link rel="stylesheet" href="main.css" type="text/css" media="screen">
</head>
<body onload="timer=setTimeout('move()',6000000)" onload="noBack();"    onpageshow="if (event.persisted) noBack();" onunload="">
<div id=topborder></div>
<form name="TestForm"  method="get" >
<h1>Online Test</h1>
<font color="white" size="4px"><b>Success is the sum of small efforts, repeated day in and day out.</b></font><br><br>
<%
  String studName;
  studName=request.getParameter("studentName"); 
%>
<font color="white" size="5px"> Welcome &nbsp;&nbsp;<%=studName%>,</font>
<br><br><div align="right"><b><font color="white" size="4px"> Time : &nbsp;&nbsp;<input type="text" name="clock" style="border: 0px" value=" "></font></b></div>
<br>
<b><i><font color="white" size="5px">Question:&nbsp;</font></i></b>
<br><br>
<%! public int count=0;  
    public int i=0;
	
%>

<%
   int user_key;
   int a=11;        
   String subName,rno;
   rno=request.getParameter("rollNo");
   subName=(String)session.getAttribute("subjectName");
   String result="0"; 	
   UserBean userBean=new UserBean();
   userBean=(UserBean)session.getAttribute("userBean");
   user_key =userBean.getUserKey();
   System.out.println("User Key :"+user_key);
   session.setAttribute("studentName",studName);
   session.setAttribute("result",result);
 
 
   try{
    	StudentBean studentBean=new StudentBean();
    	StudentDelegate studentDelegate=new StudentDelegate();
    	String studentName=request.getParameter("studentName");
    	String subjectName1=request.getParameter("subject");
    	String branch=request.getParameter("branch");

    	studentBean.setStudent_name(studentName);
    	studentBean.setSubject_name(subjectName1);
         	
    	studentBean.setResult(result);
    	studentBean.setUser_key(user_key);
    	studentBean.setRollNo(rno);
        studentBean.setBranch(branch);
        
    	studentDelegate.insertStudentData(studentBean);
    	session.setAttribute("StudentBean",studentBean);
    	
    	
    	
   int c=(Integer)session.getAttribute("TestKey");
   System.out.println("&&& c :"+c);
   TestBean testBean=new TestBean();
   TestDelegate testDelegate =new TestDelegate();
   
   count=testDelegate.getCountQuestion(c);
   System.out.println("&&& Count:"+count);
   String subjectName=(String)session.getAttribute("subjectName");
   testBean = testDelegate.getTestBySubjectName(subjectName);
         
   for(i=1;i<=count;i++){
%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
<%if(i==a)
{
%> <br> <br> <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<% a=10+a; 
System.out.println("i="+i);
}%>
     
<input type="button" class="button" name="<%=i%>" id="<%=i%>"  value="<%=i%>" onclick=openPopup(value);>&nbsp;&nbsp;


<%}%>
<br><br><br>
<center><input type="button" class="button"  value="Submit Result" onclick=result();>&nbsp;&nbsp;&nbsp;

<%  }
  catch(Exception e){
System.out.println("Exception in test.jsp :"+e);
}
 %>
<br><br><br>

</form>	

</body>
</html>
 