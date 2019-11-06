<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page info="The basic usage of this page is to render login form which allows a user logs in" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login - Concertio</title>
<link rel="stylesheet" href="<c:url value="/resources/main.css" />" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
</head>

<body>
	<main id="register">

		<section id="form_wrap">
			<div>
				<a href="/concertio" style="font-size: 28px; color: white;">Concertio</a>
				<p>Login</p>
			</div>

			<form action="." >
			
				<div class="form_group">
					<input type="email" id="email" class="form_input"	placeholder="Email" />
				</div>

				<div class="form_group">
					<input type="password" id="password" class="form_input" placeholder="Password" />				
				</div>

				<div class="form_group" id="register_btn_wrap">
					<input type="submit" class="form_submit_btn" value="Login" />
				</div>
				
			</form>

			<a href="create" id="loginLink">create account</a>
		</section>
	</main>
</body>

</html>