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
    <link href="${path}/resources/commonCSS/leftMenu.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
	<aside class="left-sidebar" style="padding-top:0;">
	 	<!-- ============================================================== -->
		<div class="user-profile text-center pt-2">
			<!-- ============================================================== -->
	        <!-- Logo -->
	        <!-- ============================================================== -->
	        <div class="navbar-brand">
	        	<!-- Logo icon -->
	            <a href="index.co">
	            	<b class="logo-icon">
	            		<img src="${path}/resources/images/groubee_logo.png" alt="homepage" class="logo" />
	            	</b>
	            </a>
	        </div>
			<!-- ============================================================== -->
			<!-- End Logo -->
			<!-- ============================================================== -->
			<div class="d-flex align-items-center justify-content-center pb-3">
				<div class="dropdown sub-dropdown">
					<button class="btn profile-pic rounded-circle position-relative" type="button"
						id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    </button>
				</div>
			</div>
			<div class="profile-section">
				<p class="font-weight-bold mb-0 font-18">김영수 사원</p>
				<span class="op-7 font-14">생산본부</span><br>
				<button type="button" id="btnLogout" class="btn waves-effect waves-light btn-rounded btn-outline-light" onClick="location.href='login.co'">logout</button>
				<!-- <button id="logout" onClick="location.href='login.co'">logout</button> -->
			</div>
		</div>
		<!-- Sidebar scroll-->
		<div class="scroll-sidebar">
			<div class="side-attendance">
               	<nav class="sidebar-nav">
                   	<ul id="sidebarnav">
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="index.co"
                                aria-expanded="false"><i data-feather="grid" class="feather-icon"></i><span
                                    class="hide-menu">홈</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="img.hu"
                                aria-expanded="false"><i data-feather="users" class="feather-icon"></i><span
                                    class="hide-menu">조직도</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="approvallist.ap?stateid=on"
                                aria-expanded="false"><i data-feather="clipboard" class="feather-icon"></i><span
                                    class="hide-menu">전자결재</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="calendar_main.ca"
                                aria-expanded="false"><i data-feather="calendar" class="feather-icon"></i><span
                                    class="hide-menu">캘린더</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="chat.ch"
                                aria-expanded="false"><i data-feather="message-circle" class="feather-icon"></i><span
                                    class="hide-menu">채팅</span></a></li>
                         <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="msgIndex.me"
                                aria-expanded="false"><i data-feather="edit-3" class="feather-icon"></i><span
                                    class="hide-menu">쪽지</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="humanMain.hu"
                                aria-expanded="false"><i data-feather="tag" class="feather-icon"></i><span
                                    class="hide-menu">인사관리</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="attendance.at"
                                aria-expanded="false"><i data-feather="pie-chart" class="feather-icon"></i><span
                                    class="hide-menu">근태관리</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="archives_main.ar"
                                aria-expanded="false"><i data-feather="hard-drive" class="feather-icon"></i><span
                                    class="hide-menu">자료실</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="board.bo"
                                aria-expanded="false"><i data-feather="layout" class="feather-icon"></i><span
                                    class="hide-menu">게시판</span></a></li>
                   	</ul>
               	</nav>
          	</div>
		</div>
	</aside>
	<!-- ============================================================== -->
	<!-- End Left Sidebar - style you can find in sidebar.scss  -->
	<!-- ============================================================== -->
</body>
</html>