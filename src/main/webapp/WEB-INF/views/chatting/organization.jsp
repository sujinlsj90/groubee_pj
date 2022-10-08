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
    <!-- This page css -->
    <!-- Custom CSS -->
    <link href="${path}/resources/dist/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<script type="text/javascript">
	alert("<사원목록>\nSELECT m.name, m.image, r.r_name, d.d_name\nFROM grb_member m\nJOIN grb_rank r\n"
			+"ON m.rank = r.RANK\nJOIN grb_depart d\nON d.depart_id = m.depart_id\nWHERE state = '재직'\nAND show = 1;");
</script>

</head>

<body>
    
                <!-- ============================================================== -->
                <!-- Left Part  -->
                <!-- ============================================================== -->
                <div class="left-part bg-white user-chat-box" style="width:700px">
                    <div class="p-3">
                    </div>
                    <div class="scrollable position-relative" style="height:100%;">
                        <div class="px-3 py-2 border-bottom pb-3">
                            <h5 class="card-title">아래 목록에서 대화 상대를 선택하세요</h5>
                            <form>
                                <div class="searchbar">
                                    <input class="form-control" type="text" placeholder="초대할 사람의 이름 또는 부서명을 검색하세요">
                                </div>
                            </form>
                        </div>
                        <ul class="mailbox list-style-none app-chat">
                            <li>
                                <div class="message-center chat-scroll chat-users notifications position-relative">
                                    <a href="javascript:void(0)" class="chat-user message-item align-items-center border-bottom px-3 py-2" id='chat_user_1' data-user-id='1'>
                                        <span class="user-img"> 
                                            <img src="${path}/resources/assets/images/users/1.jpg" alt="user" class="img-fluid rounded-circle" width="40"> 
                                            <span class="profile-status online float-right"></span> 
                                        </span>
                                        <div class="mail-contnet w-75 d-inline-block v-middle pl-2">
                                            <h6 class="message-title  mb-0 mt-1" data-username="Pavan kumar">김소영</h6> 
                                            <span class="font-12 text-nowrap d-block text-muted text-truncate">Just see the my admin!</span> <span class="font-12 text-nowrap d-block text-muted">9:30 AM</span> 
                                        </div>
                                    </a>
                                    <!-- Message -->
                                    <a href="javascript:void(0)" class="chat-user message-item align-items-center border-bottom px-3 py-2" id='chat_user_2' data-user-id='2'>
                                        <span class="user-img"> 
                                            <img src="${path}/resources/assets/images/users/2.jpg" alt="user" class="img-fluid rounded-circle" width="40"> 
                                            <span class="profile-status busy float-right"></span> 
                                        </span>
                                        <div class="mail-contnet w-75 d-inline-block v-middle pl-2">
                                            <h6 class="message-title  mb-0 mt-1" data-username="Sonu Nigam">이팀장님</h6> 
                                            <span class="font-12 text-nowrap d-block text-muted text-truncate">I've sung a song! See you at</span> <span class="font-12 text-nowrap d-block text-muted">9:10 AM</span> 
                                        </div>
                                    </a>
                                    <!-- Message -->
                                    <a href="javascript:void(0)" class="chat-user message-item align-items-center border-bottom px-3 py-2" id='chat_user_3' data-user-id='3'>
                                        <span class="user-img"> 
                                            <img src="${path}/resources/assets/images/users/3.jpg" alt="user" class="img-fluid rounded-circle" width="40">
                                             <span class="profile-status away float-right"></span> 
                                         </span>
                                        <div class="mail-contnet w-75 d-inline-block v-middle pl-2">
                                            <h6 class="message-title  mb-0 mt-1" data-username="Arijit Sinh">김부장님</h6> 
                                            <span class="font-12 text-nowrap d-block text-muted text-truncate">I am a singer!</span> <span class="font-12 text-nowrap d-block text-muted">9:08 AM</span> 
                                        </div>
                                    </a>
                                    <!-- Message -->
                                    <a href="javascript:void(0)" class="chat-user message-item align-items-center border-bottom px-3 py-2" id='chat_user_5' data-user-id='5'>
                                        <span class="user-img"> 
                                            <img src="${path}/resources/assets/images/users/5.jpg" alt="user" class="img-fluid rounded-circle" width="40"> 
                                            <span class="profile-status offline float-right"></span> 
                                        </span>
                                        <div class="mail-contnet w-75 d-inline-block v-middle pl-2">
                                            <h6 class="message-title  mb-0 mt-1" data-username="Sunil Joshi">최사원</h6> 
                                            <span class="font-12 text-nowrap d-block text-muted text-truncate">Just see the my admin!</span> <span class="font-12 text-nowrap d-block text-muted">9:02 AM</span> 
                                        </div>
                                    </a>
                                    <!-- Message -->
                                    <!-- Message -->
                                    <a href="javascript:void(0)" class="chat-user message-item align-items-center border-bottom px-3 py-2" id='chat_user_6' data-user-id='6'>
                                        <span class="user-img"> 
                                            <img src="${path}/resources/assets/images/users/6.jpg" alt="user" class="img-fluid rounded-circle" width="40"> 
                                            <span class="profile-status offline float-right"></span> 
                                        </span>
                                        <div class="mail-contnet w-75 d-inline-block v-middle pl-2">
                                            <h6 class="message-title  mb-0 mt-1" data-username="Akshay Kumar">곽대리</h6> 
                                            <span class="font-12 text-nowrap d-block text-muted text-truncate">Just see the my admin!</span> <span class="font-12 text-nowrap d-block text-muted">9:02 AM</span>
                                        </div>
                                    </a>
                                    <!-- Message -->
                                    <!-- Message -->
                                    <a href="javascript:void(0)" class="chat-user message-item align-items-center border-bottom px-3 py-2" id='chat_user_7' data-user-id='7'>
                                        <span class="user-img"> 
                                            <img src="${path}/resources/assets/images/users/7.jpg" alt="user" class="img-fluid rounded-circle" width="40"> 
                                            <span class="profile-status offline float-right"></span>
                                        </span>
                                        <div class="mail-contnet w-75 d-inline-block v-middle pl-2">
                                            <h6 class="message-title  mb-0 mt-1" data-username="Pavan kumar">이대리</h6>
                                            <span class="font-12 text-nowrap d-block text-muted text-truncate">Just see the my admin!</span> <span class="font-12 text-nowrap d-block text-muted">9:02 AM</span> 
                                         </div>
                                    </a>
                                    <!-- Message -->
                                    <!-- Message -->
                                    <a href="javascript:void(0)" class="chat-user message-item align-items-center border-bottom px-3 py-2" id='chat_user_8' data-user-id='8'>
                                        <span class="user-img"> 
                                            <img src="${path}/resources/assets/images/users/8.jpg" alt="user" class="img-fluid rounded-circle" width="40"> 
                                            <span class="profile-status offline float-right"></span> 
                                        </span>
                                        <div class="mail-contnet w-75 d-inline-block v-middle pl-2">
                                            <h6 class="message-title  mb-0 mt-1" data-username="Varun Dhavan">Varun Dhavan</h6> 
                                            <span class="font-12 text-nowrap d-block text-muted text-truncate">Just see the my admin!</span> 
                                            <span class="font-12 text-nowrap d-block text-muted">9:02 AM</span> 
                                        </div>
                                    </a>
                                    <!-- Message -->
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Left Part  -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right Part  Mail Compose -->
                <!-- ============================================================== -->
            
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
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
    <script src="${path}/resources/assets/extra-libs/taskboard/js/jquery.ui.touch-punch-improved.js"></script>
    <script src="${path}/resources/assets/extra-libs/taskboard/js/jquery-ui.min.js"></script>
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
    <script src="${path}/resources/dist/js/pages/chat/chat.js"></script>
    <!--This page JavaScript -->
</body>

</html>