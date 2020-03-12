<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.3/dist/Chart.min.js"></script>

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
				 <section class="content">
				                   <div class="row">
				 
				                     <div class="col-md-6">
				 
				    <div class="box box-danger">
                        <div class="box-header with-border">
                          <h3 class="box-title">Guest Ratings</h3>
            
                          <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                            </button>
                            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                          </div>
                        </div>
                        <div class="box-body">
                          <canvas id="guestRatings" style="height: 257px; width: 514px;" height="257" width="514"></canvas>
                        </div>
                        <!-- /.box-body -->
                      </div>
				 
				 </div>
				 
				 
                    <div class="col-md-6">
                      <!-- AREA CHART -->
                      <div class="box box-primary">
                        <div class="box-header with-border">
                          <h3 class="box-title">Male & Female Demograph</h3>
            
                          <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                            </button>
                            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                          </div>
                        </div>
                        <div class="box-body">
                          <div class="chart">
                            <canvas id="pieChart" style="height: 251px; width: 514px;" height="251" width="514"></canvas>
                          </div>
                        </div>
                        <!-- /.box-body -->
                      </div>
                      <!-- /.box -->
            </div>
            </div>
            <div class="row">
                                <div class="col-md-6">
            
                      <!-- DONUT CHART -->
                      <div class="box box-danger">
                        <div class="box-header with-border">
                          <h3 class="box-title">Guest Age Gap</h3>
            
                          <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                            </button>
                            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                          </div>
                        </div>
                        <div class="box-body">
                          <canvas id="doughnutChart" style="height: 257px; width: 514px;" height="257" width="514"></canvas>
                        </div>
                        <!-- /.box-body -->
                      </div>
                      </div>
                      
                      <!-- /.box -->
            
                    <!-- /.col (LEFT) -->
                    <div class="col-md-6">
            
                      <!-- BAR CHART -->
                      <div class="box box-success">
                        <div class="box-header with-border">
                          <h3 class="box-title">Guest Nationalities</h3>
            
                          <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                            </button>
                            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                          </div>
                        </div>
                        <div class="box-body">
                          <div class="chart">
                            <canvas id="barChart" style="height: 231px; width: 514px;" height="231" width="514"></canvas>
                          </div>
                        </div>
                        <!-- /.box-body -->
                      </div>
                      <!-- /.box -->
            
                    </div>
                    <!-- /.col (RIGHT) -->
                  </div>
                  <!-- /.row -->
<%--                   <c:forEach items = "${guest}" var = "room"> --%>
<%--         		 Name: <c:out value = "${room.guestFirstname}"/><p> --%>
<%--       				</c:forEach> --%>
<%-- 				${ttt} --%>
            	</section>
            	
            	
                </section>
                <!-- /.content -->
              </div>

		
		
 <script>
    //----PIE CHART----//
    var ctx = document.getElementById('pieChart').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'pie',
    data: {
        labels: ['Female', 'Male'],
        datasets: [
          {
            label: '# of Votes',
            data: [${femaleGuest},${maleGuest}],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    }
});



//---GUEST RATINGS----//
var ctx = document.getElementById('guestRatings').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'doughnut',
    data: {
        labels: ['excellent','good','average','poor','very poor'],
        datasets: [
          {
            label: '# of Votes',
            data: [${excellent},${good},${average},${poor},${verypoor}],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255,0,0,0.5)',
                'rgba(0, 0, 255, 0.5)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255,0,0,0.8)',
                'rgba(0, 0, 255, 0.8)'
            ],
            borderWidth: 1
        }]
    }

});




//----DONUT CHART----//
var ctx = document.getElementById('doughnutChart').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'doughnut',
    data: {
        labels: ['>20','20-25','26-30','31-35','36-40','41-45','46-50','50<'],
        datasets: [
          {
            label: '# of Votes',
            data: [${twentyBelow},${twentyTotwentyFive},${twentySixToThirty},${thirtyOneToThirtyFive},${thirtySixToForty}
            ,${fortyOneToFortyFive},${fortySixToFifty},${fiftyAbove}],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(255,0,0,0.5)',
                'rgba(0, 0, 255, 0.5)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)',
                'rgba(255,0,0,0.8)',
                'rgba(0, 0, 255, 0.8)'
            ],
            borderWidth: 1
        }]
    }
});
//----BAR CHART---- FOR NATIONALITY//
var ctx = document.getElementById('barChart').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['Filipino','Chinese','Korean','Japanese','American','others'],
        datasets: [
          {
            label: 'Guest Nationalities',
            data: [${filipino},${chinese},${korean},${japanese},${american},${others}],
            backgroundColor: [
                'rgba(0, 0, 0, 0.1)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});

</script>
		


	</jsp:attribute>
</mt:admin_template>
