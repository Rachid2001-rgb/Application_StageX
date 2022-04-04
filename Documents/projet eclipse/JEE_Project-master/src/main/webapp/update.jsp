<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String id = request.getParameter("id");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/jee_projet";
	String username = "root";
	String password = "";
	
	try {
	Class.forName(driver);
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<%
	try{
	connection = DriverManager.getConnection(connectionUrl, username, password);
	statement=connection.createStatement();
	String sql ="select * from users where id="+id;
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Update User</title>
</head>
<body>
<div class="container my-5">
<div class = "row">
	<h2 class="text-center mb-5">Update User</h2>
	
    <div class="col-6 mx-auto">	
		<form method="post" action="update-process.jsp">
		  <input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
		
	      <div class="form-group">
		    <label>Id:</label>
		    <input type="text" class="form-control" value="<%=resultSet.getString("id") %>" disabled>
		  </div><br>
		  
		  <div class="form-group">
		    <label for="inp1">First Name:</label>
		    <input type="text" class="form-control" id="inp1" value="<%=resultSet.getString("nom") %>">
		  </div><br>
		  
		  <div class="form-group">
		    <label for="inp2">Last name:</label>
		    <input type="text" class="form-control" id="inp2" value="<%=resultSet.getString("prenom") %>">
		  </div><br>
		  
		  <div class="form-group">
		    <label for="inp3">Email:</label>
		    <input type="email" class="form-control" id="inp3" value="<%=resultSet.getString("email") %>">
		  </div><br>
		  
		  <div class="form-group">
		    <label for="inp4">Role:</label>
		    <input type="text" class="form-control" id="inp4" value="<%=resultSet.getString("role") %>">
		  </div><br>
		  
		  <button type="submit" class="btn btn-primary">Update</button>
		</form>
		
		
		
		
	</div>
</div>
</div>
	
<%
	}
	connection.close();
	} catch (Exception e) {
	e.printStackTrace();
}
%>
</body>
</html>