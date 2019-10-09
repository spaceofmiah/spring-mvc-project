<%-- 
    Document   : index
    Created on : Sep 9, 2019, 4:21:42 PM
    Author     : spaceofmiah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<c:url value="/resources/main.css" />" />
<title>Book best and convenient space for your event | Concertio</title>
</head>


<body>

	<!-- nav -->
	<nav></nav>
	<!--** nav -->

	<!-- hero -->
	<header class="hero">
		<section>

			<h1>Concertio</h1>
			<p>book your event space</p>

			<div>
				<form action="" method="POST" id="heroSearch">
					<div class="form_group">
						<input class="form_input" type="text"
							placeholder="Enter event location" />
					</div>
					<input class="form_submit_btn" type="submit" value="Search">
				</form>
			</div>

		</section>
	</header>
	<!-- ** hero -->


	<!-- main -->
	<main> <!-- trending -->
	<section class="halls">
		<h2>trending halls</h2>

		<div>
			<!-- hall -->
			<div class="hall">
				<!-- should link to the detail page of this hall -->
				<a href="#"> <img
					src="<c:url value="/resources/images/space-1.jpg" />" />
					<h3>maroon hall</h3>
				</a>

				<header>
					<article>
						<p>
							<span>capacity :</span> 500 person
						</p>
						<p>
							<span>parking space :</span> Yes
						</p>
					</article>

					<a href="#" class="book_hall_btn"> <!-- book hall link --> book
						hall
					</a>
				</header>
			</div>
			<!--** hall -->


			<!-- hall -->
			<div class="hall">
				<!-- should link to the detail page of this hall -->
				<a href="#"> <img
					src="<c:url value="/resources/images/space-6.jpg" />" />
					<h3>bellinsa hall</h3>
				</a>

				<header>
					<article>
						<p>
							<span>capacity :</span> 10500 person
						</p>
						<p>
							<span>parking space :</span> Yes
						</p>
					</article>

					<a href="#" class="book_hall_btn"> <!-- book hall link --> book
						hall
					</a>
				</header>
			</div>
			<!--** hall -->

			<!-- hall -->
			<div class="hall">
				<!-- should link to the detail page of this hall -->
				<a href="#"> <img
					src="<c:url value="/resources/images/space-5.jpg" />" />

					<h3>glamorous hall</h3>
				</a>

				<header>
					<article>
						<p>
							<span>capacity :</span> 1500 person
						</p>
						<p>
							<span>parking space :</span> No
						</p>
					</article>

					<a href="#" class="book_hall_btn"> <!-- book hall link --> book
						hall
					</a>
				</header>
			</div>
			<!--** hall -->

		</div>
	</section>
	<!-- trending --> <!-- your event -->
	<section class="your_event">
		<h2>what's your event about ?</h2>
		<p>Is it conference, birthday, marriage, album/book launch e.t.c,
			concertio is set to provide you with a comfortable and magnificent
			halls to brighten that occasion of yours.</p>
	</section>
	<!--** your event -->



	<section class="week_hall">
		<div>
			<article>
				<div>
					<h2>hall for the week</h2>
					<p>Do you want a top notch and perfect hall ? book hall of the
						week and get the experience of a beautiful event center</p>
				</div>

				<div>
					<img src="<c:url value="/resources/images/space-5.jpg" />" />
					<p>
						<span>capacity :</span> 3000 person
					</p>
					<p>
						<span>parking space :</span> Yes
					</p>

					<a href="#" class="book_hall_btn"> <!-- book hall link --> book
						hall
					</a>
				</div>
			</article>
		</div>
	</section>


	<!--fast and easy-->
	<section class="fast_easy">
		<h2>fast and easy</h2>
		<p>You can now easily book your desired event space without
			following tedious and time taking procedures.</p>

		<div>
			<!-- article -->

			<article>
				<div>
					<h4>direct access</h4>
					<p>we provide you a direct access to event managers for prompt
						and secured transactions. Event space booking has never been this
						quick, fast and efficient.</p>
				</div>

				<div>
					<img src="<c:url value="/resources/images/speed-1.jpg" />" />
				</div>
			</article>

			<!--** article -->


			<!-- article -->

			<article>
				<div class="flex_lg">
					<img src="<c:url value="/resources/images/speed-1.jpg" />" />
				</div>

				<div>
					<h4>secured payment</h4>
					<p>we provide you a direct access to event managers for prompt
						and secured transactions. Event space booking has never been this
						quick, fast and efficient.</p>
				</div>
			</article>

			<!--** article -->


			<!-- article -->

			<article>
				<div>
					<h4>quick survey</h4>
					<p>we provide you a direct access to event managers for prompt
						and secured transactions. Event space booking has never been this
						quick, fast and efficient.</p>
				</div>

				<div>
					<img src="<c:url value="/resources/images/speed-1.jpg" />" />
				</div>
			</article>

			<!--** article -->
		</div>
	</section>
	<!--** fast and easy --> <!-- services -->
	<section class="services">
		<h3>our services</h3>
		<div>
			<div>
				<img src="<c:url value="/resources/images/event-5.jpg" />" />
			</div>

			<div>
				<article>
					<!-- image should placed here -->
					<h5>luxury halls</h5>
					<p>Whatever taste you may have on how the look of the hall
						should be like, we've got them all. Just search for it and we will
						grant your wish.</p>
				</article>

				<article>
					<!-- image should placed here -->
					<h5>Event planners</h5>
					<p>With our well trained and experienced planners your event is
						sure to be top notch as everything from start to end will be well
						planned and organized.</p>
				</article>

				<article>
					<!-- image should placed here -->
					<h5>Security</h5>
					<p>Concerned about security for your event ? we also provide
						experienced detective, bouncers, and well trained securities to
						give you a secured event.</p>
				</article>
			</div>
		</div>
	</section>
	<!--** services --> </main>
	<!--** main -->

	<!-- footer -->
	<footer>
		<section>
			<h1>Concertio</h1>
			<div>

				<article>
					<ul>
						<li><a href="#">halls</a></li>

						<li><a href="#">security</a></li>

						<li><a href="#">event planner</a></li>
					</ul>


					<ul>
						<li><a href="#">frequent questions</a></li>

						<li><a href="#">contact us</a></li>

						<li><a href="#">about us</a></li>
					</ul>
				</article>


				<div>
					<a href="register" class="register_btn">Register</a> <a href="#"
						class="login_btn">Log In</a>
				</div>
			</div>

			<span>
				<p>copyright &copy; 2019 <b>Concertio</b></p>
			</span>
		</section>
	</footer>
	<!--** footer -->
</body>
</html>
