<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>JEE Project</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css" rel="stylesheet">
	<style>
	* {
	   font-family: montserrat;
	}
	</style>
</head>
<body>

<jsp:include page="Navbar.jsp" />




	<div class="container">
		<div class="row px-2">
			<div class="col-sm-12 col-md-6 col-lg-6 col-12 pt-5">
				<div class="carousel slide pt-5" data-bs-ride="carousel" id="carouselExampleControls">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<h1 class="animated fadeInDown" style="animation-delay: 1s">club <span class="text-info">portal</span></h1>
							<h3 class="animated fadeInUp" style="animation-delay: 2s">Welcome!</h3><a href="about.jsp"><button class="btn btn-info text-white" type="button" >Learn More</button></a> <a href="contact.jsp"><button class="btn btn-info text-white" type="button">Contact Us</button></a>
						</div>
						<div class="carousel-item">
							<h1 class="animated fadeInDown" style="animation-delay: 1s">Organizing <span class="text-info">events</span></h1>
							<h3 class="animated fadeInUp" style="animation-delay: 2s">Annual and monthly events organized in our club.</h3><a href="about.jsp"><button class="btn btn-info text-white" type="button">Learn More</button></a>  <a href="contact.jsp"><button class="btn btn-info text-white" type="button">Contact Us</button></a>
						</div>
					
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 col-12"><img alt="" class="img-fluid" src="https://i.postimg.cc/Pqyhx7qg/2.png"></div>
		</div>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">
	</script> 
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js">
	</script> 
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js">
	</script>



</body>
</html>