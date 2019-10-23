<%-- 
    Document   : bookEvent
    Created on : Oct 10, 2019, 1:01:32 PM
    Author     : Anon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Event Center | Concertio</title>

        <!-- Stylesheet //-->
        <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/aboutPageResources/font/font-awesome.min.css">
        <link rel="stylesheet" href="resources/aboutPageResources/font/ionicons.min.css">
        <link rel="Stylesheet" href="resources/bookingResources/css/Navigation-Clean.css">
        <link rel="Stylesheet" href="resources/bookingResources/css/Footer-Dark.css">
        <link rel="Stylesheet" href="resources/bookingResources/css/Contact-Form-Clean.css">
        <link rel="Stylesheet" href="resources/bookingResources/css/style.css">
    </head>
    <body>
        
        <%@include file="navbar.jsp" %>

        <!-- Booking Form -->
        <div>
            <div class="contact-clean">
                <form method="post">
                    <h2 class="text-center">Book Center</h2>
                    <div class="form-group"><input class="form-control" type="text" name="name" placeholder="Name" style="margin-bottom:7px;"></div>
                    <div class="form-group"><input class="form-control is-invalid" type="email" name="email" placeholder="Email"></div>
                    <p style="margin-bottom:7px;">List of Available Centers</p>
                    <select id="sel" class="form-control" style="margin-left:0px;margin-bottom:7px;" onchange="change()">
                        <option value="select center" selected="">Select Center</option>
                        <option value="ikoyi">Ikoyi Center</option>
                        <option value="lekki">Lekki Center</option>
                        <option value="vi">V.I Center</option>
                    </select>
                    <p style="margin-bottom:7px;">Price</p>
                    <input id="set" class="form-control" type="text" name="price" value="$0.0" readonly="" inputmode="numeric" style="margin-bottom:7px;">
                    <div class="form-group"><button class="btn btn-primary" type="submit">Book</button></div>
                </form>
            </div>
        </div>
        
        <%@include file="footer.jsp" %>

        <script src="resources/js/jquery.min.js"></script>
        <script src="resources/bootstrap/js/bootstrap.min.js"></script>

        <script type="text/javascript">
            function change() {
                var se = document.getElementById("sel").value;
                var se2 = "ikoyi";
                var se3 = "lekki";
                var se4 = "vi";

                if (se === se2) {
                    document.getElementById("set").value = "$1000.0";
                } else if (se === se3) {
                    document.getElementById("set").value = "$800.0";
                } else if (se === se4) {
                    document.getElementById("set").value = "$1,140.0";
                } else {
                    document.getElementById("set").value = "$0.0";
                }
            }
        </script>
    </body>
</html>