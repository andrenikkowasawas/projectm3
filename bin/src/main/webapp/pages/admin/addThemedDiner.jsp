<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>

<mt:admin_template title="Inventory">
	<jsp:attribute name="content">
	<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 925.8px;">
  <section class="content-header">
				<h1>
					<small>Add Themed Dining</small>
				</h1>
			</section>
<section class="content">


<form action="http://localhost:8081/admin/themedDiner/view" method="post" enctype="multipart/form-data">
	<table>
			<tr>		
				<td>Themed Diner name: </td>
				<td><input type="text" name="themedDinerName"></td>
			</tr>
			<tr>	
				<td>Description: </td>
				<td><textarea name="description"></textarea></td>
			</tr>
			<tr>	
				<td>Available on: </td>
				<td><input type="text" name="themedDinerAvailability"></td>
			</tr>
			<tr>	
				<td>Rate: </td>
				<td><input type="text" name="rate"></td>
			</tr>
			<tr>	
				<td>Image:</td>
				<td><input type="file" name="imgFile" id="imgFile" multiple></td>
			</tr>
			
					
					
					
	</table>
		<button type="submit">SUBMIT</button>
</form>

</section>
</div>
	
	</jsp:attribute>
</mt:admin_template>