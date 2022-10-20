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
    <!-- Custom CSS -->
    <link href="${path}/resources/assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
    <link href="${path}/resources/assets/extra-libs/c3/c3.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${path}/resources/dist/css/style.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${path}/resources/assets/extra-libs/prism/prism.css">
    <link href="${path}/resources/commonCSS/index.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<script type="text/javascript">
	function openWindowPop(url, name){
	    var options = 'top=10, left=10, width=1000, height=800, status=no, menubar=no, toolbar=no, resizable=no';
	    window.open(url, name, options);
	}
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
    <div id="main-wrapper">
        <div class="app-container"></div>
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- 좌측고정 메뉴바 -->
        <%@ include file="/WEB-INF/views/common/leftMenu.jsp" %>
        <!-- 좌측고정 메뉴바 -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- *************************************************************** -->
                <!-- Start First Cards -->
                <!-- *************************************************************** -->
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="card bg-light-info border-0">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <a href="javascript:openWindowPop('http://192.168.219.101:80/roundcube/', 'popup');"
                                        ><i data-feather="mail"></i>
                                    </a>
                                </div>
                                <div>
                                    <h2 class="mb-0 font-weight-medium">이메일</h2>
                                    <h6 class="text-muted font-weight-normal mb-0">Email</h6>
 
                                </div>
                            </div>
	                	</div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card bg-light-danger border-0">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <a href="javascript:void(0)"
                                        class="btn btn-danger rounded-circle btn-circle-lg text-white mb-2">
                                        <i data-feather="clipboard"></i>
                                    </a>
                                </div>
                                <div>
                                    <h2 class="mb-0 font-weight-medium">전자결재</h2>
                                    <h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">Electronic Document Management</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card bg-light-warning border-0">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <a href="javascript:void(0)"
                                        class="btn btn-warning rounded-circle btn-circle-lg text-white mb-2">
                                        <i data-feather="calendar"></i>
                                    </a>
                                </div>
                                <div>
                                    <h2 class="mb-0 font-weight-medium">캘린더</h2>
                                    <h6 class="text-muted font-weight-normal mb-0">Calender</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card bg-light-success border-0">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <a href="javascript:void(0)"
                                        class="btn btn-success rounded-circle btn-circle-lg text-white mb-2">
                                        <i data-feather="message-circle"></i>
                                    </a>
                                </div>
                                <div>
                                    <h2 class="mb-0 font-weight-medium">채팅</h2>
                                    <h6 class="text-muted font-weight-normal mb-0">chat</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- *************************************************************** -->
                <!-- End First Cards -->
                <!-- *************************************************************** -->
                <!-- *************************************************************** -->
                <!-- Start Earnings & Carousel Widget -->
                <!-- *************************************************************** -->
                <div class="row align-items-stretch">
                    <div class="col-xl-9 col-lg-8 col-md-12 d-flex align-items-stretch justify-content-strech">
                        <div class="card w-100">
                            <div class="card-body">
                                <h4 class="card-title">Earning Statastics</h4>
                                <div class="pt-5" style="height: 290px;">
                                    <canvas id="bar-chart" width="400"></canvas>
                                </div>
                                <ul class="list-inline text-center mt-4 mb-0">
                                    <li class="list-inline-item text-muted"><i
                                            class="font-10 fas fa-circle mr-2 text-info"></i>Sales
                                    </li>
                                    <li class="list-inline-item text-muted"><i
                                            class="font-10 fas fa-circle mr-2 text-light"></i>Earnings
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-12 d-flex align-items-stretch justify-content-strech">
                        <div class="card w-100">
                            <div class="card-body position-relative">
                                <h4 class="card-title mb-4">근태관리</h4>
                                <div id="carouselExampleFade" class="carousel slide status-carousel"
                                    data-ride="carousel">
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <!-- <h4 class="card-title mt-4">Nkike Shoes</h4> -->
                                            <p class="text-muted attendenceTime">2022년 10월 3일 (월) 17:36:52</p>
                                            <p class="text-muted">출근시간<span class="attendenceChk">미등록</span></p>
                                            <p class="text-muted">퇴근시간<span class="attendenceChk">미등록</span></p>
                                        </div>
                                    </div> <!-- carousel-item active -->
                                    <hr class="attendenceHr">
                                    <div class="btn_wrap">
										<button type="button" class="btn waves-effect waves-light btn-outline-info btnAttendence">출근하기</button>
					                	<button type="button" class="btn waves-effect waves-light btn-outline-info btnAttendence">퇴근하기</button>
					                	<div class="col-xlg-6 col-lg-6 mb-4">
					                       	<div class="card-body">
					                       		<div class="btn-group-vertical" role="group" aria-label="Vertical button group">
					                       			<div class="btn-group" role="group">
					                                   	<button id="btnGroupVerticalDrop1" type="button"
					                                        class="btn dropdown-toggle btn-outline-info" data-toggle="dropdown"
					                                        aria-haspopup="true" aria-expanded="false">
					                                        상태변경
					                                        </button>
					                                        <div class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop1">
					                                        	<a class="dropdown-item" href="javascript:void(0)">업무</a>
								                            <a class="dropdown-item" href="javascript:void(0)">업무종료</a>
								                            <a class="dropdown-item" href="javascript:void(0)">외근</a>
								                            <a class="dropdown-item" href="javascript:void(0)">출장</a>
					                                        </div>
					                                   </div>
						                    	</div> <!-- btn-group-vertical -->
						                	</div> 
					                	</div>
					            	</div> <!-- btn_wrap -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- *************************************************************** -->
                <!-- End Earnings & Carousel Widget -->
                <!-- *************************************************************** -->
                <!-- *************************************************************** -->
                <!-- Start Top Leader Table -->
                <!-- *************************************************************** -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title mb-4">기안 문서함</h4>
                                <div class="table-responsive">
                                    <table class="table no-wrap v-middle mb-0">
                                        <thead>
                                            <tr class="border-0">
                                                <th class="border-0 font-weight-medium text-muted">기안일</th>
                                                <th class="border-0 font-weight-medium text-muted px-2">결재양식</th>
                                                <th class="border-0 font-weight-medium text-muted">제목</th>
                                                <th class="border-0 font-weight-medium text-muted text-center">첨부파일</th>
                                                <th class="border-0 font-weight-medium text-muted last-collum">결재상태</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="p-2">
                                                    <div class="d-flex no-block align-items-center">
                                                    	<span class="text-muted">2022-10-03</span>
                                                    </div>
                                                </td>
                                                <td class="text-muted p-2">업무기안</td>
                                                <td>기안 부탁드립니다.</td>
                                                <td class="text-center"><i class="fa fa-paperclip"></i>
                                                </td>
                                                <td class="text-center text-muted font-weight-medium"><span class="badge badge-danger mr-2">완료</span></td>
                                            </tr>
                                            <tr>
                                                <td class="p-2">
                                                    <div class="d-flex no-block align-items-center">
                                                    	<span class="text-muted">2022-10-03</span>
                                                    </div>
                                                </td>
                                                <td class="text-muted p-2">업무기안</td>
                                                <td>기안 부탁드립니다.</td>
                                                <td class="text-center"><i class="fa fa-paperclip"></i>
                                                </td>
                                                <td class="text-center text-muted font-weight-medium"><span class="badge badge-danger mr-2">완료</span></td>
                                            </tr>
                                            <tr>
                                                <td class="p-2">
                                                    <div class="d-flex no-block align-items-center">
                                                    	<span class="text-muted">2022-10-03</span>
                                                    </div>
                                                </td>
                                                <td class="text-muted p-2">업무기안</td>
                                                <td>기안 부탁드립니다.</td>
                                                <td class="text-center"><i class="fa fa-paperclip"></i>
                                                </td>
                                                <td class="text-center text-muted font-weight-medium"><span class="badge badge-danger mr-2">완료</span></td>
                                            </tr>
                                            <tr>
                                                <td class="p-2">
                                                    <div class="d-flex no-block align-items-center">
                                                    	<span class="text-muted">2022-10-03</span>
                                                    </div>
                                                </td>
                                                <td class="text-muted p-2">업무기안</td>
                                                <td>기안 부탁드립니다.</td>
                                                <td class="text-center"><i class="fa fa-paperclip"></i>
                                                </td>
                                                <td class="text-center text-muted font-weight-medium"><span class="badge badge-danger mr-2">완료</span></td>
                                            </tr>
                                            <tr>
                                                <td class="p-2">
                                                    <div class="d-flex no-block align-items-center">
                                                    	<span class="text-muted">2022-10-03</span>
                                                    </div>
                                                </td>
                                                <td class="text-muted p-2">업무기안</td>
                                                <td>기안 부탁드립니다.</td>
                                                <td class="text-center"><i class="fa fa-paperclip"></i>
                                                </td>
                                                <td class="text-center text-muted font-weight-medium"><span class="badge badge-danger mr-2">완료</span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- *************************************************************** -->
                <!-- End Top Leader Table -->
                <!-- *************************************************************** -->
                
                <!-- *************************************************************** -->
                <!-- Start Top Leader Table -->
                <!-- *************************************************************** -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title mb-4">결재 대기 문서</h4>
                                <div class="table-responsive">
                                    <table class="table no-wrap v-middle mb-0">
                                        <thead>
                                            <tr class="border-0">
                                                <th class="border-0 font-weight-medium text-muted">기안일</th>
                                                <th class="border-0 font-weight-medium text-muted px-2">결재양식</th>
                                                <th class="border-0 font-weight-medium text-muted">제목</th>
                                                <th class="border-0 font-weight-medium text-muted text-center">첨부파일</th>
                                                <th class="border-0 font-weight-medium text-muted last-collum">기안자</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="p-2">
                                                    <div class="d-flex no-block align-items-center">
                                                    	<span class="text-muted">2022-10-03</span>
                                                    </div>
                                                </td>
                                                <td class="text-muted p-2">업무기안</td>
                                                <td>기안 부탁드립니다.</td>
                                                <td class="text-center"><i class="fa fa-paperclip"></i>
                                                </td>
                                                <td class="text-center text-muted font-weight-medium">김태희</td>
                                            </tr>
                                            <tr>
                                                <td class="p-2">
                                                    <div class="d-flex no-block align-items-center">
                                                    	<span class="text-muted">2022-10-03</span>
                                                    </div>
                                                </td>
                                                <td class="text-muted p-2">업무기안</td>
                                                <td>기안 부탁드립니다.</td>
                                                <td class="text-center"><i class="fa fa-paperclip"></i>
                                                </td>
                                                <td class="text-center text-muted font-weight-medium">김태희</td>
                                            </tr>
                                            <tr>
                                                <td class="p-2">
                                                    <div class="d-flex no-block align-items-center">
                                                    	<span class="text-muted">2022-10-03</span>
                                                    </div>
                                                </td>
                                                <td class="text-muted p-2">업무기안</td>
                                                <td>기안 부탁드립니다.</td>
                                                <td class="text-center"><i class="fa fa-paperclip"></i>
                                                </td>
                                                <td class="text-center text-muted font-weight-medium">김태희</td>
                                            </tr>
                                            <tr>
                                                <td class="p-2">
                                                    <div class="d-flex no-block align-items-center">
                                                    	<span class="text-muted">2022-10-03</span>
                                                    </div>
                                                </td>
                                                <td class="text-muted p-2">업무기안</td>
                                                <td>기안 부탁드립니다.</td>
                                                <td class="text-center"><i class="fa fa-paperclip"></i>
                                                </td>
                                                <td class="text-center text-muted font-weight-medium">김태희</td>
                                            </tr>
                                            <tr>
                                                <td class="p-2">
                                                    <div class="d-flex no-block align-items-center">
                                                    	<span class="text-muted">2022-10-03</span>
                                                    </div>
                                                </td>
                                                <td class="text-muted p-2">업무기안</td>
                                                <td>기안 부탁드립니다.</td>
                                                <td class="text-center"><i class="fa fa-paperclip"></i>
                                                </td>
                                                <td class="text-center text-muted font-weight-medium">김태희</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- *************************************************************** -->
                <!-- End Top Leader Table -->
                <!-- *************************************************************** -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center text-muted">
                Copyright 2019. All Rights Reserved by Severny Admin
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
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
    <!--Wave Effects -->
    <!-- themejs -->
    <!--Menu sidebar -->
    <script src="${path}/resources/dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="${path}/resources/dist/js/custom.min.js"></script>
    <!--This page JavaScript -->
    <!--chartis chart-->
    <script src="${path}/resources/assets/libs/chartist/dist/chartist.min.js"></script>
    <script src="${path}/resources/assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
    <!--c3 charts -->
    <script src="${path}/resources/assets/extra-libs/c3/d3.min.js"></script>
    <script src="${path}/resources/assets/extra-libs/c3/c3.min.js"></script>
    <!--chartjs -->
    <script src="${path}/resources/assets/libs/chart.js/dist/Chart.min.js"></script>
    <script src="${path}/resources/assets/libs/gaugeJS/dist/gauge.min.js"></script>
    <script src="${path}/resources/dist/js/pages/dashboards/dashboard1.js"></script>
</body>

</html>