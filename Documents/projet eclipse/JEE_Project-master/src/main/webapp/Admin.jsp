<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%


try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Admin Panel</title>
</head>
<body>
<div class="container my-5">
    <a href="<%=request.getContextPath()%>/Logout" class="btn btn-danger">LOG OUT</a>

    <div class = "row">
    <h2 class="text-center mb-5">
    Welcome,you are logged as  <%=request.getAttribute("userName") %>
    </h2>
    
		<div class="col-9 mx-auto">
		<div class="table-responsive">
		
		<table class="table table-bordered table-responsive">
		  <thead>
		    <tr>
		      <th scope="col">id</th>
		      <th scope="col">First Name</th>
		      <th scope="col">Last Name</th>
		      <th scope="col">Email</th>
		      <th scope="col">Role</th>
		      <th scope="col">Status</th>
		      <th scope="col">Actions</th>
		    </tr>
		  </thead>
		  <tbody>
		      <%
				try{
				connection = DriverManager.getConnection("jdbc:mysql://localhost/jee_projet", "root", "");
				statement=connection.createStatement();
				String sql ="select * from users";
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
			  %>
		   <tr>
		   		<td><%=resultSet.getInt("id") %></td>
				<td><%=resultSet.getString("nom") %></td>
				<td><%=resultSet.getString("prenom") %></td>
				<td><%=resultSet.getString("email") %></td>
				<td><%=resultSet.getString("role") %></td>
				<td><%=resultSet.getString("status") %></td>
				
				<td>
					<a href="update.jsp?id=<%=resultSet.getString("id")%>" class="btn btn-success">Edite</a>
					<a href="delete.jsp?id=<%=resultSet.getString("id") %>" class="btn btn-danger">Delete</a>
					<button type="button" class="btn btn-primary">Verify</button>
					
				</td>
				
				
		   </tr>
				 <%
					}
					connection.close();
					} catch (Exception e) {
					e.printStackTrace();
					}
				 %>
		  </tbody>
		</table>
		</div>
		
		</div>
    </div>
</div>



<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>