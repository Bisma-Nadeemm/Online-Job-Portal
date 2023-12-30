<html>
<head>
<title>Search jobs</title>
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
{
if(document.add.location.value == "" )	
	   {
			alert("Please select a location");
			return false;
	   }
if(document.add.category.value == "" )	
	   {
			alert("Please select a category");
			return false;
	   }
if(document.add.company.value == "" )	
	   {
			alert("Please select a company");
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
if (type!=1)
{
%>
<h1 style="text-align: center">
Search Jobs
</h1>
<br/>


	<form action="SearchJob.jsp" name="add" method="post" onsubmit="return validate();" style="background:#add8e6;">
<table>

<tr><td style="font-size:20px"><b style="margin-left:110px">Location:</td>
<td><select name="location" style="width:230px;height:30px">
<option value="">Choose a location</option>
<option value="multan">Multan
<option value="lahore">Lahore
<option value="Karachi">Karachi
<option value="London">London
</select></td></tr>

<tr><td style="font-size:20px"><b style="margin-left:110px">Category:</td>
<td><select name="category" style="width:230px;height:30px">
<option value="">Choose a field</option>
<option value="it">BS IT
<option value="se">BS Software Engineering
<option value="eng">BS English
<option value="math">BS Maths
</select></td></tr>
<tr><td style="font-size:20px"><b style="margin-left:110px">Company:</td>
<td><select name="company" style="width:230px;height:30px">
<option value="">Choose a company</option>
<option value="devsinc:devsinc@gmail.com">Devsinc
<option value="google:google@gmail.com">Google
<option value="microsoft:microsoft@gmail">Microsoft
<option value="systems:Systems@gmail.com">Systems
</select></td></tr>
</table>
<br>
<input type="submit" value="Search" style="width:80px;height:35px;text-align: center;background-color:dodgerblue;color:white;margin-left: 215px;border-color:dodgerblue" >

</form> 

<a href="user.jsp">MainPage</a><br> 
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