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
    <link rel="stylesheet" type="text/css"
        href="${path}/assets/libs/ckeditor/samples/toolbarconfigurator/lib/codemirror/neo.css">
    <link rel="stylesheet" type="text/css" href="${path}/assets/libs/ckeditor/samples/css/samples.css">
    <!-- Custom CSS -->
    <link href="${path}/resources/dist/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<script type="text/javascript">

$(function() {
   $("#cancel_compose").click(function(){
      location.href="${path}/board.bo";
   })
   
   $("#submitBtn").click(function(){
	   
      var title = $("#title").val();
      var content = CKEDITOR.instances.content.getData();

   	  // 제목입력
      if(title == "") {
         alert("제목을 입력하세요");
         $("#title").focus();
         return false;
      } else if(title.length > 16) {
       	 alert("제목을 16자 이하로 입력해주세요.");
       	 return false;
      }
      
      // 내용입력
      if(content == "") {
         alert("내용을 입력하세요");
         return false;
      }
      
   });
   
})
</script>


</head>

<body>
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <div id="main-wrapper" style="height:100%;">
        <div class="app-container"></div>
        <!-- 좌측고정 메뉴바 -->
        <%@ include file="/WEB-INF/views/admin/adminMenu.jsp" %>
        <!-- 좌측고정 메뉴바 -->
        <div class="page-wrapper" style="height:100%;">
        
        	<div class="page-breadcrumb">
				<div class="row">
					<div class="col-7 align-self-center">
						<h4 class="page-title text-truncate text-dark font-weight-medium mb-1">
							Admin Serivce</h4>
						<div class="d-flex align-items-center">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb m-0 p-0">
									<li class="breadcrumb-item active">
									<a href="${path}/adminMain.ad">Home</a></li>
									<li class="breadcrumb-item active"aria-current="page">
									<a href="${path}/adBoard.ad">Board</a></li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid">
                <div class="row button-group">
				    <div class="col-lg-2 col-md-4">
				        <button type="button" class="btn btn-rounded btn-block btn-outline-info" onclick = "location.href='${path}/adBoard.ad'">자유게시판</button>
				    </div>
				    <div class="col-lg-2 col-md-4">
				        <button type="button" class="btn btn-rounded btn-block btn-outline-info" onclick = "location.href='${path}/adBoard.ad?category=1'">공지사항</button>
				    </div>
				</div>
					<div class="card">
                    <c:if test="${dto.category==0}">
	                            <h4>자유게시판</h4>
                            </c:if>
                            <c:if test="${dto.category==1}">
	                            <h4>공지사항</h4>
                            </c:if>
                    <div class="card-body">
                        <form name="insertForm" action="${path}/adBoard/insertAction.ad"> <!--  enctype="multipart/form-data" -->
                        <!-- 시큐리티 적용 -->
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                        
                        <!-- 관리자 카테고리 -->
                        <c:if test="${sessionScope.authority == 'ROLE_BOARD' || sessionScope.authority == 'ROLE_ADMIN'}">
                        	<div class="btn-group mt-3" data-toggle="buttons" role="group">
                                  <label class="btn btn-outline btn-info">
                                      <div class="custom-control custom-radio">
                                          <input type="radio" id="customRadio2" name="category" value="1"
                                              class="custom-control-input">
                                          <label class="custom-control-label" for="customRadio2"> <i
                                                  class="ti-check text-active" aria-hidden="true"></i>
                                              	공지사항</label>
                                      </div>
                                  </label>
                                  <label class="btn btn-outline btn-info active">
                                      <div class="custom-control custom-radio">
                                          <input type="radio" id="customRadio3" name="category" value="2"
                                              class="custom-control-input">
                                          <label class="custom-control-label" for="customRadio3"> <i
                                                  class="ti-check text-active" aria-hidden="true"></i>
                                              	필독</label>
                                      </div>
                                  </label>
                              </div>
                       </c:if>       
                       <!-- 관리자 카테고리 -->
                            <div class="form-group">
                                <input type="text" id="title" name="title" class="form-control"
                                    placeholder="제목을 입력하세요">
                            </div>
                            
                            <!-- <div id="summernote"></div> -->
                             <textarea id="content" name="content" cols="80" rows="10"></textarea>
                            
                            <!-- <div class="dropzone" id="dzid">
                                <div class="fallback">
                                    <input name="file" type="file" multiple />
                                </div>
                            </div> -->
                            <button type="submit" id="submitBtn" class="btn btn-success mt-3">
                                		작성완료</button>
                        </form>
                        <!-- Action part -->
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
    <!-- This Page JS -->
    <script src="${path}/resources/assets/libs/ckeditor/ckeditor.js"></script>
    <script src="${path}/resources/assets/libs/ckeditor/samples/js/sample.js"></script>
    <script>
        //default
        initSample();

        //inline editor
        // We need to turn off the automatic editor creation first.
        CKEDITOR.disableAutoInline = true;

        CKEDITOR.inline('editor2', {
            extraPlugins: 'sourcedialog',
            removePlugins: 'sourcearea'
        });

        var editor1 = CKEDITOR.replace('editor1', {
            extraAllowedContent: 'div',
            height: 460
        });
        editor1.on('instanceReady', function () {
            // Output self-closing tags the HTML4 way, like <br>.
            this.dataProcessor.writer.selfClosingEnd = '>';

            // Use line breaks for block elements, tables, and lists.
            var dtd = CKEDITOR.dtd;
            for (var e in CKEDITOR.tools.extend({}, dtd.$nonBodyContent, dtd.$block, dtd.$listItem, dtd.$tableContent)) {
                this.dataProcessor.writer.setRules(e, {
                    indent: true,
                    breakBeforeOpen: true,
                    breakAfterOpen: true,
                    breakBeforeClose: true,
                    breakAfterClose: true
                });
            }
            // Start in source mode.
            this.setMode('source');
        });
    </script>
    <script data-sample="1">
        CKEDITOR.replace('testedit', {
            height: 150
        });
    </script>
    <script data-sample="2">
        CKEDITOR.replace('content', {
            height: 400
        });
    </script>
    <script data-sample="3">
        CKEDITOR.replace('testedit2', {
            height: 400
        });
    </script>
    <script data-sample="4">
        CKEDITOR.replace('tool-location', {
            toolbarLocation: 'bottom',
            // Remove some plugins that would conflict with the bottom
            // toolbar position.
            removePlugins: 'elementspath,resize'
        });
    </script>
</body>

</html>