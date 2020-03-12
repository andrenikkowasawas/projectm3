<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>

<mt:admin_template title="Inventory">
	<jsp:attribute name="content">
	<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 925.8px;">
  <section class="content-header">
				<h1>
					<small>Add Dining</small>
				</h1>
			</section>
			<section class="content">
<form action="http://localhost:8081/admin/dininginfo" method="post" enctype="multipart/form-data">
<table>
	<tr>
		<td>
			Restaurant Name: 
		</td>
		<td>
			<input type="text" name="diningName">
		</td>
	</tr>
	<tr>
		<td>
			Description: 
		</td>
		<td>	
			<input type="text" name="diningDescription">
		</td>
	</tr>
	<tr>
		<td>
			Upload Photo:
		</td>
		<td>
			<input type="file" name="imgFile" id="imgFile" multiple>
			
		</td>
	</tr>



</table>

<button type="submit">Submit</button>
</form>
</section>
</div>
	
	</jsp:attribute>
</mt:admin_template>