<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix='t' tagdir="/WEB-INF/tags" %>
<t:base>	
		<title>Book</title>

        <!-- Booking Form -->
        <div class="contact-clean container">
                <form method="post">
                    <h2 class="text-center">Book Center</h2>
                    <div class="form-group"><input class="form-control" type="text" name="name" placeholder="Name" style="margin-bottom:7px;"></div>
                    <div class="form-group"><input class="form-control is-invalid" type="email" name="email" placeholder="Email"></div>
<!--                    <p style="margin-bottom:7px;">List of Available Centers</p>
                    <select id="sel" class="form-control" style="margin-left:0px;margin-bottom:7px;" onchange="change()">
                        <option value="select center">Select Center</option>
                        <option value="ikoyi">Ikoyi Center</option>
                        <option value="lekki">Lekki Center</option>
                        <option value="vi">V.I Center</option>
                    </select>
                    <p style="margin-bottom:7px;">Price</p>
                    <input id="set" class="form-control" type="text" name="price" value="$0.0" inputmode="numeric" style="margin-bottom:7px;">-->
                    <div class="form-group"><button class="btn btn-primary" type="submit">Book</button></div>
                </form>
        </div>
               
        
        		
		
<!--        <script type="text/javascript">
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
		</script>-->
</t:base>
