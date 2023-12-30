<html>
<head>
<title>View jobs</title>
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

a:hover {
    background: #add8e6;
    color: #FFFFFF;
}



</style>	

</head>
<body>
<%
HttpSession sess=request.getSession(false);
int type = (int)sess.getAttribute("type");
if (type!=0)
{
%>
<h1>Jobs</h1>
<table border="1">
<tr>
<th>ID</th>
<th>Title</th>
<th>Location</th>
<th>Category</th>
<th>Status</th>
<th>Company</th>
<th>Description</th>
</tr>
<%@page import="java.sql.*"%>
<%
try{

    Class.forName("com.mysql.jdbc.Driver");

    String url = "jdbc:mysql://localhost/registeration";

    Connection con =DriverManager.getConnection(url, "root", "root");

    Statement st=con.createStatement();
String query = "SELECT * FROM jobs";
st.executeQuery(query);
ResultSet rs = st.getResultSet();
while (rs.next ()){
%>
<tr>
<td><%=rs.getInt("id")%></td>
<td><%=rs.getString("title")%></td>
<td><%=rs.getString("location")%></td>
<td><%=rs.getString("category")%></td>
<td><%=rs.getString("status")%></td>
<td><%=rs.getString("company")%></td>
<td><%=rs.getString("description")%></td>
</tr>

<%
}

if (type==1)
{
	%>
<br><a href="admin.jsp">MainPage</a> 
</form><br>
<form method="post" action="Logout">
<input type="submit" value="Logout">
</form><br>


<%
}
else
{	%>
<a href="user.jsp">MainPage</a><br> 
<form method="post" action="Logout">
<input type="submit" value="Logout">
</form><br>

<%
}
rs.close ();
st.close ();
} catch(Exception e){
out.println(e);
}
%>
</table>
</body>
</html>
<%
}
else 
	out.println("invalid page");
%>
