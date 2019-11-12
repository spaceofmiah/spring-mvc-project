<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix='t' tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<t:base>
	<title>Add new event</title>
	
    <div class="container">
        <form:form 
        	action="."  modelAttribute="hallForm" method="POST" enctype="multipart/form-data">
            <section id="event_create">
                <h3>Event Creation Page</h3>
            </section>
            
            <div class="row">
              <div class="col-6 my-2">
              	<label>Name</label>
              	<form:input class="form-control formInput" type="text" path="name" />
              </div>
              
              <div class="col-6 my-2">
              	<label>Capacity</label>
              	<form:input class="form-control formInput" type="number" path="capacity" />
              </div>
                
              <div class="col-6 my-2">
              	<label>Location</label>
              	<form:input class="form-control formInput" type="text" path="location" />
              </div>

             <div class="col-6 my-2">
             	<label>Price</label>
             	<form:input class="form-control formInput" type="text" path="price" />
             </div>
                
             <div class="col-12">
            	<p>Include parking Space?</p>

              	<label for="formCheck-1">Yes</label>
              	&emsp;&emsp;
              	<form:radiobutton value="Yes" name="parkingSpace" path="parkingSpace" />
              	
              	<label for="formCheck-2">No</label>
              	&emsp;&emsp;
              	<form:radiobutton value="Yes"  name="parkingSpace" path="parkingSpace" />
             </div>
             
	         <div class="col-12 my-2">
                 <div>
                 	<span id="park__span">Attach an image<br></span>
                 	<input type="file" name="file" id="id_file" />
                 </div>
             </div>
             
         		<input type="hidden"
					    name="${_csrf.parameterName}"
					    value="${_csrf.token}"/>
         	  <div class="px-3">         	  
             	<input type="submit" class="btn btn-primary" id="event_submit" value="Add event center" />
         	  </div>
            </div>
        </form:form>
    </div>
    
</t:base>