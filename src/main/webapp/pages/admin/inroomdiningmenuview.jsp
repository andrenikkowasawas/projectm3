<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
td {
	width: 200px;
}
</style>
<!-- starts here -->
<mt:admin_template title="Inventory">
	<jsp:attribute name="content">
	<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 925.8px;">
	<section class="content">
			


			<p>menu category: ${inRoomDiningMenu.inRoomDiningCategory.menuCategory}</p>

			<p>menu name: ${menuName}</p>
			<p>PRICE: ${menuPrice}</p>
			<p>description: ${menuDescription}</p>
			<img style="width:200px; height:200px;" src="${pageContext.request.contextPath}/uploads/${imgFile}"/>
			
    		
    		    		
    		    		  <button><a href="http://localhost:8081/admin/home">BACK</a></button>
    		    		
    		
</section>
</div>
</jsp:attribute>
</mt:admin_template>