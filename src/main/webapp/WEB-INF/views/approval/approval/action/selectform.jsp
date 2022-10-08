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
    <!-- This Page CSS -->
    <link rel="stylesheet" type="text/css"
        href="${path}/resources/assets/libs/bootstrap-duallistbox/dist/bootstrap-duallistbox.min.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<script type="text/javascript">
function formselect(){
	 var form = $("#selectform option:selected").val();
	  if(form == "업무기안") {
		  window.open('${path}/form1.fo','기안문','width=860,height=1100,location=no,status=no,scrollbars=yes');
		  }
	  if(form == "회의록") {
		  window.open('${path}/form2.fo','기안문','width=860,height=1100,location=no,status=no,scrollbars=yes');
		  }
	  if(form == "계획보고") {
		  window.open('${path}/form3.fo','기안문','width=860,height=1100,location=no,status=no,scrollbars=yes');
		  }
	  if(form == "결과보고") {
		  window.open('${path}/form4.fo','기안문','width=860,height=1100,location=no,status=no,scrollbars=yes');
		  }
	  if(form == "교육신청") {
		  window.open('${path}/form5.fo','기안문','width=860,height=1100,location=no,status=no,scrollbars=yes');
		  }
	  if(form == "교육보고서") {
		  window.open('${path}/form6.fo','기안문','width=860,height=1100,location=no,status=no,scrollbars=yes');
		  }
	  
}
</script>

<script type="text/javascript">
	alert("INSERT INTO \ngrb_approvalinfo(\nid, getter_id, load_id, \nload_num, load_status, category) "+
			"\nVALUES(\n1, 2, \n(SELECT NVL(Max(doc_id)+1,1) FROM grb_draft), \n(SELECT NVL(Max(load_num)+1,1) FROM grb_approvalinfo), \ndefault, '일반');");
	
</script>
 
</head>		
			<form name = "selectform" method = "post">
              <div class="card">
                 <div class="card-body">
                     <h5 class="card-title">기안양식선택</h5>
                     <h6 class="card-subtitle">기안 양식을 선택하세요</h6>
                     <select class="select2 form-control custom-select" name = "selectform" id = "selectform" style="width: 100%; height:36px;">
                         <option>Select</option>
                         <optgroup label="일반">
                             <option value="업무기안">업무기안</option>
                         </optgroup>
                         <optgroup label="보고">
                             <option value="회의록">회의록</option>
                             <option value="계획보고">사업계획보고</option>
                             <option value="결과보고">사업결과보고</option>
                         </optgroup>
                         <optgroup label="교육">
                             <option value="교육신청">교육신청</option>
                             <option value="교육보고">교육보고서</option>
                         </optgroup>
                      </select>
                      <br><hr><br> 
                      
		                <div class="row">
		                    <div class="col-12">
		                        <div class="card">
		                            <div class="card-body">
		                                <h4 class="card-title">결재선 선택</h4>
		                                <select multiple="multiple" size="10" class="duallistbox">
		                                    <option value="1">ㅁㅁㅁ</option>
		                                    <option value="2">ㅇㅇㅇ</option>
		                                    <option value="3" selected="selected">ㅇㅇㅇ</option>
		                                    <option value="4">ㅇㅇㅇ</option>
		                                    <option value="5">ㅇㅇㅇ</option>
		                                    <option value="6" selected="selected">ㅇㅇㅇ</option>
		                                    <option value="7">ㅇㅇㅇ</option>
		                                    <option value="8">ㅇㅇㅇ</option>
		                                    <option value="9">ㅇㅇㅇ</option>
		                                    <option value="11">ㅇㅇㅇ</option>
		                                </select>
		                                <br>
		                            </div>
		                        </div>
		                    </div>
		                 </div>
                      <button type = "button" class ="btn btn-secondary btn-sm" onclick = "formselect(); self.close();">기안문작성</button>  
                       </div>
                   </div>
               </form>
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
    <script src="${path}/resources/assets/libs/bootstrap-duallistbox/dist/jquery.bootstrap-duallistbox.min.js"></script>
    <script src="${path}/resources/dist/js/pages/forms/dual-listbox/dual-listbox.js"></script>
</body>

</html>