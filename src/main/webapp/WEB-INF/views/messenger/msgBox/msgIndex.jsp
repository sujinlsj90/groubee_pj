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
	<link rel="icon" type="image/png" sizes="20x20" href="${path}/resources/images/groubee_pavicon_black.png">
	<title>그루비 그룹웨어</title>	
	<link rel="canonical" href="https://www.wrappixel.com/templates/severny-admin-template/" />
	<!-- Custom CSS -->
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/libs/quill/dist/quill.snow.css">
	<!-- Custom CSS -->
	<link href="${path}/resources/dist/css/style.min.css" rel="stylesheet">
	
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
	$(function() {
		$.ajax({ // sendRequest 호출하라는 의미
			url: 'msgInbox.me', // 요청 보냄 , 요청을 JQueryController.java 한테 보냄
			type: 'GET',						  // 요청 보냄
			dataType: 'text',					  // 요청 보냄
			success: function(result) { // 콜백함수 - 전송성공시 결과가 result에 전송된다. => result = httpRequest.responseText
				$("#note-full-container").html(result);
			},
			error: function() {
				alert("오류");
			}
		});
		
		// 받은쪽지함
		$("#getMsg").click(function() {
			
			$.ajax({ // sendRequest 호출하라는 의미
				url: 'msgInbox.me', // 요청 보냄 , 요청을 JQueryController.java 한테 보냄
				type: 'GET',						  // 요청 보냄
				dataType: 'text',					  // 요청 보냄
				success: function(result) { // 콜백함수 - 전송성공시 결과가 result에 전송된다. => result = httpRequest.responseText
					$("#note-full-container").html(result);
				},
				error: function() {
					alert("오류");
				}
			});
		});
		
		// 보낸쪽지함
		$("#sendMsg").click(function() {
			$('#sendMsg a').addClass('.nav-link.active');
			
			$.ajax({ // sendRequest 호출하라는 의미
				url: 'msgSendbox.me', // 요청 보냄 , 요청을 JQueryController.java 한테 보냄
				type: 'GET',						  // 요청 보냄
				dataType: 'text',					  // 요청 보냄
				success: function(result) { // 콜백함수 - 전송성공시 결과가 result에 전송된다. => result = httpRequest.responseText
					$("#note-full-container").html(result);
				},
				error: function() {
					alert("오류");
				}
			});
		});
		
		// 휴지통
		$("#trashMsg").click(function() {
			$.ajax({ // sendRequest 호출하라는 의미
				url: 'msgTrash.me', // 요청 보냄 , 요청을 JQueryController.java 한테 보냄
				type: 'GET',						  // 요청 보냄
				dataType: 'text',					  // 요청 보냄
				success: function(result) { // 콜백함수 - 전송성공시 결과가 result에 전송된다. => result = httpRequest.responseText
					$("#note-full-container").html(result);
				},
				error: function() {
					alert("오류");
				}
			});
		});
		
		// 임시보관함
		$("#tempoMsg").click(function() {
			$.ajax({ // sendRequest 호출하라는 의미
				url: 'msgTempbox.me', // 요청 보냄 , 요청을 JQueryController.java 한테 보냄
				type: 'GET',						  // 요청 보냄
				dataType: 'text',					  // 요청 보냄
				success: function(result) { // 콜백함수 - 전송성공시 결과가 result에 전송된다. => result = httpRequest.responseText
					$("#note-full-container").html(result);
				},
				error: function() {
					alert("오류");
				}
			});
		});
		
		
		
		
	});
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
		<div class="page-wrapper" style="height:100%;">
			<!-- ============================================================== -->
	            <!-- Bread crumb and right sidebar toggle -->
	            <!-- ============================================================== -->
	            <div class="page-breadcrumb">
                    <div class="row">
                        <div class="col-7 align-self-center">
                            <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">쪽지</h4>
                        </div>
                    </div>
                </div>
	            <!-- ============================================================== -->
	            <!-- End Bread crumb and right sidebar toggle -->
	            <!-- ============================================================== -->
	            <!-- ============================================================== -->
	            <!-- Container fluid  -->
	            <!-- ============================================================== -->
    			<div class="container-fluid note-has-grid">
    				<ul class="nav nav-pills p-3 bg-white mb-3 rounded-pill align-items-center">
						<li class="nav-item" id="getMsg"> 
							<a href="javascript:void(0)" class="nav-link rounded-pill note-link d-flex align-items-center active px-2 px-md-3 mr-0 mr-md-2">
						  		<i class="icon-folder-alt mr-1"></i><span class="d-none d-md-block">받은쪽지함</span>
						  	</a> 
						</li>
						<li class="nav-item" id="sendMsg"> 
							<a href="javascript:void(0)" class="nav-link rounded-pill note-link d-flex align-items-center px-2 px-md-3 mr-0 mr-md-2">
						 		<i class="icon-folder mr-1"></i><span class="d-none d-md-block">보낸쪽지함</span>
						  	</a> 
						</li>
						<li class="nav-item" id="trashMsg"> 
							<a href="javascript:void(0)" class="nav-link rounded-pill note-link d-flex align-items-center px-2 px-md-3 mr-0 mr-md-2">
						  		<i class="icon-trash mr-1"></i><span class="d-none d-md-block">휴지통</span>
						  	</a>
						</li>
						<li class="nav-item" id="tempoMsg"> 
							<a href="javascript:void(0)" class="nav-link rounded-pill note-link d-flex align-items-center px-2 px-md-3 mr-0 mr-md-2">
						  		<i class="icon-drawar mr-1"></i><span class="d-none d-md-block">임시보관함</span>
						  	</a> 
						</li>
						<li class="nav-item ml-auto"> 
							<a href="javascript:void(0)" class="btn-primary rounded-pill d-flex align-items-center px-3" id="writeMsg" style="height:37px;"
							onclick = "window.open('${path}/msgWrite.me','New Message','left=500, top=100, width=850, height=810, location=no, status=no, scrollbars=yes');">
						  		<i class="icon-note m-1"></i><span class="d-none d-md-block font-14">쪽지쓰기</span>
						  	</a> 
						</li>
                    </ul>
                    <div class="tab-content">
                    	<div id="note-full-container" class="note-has-grid row" style="width:100%;"></div>
                        <!-- ============================================================== -->
                        <!-- footer -->
                        <!-- ============================================================== -->
                       <!--  <footer class="footer text-center">
                               All Rights Reserved by Severny admin. Designed and Developed by <a href="https://wrappixel.com">WrapPixel</a>.
                        </footer> -->
                        <!-- ============================================================== -->
                        <!-- End footer -->
                        <!-- ============================================================== -->
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
	<!--This page JavaScript -->
	<script src="${path}/resources/dist/js/pages/notes/notes.js"></script>
</body>

</html>