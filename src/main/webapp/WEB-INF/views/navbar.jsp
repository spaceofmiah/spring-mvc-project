<%-- 
    Document   : navbar
    Created on : Oct 22, 2019, 12:36:54 PM
    Author     : Anon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link rel="Stylesheet" href="resources/bookingResources/css/Navigation-Clean.css">
        <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
    </head>
    <body>
        <div>
            <nav class="navbar navbar-dark navbar-expand-md bg-primary navigation-clean">
                <div class="container"><a class="navbar-brand" href="#">Concertio</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse"
                         id="navcol-1">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item" role="presentation"><a class="nav-link" href="index.jsp">Home</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="about">About</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="bookEvent.jsp">Book Center</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </body>
</html>
