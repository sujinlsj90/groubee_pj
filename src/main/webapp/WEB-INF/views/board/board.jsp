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

<script type="text/javascript">



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
                    <a class="ti-menu ti-close btn btn-success show-left-part d-block d-md-none"
                        href="javascript:void(0)"></a>
                    <div class="scrollable" style="height:100%;">
                        <div class="p-3">
                            <a id="compose_mail" class="waves-effect waves-light btn btn-danger d-block"
                                href="${path}/insert.bo">글쓰기</a>
                        </div>
                        <div class="divider"></div>
                        <ul class="list-group">
                            <li>
                                <small class="p-3 grey-text text-lighten-1 db">Category</small>
                            </li>
                            <li class="list-group-item p-0 border-0">
                                <a href="board.bo?category=0" class="list-group-item-action p-3 d-block"><i
                                        class="mdi mdi-inbox font-18 v-middle mr-1"></i> 자유게시판</a>
                            </li>
                            <li class="list-group-item p-0 border-0">
                                <a href="board.bo?category=1" class="list-group-item-action p-3 d-block"> <i
                                        class="mdi mdi-star font-18 v-middle mr-1"></i> 공지사항 </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- Right Part -->
                <!-- ============================================================== -->
                <div class="right-part mail-list overflow-auto" style="height:100%;">
                    <div class="p-3 b-b">
                        <div class="d-flex align-items-center">
                            <div>
                            <c:if test="${category==0}">
	                            <h4>자유게시판</h4>
	                            <span>자유롭게 소통하는 공간입니다.</span>
                            </c:if>
                            <c:if test="${category==1}">
	                            <h4>공지사항</h4>
	                            <span>공지사항 게시판 입니다.</span>
                            </c:if>
                                
                            </div>
                            <div class="ml-auto">
                                <input placeholder="검색어 입력" type="text" class="form-control">
                            </div>
                        </div>
                    </div>
                    <!-- Action part -->
                    <!-- Button group part -->
                    <div class="bg-light p-3 d-flex align-items-center do-block">
                        <div class="btn-group mt-1 mb-1">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input sl-all" id="cstall">
                                <label class="custom-control-label" for="cstall">Check All</label>
                            </div>
                        </div>
                        <div class="ml-auto">
                            <div class="btn-group mr-2" role="group" aria-label="Button group with nested dropdown">
                                <!-- <button type="button" class="btn btn-outline-secondary font-18"><i
                                        class="mdi mdi-reload"></i></button>
                                <button type="button" class="btn btn-outline-secondary font-18"><i
                                        class="mdi mdi-alert-octagon"></i></button> -->
                                <button type="button" class="btn btn-outline-secondary font-18"><i
                                        class="mdi mdi-delete"></i></button>
                            </div>
                            <div class="btn-group mr-2" role="group" aria-label="Button group with nested dropdown">
                                <!-- <div class="btn-group" role="group">
                                    <button id="email-dd1" type="button"
                                        class="btn btn-outline-secondary dropdown-toggle" data-toggle="dropdown"
                                        aria-haspopup="true" aria-expanded="false"> <i
                                            class="mdi mdi-folder font-18 "></i> </button>
                                    <div class="dropdown-menu" aria-labelledby="email-dd1"> <a class="dropdown-item"
                                            href="javascript:void(0)">Dropdown link</a> <a class="dropdown-item"
                                            href="javascript:void(0)">Dropdown link</a> </div>
                                </div>
                                <div class="btn-group" role="group">
                                    <button id="email-dd2" type="button"
                                        class="btn btn-outline-secondary dropdown-toggle" data-toggle="dropdown"
                                        aria-haspopup="true" aria-expanded="false"> <i
                                            class="mdi mdi-label font-18"></i> </button>
                                    <div class="dropdown-menu" aria-labelledby="email-dd2"> <a class="dropdown-item"
                                            href="javascript:void(0)">Dropdown link</a> <a class="dropdown-item"
                                            href="javascript:void(0)">Dropdown link</a> </div>
                                </div> -->
                            </div>
                        </div>
                    </div>
                    <!-- Action part -->
                    <!-- Mail list-->
                    <div class="table-responsive">
                        <table class="table email-table no-wrap table-hover v-middle" style="width:99%;">
                            <tbody>
<!-- 게시판 목록 -->
                                
                               <c:forEach var="dto" items="${list}">
                               <!-- row -->
                                <tr class="">
                                    <!-- label -->
                                    <td class="chb">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="cst4">
                                            <label class="custom-control-label" for="cst4">&nbsp;</label>
                                        </div>
                                    </td>
                                    <!-- star -->
                                    <td class="starred px-1 py-2"><!-- <i class="far fa-star"></i> --></td>
                                    <!-- User -->
                                    <td class="user-image p-2"><%-- <img src="${path}/resources/assets/images/users/4.jpg" alt="user"
                                            class="rounded-circle" width="30"> --%></td>
                                    <td class="user-name px-1 py-2">
                                        <h6 class="mb-0 text-truncate">${dto.id}</h6>
                                    </td>
                                    <!-- Message -->
                                    <c:if test="${dto.category == 2}">
                                    	<td class="py-2 px-3 no-wrap text-truncate" style="widht:50%;">
											<a class="link font-weight-medium" href="detail.bo?num=${dto.num}">
											<span class="badge badge-danger mr-2">필독</span>
											<span class="blue-grey-text text-darken-4">${dto.title} [${dto.comment_cnt}]</span>
	                                        </a>
                                    	</td>
                                    </c:if>
                                    
                                    <c:if test="${dto.category != 2}">
	                                    <td class="py-2 px-3 no-wrap text-truncate">
	                                    	<a class="link" href="detail.bo?num=${dto.num}">${dto.title} [${dto.comment_cnt}]</a>
	                                    </td>
                                    </c:if>        
                                    
                                                
                                    <!-- Attachment -->
                                    <td class="clip px-1 py-2"></td>
                                    <!-- Time -->
                                    <td class="time text-right">${dto.reg_date}</td>
                                </tr>
                                </c:forEach>
                                <!-- row -->
                            </tbody>
                        </table>
                    </div>
<!-- 페이징  -->                    
                    <div class="p-3 mt-4">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-center">
                            	<!-- 이전 버튼 -->
                            	<c:if test="${paging.startPage > 10}">
                            		<li class="page-item"><a class="page-link" href="${path}/board.bo?category=${category}&pageNum=${paging.prev}">Previous</a></li>
								</c:if>
								<!-- 페이지 -->
								<c:forEach var="num" begin="${paging.startPage}" end="${paging.endPage}">
									<li class="page-item"><a class="page-link" href="${path}/board.bo?category=${category}&pageNum=${num}">${num}</a></li>
								</c:forEach>
								<!-- 다음 버튼 -->
								<c:if test="${paging.endPage < paging.pageCount}">
									<li class="page-item"><a class="page-link" href="${path}/board.bo?category=${category}&pageNum=${paging.next}">Next</a></li>
								</c:if>
                            </ul>
                        </nav>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- Right Part  Mail Compose -->
                <!-- ============================================================== -->
                
<!-- 글쓰기 -->                
                <%-- <div class="right-part mail-compose overflow-auto" style="display: none;">
                    <div class="p-4 border-bottom">
                        <div class="d-flex align-items-center">
                            <div>
                                <h4>글쓰기</h4>
                                <span>새로운 글을 작성하세요</span>
                            </div>
                            <div class="ml-auto">
                                <button id="cancel_compose" class="btn btn-dark">Back</button>
                            </div>
                        </div>
                    </div>
                    <!-- Action part -->
                    <!-- Button group part -->
                    <div class="card-body">
                        <form>
                        <!-- 시큐리티 적용 -->
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                            <div class="form-group">
                                <input type="text" id="example-subject" name="example-subject" class="form-control"
                                    placeholder="제목을 입력하세요">
                            </div>
                            <div id="summernote"></div>
                            <h4>첨부파일</h4>
                            <div class="dropzone" id="dzid">
                                <div class="fallback">
                                    <input name="file" type="file" multiple />
                                </div>
                            </div>
                            <button type="submit" class="btn btn-success mt-3">
                                		글 올리기</button>
                            <button type="submit" class="btn btn-dark mt-3">작성 취소</button>
                        </form>
                        <!-- Action part -->
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- Right Part  Mail detail -->
                <!-- ============================================================== -->
                <div class="right-part mail-details overflow-auto" style="display: none;">
                    <div class="card-body bg-light">
                        <button type="button" id="back_to_inbox" class="btn btn-outline-secondary font-18 mr-2"><i
                                class="mdi mdi-arrow-left"></i></button>
                        <div class="btn-group mr-2" role="group" aria-label="Button group with nested dropdown">
                            <button type="button" class="btn btn-outline-secondary font-18"><i
                                    class="mdi mdi-reply"></i></button>
                            <button type="button" class="btn btn-outline-secondary font-18"><i
                                    class="mdi mdi-alert-octagon"></i></button>
                            <button type="button" class="btn btn-outline-secondary font-18"><i
                                    class="mdi mdi-delete"></i></button>
                        </div>
                        <div class="btn-group mr-2" role="group" aria-label="Button group with nested dropdown">
                            <div class="btn-group" role="group">
                                <button id="email-dd3" type="button"
                                    class="btn btn-outline-secondary dropdown-toggle" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-folder font-18 "></i>
                                </button>
                                <div class="dropdown-menu" aria-labelledby="email-dd3"> <a class="dropdown-item"
                                        href="javascript:void(0)">Dropdown link</a> <a class="dropdown-item"
                                        href="javascript:void(0)">Dropdown link</a> </div>
                            </div>
                            <div class="btn-group" role="group">
                                <button id="email-dd4" type="button"
                                    class="btn btn-outline-secondary dropdown-toggle" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-label font-18"></i>
                                </button>
                                <div class="dropdown-menu" aria-labelledby="email-dd4"> <a class="dropdown-item"
                                        href="javascript:void(0)">Dropdown link</a> <a class="dropdown-item"
                                        href="javascript:void(0)">Dropdown link</a> </div>
                            </div>
                        </div>
                    </div> --%>
                    
                    
<!-- 게시물 상세 페이지 -->
                    <%-- <div class="card-body border-bottom">
                        <h4 class="mb-0">${dto.title}</h4>
                    </div>
                    <div class="card-body border-bottom">
                        <div class="d-flex no-block align-items-center mb-5">
                            <div class="mr-2"><img src="${path}/resources/assets/images/users/1.jpg" alt="user"
                                    class="rounded-circle" width="45"></div>
                            <div class="">
                                <h5 class="mb-0 font-16 font-weight-medium">${dto.name}<small> ( hgover@gmail.com
                                        )</small>
                                </h5><span>${dto.reg_date}</span>
                            </div>
                        </div>
                        <p>${dto.content}</p>
                    </div>
                    
                    <div class="card-body">
                        <h4><i class="fa fa-paperclip mr-2 mb-2"></i> Attachments <span>(3)</span></h4>
                        <div class="row">
                            <div class="col-md-2">
                                <a href="${dto.board_file}" download> <img class="img-thumbnail img-fluid" alt="attachment"
                                        src="${dto.board_file}"> </a>
                            </div>
                            <div class="col-md-2">
                                <a href="#" download> <img class="img-thumbnail img-fluid" alt="attachment"
                                        src="${path}/resources/assets/images/big/img2.jpg"> </a>
                            </div>
                        </div>
                        <div class="card-body border-bottom">
	                        <div class="border mt-3 p-3">
		                        <form>
	                            	<p class="pb-3" style="float:left">닉네임</p>
	                            	<button class="btn btn-primary" type="submit" style="float:right">등록</button>
		                            <textarea class="form-control" placeholder="댓글을 입력하세요."></textarea>
		                        </form>
	                        </div>
                        </div>
                        <div class="card-body border-bottom">
                        	<div>
                       				<p class="pb-3" style="float:left">닉네임</p>
                       				<button type="submit" class="btn waves-effect waves-light btn-outline-secondary" style="float:right"><i class="fas fa-times"></i></button>
                        	</div>
                        	<div style="clear:both">
                       				<p>댓글내용</p>
                        	</div>
                        </div>
                        <div class="card-body border-bottom">
                        	<div>
                       				<strong class="pb-3" style="float:left">닉네임</strong>
                       				<button type="submit" class="btn waves-effect waves-light btn-outline-secondary" style="float:right"><i class="fas fa-times"></i></button>
                        	</div>
                        	<div style="clear:both">
                       				<p>댓글내용</p>
                        	</div>
                        </div>
                        <div class="card-body border-bottom">
                        	<div>
                       				<strong class="pb-3" style="float:left">닉네임</strong>
                       				<button type="submit" class="btn waves-effect waves-light btn-outline-secondary" style="float:right"><i class="fas fa-times"></i></button>
                        	</div>
                        	<div style="clear:both">
                       				<p>댓글내용</p>
                        	</div>
                        </div>
                        <div class="card-body border-bottom">
                        	<div>
                       				<strong class="pb-3" style="float:left">닉네임</strong>
                       				<button type="submit" class="btn waves-effect waves-light btn-outline-secondary" style="float:right"><i class="fas fa-times"></i></button>
                        	</div>
                        	<div style="clear:both">
                       				<p>댓글내용</p>
                        	</div>
                        </div>
                        <div class="card-body border-bottom">
                        	<div>
                       				<strong class="pb-3" style="float:left">닉네임</strong>
                       				<button type="submit" class="btn waves-effect waves-light btn-outline-secondary" style="float:right"><i class="fas fa-times"></i></button>
                        	</div>
                        	<div style="clear:both">
                       				<p>댓글내용</p>
                        	</div>
                        </div>
                    </div>
                </div> --%>
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
    <script src="${path}/resources/dist/js/pages/email/email.min.js"></script>
    <script src="${path}/resources/assets/libs/summernote/dist/summernote-bs4.min.js"></script>
    <script src="${path}/resources/assets/libs/dropzone/dist/min/dropzone.min.js"></script>
    <script>
        $('#summernote').summernote({
            placeholder: '글 내용 작성',
            tabsize: 2,
            height: 250
        });
        Dropzone.autoDiscover = false;
        $(document).ready(function () {
            var myDrop = new Dropzone("#dzid", {
                url: '/file/post'
            });
        });
    </script>
</body>

</html>