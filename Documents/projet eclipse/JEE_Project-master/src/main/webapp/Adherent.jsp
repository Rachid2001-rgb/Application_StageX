<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>User Page</title>
</head>
<% //In case, if User session is not set, redirect to Login page.
if((request.getSession(false).getAttribute("Adherent")== null) )
{
%>
<jsp:forward page="/Login.jsp"></jsp:forward>
<%} %>
<body>
<jsp:include page="Navbar.jsp" />
    <center><h2>Adherent Page</h2></center>
    Welcome,you are logged as  <%=request.getAttribute("userName") %>
 
    <div style="text-align: right"><a href="<%=request.getContextPath()%>/Logout">Logout</a></div>
 
</body>
</html>