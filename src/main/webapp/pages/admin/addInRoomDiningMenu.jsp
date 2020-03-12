<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<mt:admin_template title="Inventory">
	<jsp:attribute name="content">
	<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 925.8px;">
  <section class="content-header">
				<h1>
					<small>In Room Category</small>
				</h1>
			</section>
			<section class="content">

<p>${inRoomDiningCategoryId}</p>

<form action="http://localhost:8081/admin/in-room-dining-category-list/${inRoomDiningCategoryId}/in-room-dining-menu/view" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<td>Menu name:</td>
				<td><input type="text" name="menuName"></td>
			</tr>
			<tr>
				<td>Price:</td>
				<td><input type="text" name="menuPrice"></td>
			</tr>
			<tr>
				<td>Description:</td>
				<td> <textarea name="menuDescription"></textarea></td>
			</tr>
			<tr>
				<td>Image:</td>
				<td><input type="file" name="imgFile" id="imgFile"></td>
			</tr>
					
					
		</table>
					<button type="submit">SUBMIT</button>
</form>

</section>
</div>
</jsp:attribute>
</mt:admin_template>