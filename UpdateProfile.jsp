<html>
<head>
<title>Update Profile</title>


<script language="JavaScript" type="text/javaScript">

function validation()
{	

	if ( document.registeration.name.value == "" )
	    {
			alert("Username cannot be empty");			
			return false;
	    }
if ( document.registeration.Email.value == "" )		
        {
		alert("Please enter email address")
		return false;
	}	
	if ( document.registeration.Email.value != "" )
	{
	
    var email=document.registeration.Email.value;
	var length=email.length;
	var index=email.indexOf("@");
	var dot=email.indexOf(".");
	var check=0;
	if(dot>-1 && dot>index+1 && index>-1 && index>=1   )
	{
		if(length-1>dot)
		{
			check=1;
		}
	}
	
	if(check==0)
	{
	   	alert("Invalid email");
		return false;
	}

   }


	if ( document.registeration.pwd.value == "" )	
	   {
			alert("password cannot be empty");
			return false;
	   }
if ( document.registeration.confirm_password.value == "" )	
	   {
			alert("confirm password cannot be empty");
			return false;
	   }
if ( document.registeration.pwd.value!=document.registeration.confirm_password.value )
	{
			alert("New Password and Confirm new Password doesnt match");
			return false;
	}	

	if ( document.registeration.qualification.value == "" )
	    {
			alert("Qualification cannot be empty");			
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


	<form action="UpdateProfile" method="post" name="registeration" onsubmit="return validation()">
	 <table style="background-color: #add8e6"">
	<tr><p><font color=blue size=3><b><u>Update Profile</u></b></font></p></tr>
	  
	   
	  <tr>
	      <td  align="right">Username:</td>
	      <td ><input type=text name="name"></td>
      </tr>
 <tr>
	      <td  align="right">Email:</td>
	      <td ><input type=text name="Email"></td>
      </tr>
	  
	  <tr>
	    <td  align="right">Password:</td>
	    <td ><input type=password name="pwd" ></td>
	  </tr> 
	  
 <tr> 
	     <td  align="right">Confirm password:</td> 
	     <td ><input type=password name="confirm_password"></td> 
	   </tr> 
 <tr> 
	     <td  align="right">Qualification:</td> 
	     <td ><input type=text name="qualification"></td> 
	   </tr> 
	  
	     <td ></td> 
	     <td ><input type="submit" value='Update Profile'></td> 
	   </tr> 
	  <tr>
</table>
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
	  