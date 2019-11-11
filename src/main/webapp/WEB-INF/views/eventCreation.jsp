<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>creationPage</title>
    <link href="/resources/eventCreationResources/css/styles.css" rel="stylesheet" type="text/css"/>
</head>

<body>
    <div class="creation__">
        <form id="create_form">
            <section id="event_create">
                <h3>Event Creation Page</h3>
            </section>
            <div id="row__padding">
                <div class="row row__">
                    <div class="col-md-4"><label class="fieldLable">Title</label></div>
                    <div class="col-md-8"><input class="form-control formInput" type="text"></div>
                </div>
                <div class="row row__">
                    <div class="col-md-4"><label class="fieldLable">Location</label></div>
                    <div class="col-md-8"><input class="form-control formInput" type="text"></div>
                </div>
                <div class="row row__">
                    <div class="col-md-4"><label class="fieldLable">Price</label></div>
                    <div class="col-md-8"><input class="form-control formInput" type="text"></div>
                </div>
                <div class="row row__">
                    <div class="col-md-4">
                        <div><span id="park__span">Include parking Space?<br></span>
                            <div class="form-check park__rad"><input class="form-check-input" type="radio" id="formCheck-1" name="park"><label class="form-check-label" for="formCheck-1">Yes</label></div>
                            <div class="form-check"><input class="form-check-input" type="radio" id="formCheck-2" name="park"><label class="form-check-label" for="formCheck-2">No</label></div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div><span id="park__span">Attach an image<br></span><input type="file" id="form__file"></div>
                    </div>
                </div>
                <div class="row row__"><button class="btn btn-primary" id="event_submit" type="submit">Button</button></div>
            </div>
        </form>
    </div>
</body>

</html>