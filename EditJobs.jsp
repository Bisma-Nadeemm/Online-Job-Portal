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

	if ( document.add.title.value == "" )
	    {
			alert("Title cannot be empty");			
			return false;
	    }

	if(document.add.location.value == "" )	
	   {
			alert("location cannot be empty");
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
if(document.add.d.value == "" )	
	   {
			alert("Please enter description");
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
Edit JOBS
</h1>
<br/>


	<form action="EditJobs" name="add" method="post" onsubmit="return validate();" style="background:#add8e6;">
<table>
<tr><td style="font-size:20px"><b style="margin-left:110px">ID:</td> 
<td><input type="text" name="id" placeholder="id" style="width:230px;height:30px;" ></td></tr>        
<tr><td style="font-size:20px"><b style="margin-left:110px">Title:</td> 
<td><input type="text" name="title" placeholder="title" style="width:230px;height:30px;" ></td></tr>

        
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

<tr><td style="font-size:20px"><b style="margin-left:110px">Status:</td>
<td><select name="status" style="width:230px;height:30px">
<option value="active">Active
<option value="inactive">Inactive
</select></td></tr>
<tr><td style="font-size:20px"><b style="margin-left:110px">Company:</td>
<td><select name="company" style="width:230px;height:30px">
<option value="">Choose a company</option>
<option value="devsinc">Devsinc
<option value="google">Google
<option value="microsoft">Microsoft
<option value="systems">Systems
</select></td></tr>
<tr><td style="font-size:20px"><b style="margin-left:110px">Description:
<td><textarea name="d" rows="7" cols="50" value="description" placeholder="description" style="width:230px;height:30px">
</textarea></td></tr>
</table>
<br>
<input type="submit" value="Edit" style="width:80px;height:35px;text-align: center;background-color:dodgerblue;color:white;margin-left: 215px;border-color:dodgerblue" >

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