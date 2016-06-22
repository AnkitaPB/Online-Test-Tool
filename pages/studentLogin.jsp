<%@page import="delegate.TestDelegate"%>
<html>
<head>
<title>Student Login</title>
<script type="text/javascript">
function validate(){
    var name=document.loginForm.studentName.value;
    var rno=document.loginForm.rollNo.value;
  
  
  

    if(rno==null)   
    {
      
      alert("Enter the Name");
  
    }
   

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
<body>
<%
    String subName=(String)session.getAttribute("subjectName");
    System.out.println("$$$$"+subName);
%>
<div id=topborder></div>

<center><h1>Student Login</h1></center>
<font color="white" size="4px"><b>Success is the sum of small efforts, repeated day in and day out.</b></font><br>
<div style="position:absolute;left:590px;top: 110px;BORDER-RIGHT: #2a2a2a 6px solid; PADDING-RIGHT: 3px; BORDER-TOP: #2a2a2a 2px solid; PADDING-LEFT: 4px; FLOAT:left; MARGIN-BOTTOM: 10px; PADDING-BOTTOM: 8px; BORDER-LEFT: #2a2a2a 2px solid; MARGIN-RIGHT: 10px; PADDING-TOP: 3px; BORDER-BOTTOM: #2a2a2a 6px solid; background-color:#806D7E;">
<br><h2 align="center"><i><font color="White">&nbsp;Sign in.......</font></i></h2>
<form name="loginForm" action="test.jsp" method="get" >

<table>
<tr><td><b>Roll No. :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="text" name="rollNo"><br></td></tr>
<tr><td><b><br>Student name:&nbsp;</b><input type="text" name="studentName"><br></td></tr>
<tr>
<td><b><br>Subject name:&nbsp;</b><input type="text" name="subject" value="<%=subName%>"><br></td></tr>
<tr>
<td><b><br>Branch:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="text" name="branch" ><br></td>
</tr>

<tr>
<td colspan="3" align="center"><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="button" value="Start" onclick=validate();>&nbsp;&nbsp;
<input type="reset"  class="button" value="Reset"><br>
</td></tr>
<tr>
<td colspan="3" align="center"></td>
</tr>
</table>
</form>			
</div>

</body>
</html>
