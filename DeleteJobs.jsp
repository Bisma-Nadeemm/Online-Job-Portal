<html>
<head>
<title>Edit jobs</title>
<style>	
table {
	
	border-collapse: collapse;
	
	}

th,
td {
	padding:15px; 
	color:black;
}

th {
	text-align: left;
}


</style>	
<script language="JavaScript" type="text/javaScript">

function validate()
	
{ var i=document.add.id.value;
	if ( document.add.id.value == "" )
	    {
			alert("ID cannot be empty");			
			return false;
	    }
		if(!(i>="0" && i<="9")){
alert("Enter numbers");
return false;
}

return true;

}


</script>

</head>
<body>
<%
HttpSession sess=request.getSession(false);
int type = (int)sess.getAttribute("type");
if (type==1)
{
%>
<h1 style="text-align: center">
Delete JOBS
</h1>
<br/>


	<form action="DeleteJobs" name="add" method="post" onsubmit="return validate();" style="background:#add8e6;">
<table>
<tr><td style="font-size:20px"><b style="margin-left:110px">ID:</td> 
<td><input type="text" name="id" placeholder="id" style="width:230px;height:30px;" ></td></tr>        
</table>
<br>
<input type="submit" value="Delete" style="width:80px;height:35px;text-align: center;background-color:dodgerblue;color:white;margin-left: 215px;border-color:dodgerblue" >
</form> 
<a href="admin.jsp">MainPage</a><br> 
<form method="post" action="Logout">
<input type="submit" value="Logout">
</form><br>

	

</body>
</html>
<%
}
else 
	out.println("invalid page");
%>