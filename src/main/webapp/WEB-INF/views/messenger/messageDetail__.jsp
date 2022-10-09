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
	<div class="right-part mail-compose overflow-auto">
		<div class="p-4 border-bottom">
	    	<div class="d-flex align-items-center">
	        	<div>
					<h4>Compose</h4>
					<span>create new message</span>
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
	                <div class="form-group">
	                    <input type="email" id="example-email" name="example-email" class="form-control"
	                        placeholder="To">
	                </div>
	                <div class="form-group">
	                    <input type="text" id="example-subject" name="example-subject" class="form-control"
	                        placeholder="Subject">
	                </div>
	                <div id="summernote"></div>
	                <h4>Attachment</h4>
	                <div class="dropzone" id="dzid">
	                    <div class="fallback">
	                        <input name="file" type="file" multiple />
	                    </div>
	                </div>
	                <button type="submit" class="btn btn-success mt-3"><i class="far fa-envelope"></i>
	                    Send</button>
	                <button type="submit" class="btn btn-dark mt-3">Discard</button>
	            </form>
	            <!-- Action part -->
	        </div>
	    </div>
	</div>






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
                        <div class="border mt-3 p-3">
                            <p class="pb-3">click here to <a href="javascript:void(0)">Reply</a> or <a
                                    href="javascript:void(0)">Forward</a></p>
                        </div>
                    </div>
                </div>
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
    <!-- This Page JS -->
    <script src="${path}/resources/dist/js/pages/email/email.min.js"></script>
</body>

</html>