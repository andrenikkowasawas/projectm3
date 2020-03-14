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
<div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">FEEDBACK</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table class="table table-striped table-hover">
                <tbody>
                <tr>
                  <th style="width: 10px">Id</th>
                 
					<th>Comment</th>
					<th>Rating</th>
					
<!--                 </tr> -->
<%--          <c:forEach items="${feedbackList}" var="fl"> --%>
<!-- 				<tr>		  	 -->
<%-- 					<td>${fl.id}</td> --%>
<%-- 					<td>${fl.comment}</td>	 --%>
<%-- 					<td>${fl.rating}</td> --%>
						
					
			
<!-- 				</tr> -->
<%-- 		</c:forEach> --%>
		
				<tr>		  	
					<td>1</td>
					<td>Best Hotel Experience in my life</td>	
					<td>excellent</td>
						
					
			
				</tr>
				<tr>		  	
					<td>2</td>
					<td>average at best</td>	
					<td>average</td>
						
					
			
				</tr>
				<tr>		  	
					<td>3</td>
					<td>meh.... Restaurant is too noisy</td>	
					<td>poor</td>
						
					
			
				</tr>
				<tr>		  	
					<td>4</td>
					<td>Experience is so great especially the bed which is pretty comfy.</td>	
					<td>good</td>
						
					
			
				</tr>
				<tr>		  	
					<td>5</td>
					<td>good</td>	
					<td>excellent</td>
						
					
			
				</tr>
           </tbody></table>
            </div>
            <!-- /.box-body -->
            
			
          </div>

			</section>
	</div>
	
	</jsp:attribute>
</mt:admin_template>