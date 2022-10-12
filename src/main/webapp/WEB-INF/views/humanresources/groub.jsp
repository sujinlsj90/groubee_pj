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
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
 <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#spreadBtn01").click(function(){
                if($("#hiddenList01").is(":visible")){
                    $("#hiddenList01").slideUp();
                }else{
                    $("#hiddenList01").slideDown();
                }
            });
        });

        $(document).ready(function(){
            $("#spreadBtn2").click(function(){
                if($("#hiddenList02").is(":visible")){
                    $("#hiddenList02").slideUp();
                }else{
                    $("#hiddenList02").slideDown();
                }
            });
        });

        $(document).ready(function(){
            $("#spreadBtn3").click(function(){
                if($("#hiddenList03").is(":visible")){
                    $("#hiddenList03").slideUp();
                }else{
                    $("#hiddenList03").slideDown();
                }
            });
        });

        $(document).ready(function(){
            $("#spreadBtn11").click(function(){
                if($("#hiddenList11").is(":visible")){
                    $("#hiddenList11").slideUp();
                } else {
                    $("#hiddenList11").slideDown();
                }
            });
            $('#spreadBtn12').click(function(){
                if($('#hiddenList12').is(':visible')){
                    $('#hiddenList12').slideUp();
                } else {
                    $('#hiddenList12').slideDown();
                }
            });
            $('#spreadBtn13').click(function(){
                if($('#hiddenList13').is(':visible')){
                    $('#hiddenList13').slideUp();
                } else {
                    $('#hiddenList13').slideDown();
                }
            });
            $('#spreadBtn14').click(function(){
                if($('#hiddenList14').is(':visible')){
                    $('#hiddenList14').slideUp();
                } else {
                    $('#hiddenList14').slideDown();
                }
            })
             $("#spreadBtn15").click(function(){
              if($("#hiddenList15").is(":visible")){
                    $("#hiddenList15").slideUp();
               }else{
                    $("#hiddenList15").slideDown();
                 }
             }); 
            $("#spreadBtn16").click(function(){
                if($("#hiddenList16").is(":visible")){
                      $("#hiddenList16").slideUp();
                 }else{
                      $("#hiddenList16").slideDown();
                   }
               }); 
        });

    </script>

    <style>
        *{margin: 0; padding: 0;text-decoration: none;list-style: none;}
        .wrap{width:100%; margin: 0 auto; padding:20px;}
        /* index_1 */
        .index_1{margin-bottom: 10px;}

        /* index_2 */
        .index_2{margin-bottom: 10px;}

        /* index_3 */
        .index_3{width:100%; height:100%; display: flex; justify-content: space-between;}
        .index_3 .cosmo{ width: 100%; height: 100%; border: 1px solid lightgray;border-radius: 30px;padding: 20px; overflow:hidden}
        .index_3 .cosmo li{margin-left: 20px;}
        .index_3 .cosmo li a{color: black; display: block;}
        .index_3 .cosmo button{
            width: 60px;height: 20px;border: 1px solid white;display: block;
            border-radius:15px;}
        .index_3 .cosmo button:hover{transition: all 0.3s;background:lightgray;}
        .index_3 .cosmo_2{width: 45%;height: 100%; border: 1px solid lightgray;border-radius: 30px;padding: 20px;}
        .index_3 .cosmo_2 ul{display: flex; justify-content: space-between;margin-top: 10px;}
        .index_3 .cosmo_2 li{width: 10.7%;}
        .index_3 .cosmo_2 li input{
            width: 60px;height: 30px;border: 1px solid white;display: block;
            float:left; border-radius:15px;margin-left: -15px;
        }    
        .index_3 .cosmo_2 li input:hover{transition: all 0.3s;background:lightgray;}

        /* index_4 */
        .index_4 {display: flex;margin: auto 0;justify-content: center;}
        .index_4 input{
            width: 100px;height: 50px;border: 1px solid white;display: block;
            float:left; border-radius:15px;}
        .index_4 input:hover{transition: all 0.3s;background:lightgray;}
    </style>


<<<<<<< HEAD:src/main/webapp/WEB-INF/views/humanresources/img.jsp
<script type="text/javascript">
		
</script>
=======
>>>>>>> b4f3977aaa326688f4936a7984d699252978e042:src/main/webapp/WEB-INF/views/humanresources/groub.jsp

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
        <%@ include file="/WEB-INF/views/humanresources/leftMenu.jsp" %>
            <!-- ============================================================== -->
            <!-- Left Part -->
            <!-- ============================================================== -->
           
            <!-- ============================================================== -->
            <!-- Right Part -->
            <!-- ============================================================== -->
        <div class="right-part overflow-auto" style="height:100%;">
          <h2 align="center" font-weight="bold">조직도</h2> <br><br>
         
          <div class="wrap">
        <div class="index_3">
          <div class="cosmo">
            <c:forEach var="dto" items="${list}">
              <button id="spreadBtn01" class="btn1">${dto.depart_name}</button>
                <ul id="hiddenList01" class="section">
               <c:forEach var="dto2" items="${list2}">
                    <li id="spreadBtn11">
                        <a href="#">${dto2.team_name}</a>
                        <ul id="hiddenList11" class="btn1">
                            <li><a href="#" onclick="window.open('${path}/myHuman.hu','인사정보','width=400,height=650,location=no,status=no,scrollbars=yes');">개인정보</a></li>
                        </ul>    
             		
                    </li>
             </c:forEach>
                </ul>
         </c:forEach> 
            </div>
        </div>
    </div>
          </div>
      </div>
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
    <!--Wave Effects -->
    <!-- themejs -->
    <!--Menu sidebar -->
    <script src="${path}/resources/dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="${path}/resources/dist/js/custom.min.js"></script>
    <!--This page JavaScript -->
    <!--chartis chart-->
    <script src="${path}/resources/assets/libs/chartist/dist/chartist.min.js"></script>
    <script src="${path}/resources/assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
    <!--c3 charts -->
    <script src="${path}/resources/assets/extra-libs/c3/d3.min.js"></script>
    <script src="${path}/resources/assets/extra-libs/c3/c3.min.js"></script>
    <!--chartjs -->
    <script src="${path}/resources/assets/libs/chart.js/dist/Chart.min.js"></script>
    <script src="${path}/resources/assets/libs/gaugeJS/dist/gauge.min.js"></script>
    <script src="${path}/resources/dist/js/pages/dashboards/dashboard1.js"></script>
    <!--  This page javascript -->  
 	<script src="${path}/resources/dist/js/custom.min.js"></script>
    <script src="${path}/resources/assets/libs/nestable/jquery.nestable.js"></script>
    <script src="${path}/resources/dist/js/sidebarmenu.js"></script>
</body>

</html>
