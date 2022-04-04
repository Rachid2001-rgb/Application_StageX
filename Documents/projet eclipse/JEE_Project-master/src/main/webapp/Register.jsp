<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JEE Project</title>
</head>
<body>

<jsp:include page="Navbar.jsp" />

<div class="container">
<div class="row justify-content-center">
          <div class="col-lg-7">
              <div class="card shadow-lg border-0 rounded-lg mt-5">
                  <div class="card-header"><h3 class="text-center font-weight-light my-4">Create Account</h3></div>
                  <div class="card-body">
                      <form action="RegisterServlet" method="POST">
                          <div class="row mb-3">
                              <div class="col-md-6">
                                  <div class="form-floating mb-3 mb-md-0">
                                      <input class="form-control" name="fname" id="inputFirstName" type="text" placeholder="Enter your first name" required/>
                                      <label for="inputFirstName">First name</label>
                                  </div>
                              </div>
                              <div class="col-md-6">
                                  <div class="form-floating">
                                      <input class="form-control" name="lname" id="inputLastName" type="text" placeholder="Enter your last name" required/>
                                      <label for="inputLastName">Last name</label>
                                  </div>
                              </div>
                          </div>
                          <div class="form-floating mb-3">
                              <input class="form-control" name="email" id="inputEmail" type="email" placeholder="name@example.com" required/>
                              <label for="inputEmail">Email address</label>
                          </div>
                          <div class="row mb-3">
                              <div class="col-md-12">
                                  <div class="form-floating mb-3 mb-md-0">
                                      <input class="form-control" name="password" id="inputPassword" type="password" placeholder="Create a password" required/>
                                      <label for="inputPassword">Password</label>
                                  </div>
                              </div>
                         
                          </div>
                          <div class="mt-4 mb-0">
                              <div class="d-grid"><button type="submit" class="btn btn-primary btn-block">Create Account</button></div>
                          </div>
                      </form>
                  </div>
                  <div class="card-footer text-center py-3">
                      <div class="small"><a href="Login.jsp">Have an account? Go to login</a></div>
                  </div>
              </div>
          </div>
      </div>
 </div>

</body>
</html>