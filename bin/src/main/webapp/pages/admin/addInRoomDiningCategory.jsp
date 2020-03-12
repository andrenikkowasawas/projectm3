<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<mt:admin_template title="Inventory">
	<jsp:attribute name="content">
	<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 925.8px;">
  <section class="content-header">
				<h1>
					<small>Themed Diner list</small>
				</h1>
			</section>
			<section class="content">

<form action="http://localhost:8081/admin/in-room-dining-category/view" method="post" enctype="multipart/form-data">
<table>
<tr>
	<td>inroomdining Category:</td>
	<td><input type="text" name="menuCategory"></td>
</tr>
<tr>
	<td>Upload Image:</td>
	<td><input type="file" name="imgFile" id="imgFile"/></td>
</tr>

</table>
<button type="submit">SUBMIT</button>

</form>
</section>

</div>
</jsp:attribute>
</mt:admin_template>