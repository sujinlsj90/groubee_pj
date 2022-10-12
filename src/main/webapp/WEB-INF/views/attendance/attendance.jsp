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
    <title>Groubee - 일일 근태 현황</title>	
	<link rel="canonical" href="https://www.wrappixel.com/templates/severny-admin-template/" />
    <!-- This Page CSS -->
    <link href="${path}/resources/assets/libs/summernote/dist/summernote-bs4.css" rel="stylesheet">
    <link href="${path}/resources/assets/libs/dropzone/dist/min/dropzone.min.css" rel="stylesheet">
    <link href="${path}/resources/assets/libs/bootstrap-table/dist/bootstrap-table.min.css" rel="stylesheet" type="text/css" />
    <!-- Custom CSS -->
    <link href="${path}/resources/dist/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<link href="${path}/resources/commonCSS/attandance.css" rel="stylesheet">

<script type="text/javascript">
	// alert("select * from grb_attendance a \n join grb_member m on a.id = m.id \n where m.id = 1;\n\n INSERT INTO grb_attendance (attend_id, id, attendin, RESULT, state) \n VALUES((SELECT NVL(Max(attend_id)+1,1) FROM grb_attendance), 1, sysdate, 1, '업무'); \n\n INSERT INTO grb_attendance (attend_id, id, attendout, RESULT, state) \n VALUES((SELECT NVL(Max(attend_id)+1,1) FROM grb_attendance), 1, sysdate, 0, '업무종료');");	
</script>
</head>

<body onload="printClock()">
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
				<%@ include file="/WEB-INF/views/attendance/subMenu.jsp" %>
				<!-- ============================================================== -->
				<!-- Right Part -->
				<!-- ============================================================== -->
				<form name="attendform" method="post">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				<div class="right-part mail-list overflow-auto" style="height:100%;">
					<!-- Action part -->
					<!-- Button group part -->
					<div class="bg-light p-3 d-flex align-items-center do-block">
						<div style="align: center">
							<h4>나의 근태 현황</h4>
							<div style="border:1px solid #dedede; width:400px; height:100px; line-height:100px; color:#666;font-size:60px; text-align:center; border:0;" id="clock2">
							</div>
						</div>
						<div class="ml-auto">						
							<div class="btn-group mr-2" role="group"
								aria-label="Button group with nested dropdown">
								<div class="btn-group" role="group">
									<button id="email-dd1" type="button"
										class="btn btn-outline-secondary dropdown-toggle"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<i class="mdi mdi-folder font-18"></i>
									</button>
									<div class="dropdown-menu" aria-labelledby="email-dd1">
										<a class="dropdown-item" href="request_over.at">연장 근무 신청</a> 
										<a class="dropdown-item" href="request_rest.at">연차 사용 신청</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="card">
						<div class="button-group">
							<button type="button" class="btn waves-effect waves-light btn-outline-info" id="attendin">업무시작</button>
							<button type="button" class="btn waves-effect waves-light btn-outline-info" id="attendout">업무종료</button>													
						</div>
						<div class="card-body">
							<h4 class="card-title" id="today2"></h4>							
							<div class="container" style="align: center">
								<div class="row">
									<div class="col bg-light border p-3">
										<div>오늘 출근 시간</div>
										<c:if test="${list[0].attendin == null}" >
											<div id="attendin2">미등록</div>
										</c:if>
										<c:if test="${list[0].attendin != null}" >
											<div id="attendin2"></div>
										</c:if>
									</div>
									<div class="col order-1 bg-light border p-3">
										<div>오늘 퇴근 시간</div>
										<c:if test="${list[1].attendout == null}" >
											<div id="attendout2">미등록</div>
										</c:if>
										<c:if test="${list[1].attendout != null}" >
											<div id="attendout2"></div>
										</c:if>
									</div>
									<div class="col order-12 bg-light border p-3">									
										<div>오늘 잔여 시간</div>
										<div id="remain"></div>
									</div>
								</div>
							</div>
							<div class="p-0 border-0"><hr></div>
							<div class="container" style="align: center">
								<div class="row">
									<div class="col bg-light border p-3">
										<div>오늘 연장 시간</div>
										<div id="overtime">0h 0m 0s</div>
									</div>
									<div class="col order-1 bg-light border p-3">
										<div>오늘 누적 시간</div>
										<div id="accumulatetime"></div>
									</div>									
									<div class="col order-12 bg-light border p-3">
										<div>이번주 누적 시간</div>
										<div id="accumulweek"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 일일 근태 로그 확인 -->
					<div class="card">
						<div class="card-body">
							<table class="table table-striped no-wrap" style="width:100%">
								<thead>
									<tr>										
										<th class="id" data-sortable="true">사번</th>
										<th class="today" data-sortable="true">등록일</th>
										<th class="attendin" data-sortable="true">업무시작</th>
										<th class="attendout" data-sortable="true">업무종료</th>
										<th class="state" data-sortable="true">근무상태</th>																	
										<!-- 재직 휴직 퇴사 -->
									</tr>
								</thead>
								<tbody>
								
								<c:forEach var="dto" items="${list}" varStatus="status">
									<c:if test="${dto.attend_id == null}" >
									<tr>
										<td colspan="6">등록하신 근태 로그가 없습니다.</td>																		
									</tr>	
									</c:if>
									<c:if test="${dto.attend_id != null}" >
									<tr>										
										<td>${dto.id}</td>
										<td>${dto.today}</td>
										<td>${dto.attendin}</td>
										<td>${dto.attendout}</td>
										<td>${dto.state}</td>										
									</tr>
									</c:if>
								</c:forEach>									
								</tbody>
							</table>
						</div>						
					</div>
				</div>
				</form>
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
    <script src="https://unpkg.com/tableexport.jquery.plugin/tableExport.min.js"></script>
    <script src="${path}/resources/assets/libs/bootstrap-table/dist/bootstrap-table.min.js"></script>
    <script src="${path}/resources/assets/libs/bootstrap-table/dist/bootstrap-table-locale-all.min.js"></script>
    <script src="${path}/resources/assets/libs/bootstrap-table/dist/extensions/export/bootstrap-table-export.min.js"></script>
    <script src="${path}/resources/dist/js/pages/tables/bootstrap-table.init.js"></script>       
    <script src="${path}/resources/assets/libs/moment/min/moment.min.js"></script>
    <script src="${path}/resources/assets/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="${path}/resources/assets/extra-libs/date-paginator/bootstrap-datepaginator.min.js"></script>
    <!-- 날짜/시간 계산 -->
    <script type="text/javascript">
    function printClock() {
        
        var clock2 = document.getElementById("clock2");  // 출력할 장소 선택
        var today2 = document.getElementById("today2");
        var clock = document.getElementById("clock");  // 출력할 장소 선택
        var today = document.getElementById("today");
        var currentDate = new Date(); 
        var calendar = currentDate.getFullYear() + "-" + (currentDate.getMonth()+1) + "-" + currentDate.getDate() // 현재 날짜
        // var amPm = 'AM'; // 초기값 AM
        var currentHours = addZeros(currentDate.getHours(),2); 
        var currentMinute = addZeros(currentDate.getMinutes(),2);
        var currentSeconds =  addZeros(currentDate.getSeconds(),2);
        // 일일 잔여 시간
        var company_out = new Date(calendar + " 18:00:00.000"); // 회사 퇴근 시간 기준
	 	var r_check = company_out - currentDate; // 일일 잔여 시간 계산
	 	var r_h = Math.floor((r_check % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
	 	var r_m = Math.floor((r_check % (1000 * 60 * 60)) / (1000 * 60));
	 	var r_s = Math.floor((r_check % (1000 * 60)) / 1000);		 	
    	var remain = document.getElementById("remain");
    	if(r_s < 0){
    		remain.innerHTML = "0h 0m 0s";
    	} else{
    		remain.innerHTML = r_h +"h "+ r_m +"m "+ r_s +"s";
    	}
    	// 날짜 시계 출력
        clock.innerHTML = currentHours+":"+currentMinute+":"+currentSeconds; // 시:분:초
        today.innerHTML = calendar; // 오늘 날짜
        clock2.innerHTML = currentHours+":"+currentMinute+":"+currentSeconds; // 시:분:초
        today2.innerHTML = calendar; // 오늘 날짜
        setTimeout("printClock()",1000); // 1초마다 printClock() 함수 호출        
       	
    }

    function addZeros(num, digit) { // 자릿수 맞춰주기
    	  var zero = '';
    	  num = num.toString();
    	  if (num.length < digit) {
    	    for (i = 0; i < digit - num.length; i++) {
    	      zero += '0';
    	    }
    	  }
    	  return zero + num;
    }
    	var currentDate = new Date(); 
	    var calendar = currentDate.getFullYear() + "-" + (currentDate.getMonth()+1) + "-" + currentDate.getDate() // 현재 날짜
	    var attend_in; // 출근 시간 Date
	    var attend_out; // 퇴근 시간 Date
	    var in_clock; // 출근 시간만 추출
	    var out_clock; // 퇴근 시간만 추출
	    
	    // 출퇴근 로그 순번에 따른 list 값 가져오기 
	    if(${list[0].attendin == null}){
	    	attend_in = new Date('${list[1].attendin}'); 
	    	attend_out = new Date('${list[0].attendout}'); 
	    	in_clock = '${list[1].attendin}'.split(" ");
	    	out_clock = '${list[0].attendout}'.split(" ");
	    } else{
	    	attend_in = new Date('${list[0].attendin}'); // 출근 시간
	    	attend_out = new Date('${list[1].attendout}'); // 퇴근 시간
	    	in_clock = '${list[0].attendin}'.split(" ");
	    	out_clock = '${list[1].attendout}'.split(" ");	    
	    }   
	    console.log(in_clock);
	    console.log(out_clock);
	    
	 	var acc_check = attend_out - attend_in; // 누적 시간 계산
	 	var acc_h = Math.floor((acc_check % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
	 	var acc_m = Math.floor((acc_check % (1000 * 60 * 60)) / (1000 * 60));
	 	var acc_s = Math.floor((acc_check % (1000 * 60)) / 1000);	 	
	 	console.log(acc_h +"h "+ acc_m +"m "+ acc_s +"s");
	 	
	 	// 누적 시간 계산 (퇴근 - 출근)
    	var accumulate = document.getElementById("accumulatetime");
	 	var accumulweek = document.getElementById("accumulweek");
	 	var accumulcheck = accumulweek.innerHTML; // 이번주 누적시간
	 	if(accumulate.innerHTML == 'NaNh NaNm NaNs'){ // 출퇴근 기록이 둘 다 없으면 NaN > 0h 0m 0s 처리
	 		accumulate.innerHTML = "0h 0m 0s";
	 	}else{ // 출퇴근 기록이 있으면 누적 시간 계산
    		accumulate.innerHTML = acc_h +"h "+ acc_m +"m "+ acc_s +"s";
    		accumulcheck += accumulate; // 주간 누적 시간 += 일일 누적 시간
    		//accumulweek.innerHTML = accumulcheck; // 갱신
    		//console.log(accumulcheck);
	 	}
    	// 출근 시간
    	var attendin = document.getElementById("attendin");
    	var attendin2 = document.getElementById("attendin2");
    	attendin.innerHTML = in_clock[1];
    	attendin2.innerHTML = in_clock[1];
    	// 퇴근 시간
    	var attendout = document.getElementById("attendout");
    	attendout.innerHTML = out_clock[1];
    	var attendout2 = document.getElementById("attendout2");
    	attendout2.innerHTML = out_clock[1];
    	
   	$(function(){
   		// 업무 시작
   		$("#attendin").click(function(){   			
   			if(confirm("업무를 시작하시겠습니까?")){
				document.attendform.action = "${path}/attendin.at";
				document.attendform.submit();
   			}
   		});
   		
   		// 업무 종료
   		$("#attendout").click(function(){   			
   			if(confirm("업무를 종료하시겠습니까?")){
				document.attendform.action = "${path}/attendout.at";
				document.attendform.submit();
   			}
   		});   		
    });    	
    </script>
</body>
</html>