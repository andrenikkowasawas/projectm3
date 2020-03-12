<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>

<mt:admin_template title="Inventory">
	<jsp:attribute name="content">
	<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 925.8px;">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					<small>Date&Time: <span id="date"></span>
						  <span id = "time"></span></small>
				</h1>
			</section>

			<section class="content">
		<form action="http://localhost:8081/admin/roomInfo" method="post">
		room no: <input type="text" name="roomNo">
		
		<button type="submit">Submit</button>
		</form>
		</section>
		</div>
	
	</jsp:attribute>
</mt:admin_template>

<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" --%>
<%--     pageEncoding="ISO-8859-1"%> --%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="ISO-8859-1"> -->
<!-- <title>Add Room</title> -->
<!-- </head> -->
<!-- <body> -->
<!-- <h1>Add room</h1> -->

<!-- <form action="http://localhost:8081/admin/roomInfo" method="post"> -->
<!-- room no: <input type="text" name="roomNo"> -->

<!-- <button type="submit">Submit</button> -->
<!-- </form> -->
<!-- </body> -->
<!-- </html> -->