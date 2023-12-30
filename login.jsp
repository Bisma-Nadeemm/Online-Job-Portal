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
    String password=request.getParameter("pwd");
Statement stmt = con.createStatement();
ResultSet r = stmt.executeQuery("Select * from reg where username='"+uname+"' and password='"+password+"'");
     if(r.next()){
    	   String name=r.getString("username");
           String pass=r.getString("password");
		   int type=r.getInt("type");
		   if(type==1){
    session.setAttribute("type",type); 
		   RequestDispatcher rd = request.getRequestDispatcher("/admin.jsp");
	   rd.include(request,response);}
		   else
		   {
			   sess.setAttribute("type",type);
			   sess.setAttribute("username",name);
			   RequestDispatcher rd = request.getRequestDispatcher("/user.jsp");
	   rd.include(request,response);
		   }
	 } 
     else{
    	 out.println("Invalid username or password");
          }

	
    }catch(Exception e){

      out.println(e);
    }
 %>

</body>
</html>