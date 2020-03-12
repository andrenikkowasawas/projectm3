<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<table>
<tbody>
		<c:forEach items="${themedDinerList}" var="td">
		<tr>		  	
			
			<td>${td.themedDinerName}</td>
								
		</tr>
		<tr>
								<td>${td.themedDinerAvailability}</td>
		
		</tr>
		<tr>
								<td>${td.description}</td>
		
		</tr>
		<tr>
								<td>${td.rate}</td>		
		
		</tr>
		<tr>
								<td><img src="${td.imgFilePath}"/></td>
		</tr>
		<tr>
			<td><button><a href="http://localhost:8081/admin/themedDinerRemove/${td.id}">DELETE</a></button></td>
		</tr>
		</c:forEach>
  </tbody>
  </table>
 
</section>
</div>
</jsp:attribute>
</mt:admin_template>