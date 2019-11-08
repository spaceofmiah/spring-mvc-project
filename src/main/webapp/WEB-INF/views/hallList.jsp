<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix='t' tagdir="/WEB-INF/tags" %>
<t:base>	
		<title>Hall list</title>
		
		<div id="bg-space" class="container">
        <div class="row">
            <div id="leftSide" class="col-md-4">
                <section class="Lsection">
                    <p class="leftSideFilter">Filter by name:</p><input type="text"></section>
                <section id="Lsection2" class="Lsection">
                    <p class="leftSideFilter">Price</p>
                    <div>
                        <div id="priceFilter" class="row no-gutters">
                            <div class="col-md-6 priceGridright"><input type="number" class="LpriceInput" placeholder="min"></div>
                            <div class="col-md-6 priceGridright"><input type="number" class="LpriceInput" placeholder="max"></div>
                        </div>
                    </div>
                </section>

                <section class="Lsection">
                    <p class="leftSideFilter">Location</p><input type="text" id="LlocationInput"></section>
                <section class="Lsection">
                    <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-2"><label class="form-check-label leftSideFilter" for="formCheck-2">Parking Space</label></div>
                </section>
            </div>
            <div class="col-md-8">
                <div id="rightSideFilterTop" class="text-center mb-4">
                    <div class="row">
                        <div class="col"><input type="number" placeholder="min"></div>
                        <div class="col"><input type="number" placeholder="max"></div>
                        <div class="col">
                            <div class="dropdown"><button class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false" id="sortByBtn" type="button">Sort by</button>
                                <div class="dropdown-menu" role="menu"><a class="dropdown-item" role="presentation" href="#">First Item</a><a class="dropdown-item" role="presentation" href="#">Second Item</a><a class="dropdown-item" role="presentation" href="#">Third Item</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="row">
                            <div class="col">
                                <div class="card"><img class="card-img-top w-100 d-block" src="assets/img/laugh%20(2).png">
                                    <div class="card-body">
                                        <h4 class="card-title">Title</h4>
                                        <h6 class="text-muted card-subtitle mb-2">location</h6>
                                        <p class="card-text">$120,000</p><a class="card-link" href="#">book</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="row">
                            <div class="col">
                                <div class="card"><img class="card-img-top w-100 d-block" src="assets/img/laugh%20(2).png">
                                    <div class="card-body">
                                        <h4 class="card-title">Title</h4>
                                        <h6 class="text-muted card-subtitle mb-2">location</h6>
                                        <p class="card-text">$120,000</p><a class="card-link" href="#">book</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</t:base>