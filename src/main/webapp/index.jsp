<%-- 
    Document   : index
    Created on : Sep 9, 2019, 4:21:42 PM
    Author     : spaceofmiah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <nav>
            
        </nav>
        <!--** nav -->
        
        <!-- hero -->
        <header class="hero">
            <h1>Concertio</h1>
            <p>book your event space</p>
            
            <div>
                <form action="" method="POST">
                    <div class="form_group"> 
                        <input class="form_input" type="text" placeholder="Enter event location" />
                    </div>
                    <input class="form_submit_btn" type="submit" value="Search">
                </form>
            </div>
            
        </header>
        <!-- ** hero -->
        
        
        <!-- main -->
        <main>
            
            <!-- trending -->
            <section class="halls">
                <h2>trending halls</h2>
                
                <div>
                    <!-- hall -->
                    <div class="hall">
                        <!-- should link to the detail page of this hall -->
                        <a href="#">
                            <img src="<c:url value="/resources/images/space-1.jpg" />" />
                            <h3>maroon hall</h3>
                        </a>
                            
                        <header>
                            <article>
                                   <p>
                                       <span>capacity :</span>
                                       500 person
                                   </p>
                                   <p>
                                       <span>parking space :</span>
                                       Yes
                                   </p>
                            </article>
                            
                            <a href="#" class="book_hall_btn">
                                <!-- book hall link -->
                                book hall
                            </a>
                        </header>
                    </div>
                    <!--** hall -->
                     
                    
                    <!-- hall -->
                    <div class="hall">
                        <!-- should link to the detail page of this hall -->
                        <a href="#">
                            <img src="<c:url value="/resources/images/space-6.jpg" />" />
                            <h3>bellinsa hall</h3>
                        </a>
                            
                        <header>
                            <article>
                                   <p>
                                       <span>capacity :</span>
                                       10500 person
                                   </p>
                                   <p>
                                       <span>parking space :</span>
                                       Yes
                                   </p>
                            </article>
                            
                            <a href="#" class="book_hall_btn">
                                <!-- book hall link -->
                                book hall
                            </a>
                        </header>
                    </div>
                    <!--** hall -->
                    
                    <!-- hall -->
                    <div class="hall">
                        <!-- should link to the detail page of this hall -->
                        <a href="#">
                            <img src="<c:url value="/resources/images/space-5.jpg" />" />
                            
                            <h3>glamorous hall</h3>
                        </a>
                            
                        <header>
                            <article>
                                   <p>
                                       <span>capacity :</span>
                                       1500 person
                                   </p>
                                   <p>
                                       <span>parking space :</span>
                                       No
                                   </p>
                            </article>
                            
                            <a href="#" class="book_hall_btn">
                                <!-- book hall link -->
                                book hall
                            </a>
                        </header>
                    </div>
                    <!--** hall -->

                </div>
            </section>
            <!-- trending -->
            
            
            <!-- your event -->
            <section class="your_event">
                <h2>what's your event about ?</h2>
                <p>
                    Is it conference, birthday, marriage, album/book launch e.t.c, concertio is set to provide you 
                    with a comfortable and magnificent halls to brighten that occasion of yours.
                </p>
            </section>
            <!--** your event -->
            
            
            <!-- fast and easy -->
            <section class="fast_easy">
                <h2>fast and easy</h2>
                <p>
                    You can now easily book your desired event space without following tedious and time taking procedures.
                    With us, you get direct contact with event managers and do your transaction easily. Booking has never been this quick, fast and efficient
                </p>
            </section>
            <!--** fast and easy -->
            
        </main>
        <!--** main -->
    </body>
</html>
