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
              <h3 class="box-title">ORDER LIST</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table class="table table-striped table-hover">
                <tbody>
                <tr>
                  <th style="width: 10px">id</th>
                  <th>Guest Id</th>
					<th>Menu Name</th>
					<th>No. of Order</th>
					<th>Amount</th>
					<th>Status</th>
					<th></th>
                </tr>
         <c:forEach items="${orderlist}" var="ol">
				<tr>		  	
					<td>${ol.id}</td>
					<td>${ol.guest.id}</td>	
					<td>${ol.inRoomDiningMenu.menuName}</td>
					<td>${ol.noOfOrders}</td>	
					<td>${ol.totalAmount}</td>
					<td>${ol.status}</td>
					<td>
				<a
							href="http://localhost:8081/admin/inRoomMenu/Order/update/${ol.id}">Done</a>/<a
							href="http://localhost:8081/admin/inRoomMenu/Order/delete/${ol.id}">Delete</a>
			</td>	
				</tr>
		</c:forEach>
           </tbody></table>
            </div>
            <!-- /.box-body -->
            
			
          </div>
<!-- 
<button>
				<a href="http://localhost:8081/admin/home">BACK</a>
			</button>-->
			</section>
	</div>
	
	</jsp:attribute>
</mt:admin_template>