<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp" %>   
 
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${path}/resources/assets/images/favicon.png">
    <title>Severny admin Template - The Ultimate Multipurpose admin template</title>	
	<link rel="canonical" href="https://www.wrappixel.com/templates/severny-admin-template/" />
    <!-- This Page CSS -->
    <link href="${path}/resources/assets/libs/summernote/dist/summernote-bs4.css" rel="stylesheet">
    <link href="${path}/resources/assets/libs/dropzone/dist/min/dropzone.min.css" rel="stylesheet">    
    <link href="${path}/resources/assets/libs/bootstrap-table/dist/bootstrap-table.min.css" rel="stylesheet" type="text/css" />
    <!-- Custom CSS -->
    <link href="${path}/resources/dist/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<link href="${path}/resources/commonCSS/attandance.css" rel="stylesheet">

<script type="text/javascript">
	// alert("select * from grb_annual a \n join grb_member m on a.id = m.id \n where m.depart_id = 1 \n order by a.annual_id desc;");
	
</script>

</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
	<div id="main-wrapper" style="height:100%;">
		<div class="app-container"></div>
		<!-- 좌측고정 메뉴바 -->
        <%@ include file="/WEB-INF/views/common/leftMenu.jsp" %>
        <!-- 좌측고정 메뉴바 -->
		<!-- ============================================================== -->
		<!-- Page wrapper  -->
		<!-- ============================================================== -->
		<div class="page-wrapper">
			<!-- ============================================================== -->
			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- Start Page Content -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- Email App Part -->
			<!-- ============================================================== -->
			<div class="email-app position-relative" style="height:100%;">
				<!-- ============================================================== -->
				<!-- Left Part -->
				<!-- ============================================================== -->
				<%@ include file="/WEB-INF/views/attendance/subMenu.jsp" %>
				<!-- ============================================================== -->
				<!-- Right Part -->
				<!-- ============================================================== -->
			
				<div class="right-part mail-list overflow-auto" style="height:100%;">
					<!-- Action part -->
					<!-- Button group part -->
					<div class="bg-light p-3 d-flex align-items-center do-block">
						<div>
							<h4>부서 연차 내역</h4>
							<h1>2022.10</h1>							
						</div>					
					</div>
					<div class="card">						
                        <div class="card-body">
                        	<div class="col-md-2">
								<select class="form-control custom-select"
									data-placeholder="부서 검색" tabindex="1">
									<option value="부서 검색">부서 검색</option>
									<option value="사업부">사업부</option>									
									<option value="인사부">인사부</option>
									<option value="영업부">영업부</option>
									<option value="개발부">개발부</option>
									<option value="경영지원부">경영지원부</option>
									<option value="총무부">총무부</option>
								</select>
							</div>
							<hr>
                            <h4 class="card-title">부서별 연차 내역</h4>
                            <div class="container" style="align: center">
								<div class="row">									
									<div class="col bg-light border p-3">
										<div>반차</div>
										<div>7</div>
									</div>
									
									<div class="col bg-light border p-3">
										<div>연차</div>
										<div>7</div>
									</div>																		
								</div>
							</div>
							<hr><br>
							<!-- 부서 근태 통계 -->
							<div class="col-lg-6">
                       			<div class="card">
                            		<div class="card-body">
                               			<h4 class="card-title" style="width: 400px;">부서 연차 통계</h4>
                                		<div>
                                    		<canvas id="pie-chart" style="height: 400px;"></canvas>
                               		 	</div>
                            		</div>
                        		</div>
                    		</div>
                    		
							<div class="col-lg-12 col-xl-6">
								<div class="card">
									<div class="card-body analytics-info">
										<h4 class="card-title">부서 연차 통계</h4>
										<div id="basic-doughnut" style="height: 400px;"></div>
									</div>
								</div>
							</div>

							<hr><br>
							
							<!-- Table -->
                        	<div class="card">
								<div class="card-body">
									<h4 class="card-title">부서원 연차 내역</h4>
									<h6 class="card-subtitle">연차 사용 현황</h6>
									<table data-toggle="table" class="table table-striped no-wrap">
										<thead>
											<tr>												
												<th class="name" data-sortable="true">이름</th>
												<th class="depart" data-sortable="true">부서</th>
												<th class="hireday" data-sortable="true">입사일</th>
												<th class="restday" data-sortable="true">연차일</th>
												<th class="annualtotal" data-sortable="true">발생 연차</th>
												<th class="annualtotal" data-sortable="true">총 연차</th>
												<th class="annualuse" data-sortable="true">사용 연차</th>
												<th class="annualrest" data-sortable="true">잔여 연차</th>
												<th class="state" data-sortable="true">상태</th> <!-- 재직 휴직 퇴사 -->
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><img src="${path}/resources/assets/images/users/4.jpg"
													alt="user" width="40" class="rounded-circle" name="profile">Genelia Deshmukh</td>
												<td>개발부</td>
												<td>2022-01-01</td>
												<td>2022-10-04</td>
												<td>15</td>
												<td>15</td>
												<td>2</td>
												<td>13</td>
												<td>재직</td>
											</tr>
											<tr>
												<td><img src="${path}/resources/assets/images/users/3.jpg"
													alt="user" width="40" class="rounded-circle" name="profile">Genelia Deshmukh</td>
												<td>개발부</td>
												<td>2022-01-02</td>
												<td>2022-10-04</td>
												<td>15</td>
												<td>15</td>
												<td>2</td>
												<td>13</td>
												<td>재직</td>
											</tr>
											<tr>
												<td><img src="${path}/resources/assets/images/users/2.jpg"
													alt="user" width="40" class="rounded-circle" name="profile">Genelia Deshmukh</td>
												<td>개발부</td>
												<td>2022-01-03</td>
												<td>2022-10-05</td>
												<td>15</td>
												<td>15</td>
												<td>2</td>
												<td>13</td>
												<td>재직</td>
											</tr>
											<tr>
												<td><img src="${path}/resources/assets/images/users/1.jpg"
													alt="user" width="40" class="rounded-circle" name="profile">Genelia Deshmukh</td>
												<td>개발부</td>
												<td>2022-01-04</td>
												<td>2022-10-09</td>
												<td>15</td>
												<td>15</td>
												<td>2</td>
												<td>13</td>
												<td>재직</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
                        	<!-- Table -->	
                        </div>
                    </div>												
				</div>							
			</div>										
			<!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center">
                   All Rights Reserved by Severny admin. Designed and Developed by <a href="https://wrappixel.com">WrapPixel</a>.
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- End PAge Content -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- customizer Panel -->
    <!-- ============================================================== -->
    <aside class="customizer">
        <a href="javascript:void(0)" class="service-panel-toggle"><i class="fa fa-spin fa-cog"></i></a>
        <div class="customizer-body">
            <div class="p-3 border-bottom">
                <!-- Sidebar -->
                <h5 class="font-weight-medium mb-2 mt-2">Layout Settings</h5>
                <div class="custom-control custom-checkbox mt-2">
                    <input type="checkbox" class="custom-control-input sidebartoggler" name="collapssidebar"
                        id="collapssidebar">
                    <label class="custom-control-label" for="collapssidebar">Collapse Sidebar</label>
                </div>
                <div class="custom-control custom-checkbox mt-2">
                    <input type="checkbox" class="custom-control-input" name="sidebar-position" id="sidebar-position">
                    <label class="custom-control-label" for="sidebar-position">Fixed Sidebar</label>
                </div>
                <div class="custom-control custom-checkbox mt-2">
                    <input type="checkbox" class="custom-control-input" name="header-position" id="header-position">
                    <label class="custom-control-label" for="header-position">Fixed Header</label>
                </div>
                <div class="custom-control custom-checkbox mt-2">
                    <input type="checkbox" class="custom-control-input" name="boxed-layout" id="boxed-layout">
                    <label class="custom-control-label" for="boxed-layout">Boxed Layout</label>
                </div>
            </div>
            <div class="p-3 border-bottom">
                <!-- Header BG -->
                <h5 class="font-weight-medium mb-2 mt-2">Header Backgrounds</h5>
                <ul class="theme-color">
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link" data-navbarbg="skin1"></a>
                    </li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link" data-navbarbg="skin2"></a>
                    </li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link" data-navbarbg="skin3"></a>
                    </li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link" data-navbarbg="skin4"></a>
                    </li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link" data-navbarbg="skin5"></a>
                    </li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link" data-navbarbg="skin6"></a>
                    </li>
                </ul>
                <!-- Header BG -->
            </div>
            <div class="p-3 border-bottom">
                <!-- Logo BG -->
                <h5 class="font-weight-medium mb-2 mt-2">Sidebar Backgrounds</h5>
                <ul class="theme-color">
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link" data-sidebarbg="skin1"></a>
                    </li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link" data-sidebarbg="skin2"></a>
                    </li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link" data-sidebarbg="skin3"></a>
                    </li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link" data-sidebarbg="skin4"></a>
                    </li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link" data-sidebarbg="skin5"></a>
                    </li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link" data-sidebarbg="skin6"></a>
                    </li>
                </ul>
                <!-- Logo BG -->
            </div>
        </div>
    </aside>
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="${path}/resources/assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="${path}/resources/assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="${path}/resources/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- apps -->
    <script src="${path}/resources/dist/js/app.min.js"></script>
    <script src="${path}/resources/dist/js/app.init-menusidebar.js"></script>
    <script src="${path}/resources/dist/js/app-style-switcher.js"></script>
    <script src="${path}/resources/dist/js/feather.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="${path}/resources/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="${path}/resources/assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Menu sidebar -->
    <script src="${path}/resources/dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="${path}/resources/dist/js/custom.min.js"></script>
    <!-- This Page JS -->
    <script src="https://unpkg.com/tableexport.jquery.plugin/tableExport.min.js"></script>
    <script src="${path}/resources/assets/libs/bootstrap-table/dist/bootstrap-table.min.js"></script>
    <script src="${path}/resources/assets/libs/bootstrap-table/dist/bootstrap-table-locale-all.min.js"></script>
    <script src="${path}/resources/assets/libs/bootstrap-table/dist/extensions/export/bootstrap-table-export.min.js"></script>
    <script src="${path}/resources/dist/js/pages/tables/bootstrap-table.init.js"></script>    
    <!-- Chart JS -->
    <script src="${path}/resources/dist/js/pages/chartjs/chartjs.init.js"></script>
    <script src="${path}/resources/assets/libs/chart.js/dist/Chart.min.js"></script>    
    <script src="${path}/resources/assets/libs/echarts/dist/echarts-en.min.js"></script>
    <script src="${path}/resources/dist/js/pages/echarts/pie-doughnut/pie-doghnut.js"></script>
    <script type="text/javascript">
		$(function () {    
			new Chart(document.getElementById("pie-chart"), {
				type: 'pie',
				data: {
				  labels: ["반차", "연차"],
				  datasets: [{
					label: "depart attendance",
					backgroundColor: ["#02cccd", "#ff3ca6"],
					data: [7,7]
				  }]
				},
				options: {
				  title: {
					display: true,
					text: 'depart annual 2022.10'
				  }
				}
			});
			
			// based on prepared DOM, initialize echarts instance
	        var basicdoughnutChart = echarts.init(document.getElementById('basic-doughnut'));
	        var option = {
	            // Add title
	                title: {
	                    text: 'depart annual',
	                    subtext: '2022.10',
	                    x: 'center'
	                },

	                // Add legend
	                legend: {
	                    orient: 'vertical',
	                    x: 'left',
	                    data: ['출근','퇴근','지각','반차','연차']
	                },

	                // Add custom colors
	                color: ['#ffab2e', '#3f50f6', '#212529', '#ff3ca6', '#6610f2'],

	                // Display toolbox
	                toolbox: {
	                    show: true,
	                    orient: 'vertical',
	                    feature: {
	                        mark: {
	                            show: true,
	                            title: {
	                                mark: 'Markline switch',
	                                markUndo: 'Undo markline',
	                                markClear: 'Clear markline'
	                            }
	                        },
	                        dataView: {
	                            show: true,
	                            readOnly: false,
	                            title: 'View data',
	                            lang: ['View chart data', 'Close', 'Update']
	                        },
	                        magicType: {
	                            show: true,
	                            title: {
	                                pie: 'Switch to pies',
	                                funnel: 'Switch to funnel',
	                            },
	                            type: ['pie', 'funnel'],
	                            option: {
	                                funnel: {
	                                    x: '25%',
	                                    y: '20%',
	                                    width: '50%',
	                                    height: '70%',
	                                    funnelAlign: 'left',
	                                    max: 1548
	                                }
	                            }
	                        },
	                        restore: {
	                            show: true,
	                            title: 'Restore'
	                        },
	                        saveAsImage: {
	                            show: true,
	                            title: 'Same as image',
	                            lang: ['Save']
	                        }
	                    }
	                },

	                // Enable drag recalculate
	                calculable: true,

	                // Add series
	                series: [
	                    {
	                        name: 'Browsers',
	                        type: 'pie',
	                        radius: ['50%', '70%'],
	                        center: ['50%', '57.5%'],
	                        itemStyle: {
	                            normal: {
	                                label: {
	                                    show: true
	                                },
	                                labelLine: {
	                                    show: true
	                                }
	                            },
	                            emphasis: {
	                                label: {
	                                    show: true,
	                                    formatter: '{b}' + '\n\n' + '{c} ({d}%)',
	                                    position: 'center',
	                                    textStyle: {
	                                        fontSize: '17',
	                                        fontWeight: '500'
	                                    }
	                                }
	                            }
	                        },

	                        data: [
	                            {value: 35, name: '출근'},
	                            {value: 27, name: '퇴근'},
	                            {value: 5, name: '지각'},
	                            {value: 10, name: '반차'},
	                            {value: 2, name: '연차'}
	                        ]
	                    }
	                ]
	        };
	    
	        basicdoughnutChart.setOption(option);
			
			// Resize chart on menu width change and window resize
            $(window).on('resize', resize);
            $(".sidebartoggler").on('click', resize);

            // Resize function
            function resize() {
                setTimeout(function() {

                    // Resize chart
                    basicpieChart.resize();
                    basicdoughnutChart.resize();
                    customizedChart.resize();
                    nestedChart.resize();
                    poleChart.resize();
                }, 200);
            }
			
		});
	</script>
</body>
</html>