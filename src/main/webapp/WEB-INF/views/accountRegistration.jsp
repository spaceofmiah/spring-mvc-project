<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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

			<form:form action="." modelAttribute="account">

				<form:errors path="*">
					<div class="error">
						<spring:message code="error.global" />
					</div>
				</form:errors>

				<div class="form_group">
					<form:input type="text" path="firstName" id="firstName"
						placeholder="First Name" cssClass="form_input" />

					<form:errors path="firstName">
						<div class="error">
							<form:errors path="firstName" htmlEscape="false" />
						</div>
					</form:errors>
				</div>

				<div class="form_group">
					<form:input type="text" path="middleName" id="lastName"
						class="form_input" placeholder="Middle Name" />
				</div>


				<div class="form_group">
					<form:input type="text" path="lastName" id="lastName"
						class="form_input" placeholder="Last Name" />

					<form:errors path="lastName">
						<div class="error">
							<form:errors path="lastName" htmlEscape="false" />
						</div>
					</form:errors>
				</div>


				<div class="form_group">
					<form:input type="email" path="email" id="email" class="form_input"
						placeholder="Email" />

					<form:errors path="email">
						<div class="error">
							<form:errors path="email" htmlEscape="false" />
						</div>
					</form:errors>

				</div>

				<div class="form_group">
					<form:input type="password" path="password" id="password"
						class="form_input" placeholder="Password" />

					<form:errors path="password">
						<div class="error">
							<form:errors path="password" htmlEscape="false" />
						</div>
					</form:errors>
					
				</div>

				<div class="form_group">
					<form:input type="password" path="confirmPassword"
						id="confirmPassword" class="form_input"
						placeholder="Confirm Password" />
				</div>

				<div class="form_group">
					<form:checkbox path="acceptTerms" id="acceptTerms" />
					<label>I accept the <a href="#">terms of use</a></label>
					
					<form:errors path="acceptTerms">
						<div class="error">
							<form:errors path="acceptTerms" htmlEscape="false" />
						</div>
					</form:errors>
				</div>

				<div class="form_group" id="register_btn_wrap">
					<input type="submit" class="form_submit_btn" value="Create account" />
				</div>
			</form:form>

			<a href="#" id="loginLink">login instead</a>
		</section>
	</main>
</body>

</html>