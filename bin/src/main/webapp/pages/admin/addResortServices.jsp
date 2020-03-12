<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>

<mt:admin_template title="Inventory">
	<jsp:attribute name="content">
	<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 925.8px;">
  <section class="content-header">
				<h1>
					<small>Add Resort Services</small>
				</h1>
			</section>
			<section class="content">
			

<form action="http://localhost:8081/admin/resort-services/view" method="post">
<table>
	<tr>
		<td>Service name:</td>
		<td><input type="text" name="resortServiceName"></td>
	</tr>
	<tr>
		<td>Description:</td>
		<td><textarea name="resortServiceDescription"></textarea></td>
	</tr>
	<tr>
		<td>contact no:</td>
		<td><input type="text" name="resortServiceContact"></td>
	</tr>
	

</table>
<button type="submit">Submit</button>
</form>
</section></div></jsp:attribute></mt:admin_template>