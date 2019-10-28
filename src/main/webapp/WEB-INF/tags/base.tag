<%@tag description="Base template tag" pageEncoding="UTF-8"%>
<html>
	<head>
		<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet"
			href="resources/aboutPageResources/font/font-awesome.min.css">
		<link rel="stylesheet"
			href="resources/aboutPageResources/font/ionicons.min.css">
		<link rel="stylesheet"
			href="resources/aboutPageResources/css/Features-Clean.css">
		<link rel="stylesheet"
			href="resources/aboutPageResources/css/Footer-Dark.css">
		<link rel="stylesheet"
			href="resources/aboutPageResources/css/Navigation-Clean.css">
		<link rel="stylesheet"
			href="resources/aboutPageResources/css/styles.css">
		<link rel="stylesheet"
			href="resources/aboutPageResources/css/Testimonials.css">
	</head>

<body>
	<!-- nav bar -->
	<nav
		class="navbar navbar-dark navbar-expand-md bg-primary navigation-clean">
		<div class="container">
			<a class="navbar-brand" href="#">Concertio</a>
			<button class="navbar-toggler" data-toggle="collapse"
				data-target="#navcol-1">
				<span class="sr-only">Toggle navigation</span><span
					class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navcol-1">
				<ul class="nav navbar-nav ml-auto">
					<li class="nav-item" role="presentation"><a class="nav-link"
						href="index.jsp">Home</a></li>
					<li class="nav-item" role="presentation"><a class="nav-link"
						href="about">About</a></li>
					<li class="nav-item" role="presentation"><a
						class="nav-link active" href="bookEvent.jsp">Book Center</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- body content  -->
	<div>
			
			<jsp:doBody/>
		
	</div>


	<!-- footer -->
	<div class="footer-dark" style="background-color: rgb(0, 123, 255);">
		<footer>
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-md-3 item">
						<h3>Services</h3>
						<ul>
							<li><a href="#">Web design</a></li>
							<li><a href="#">Development</a></li>
							<li><a href="#">Hosting</a></li>
						</ul>
					</div>
					<div class="col-sm-6 col-md-3 item">
						<h3>About</h3>
						<ul>
							<li><a href="#">Company</a></li>
							<li><a href="#">Team</a></li>
							<li><a href="#">Careers</a></li>
						</ul>
					</div>
					<div class="col-md-6 item text">
						<h3>Concertio</h3>
						<p>Praesent sed lobortis mi. Suspendisse vel placerat ligula.
							Vivamus ac sem lacus. Ut vehicula rhoncus elementum. Etiam quis
							tristique lectus. Aliquam in arcu eget velit pulvinar dictum vel
							in justo.</p>
					</div>
					<div class="col item social">
						<a href="#"><i class="icon ion-social-facebook"></i></a><a
							href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i
							class="icon ion-social-snapchat"></i></a><a href="#"><i
							class="icon ion-social-instagram"></i></a>
					</div>
				</div>
				<p class="copyright">Concertio Â© 2019</p>
			</div>
		</footer>
	</div>

	
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>