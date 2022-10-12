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
                <div class="left-part" style="height:100%;">
                 <%@ include file = "/WEB-INF/views/approval/submenu.jsp" %>
                </div>
                <!-- ============================================================== -->
                <!-- Right Part -->
                <!-- ============================================================== -->
                <div class="right-part mail-list overflow-auto" style="height:100%;">
                    <div class="p-3 b-b">
                        <div class="d-flex align-items-center">
                            <div>
                                <h4> 기안문서함 </h4>
                            </div>
                            <div class="ml-auto">
                                <input placeholder="문서 제목 검색" type="text" class="form-control">
                            </div>
                        </div>
                    </div>
                    <!-- Action part -->
                    <!-- Button group part -->
                    <div class="bg-light p-3 d-flex align-items-center do-block">
                        <div class="btn-group mt-1 mb-1">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input sl-all" id="cstall">
                                <c:forEach var = "dto" items="${list}" begin="0" end ="0">
                                <label class="custom-control-label" for="cstall">Check All  기안문서함 > ${dto.state}문서</label>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="ml-auto">
                            <div class="btn-group mr-2" role="group" aria-label="Button group with nested dropdown">
                                <button type="button" class="btn btn-outline-secondary font-18" onclick="location.href='${path}/onapproval.ap'">진행</button>
                                <button type="button" class="btn btn-outline-secondary font-18" onclick="location.href='${path}/comapproval.ap'">완료</button>
                                <button type="button" class="btn btn-outline-secondary font-18" onclick="location.href='${path}/rejapproval.ap'">반려</button>
                            </div>

                        </div>
                    </div>
                    <!-- Action part -->
                    <!-- list-->
                    <div class="table-responsive">
                        <table class="table email-table no-wrap table-hover v-middle">
                                <!-- row -->
                                <tr class="unread">
                                    <!-- label -->
                                    <td class="user-image p-2">
                                    	<h6 class="mb-0 text-truncate font-weight-medium">상태
                                    </td>
                                    <td class="user-name px-1 py-2">
                                        <h6 class="mb-0 text-truncate font-weight-medium">문서번호</h6>
                                    </td>
                                    <td class="py-2 px-3 no-wrap text-truncate"> 
                                        <h6 class="mb-0 text-truncate font-weight-medium">문서제목</h6>
                                    </td>
                                    <td class="clip px-1 py-2"><i class="fa fa-paperclip"></i></td>
                                    <td class="time text-right"> 
                                    <h6 class="mb-0 text-truncate font-weight-medium">기안일 </h6></td>
                                </tr>
                                <!-- row -->
                                <c:forEach var = "dto" items="${list}">    
                                <tr class="unread">
                                    <!-- label -->
                                    <td class="user-image p-2"><span class="badge badge-warning blue-grey-text text-darken-4 mr-2">${dto.state}</span> </td>
                                    <td class="user-name px-1 py-2">
                                        <h6 class="mb-0 text-truncate font-weight-medium">bee-22-${dto.doc_id}</h6>
                                    </td>
                                    <td class="py-2 px-3 no-wrap text-truncate"> 
                                            <span class="blue-grey-text text-darken-4">${dto.title}</span>
                                    </td>
                                    <td class="clip px-1 py-2"><i class="fa fa-paperclip"></i></td>
                                    <td class="time text-right">${dto.upday}</td>
                                </tr>
                                </c:forEach>
                                <!-- row -->

                        </table>
                    </div>
                    <div class="p-3 mt-4">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-center">
                                <li class="page-item"><a class="page-link" href="javascript:void(0)">Previous</a></li>
                                <li class="page-item"><a class="page-link" href="javascript:void(0)">1</a></li>
                                <li class="page-item"><a class="page-link" href="javascript:void(0)">2</a></li>
                                <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
                                <li class="page-item"><a class="page-link" href="javascript:void(0)">Next</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
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
    <script src="${path}/resources/dist/js/pages/email/email.min.js"></script>
    <script src="${path}/resources/assets/libs/summernote/dist/summernote-bs4.min.js"></script>
    <script src="${path}/resources/assets/libs/dropzone/dist/min/dropzone.min.js"></script>
</body>

</html>