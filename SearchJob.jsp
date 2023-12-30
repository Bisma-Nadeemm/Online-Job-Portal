<html>
<head>
<title>Add jobs</title>
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
<h1>Jobs</h1>
<table border="1">
<tr>
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
String location=request.getParameter("location");
String category=request.getParameter("category");
String company=request.getParameter("company");
 String query = "Select * from jobs where location=? and category=? and company=?";
   PreparedStatement stmt = con.prepareStatement(query);
stmt.setString(1,location);
  stmt.setString(2,category);
stmt.setString(3,company);
  
  ResultSet rs = stmt.executeQuery();
while (rs.next ()){
%>
<tr>
<td><%=rs.getString("title")%></td>
<td><%=rs.getString("location")%></td>
<td><%=rs.getString("category")%></td>
<td><%=rs.getString("status")%></td>
<td><%=rs.getString("company")%></td>
<td><%=rs.getString("description")%></td>
</tr>

<%

 }
rs.close ();
stmt.close ();
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
	out.println("invalid page");
%>