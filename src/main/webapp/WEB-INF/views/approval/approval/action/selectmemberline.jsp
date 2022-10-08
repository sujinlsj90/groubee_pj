<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp" %>

<!DOCTYPE html>

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
	alert("1. 삭제: \nDELETE FROM grb_approvalinfo \nWHERE load_id = \n(SELECT NVL(Max(doc_id),0) \nFROM grb_draft);");
	alert("2. 다시insert: \nINSERT INTO grb_approvalinfo(\nid, getter_id, load_id, load_num, \nload_status, category) "+
		  "\nVALUES(1, 2, 1, \n(SELECT NVL(Max(load_num)+1,1) FROM grb_approvalinfo), \ndefault, '일반');"); 
	
</script>

</head>
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
                                <button type = "button" id = "approvalListbtn" class ="btn btn-secondary btn-sm" onclick = "self.close(); opener.location.reload();">결재선 선택</button>
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
    <script src="${path}/resources/assets/libs/bootstrap-duallistbox/dist/jquery.bootstrap-duallistbox.min.js"></script>
    <script src="${path}/resources/dist/js/pages/forms/dual-listbox/dual-listbox.js"></script>
</body>

</html>