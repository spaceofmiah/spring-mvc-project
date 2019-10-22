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
                <h2 class="text-center">Features</h2>
                <p class="text-center">Nunc luctus in metus eget fringilla. Aliquam sed justo ligula. Vestibulum nibh erat, pellentesque ut laoreet vitae. </p>
            </div>
            <div class="row features">
                <div class="col-sm-6 col-lg-4 item"><i class="fa fa-map-marker icon"></i>
                    <h3 class="name">Works everywhere</h3>
                    <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est.</p>
                </div>
                <div class="col-sm-6 col-lg-4 item"><i class="fa fa-clock-o icon"></i>
                    <h3 class="name">Always available</h3>
                    <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est.</p>
                </div>
                <div class="col-sm-6 col-lg-4 item"><i class="fa fa-list-alt icon"></i>
                    <h3 class="name">Customizable</h3>
                    <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est.</p>
                </div>
                <div class="col-sm-6 col-lg-4 item"><i class="fa fa-leaf icon"></i>
                    <h3 class="name">Organic</h3>
                    <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est.</p>
                </div>
                <div class="col-sm-6 col-lg-4 item"><i class="fa fa-plane icon"></i>
                    <h3 class="name">Fast</h3>
                    <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est.</p>
                </div>
                <div class="col-sm-6 col-lg-4 item"><i class="fa fa-phone icon"></i>
                    <h3 class="name">Mobile-first</h3>
                    <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est.</p>
                </div>
            </div>
        </div>
    </div>
    <div class="testimonials-clean">
        <div class="container">
            <div class="intro">
                <h2 class="text-center">Testimonials </h2>
                <p class="text-center">Our customers love us! Read what they have to say below. Aliquam sed justo ligula. Vestibulum nibh erat, pellentesque ut laoreet vitae.</p>
            </div>
            <div class="row people">
                <div class="col-md-6 col-lg-4 item">
                    <div class="box">
                        <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est.</p>
                    </div>
                    <div class="author"><img class="rounded-circle" src="resources/aboutPageResources/img/1.jpg">
                        <h5 class="name">Ben Johnson</h5>
                        <p class="title">CEO of Company Inc.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 item">
                    <div class="box">
                        <p class="description">Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, et interdum justo suscipit id.</p>
                    </div>
                    <div class="author"><img class="rounded-circle" src="resources/aboutPageResources/img/3.jpg">
                        <h5 class="name">Carl Kent</h5>
                        <p class="title">Founder of Style Co.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 item">
                    <div class="box">
                        <p class="description">Aliquam varius finibus est, et interdum justo suscipit. Vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu.</p>
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
    
    <script src="resources/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
