<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp" %> 

<!DOCTYPE html>
<html>

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
    <link href="${path}/resources/dist/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>

	<div class="left-part bg-white pb-5" style="height:100%;">
		<!-- Mobile toggle button -->
		<a
			class="ti-menu ti-close btn btn-success show-left-part d-block d-md-none"
			href="javascript:void(0)"></a>
		<!-- Mobile toggle button -->
		<div class="scrollable position-relative" style="height: 100%;">
			<div class="p-3">
				<div class="card-body position-relative">
					<h4 class="card-title mb-4">근태관리</h4>
					<div id="carouselExampleFade"
						class="carousel slide status-carousel" data-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<!-- <h4 class="card-title mt-4">Nkike Shoes</h4> -->
								<p class="text-muted attendenceTime">2022년 10월 3일 (월)
									17:36:52</p>
								<p class="text-muted">
									출근시간<span class="attendenceChk"> : 미등록</span>
								</p>
								<p class="text-muted">
									퇴근시간<span class="attendenceChk"> : 미등록</span>
								</p>
							</div>
						</div>
						<!-- carousel-item active -->
						<hr class="attendenceHr">
					</div>
				</div>
			</div>
			<div class="p-6">
				<nav class="sidebar-nav">
					<ul id="sidebarnav">
						<li class="sidebar-item" style="color: #343a40;"><a
							class="sidebar-link has-arrow" href="javascript:void(0)"
							aria-expanded="false" style="color: #343a40;"> <span
								class="hide-menu" style="color: #343a40;">근태관리 </span></a>
							<ul aria-expanded="false"
								class="collapse first-level base-level-line"
								style="color: #343a40;">
								<li class="sidebar-item" style="color: #343a40;"><a
									href="attendance.at" class="sidebar-link"> <span
										class="hide-menu" style="color: #343a40;"> 내 근태 현황 </span></a></li>
								<li class="sidebar-item" style="color: #343a40;"><a
									href="attendanceWeek.at" class="sidebar-link"> <span
										class="hide-menu" style="color: #343a40;"> 내 근무 조회 </span></a></li>
								<li class="sidebar-item" style="color: #343a40;"><a
									href="attendanceMonth.at" class="sidebar-link"> <span
										class="hide-menu" style="color: #343a40;"> 월 근태 현황 </span></a></li>
								<li class="sidebar-item" style="color: #343a40;"><a
									href="attendanceRestInfo.at" class="sidebar-link"> <span
										class="hide-menu" style="color: #343a40;"> 내 연차 내역 </span></a></li>										
								<li class="sidebar-item" style="color: #343a40;"><a
									href="request_over.at" class="sidebar-link"> <span
										class="hide-menu" style="color: #343a40;"> 연장 근무 신청 </span></a></li>
								<li class="sidebar-item" style="color: #343a40;"><a
									href="request_rest.at" class="sidebar-link"> <span
										class="hide-menu" style="color: #343a40;"> 연차 반차 신청 </span></a></li>
							</ul></li>

						<li class="sidebar-item" style="color: #343a40;"><a
							class="sidebar-link has-arrow" href="javascript:void(0)"
							aria-expanded="false" style="color: #343a40;"> <span
								class="hide-menu" style="color: #343a40;">부서 근태관리 </span></a>
							<ul aria-expanded="false"
								class="collapse first-level base-level-line"
								style="color: #343a40;">
								<li class="sidebar-item" style="color: #343a40;"><a
									href="departWeek.at" class="sidebar-link"> <span
										class="hide-menu" style="color: #343a40;"> 부서 근태 내역 </span></a></li>
								<li class="sidebar-item" style="color: #343a40;"><a
									href="departMonth.at" class="sidebar-link"> <span
										class="hide-menu" style="color: #343a40;"> 부서 근태 통계 </span></a></li>
								<li class="sidebar-item" style="color: #343a40;"><a
									href="departRestWeek.at" class="sidebar-link"> <span class="hide-menu"
										style="color: #343a40;"> 부서 연차 내역 </span></a></li>
								<li class="sidebar-item" style="color: #343a40;"><a
									href="departRestMonth.at" class="sidebar-link"> <span class="hide-menu"
										style="color: #343a40;"> 부서 연차 통계 </span></a></li>
							</ul></li>

						<li class="sidebar-item" style="color: #343a40;"><a
							class="sidebar-link has-arrow" href="javascript:void(0)"
							aria-expanded="false" style="color: #343a40;"> <span
								class="hide-menu" style="color: #343a40;">전사 근태관리 </span></a>
							<ul aria-expanded="false"
								class="collapse first-level base-level-line"
								style="color: #343a40;">
								<li class="sidebar-item" style="color: #343a40;"><a
									href="grbWeek.at" class="sidebar-link"> <span class="hide-menu"
										style="color: #343a40;"> 전사 근태 내역 </span></a></li>
								<li class="sidebar-item" style="color: #343a40;"><a
									href="grbMonth.at" class="sidebar-link"> <span class="hide-menu"
										style="color: #343a40;"> 전사 근태 통계 </span></a></li>
								<li class="sidebar-item" style="color: #343a40;"><a
									href="grbRestWeek.at" class="sidebar-link"> <span class="hide-menu"
										style="color: #343a40;"> 전사 연차 내역 </span></a></li>
								<li class="sidebar-item" style="color: #343a40;"><a
									href="grbRestMonth.at" class="sidebar-link"> <span class="hide-menu"
										style="color: #343a40;"> 전사 연차 통계 </span></a></li>
							</ul></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</body>

</body>
</html>