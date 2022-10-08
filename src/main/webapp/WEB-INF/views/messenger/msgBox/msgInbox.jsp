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
	$(document).ready(function() {
		
		alert('<받은쪽지함>\nSELECT title, id, send_date, contents\nFROM grb_send_message\nWHERE getter_id = ?;');
		
		$('#all-category').click(function() {
			alert('<받은쪽지함>\nSELECT title, id, send_date, contents\nFROM grb_send_message\nWHERE getter_id = ?;');
		});
		
		$('#note-business').click(function() {
			alert('<보낸쪽지함>\nSELECT title, getter_id, send_date, contents\nFROM grb_send_message\nWHERE id = ?;');
		});
		
		$('#note-social').click(function() {
			alert('<휴지통>\nSELECT title, getter_id, send_date, contents\nFROM grb_send_message\nWHERE trash = 1;');
		});
		
		$('#note-important').click(function() {
			alert('<임시보관함>\nSELECT title, getter_id, send_date, contents\nFROM grb_send_message\nWHERE holding = 1;');
		});
		
		$('#add-notes').click(function() {
			alert("<쪽지쓰기>\nINSERT INTO grb_send_message(message_num, id, getter_id, title, contents, files, send_date, trash, holding)\nVALUES((SELECT NVL(Max(message_num)+1, 1) FROM grb_send_message), ?, ?, '?', '?', '?', sysdate, 0, 0);");
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
                            <div class="d-flex align-items-center">
                                <!-- <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb m-0 p-0">
                                        <li class="breadcrumb-item text-muted active" aria-current="page">Apps</li>
                                        <li class="breadcrumb-item text-muted" aria-current="page">Notes</li>
                                    </ol>
                                </nav> -->
                            </div>
                        </div>
                        <!-- <div class="col-5 align-self-center">
                            <div class="customize-input float-right">
                                <select class="custom-select form-control">
                                    <option selected>June 19</option>
                                    <option value="1">July 19</option>
                                    <option value="2">Aug 19</option>
                                </select>
                            </div>
                        </div> -->
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
                                  <li class="nav-item"> <a href="javascript:void(0)" class="nav-link rounded-pill note-link d-flex align-items-center active px-2 px-md-3 mr-0 mr-md-2"  id="all-category">
                                    <i class="icon-layers mr-1"></i><span class="d-none d-md-block">받은쪽지함</span></a> 
                                  </li>
                                  <li class="nav-item"> <a href="javascript:void(0)" class="nav-link rounded-pill note-link d-flex align-items-center px-2 px-md-3 mr-0 mr-md-2" id="note-business">
                                    <i class="icon-briefcase mr-1"></i><span class="d-none d-md-block">보낸쪽지함</span></a> 
                                  </li>
                                  <li class="nav-item"> <a href="javascript:void(0)" class="nav-link rounded-pill note-link d-flex align-items-center px-2 px-md-3 mr-0 mr-md-2" id="note-social">
                                    <i class="icon-share-alt mr-1"></i><span class="d-none d-md-block">휴지통</span></a> 
                                  </li>
                                  <li class="nav-item"> <a href="javascript:void(0)" class="nav-link rounded-pill note-link d-flex align-items-center px-2 px-md-3 mr-0 mr-md-2" id="note-important">
                                    <i class="icon-tag mr-1"></i><span class="d-none d-md-block">임시보관함</span></a> 
                                  </li>
                                  <li class="nav-item ml-auto"> <a href="javascript:void(0)" class="nav-link<!--  btn-primary --> rounded-pill d-flex align-items-center px-3" id="add-notes" style="height:37px;">
                                    <i class="icon-note m-1"></i><span class="d-none d-md-block font-14">쪽지쓰기</span></a> 
                                  </li>
                        </ul>
                        <div class="tab-content">
                            <div  id="note-full-container" class="note-has-grid row">
                                <div class="col-md-4 single-note-item all-category">
                                    <div class="card card-body">
                                        <span class="side-stick"></span>
                                        <h5 class="note-title text-truncate w-75 mb-0" data-noteHeading="Book a Ticket for Movie">메세지제목입니다<i class="point fas fa-circle ml-1 font-10"></i></h5>
                                        <p class="note-date font-12 text-muted">인사부 홍길동</p>
                                        <div class="note-content">
                                                    <p class="note-inner-content text-muted" data-noteContent="Blandit tempus porttitor aasfs. Integer posuere erat a ante venenatis.">2022.10.04. 11:00</p>
                                              </div>
                                              <div class="d-flex align-items-center">
                                                <span class="mr-1"><i class="far fa-star favourite-note"></i></span>
                                                <span class="mr-1"><i class="far fa-trash-alt remove-note"></i></span>
                                                <div class="ml-auto">
                                                    <div class="category-selector btn-group">
                                                                <a class="nav-link dropdown-toggle category-dropdown label-group p-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="true">
                                                                    <div class="category">
                                                                        <div class="category-business"></div>
                                                                        <div class="category-social"></div>
                                                                        <div class="category-important"></div>
                                                                        <span class="more-options text-dark"><i class="icon-options-vertical"></i></span>
                                                                    </div>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right category-menu">
                                                                    <a class="note-business badge-group-item badge-business dropdown-item position-relative category-business text-success" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i>Business</a>
                                                                    <a class="note-social badge-group-item badge-social dropdown-item position-relative category-social text-info" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i> Social</a>
                                                                    <a class="note-important badge-group-item badge-important dropdown-item position-relative category-important text-danger" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i> Important</a>
                                                            </div>
                                                        </div>
                                                </div>
                                              </div>
                                    </div>
                                </div>
                                <div class="col-md-4 single-note-item all-category note-important">
                                    <div class="card card-body ">
                                        <span class="side-stick"></span>
                                        <h5 class="note-title text-truncate w-75 mb-0" data-noteHeading="Go for lunch">메세지제목입니다<i class="point fas fa-circle ml-1 font-10"></i></h5>
                                        <p class="note-date font-12 text-muted">인사부 홍길동</p>
                                        <div class="note-content">
                                                    <p class="note-inner-content text-muted" data-noteContent="Blandit tempus porttitor aasfs. Integer posuere erat a ante venenatis.">Blandit tempus porttitor aasfs. Integer posuere erat a ante venenatis.</p>
                                              </div>
                                              <div class="d-flex align-items-center">
                                                <span class="mr-1"><i class="far fa-star favourite-note"></i></span>
                                                <span class="mr-1"><i class="far fa-trash-alt remove-note"></i></span>
                                                <div class="ml-auto">
                                                    <div class="category-selector btn-group">
                                                                <a class="nav-link dropdown-toggle category-dropdown label-group p-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="true">
                                                                    <div class="category">
                                                                        <div class="category-business"></div>
                                                                        <div class="category-social"></div>
                                                                        <div class="category-important"></div>
                                                                        <span class="more-options text-dark"><i class="icon-options-vertical"></i></span>
                                                                    </div>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right category-menu">
                                                                    <a class="note-business badge-group-item badge-business dropdown-item position-relative category-business text-success" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i>Business</a>
                                                                    <a class="note-social badge-group-item badge-social dropdown-item position-relative category-social text-info" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i> Social</a>
                                                                    <a class="note-important badge-group-item badge-important dropdown-item position-relative category-important text-danger" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i> Important</a>
                                                            </div>
                                                        </div>
                                                </div>
                                              </div>
                                    </div>
                                </div>
                                <div class="col-md-4 single-note-item all-category note-social">
                                    <div class="card card-body ">
                                        <span class="side-stick"></span>
                                        <h5 class="note-title text-truncate w-75 mb-0" data-noteHeading="Meeting with Mr.Jojo">Meeting with Mr.Jojo <i class="point fas fa-circle ml-1 font-10"></i></h5>
                                        <p class="note-date font-12 text-muted">19 October 2020</p>
                                        <div class="note-content">
                                                    <p class="note-inner-content text-muted" data-noteContent="Blandit tempus porttitor aasfs. Integer posuere erat a ante venenatis.">Blandit tempus porttitor aasfs. Integer posuere erat a ante venenatis.</p>
                                              </div>
                                              <div class="d-flex align-items-center">
                                                <span class="mr-1"><i class="far fa-star favourite-note"></i></span>
                                                <span class="mr-1"><i class="far fa-trash-alt remove-note"></i></span>
                                                <div class="ml-auto">
                                                    <div class="category-selector btn-group">
                                                                <a class="nav-link dropdown-toggle category-dropdown label-group p-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="true">
                                                                    <div class="category">
                                                                        <div class="category-business"></div>
                                                                        <div class="category-social"></div>
                                                                        <div class="category-important"></div>
                                                                        <span class="more-options text-dark"><i class="icon-options-vertical"></i></span>
                                                                    </div>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right category-menu">
                                                                    <a class="note-business badge-group-item badge-business dropdown-item position-relative category-business text-success" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i>Business</a>
                                                                    <a class="note-social badge-group-item badge-social dropdown-item position-relative category-social text-info" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i> Social</a>
                                                                    <a class="note-important badge-group-item badge-important dropdown-item position-relative category-important text-danger" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i> Important</a>
                                                            </div>
                                                        </div>
                                                </div>
                                              </div>
                                    </div>
                                </div>
                                <div class="col-md-4 single-note-item all-category note-business">
                                    <div class="card card-body ">
                                        <span class="side-stick"></span>
                                        <h5 class="note-title text-truncate w-75 mb-0" data-noteHeading="Give Review for design">Give Review for design <i class="point fas fa-circle ml-1 font-10"></i></h5>
                                        <p class="note-date font-12 text-muted">02 January 2000</p>
                                        <div class="note-content">
                                                    <p class="note-inner-content text-muted" data-noteContent="Blandit tempus porttitor aasfs. Integer posuere erat a ante venenatis.">Blandit tempus porttitor aasfs. Integer posuere erat a ante venenatis.</p>
                                              </div>
                                              <div class="d-flex align-items-center">
                                                <span class="mr-1"><i class="far fa-star favourite-note"></i></span>
                                                <span class="mr-1"><i class="far fa-trash-alt remove-note"></i></span>
                                                <div class="ml-auto">
                                                    <div class="category-selector btn-group">
                                                                <a class="nav-link dropdown-toggle category-dropdown label-group p-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="true">
                                                                    <div class="category">
                                                                        <div class="category-business"></div>
                                                                        <div class="category-social"></div>
                                                                        <div class="category-important"></div>
                                                                        <span class="more-options text-dark"><i class="icon-options-vertical"></i></span>
                                                                    </div>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right category-menu">
                                                                    <a class="note-business badge-group-item badge-business dropdown-item position-relative category-business text-success" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i>Business</a>
                                                                    <a class="note-social badge-group-item badge-social dropdown-item position-relative category-social text-info" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i> Social</a>
                                                                    <a class="note-important badge-group-item badge-important dropdown-item position-relative category-important text-danger" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i> Important</a>
                                                            </div>
                                                        </div>
                                                </div>
                                              </div>
                                    </div>
                                </div>
                                <div class="col-md-4 single-note-item all-category note-social">
                                    <div class="card card-body ">
                                        <span class="side-stick"></span>
                                        <h5 class="note-title text-truncate w-75 mb-0" data-noteHeading="Nightout with friends">Nightout with friends <i class="point fas fa-circle ml-1 font-10"></i></h5>
                                        <p class="note-date font-12 text-muted">01 August 1999</p>
                                        <div class="note-content">
                                                    <p class="note-inner-content text-muted" data-noteContent="Blandit tempus porttitor aasfs. Integer posuere erat a ante venenatis.">Blandit tempus porttitor aasfs. Integer posuere erat a ante venenatis.</p>
                                              </div>
                                              <div class="d-flex align-items-center">
                                                <span class="mr-1"><i class="far fa-star favourite-note"></i></span>
                                                <span class="mr-1"><i class="far fa-trash-alt remove-note"></i></span>
                                                <div class="ml-auto">
                                                    <div class="category-selector btn-group">
                                                                <a class="nav-link dropdown-toggle category-dropdown label-group p-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="true">
                                                                    <div class="category">
                                                                        <div class="category-business"></div>
                                                                        <div class="category-social"></div>
                                                                        <div class="category-important"></div>
                                                                        <span class="more-options text-dark"><i class="icon-options-vertical"></i></span>
                                                                    </div>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right category-menu">
                                                                    <a class="note-business badge-group-item badge-business dropdown-item position-relative category-business text-success" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i>Business</a>
                                                                    <a class="note-social badge-group-item badge-social dropdown-item position-relative category-social text-info" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i> Social</a>
                                                                    <a class="note-important badge-group-item badge-important dropdown-item position-relative category-important text-danger" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i> Important</a>
                                                            </div>
                                                        </div>
                                                </div>
                                              </div>
                                    </div>
                                </div>
                                <div class="col-md-4 single-note-item all-category note-important">
                                    <div class="card card-body ">
                                        <span class="side-stick"></span>
                                        <h5 class="note-title text-truncate w-75 mb-0" data-noteHeading="Launch new template">Launch new template <i class="point fas fa-circle ml-1 font-10"></i></h5>
                                        <p class="note-date font-12 text-muted">21 January 2015</p>
                                        <div class="note-content">
                                                    <p class="note-inner-content text-muted" data-noteContent="Blandit tempus porttitor aasfs. Integer posuere erat a ante venenatis.">Blandit tempus porttitor aasfs. Integer posuere erat a ante venenatis.</p>
                                              </div>
                                              <div class="d-flex align-items-center">
                                                <span class="mr-1"><i class="far fa-star favourite-note"></i></span>
                                                <span class="mr-1"><i class="far fa-trash-alt remove-note"></i></span>
                                                <div class="ml-auto">
                                                    <div class="category-selector btn-group">
                                                                <a class="nav-link dropdown-toggle category-dropdown label-group p-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="true">
                                                                    <div class="category">
                                                                        <div class="category-business"></div>
                                                                        <div class="category-social"></div>
                                                                        <div class="category-important"></div>
                                                                        <span class="more-options text-dark"><i class="icon-options-vertical"></i></span>
                                                                    </div>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right category-menu">
                                                                    <a class="note-business badge-group-item badge-business dropdown-item position-relative category-business text-success" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i>Business</a>
                                                                    <a class="note-social badge-group-item badge-social dropdown-item position-relative category-social text-info" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i> Social</a>
                                                                    <a class="note-important badge-group-item badge-important dropdown-item position-relative category-important text-danger" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i> Important</a>
                                                            </div>
                                                        </div>
                                                </div>
                                              </div>
                                    </div>
                                </div>
                                <div class="col-md-4 single-note-item all-category note-social">
                                    <div class="card card-body ">
                                        <span class="side-stick"></span>
                                        <h5 class="note-title text-truncate w-75 mb-0" data-noteHeading="Change a Design">Change a Design <i class="point fas fa-circle ml-1 font-10"></i></h5>
                                        <p class="note-date font-12 text-muted">25 December 2016</p>
                                        <div class="note-content">
                                                    <p class="note-inner-content text-muted" data-noteContent="Blandit tempus porttitor aasfs. Integer posuere erat a ante venenatis.">Blandit tempus porttitor aasfs. Integer posuere erat a ante venenatis.</p>
                                              </div>
                                              <div class="d-flex align-items-center">
                                                <span class="mr-1"><i class="far fa-star favourite-note"></i></span>
                                                <span class="mr-1"><i class="far fa-trash-alt remove-note"></i></span>
                                                <div class="ml-auto">
                                                    <div class="category-selector btn-group">
                                                                <a class="nav-link dropdown-toggle category-dropdown label-group p-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="true">
                                                                    <div class="category">
                                                                        <div class="category-business"></div>
                                                                        <div class="category-social"></div>
                                                                        <div class="category-important"></div>
                                                                        <span class="more-options text-dark"><i class="icon-options-vertical"></i></span>
                                                                    </div>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right category-menu">
                                                                    <a class="note-business badge-group-item badge-business dropdown-item position-relative category-business text-success" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i>Business</a>
                                                                    <a class="note-social badge-group-item badge-social dropdown-item position-relative category-social text-info" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i> Social</a>
                                                                    <a class="note-important badge-group-item badge-important dropdown-item position-relative category-important text-danger" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i> Important</a>
                                                            </div>
                                                        </div>
                                                </div>
                                              </div>
                                    </div>
                                </div>
                                <div class="col-md-4 single-note-item all-category note-business">
                                    <div class="card card-body ">
                                        <span class="side-stick"></span>
                                        <h5 class="note-title text-truncate w-75 mb-0" data-noteHeading="Give review for foods">Give review for foods <i class="point fas fa-circle ml-1 font-10"></i></h5>
                                        <p class="note-date font-12 text-muted">18 December 2020</p>
                                        <div class="note-content">
                                                    <p class="note-inner-content text-muted" data-noteContent="Blandit tempus porttitor aasfs. Integer posuere erat a ante venenatis.">Blandit tempus porttitor aasfs. Integer posuere erat a ante venenatis.</p>
                                              </div>
                                              <div class="d-flex align-items-center">
                                                <span class="mr-1"><i class="far fa-star favourite-note"></i></span>
                                                <span class="mr-1"><i class="far fa-trash-alt remove-note"></i></span>
                                                <div class="ml-auto">
                                                    <div class="category-selector btn-group">
                                                                <a class="nav-link dropdown-toggle category-dropdown label-group p-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="true">
                                                                    <div class="category">
                                                                        <div class="category-business"></div>
                                                                        <div class="category-social"></div>
                                                                        <div class="category-important"></div>
                                                                        <span class="more-options text-dark"><i class="icon-options-vertical"></i></span>
                                                                    </div>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right category-menu">
                                                                    <a class="note-business badge-group-item badge-business dropdown-item position-relative category-business text-success" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i>Business</a>
                                                                    <a class="note-social badge-group-item badge-social dropdown-item position-relative category-social text-info" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i> Social</a>
                                                                    <a class="note-important badge-group-item badge-important dropdown-item position-relative category-important text-danger" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i> Important</a>
                                                            </div>
                                                        </div>
                                                </div>
                                              </div>
                                    </div>
                                </div>
                                <div class="col-md-4 single-note-item all-category note-important">
                                    <div class="card card-body ">
                                        <span class="side-stick"></span>
                                        <h5 class="note-title text-truncate w-75 mb-0" data-noteHeading="Give salary to employee">Give salary to employee <i class="point fas fa-circle ml-1 font-10"></i></h5>
                                        <p class="note-date font-12 text-muted">15 Fabruary 2020</p>
                                        <div class="note-content">
                                                    <p class="note-inner-content text-muted" data-noteContent="Blandit tempus porttitor aasfs. Integer posuere erat a ante venenatis.">Blandit tempus porttitor aasfs. Integer posuere erat a ante venenatis.</p>
                                              </div>
                                              <div class="d-flex align-items-center">
                                                <span class="mr-1"><i class="far fa-star favourite-note"></i></span>
                                                <span class="mr-1"><i class="far fa-trash-alt remove-note"></i></span>
                                                <div class="ml-auto">
                                                    <div class="category-selector btn-group">
                                                                <a class="nav-link dropdown-toggle category-dropdown label-group p-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="true">
                                                                    <div class="category">
                                                                        <div class="category-business"></div>
                                                                        <div class="category-social"></div>
                                                                        <div class="category-important"></div>
                                                                        <span class="more-options text-dark"><i class="icon-options-vertical"></i></span>
                                                                    </div>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right category-menu">
                                                                    <a class="note-business badge-group-item badge-business dropdown-item position-relative category-business text-success" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i>Business</a>
                                                                    <a class="note-social badge-group-item badge-social dropdown-item position-relative category-social text-info" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i> Social</a>
                                                                    <a class="note-important badge-group-item badge-important dropdown-item position-relative category-important text-danger" href="javascript:void(0);"><i class="mdi mdi-checkbox-blank-circle-outline mr-1"></i> Important</a>
                                                            </div>
                                                        </div>
                                                </div>
                                              </div>
                                    </div>
                                </div>
                              </div>
                        </div>
                        <!-- ============================================================== -->
                        <!-- footer -->
                        <!-- ============================================================== -->
                       <!--  <footer class="footer text-center">
                               All Rights Reserved by Severny admin. Designed and Developed by <a href="https://wrappixel.com">WrapPixel</a>.
                        </footer> -->
                        <!-- ============================================================== -->
                        <!-- End footer -->
                        <!-- ============================================================== -->
    				<!-- Modal Add notes -->
    				<div class="modal fade" id="addnotesmodal" tabindex="-1" role="dialog" aria-labelledby="addnotesmodalTitle" aria-hidden="true">
                                  <div class="modal-dialog modal-dialog-centered" role="document">
                                      	<div class="modal-content border-0">
                                      		<div class="modal-header bg-info text-white">
    						        	<h5 class="modal-title text-white">Add Notes</h5>
    						        	<button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
    						          		<span aria-hidden="true">&times;</span>
    						        	</button>
    						 	</div>
                                          <div class="modal-body">
                                              <div class="notes-box">
                                                  <div class="notes-content">                                                                        
                                                      <form action="javascript:void(0);" id="addnotesmodalTitle">
                                                          <div class="row">
                                                              <div class="col-md-12 mb-3">
                                                                  <!-- ============================================================== -->
                <!-- message detail -->
                <!-- ============================================================== -->
                <div>
                    <div class="card-body border-bottom">
                        <h4 class="mb-0">Message</h4>
                    </div>
                    <div class="card-body border-bottom">
                        <div class="d-flex no-block align-items-center mb-5">
                            <div class="mr-2"><img src="${path}/resources/assets/images/users/1.jpg" alt="user"
                                    class="rounded-circle" width="45"></div>
                            <div class="">
                                <h5 class="mb-0 font-16 font-weight-medium">곽보결 <small> 대리
                                        </small>
                                </h5><span>기획지원팀</span> <h6><span>2022.10.04 11:00</span></h6>
                            </div>
                        </div>
                        <h4 class="mb-3">메세지 제목입니다</h4>
                        <p>메세지 내용입니다 -- Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
                            Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur
                            ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.Nulla
                            consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
                            arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu
                            pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi.</p>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
                            Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur
                            ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.Nulla
                            consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget,
                            arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu
                            pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi.</p>
                    </div>
                    <div class="card-body">
                        <h4><i class="fa fa-paperclip mr-2 mb-2"></i> Attachments <span>(3)</span></h4>
                        <div class="row">
                            <div class="col-md-2">
                                <a href="javascript:void(0)"> <img class="img-thumbnail img-fluid" alt="attachment"
                                        src="${path}/resources/assets/images/big/img1.jpg"> </a>
                            </div>
                            <div class="col-md-2">
                                <a href="javascript:void(0)"> <img class="img-thumbnail img-fluid" alt="attachment"
                                        src="${path}/resources/assets/images/big/img2.jpg"> </a>
                            </div>
                        </div>
                        <!-- <div class="border mt-3 p-3">
                            <p class="pb-3">click here to <a href="javascript:void(0)">Reply</a> or <a
                                    href="javascript:void(0)">Forward</a></p>
                        </div> -->
                    </div>
                </div>

                                                      </form>
                                                  </div>
                                              </div>
                                          </div>
                                          <div class="modal-footer">
                                              <button id="btn-n-save" class="float-left btn btn-success">Save</button>
                                              <button class="btn btn-danger" data-dismiss="modal">취소</button>
                                              <button id="btn-n-add" class="btn btn-info" disabled>보내기</button>
                                          </div>
                                      </div>
                                  </div>
                              </div>
    			</div>
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
	<!--This page JavaScript -->
	<script src="${path}/resources/dist/js/pages/notes/notes.js"></script>
</body>

</html>