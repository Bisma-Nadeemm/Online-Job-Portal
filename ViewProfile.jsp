<html>
<head>
<title>View Profile</title>
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

</head>
<body>
<%
HttpSession sess=request.getSession(false);
int type = (int)sess.getAttribute("type");
if (type!=1)
{
%>
<h1>Profile</h1>
<table border="1">
<tr>
<th>Username</th>
<th>Email</th>
<th>Password</th>
<th>Qualification</th>
</tr>
<%@page import="java.sql.*"%>
<%
try{

    Class.forName("com.mysql.jdbc.Driver");

    String url = "jdbc:mysql://localhost/registeration";

    Connection con =DriverManager.getConnection(url, "root", "root");
    Statement st=con.createStatement();
String query = "SELECT * FROM reg where type="+type+"";
st.executeQuery(query);
ResultSet rs = st.getResultSet();
while(rs.next())
{
%>
<tr>
<td><%=rs.getString("username")%></td>
<td><%=rs.getString("email")%></td>
<td><%=rs.getString("password")%></td>
<td><%=rs.getString("qualification")%></td>
</tr>
<%
}
rs.close ();
st.close ();
} catch(Exception e){
out.println(e);
}

%>
<a href="user.jsp">MainPage</a><br> 
<form method="post" action="Logout">
<input type="submit" value="Logout">
</form><br>
</table>
</body>
</html>
<%
}
else
{
	out.println("Invalid page");
}
%>

