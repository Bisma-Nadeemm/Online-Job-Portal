<html>
<head>
<title>Information</title></head>

<%@ page language = "java" import = "java.sql.*" %>
<body>



<%
HttpSession sess=request.getSession();
try{
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost/registeration";
    Connection con=DriverManager.getConnection(url, "root", "root");
 String uname=request.getParameter("name");
    String email=request.getParameter("Email");
    String password=request.getParameter("pwd");
    String qual=request.getParameter("qualification");
Statement stmt = con.createStatement();
int rs = stmt.executeUpdate("INSERT INTO reg(username,email,password,qualification)VALUES('"+ uname + "','" + email+ "','" + password+ "','" + qual+ "')");
     if(rs==1){	out.println("Registeration Successful");
	 out.println("<br><a href='http://localhost:8080/online%20job%20portal/login.html'>Login</a>");
	 }
	 
	else{out.println("Registeration not successful");}

           stmt.close();
           con.close();

    }catch(Exception e){

      out.println(e);
    }
 %>

</body>
</html>