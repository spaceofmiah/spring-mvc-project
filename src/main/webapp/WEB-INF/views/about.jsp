<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About | Concertio</title>
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/aboutPageResources/font/font-awesome.min.css">
    <link rel="stylesheet" href="resources/aboutPageResources/font/ionicons.min.css">
    <link rel="stylesheet" href="resources/aboutPageResources/css/Features-Clean.css">
    <link rel="stylesheet" href="resources/aboutPageResources/css/Footer-Dark.css">
    <link rel="stylesheet" href="resources/aboutPageResources/css/Navigation-Clean.css">
    <link rel="stylesheet" href="resources/aboutPageResources/css/styles.css">
    <link rel="stylesheet" href="resources/aboutPageResources/css/Testimonials.css">
</head>

<body>
    
    <%@include file="navbar.jsp" %>
    
    <div class="features-clean">
        <div class="container">
            <div class="intro">
                <h2 class="text-center">WHO ARE WE?</h2>
                <h5 class="text-center">Concertio is a franchise under The Bike Riders Events booking services. We are a body dedicated to ensuring your complete satisfaction.
                We are a full service events management firm based in Lagos, Nigeria.  We bring a fresh, unique approach to the event management industry.
                Our team understands that a properly executed event can be leveraged to support an organization?s strategic vision, incorporated into a company?s marketing plan,
                or used to build networks and client loyalty.</h5>
            </div>
            <div class="row features">
                <div class="col-sm-6 col-lg-4 item"><i class="fa fa-map-marker icon"></i>
                    <h3 class="name">Works everywhere</h3>
                    <p class="description">You can book your events from any part of the world as one of our registered clients. Currency is not a barrier as all costs will be
                    deducted based on conversion values of the Naira.</p>
                </div>
                <div class="col-sm-6 col-lg-4 item"><i class="fa fa-clock-o icon"></i>
                    <h3 class="name">Always available</h3>
                    <p class="description">Our service lines are available 24 hours through all 7 days of the week. Should you need to make enquiries or book offline at the wee
                    hours of the night, we will pick up the phone. Our team accounts for any and all emergency cases that occasionally pop-up to give you the most reliable service
                    money can buy.</p>
                </div>
                <div class="col-sm-6 col-lg-4 item"><i class="fa fa-list-alt icon"></i>
                    <h3 class="name">Customizable</h3>
                    <p class="description">Feature combinations are an important part of any event. So incase you want the luxurious look of a royal ball party but also the playful
                    atmosphere of a birthday party. Our design team is readily available to bring you a wide variety of options to chose fro to customize your event to meet your
                    personal needs and those of your guests.</p>
                </div>
                <div class="col-sm-6 col-lg-4 item"><i class="fa fa-leaf icon"></i>
                    <h3 class="name">Safety first!</h3>
                    <p class="description">Our locations have been fitted with the most reliable of security forces and equipments to ensure your safety and the safety of your guests
                    at any of our events. We are fully responsible for your safety after you have registered and payed of course.</p>
                </div>
                <div class="col-sm-6 col-lg-4 item"><i class="fa fa-plane icon"></i>
                    <h3 class="name">Fast</h3>
                    <p class="description">Time is money and money is what keeps us going. So our team does not handle delays lightly. Processing your payments and securing your
                    bookings are a top priority for our team so late payments are subject to serious consequences. We work based on a "First Pay First Serve" basis, to ensure that
                    your bookings are properly handled and processed on time.</p>
                </div>
                <div class="col-sm-6 col-lg-4 item"><i class="fa fa-phone icon"></i>
                    <h3 class="name">Mobile App</h3>
                    <p class="description">Our mobile app is available on major OS platforms including IOS, android and windows. Discounts are available to our first 100 app bookers.
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="testimonials-clean">
        <div class="container">
            <div class="intro">
                <h2 class="text-center">Testimonials </h2>
                <p class="text-center">Our customers love us! Read what they have to say below. Take a second hand look at what we are capable of and what we do.</p>
            </div>
            <div class="row people">
                <div class="col-md-6 col-lg-4 item">
                    <div class="box">
                        <p class="description">Customer service is soooo great!!! And the guy i spoke to was so polite.</p>
                    </div>
                    <div class="author"><img class="rounded-circle" src="resources/aboutPageResources/img/1.jpg">
                        <h5 class="name">Ben Johnson</h5>
                        <p class="title">CEO of Company Inc.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 item">
                    <div class="box">
                        <p class="description">You guys are awesome. I still can't believe i planned my son's birthday party in just 3 minutes!!!</p>
                    </div>
                    <div class="author"><img class="rounded-circle" src="resources/aboutPageResources/img/3.jpg">
                        <h5 class="name">Carl Kent</h5>
                        <p class="title">Founder of Style Co.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 item">
                    <div class="box">
                        <p class="description">70% discount from the app!!! I LOVE you guys!.</p>
                    </div>
                    <div class="author"><img class="rounded-circle" src="resources/aboutPageResources/img/2.jpg">
                        <h5 class="name">Emily Clark</h5>
                        <p class="title">Owner of Creative Ltd.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>    
    <%@include file="footer.jsp" %>
    <div class="footer-dark" style="background-color:rgb(0,123,255);">
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
                        <p>We bring a fresh, unique approach to the event management industry.</p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">Concertio © 2019</p>
            </div>
        </footer>
    </div>
    <script src="resources/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
