<html>
<head>
<style>


.button {
  background-image: linear-gradient(-180deg, #37AEE2 0%, #1E96C8 100%);
  border-radius: .5rem;
  box-sizing: border-box;
  color: #FFFFFF;
  display: flex;
  font-size: 16px;
  justify-content: center;
  padding: 1rem 1.75rem;
  text-decoration: none;
  width: 40%;
  border: 0;
  cursor: pointer;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button:hover {
  background-image: linear-gradient(-180deg, #1D95C9 0%, #17759C 100%);
}

@media (min-width: 768px) {
  .button {
    padding: 1rem 2rem;
  }
}
.header {
  padding: 40px;
  text-align: center;
  background: #add8e6;
  color: white;
  font-size: 20px;
}

</style>
</head>
<body>
<%
HttpSession sess=request.getSession(false);
int type = (int)sess.getAttribute("type");
if (type==1)
{
%>
<div class="header">
  <h1>Admin's MainPage</h1>
  </div><br>

<form method="post" action="AddJobs.jsp">
<input type="submit" value="add jobs" class="button">

</form><br>
<form method="post" action="EditJobs.jsp">
<input type="submit" value="edit jobs" class="button">
</form><br>
<form method="post" action="DeleteJobs.jsp">
<input type="submit" value="delete jobs" class="button">
</form><br>
<form method="post" action="ViewJobs.jsp">
<input type="submit" value="view jobs" class="button">
</form><br>
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
