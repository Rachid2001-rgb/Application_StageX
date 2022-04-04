<!DOCTYPE html>
<html>
<title></title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="../images/logo.png">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
</style>
<body class="w3-light-grey">

<jsp:include page="Navbar.jsp" />

	<!-- page content -->
	
	<div style="width: 75%; min-height: 450px;" >
		<div class="w3-container" id="contact">
			<h2>Contact us</h2>
			<p>If you have any questions, do not hesitate to ask them.</p>
			<i class="fa fa-map-marker w3-text-blue" style="width: 30px"></i>
			Chicago, US<br> <i class="fa fa-phone w3-text-blue"
				style="width: 30px"></i> Phone: +00 151515<br> <i
				class="fa fa-envelope w3-text-blue" style="width: 30px"> </i> Email:
			mail@mail.com<br>
			<form action="../SendMessageByUser" method="post">
				<input type="text" name="current_user" value='<%= session.getAttribute( "Username" ) %>' style="display: none;">
				<p><input class="w3-input w3-padding-16 w3-border" type="text" placeholder="Email" required name="Email"></p>
				<p>
					<input class="w3-input w3-padding-16 w3-border" type="text"
						placeholder="Message" required name="Message">
				</p>
				<p>
					<button class="w3-button w3-black w3-padding-large" type="submit">SEND
						MESSAGE</button>
				</p>
			</form>
		</div>
	</div>
	<!-- Footer -->
<footer class="w3-padding-16 w3-black w3-center w3-margin-top">
  <h5>Find Us On</h5>
  <div class="w3-xlarge w3-padding-16">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
</footer>


</body>
</html>
