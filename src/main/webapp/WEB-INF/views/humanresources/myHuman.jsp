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
    <link href="${path}/resources/dist/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<script type="text/javascript">
	alert("select m.id" +
		      ",m.name"+
		      ",m.email_i" +
		      ",m.tel" +
		      ",m.in_tel" +
		      ",c.c_name" +
		      ",d.d_name"+
		"\nfrom grb_depart d \njoin grb_company c \non c.company_id = d.company_id"+ 
		"\njoin grb_member m \non d.depart_id = m.depart_id"+
		"\nwhere  id = 123;");
	
</script>

</head>

<body>

        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Left Part  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- End Left Part  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Right Part  Mail Compose -->
            <!-- ============================================================== -->
			<!-- 여기부터 내용 넣으십시오 -->
               <!-- Column -->
               <div class="col-lg-4 col-xlg-3 col-md-5">
                   <div class="card">
                       <div class="card-body">
                           <center class="mt-4"> <img src="${path}/resources/assets/images/users/5.jpg" class="rounded-circle" width="150" />
                               <h4 class="card-title mt-2">홍길동</h4>
                           </center>
                       </div>
                       <div>
                           <hr>
                       </div>
                       <div class="card-body"> 
                        <small class="text-muted pt-4 db">회사</small>
                           <h6>그룹웨어</h6>
                            <small class="text-muted pt-4 db">직책</small>
                           <h6>이사</h6>
                            <small class="text-muted pt-4 db">부서</small>
                           <h6>영업</h6>
                            <small class="text-muted pt-4 db">사번</small>
                           <h6>4567</h6>
                       <small class="text-muted">이메일 </small>
                         <h6>hannagover@gmail.com</h6> 
                         <small class="text-muted pt-4 db">폰번호</small>
                         <h6>+91 654 784 547</h6> 
                         <small class="text-muted pt-4 db">내선번호</small>
                         <h6>070-123-4567</h6>
                         
                           <br />
                           <button class="btn btn-circle btn-secondary"><i class="fab fa-facebook-f"></i></button>
                           <button class="btn btn-circle btn-secondary"><i class="fab fa-twitter"></i></button>
                           <button class="btn btn-circle btn-secondary"><i class="fab fa-youtube"></i></button>
                       </div>
                     </div>
                    </div>
                    </div>
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
</body>

</html>

