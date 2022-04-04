<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>JEE Project</title>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-light bg-light shadow">
     <div class="container">
           <h1>  <a class="navbar-brand" href="Home.jsp">Club <span class="text-info">portal</span></a></h1>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="Home.jsp">Home</a>
                            </li>
                   
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="Login.jsp">Login</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="Register.jsp">Register</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="about.jsp">About Us</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="contact.jsp">Contact</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="<%=request.getContextPath()%>/Logout">Logout</a>
                            </li>
                        </ul>
                    </div>
                </div>
</nav>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>