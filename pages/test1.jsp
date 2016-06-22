<%@page import="bean.TestBean"%>
<%@page import="delegate.TestDelegate"%>
<html>
<head>
<title>Test Question</title>
<script type="text/javascript" src="facultypage.js"></script>
<script language="JavaScript">
var time = null
function move() {
window.location = 'result.html'
}
function itemSelected(value){
 
 document.TestForm.ans.value=value;  
    
}

function disabledButton(buttonName) {
		var button = window.opener.document.getElementById(buttonName);
		button.setAttribute('disabled','true');
		button.style.setAttribute ('backgroundColor', 'green');


		return;
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
  function redirect_next(){
     alert("hi");
  }
  function openPopup(i){
                          
                                                 
                           var url = '/test.jsp?i='+i';
                           child=window.open(url);
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
<div id=topborder></div>
<form name="TestForm" action="_test.jsp" method="get" >
<h1>Aptitude Test</h1>
<br><br>
<br>
<b><i>Question:&nbsp;</i></b>
<br><br>
<%! public int count=0;
    public int i=0;
  %>

<%
TestBean testBean=null;
  try{
   
   String key=request.getParameter("i"); 
   System.out.println("&&&&& : "+key);
    i=Integer.parseInt(key); 
   testBean=new TestBean();  
   TestDelegate testDelegate =new TestDelegate();
   session.setAttribute("test_key",i);
   testBean=testDelegate.getQuestionByTestKey(i);

   System.out.println("hi "+testBean.getQuestion());

}
catch(Exception e){
	System.out.println("Exception Occur in test1.jsp : "+e);
}%>

<div style="position:absolute;left:300px;width:400px;top:190px;BORDER-RIGHT: #2a2a2a 6px solid;PADDING-RIGHT: 3px;BORDER-TOP: #2a2a2a 2px solid;PADDING-LEFT: 4px;FLOAT:left;MARGIN-BOTTOM: 10px;PADDING-BOTTOM: 8px;BORDER-LEFT: #2a2a2a 2px solid;MARGIN-RIGHT: 10px;PADDING-TOP: 2px;BORDER-BOTTOM: #2a2a2a 6px solid;background-color:#806D7E;">
<br><font color="white">
<center><b>&nbsp;<%=testBean.getQuestion()%><br>
<br><br><br><br>
<input type="radio" value="A" name="group1" onclick=itemSelected(value);><%=testBean.getOp1() %> &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
<input type="radio" value="B" name="group1" onclick=itemSelected(value);><%=testBean.getOp2()%><br><br><br>
<input type="radio" value="C" name="group1" onclick=itemSelected(value);><%=testBean.getOp3()%>  &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
<input type="radio" value="D" name="group1" onclick=itemSelected(value);><%=testBean.getOp4()%><br>
<br>
<br>
Answer:&nbsp;&nbsp;<input type="text" name="ans"><br><br>
<input type="submit" class="button" value="submit" onclick="javascript:disabledButton(<%=i%>);";>&nbsp;&nbsp;
<input type="button" class="button" value="close" onclick=window.close();>&nbsp;&nbsp;
<br><br>

</center>
</font>
</div>
</form>	
</body>
</html>
