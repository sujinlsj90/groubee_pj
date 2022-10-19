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
    <title>그루비 그룹웨어</title>	
	<link rel="canonical" href="https://www.wrappixel.com/templates/severny-admin-template/" />
    <!-- This Page CSS -->
<<<<<<< HEAD
    <link rel="stylesheet" type="text/css" href="${path}/resources/assets/libs/select2/dist/css/select2.min.css">
    
<script type="text/javascript">
	
	
</script>
    
=======
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
>>>>>>> b4f3977aaa326688f4936a7984d699252978e042
</head>

<body>
           <!--  <div class="email-app position-relative" style="height:100%;"> -->
                <!-- ============================================================== -->
                <!-- Right Part -->
                <!-- ============================================================== -->
                <div class="right-part mail-list overflow-auto" style="width:100%; height:100%; margin-left:0;">
                    <div class="p-3 b-b">
                        <div class="d-flex align-items-center">
                            <div>
                                <h4>보낸쪽지함</h4>
                            </div>
                            <div class="ml-auto">
                                <input placeholder="Search Mail" type="text" class="form-control">
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
                                <button type="button" class="btn btn-outline-secondary font-18"><i
                                        class="mdi mdi-reload"></i></button>
                                <button type="button" class="btn btn-outline-secondary font-18"><i
                                        class="mdi mdi-alert-octagon"></i></button>
                                <button type="button" class="btn btn-outline-secondary font-18"><i
                                        class="mdi mdi-delete"></i></button>
                            </div>
                            <div class="btn-group mr-2" role="group" aria-label="Button group with nested dropdown">
                                <div class="btn-group" role="group">
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
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Action part -->
                    <!-- Mail list-->
                    <div class="table-responsive" style="height:100%;">
                        <table class="table email-table no-wrap table-hover v-middle">
                            <tbody>
                                <!-- row -->
                                <tr class="">
                                    <!-- label -->
                                    <td class="chb">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="cst13">
                                            <label class="custom-control-label" for="cst13">&nbsp;</label>
                                        </div>
                                    </td>
                                    <!-- star -->
                                    <td class="starred px-1 py-2"><i class="far fa-star"></i></td>
                                    <!-- User -->
                                    <td class="user-image p-2"><img src="${path}/resources/assets/images/users/1.jpg" alt="user"
                                            class="rounded-circle" width="30"></td>
                                    <td class="user-name px-1 py-2">
                                        <h6 class="mb-0 text-truncate">Hanna Gover</h6>
                                    </td>
                                    <!-- Message -->
                                    <td class="py-2 px-3 no-wrap text-truncate" style="width:50%;"> <a class="link"
                                            href="javascript: void(0)"
                                            onclick="window.open('${path}/messageDetail.me','New Message',
                                            'left=500, top=100, width=850, height=810, location=no, status=no, scrollbars=yes');">
                                            쪽지 제목입니다.</a></td>
                                    <!-- Attachment -->
                                    <td class="clip px-1 py-2"><i class="fa fa-paperclip"></i></td>
                                    <!-- Time -->
                                    <td class="time text-right"> 12:30 PM </td>
                                </tr>
                            </tbody>
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
                <!-- Right Part  Mail Compose -->
                <!-- ============================================================== -->
                <div class="right-part mail-compose overflow-auto" style="display:none;">
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
<%--     <script src="${path}/resources/dist/js/pages/email/email.min.js"></script> --%>
    <script src="${path}/resources/assets/libs/summernote/dist/summernote-bs4.min.js"></script>
    <script src="${path}/resources/assets/libs/dropzone/dist/min/dropzone.min.js"></script>
    <script>
        $('#summernote').summernote({
            placeholder: 'Type your email Here',
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