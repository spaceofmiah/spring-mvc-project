<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Create a new account - Concertio</title>
	<link rel="stylesheet" href="<c:url value="/resources/main.css" />" />
	
	</head>
	
	<body>
		<main id="register">		
			<section id="form_wrap">
				<div>
					<h1>Concertio</h1>
					<p>Create your free account</p>		
				</div>
		
				<form>
					<div class="form_group">
						<input type="text" class="form_input" placeholder="First Name" />
					</div>
					
					<div class="form_group">
						<input type="text" class="form_input" placeholder="Middle Name" />
					</div>
					
					<div class="form_group">
						<input type="text" class="form_input" placeholder="Last Name" />
					</div>
					
					<div class="form_group">
						<input type="email" class="form_input" placeholder="Email" />
					</div>
					
					<div class="form_group">
						<input type="password" class="form_input" placeholder="Password" />
					</div>
					
					<div class="form_group">
						<input type="password" class="form_input" placeholder="Confirm Password" />
					</div>
					
					<div class="form_group" id="register_btn_wrap">				
						<input type="submit" class="form_submit_btn" value="Create account" />
					</div>
				</form>
				
				<a href="#">login instead</a>
			</section>
		</main>
	</body>
	
</html>