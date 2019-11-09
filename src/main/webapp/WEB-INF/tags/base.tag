<%@ tag description="Base template tag" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta http-equiv="X-UA-Compatible" content="ie=edge">
		<link rel="stylesheet" href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>">
		<link rel="stylesheet"
			href="<c:url value="/resources/aboutPageResources/font/font-awesome.min.css"/>">
		<link rel="stylesheet"
			href="<c:url value="/resources/aboutPageResources/font/ionicons.min.css"/>">
		<link rel="stylesheet"
			href="<c:url value="/resources/aboutPageResources/css/Features-Clean.css"/>">
		<link rel="stylesheet"
			href="<c:url value="/resources/aboutPageResources/css/Footer-Dark.css"/>">
		<link rel="stylesheet"
			href="<c:url value="/resources/aboutPageResources/css/Navigation-Clean.css"/>">
		<link rel="stylesheet"
			href="<c:url value="/resources/aboutPageResources/css/styles.css"/>">
		<link rel="stylesheet" href="<c:url value="/resources/main.css"/>">
		<link rel="stylesheet"
			href="<c:url value="/resources/aboutPageResources/css/Testimonials.css"/>">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	</head>

<body>
	<!-- nav bar -->
	<nav
		id="top_nav_bar"
		class="navbar navbar-dark navbar-expand-md navigation-clean">
		<div class="container">
			<a class="navbar-brand" href="<c:url value="/" />">Concertio</a>
			<button class="navbar-toggler" data-toggle="collapse"
				data-target="#navcol-1">
				<span class="sr-only">Toggle navigation</span><span
					class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navcol-1">
				<ul class="nav navbar-nav ml-auto">
					<li class="nav-item" role="presentation">
					<a class="nav-link" href="<c:url value="/" />">Home</a></li>
					<li class="nav-item" role="presentation"><a class="nav-link"
						href="<c:url value="/about" />">About</a></li>
					<li class="nav-item">
						<%-- 
							if a user is not authenticated, display the create free account
							button
						 --%>
						<sec:authorize access="!isAuthenticated()">
						  <a class="nav-link btn btn-sm bg-primary text-white" href="<c:url value="/account/create" />">
								Create free account
						  </a>
						</sec:authorize>
						
						<%-- 
							if a user is not authenticated, display the logout button
						 --%>
						<sec:authorize access="isAuthenticated()">
						  <a class="nav-link btn btn-sm bg-danger text-white" href="<c:url value="/account/logout" />">
								logout
						  </a>
						</sec:authorize>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- body content  -->
	<div>
			
			<jsp:doBody/>
		
	</div>


	<!-- footer -->
	
		<footer>
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-md-3 item">
						<h3>Services</h3>
						<ul>
							<li><a href="#">Event planning</a></li>
							<li><a href="#">Event Decoration</a></li>
							<li><a href="#">Security</a></li>
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
						<p>Praesent sed lobortis mi. Suspendisse vel placerat ligula.
							Vivamus ac sem lacus. Ut vehicula rhoncus elementum. Etiam quis
							tristique lectus. Aliquam in arcu eget velit pulvinar dictum vel
							in justo.</p>
							
							
						<%-- 
							if a user is not authenticated, display the create free account
							button
						 --%>
						<sec:authorize access="!isAuthenticated()">
						  <a class="nav-link btn btn-sm bg-primary text-white" href="<c:url value="/account/create" />">
								Create free account
						  </a>
						</sec:authorize>
						
						<%-- 
							if a user is not authenticated, display the logout button
						 --%>
						<sec:authorize access="isAuthenticated()">
						  <a class="nav-link btn btn-sm bg-danger text-white" href="<c:url value="/account/logout" />">
								logout
						  </a>
						</sec:authorize>
					</div>
					<!--  
					<div class="col item social">
						<a href="#"><i class="icon ion-social-facebook"></i></a><a
							href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i
							class="icon ion-social-snapchat"></i></a><a href="#"><i
							class="icon ion-social-instagram"></i></a>
					</div>
					-->
				</div>
				<p class="copyright">Concertio &copy; 2019</p>
			</div>
		</footer>
	

	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</body>
</html>
