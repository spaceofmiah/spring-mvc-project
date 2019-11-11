<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix='t' tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:base>
	<title>Add new event</title>
	
    <div class="container">
        <form id="create_form">
            <section id="event_create">
                <h3>Event Creation Page</h3>
            </section>
            
            <div class="row">
                
              <div class="col-12 my-2">
              	<label class="fieldLable">Title</label>
              	<input class="form-control formInput" type="text">
              </div>
                
              <div class="col-6 my-2">
              	<label class="fieldLable">Location</label>
              	<input class="form-control formInput" type="text">
              </div>

             <div class="col-6 my-2">
             	<label class="fieldLable">Price</label>
             	<input class="form-control formInput" type="text">
             </div>
                
             <div class="col-12">
            	<p>Include parking Space?</p>

              	<label for="formCheck-1">Yes</label>
              	&emsp;&emsp;<input class="form-check-input" type="radio" id="formCheck-1" name="park">
              	
              	<label for="formCheck-2">No</label>
              	&emsp;&emsp;<input class="form-check-input" type="radio" id="formCheck-2" name="park">
                
             </div>
             
             <div class="col-12 my-2">
                 <div>
                 	<span id="park__span">Attach an image<br></span>
                 	<input type="file" id="form__file">
                 </div>
             </div>
         		
         	  <div class="px-3">         	  
             	<input type="submit" class="btn btn-primary" id="event_submit" value="Add event center" />
         	  </div>
            </div>
        </form>
    </div>
    
</t:base>