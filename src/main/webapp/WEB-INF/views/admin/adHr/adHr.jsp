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
    <link rel="stylesheet" type="text/css" href="${path}/resources/assets/extra-libs/prism/prism.css">
    <link href="${path}/resources/commonCSS/index.css" rel="stylesheet">
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
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- 좌측고정 메뉴바 -->
        <%@ include file="/WEB-INF/views/admin/adminMenu.jsp" %>
        <!-- 좌측고정 메뉴바 -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper" style="height:100%;">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid" style="height:100%;">
                <!-- *************************************************************** -->
                <!-- Start First Cards -->
                <!-- *************************************************************** -->
                <!-- 여기서 시작-->
                <div class="row">
                <div class="card-body">
                  <h4 class="card-title">전체인사관리</h4>
                  <div class="jsgrid-grid-header jsgrid-header-scrollbar">
                  <table class="jsgrid-table table table-striped table-hover">
                  <tr class="jsgrid-header-row">
                  <th class="jsgrid-header-cell jsgrid-header-sortable" style="width: 150px;">Name</th>
                  <th class="jsgrid-header-cell jsgrid-align-right jsgrid-header-sortable" style="width: 70px;">Age</th>
                  <th class="jsgrid-header-cell jsgrid-header-sortable" style="width: 200px;">Address</th>
                  <th class="jsgrid-header-cell jsgrid-align-center jsgrid-header-sortable" style="width: 100px;">Country</th>
                  <th class="jsgrid-header-cell jsgrid-control-field jsgrid-align-center" style="width: 50px;">
                  <button class="jsgrid-button jsgrid-mode-button jsgrid-search-mode-button jsgrid-mode-on-button" type="button" title="">
                  </button></th>
                  </tr>
                  
                  <tr class="jsgrid-filter-row"><td class="jsgrid-cell" style="width: 150px;">
                  <input type="text" class="form-control input-sm"></td>
                  <td class="jsgrid-cell jsgrid-align-right" style="width: 70px;">
                  <input type="number" class="form-control input-sm"></td>
                  <td class="jsgrid-cell" style="width: 200px;">
                  <input type="text" class="form-control input-sm"></td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                  <select class="form-control input-sm"><option value="0"></option>
                  <option value="1">United States</option><option value="2">Canada</option>
                  <option value="3">United Kingdom</option><option value="4">France</option>
                  <option value="5">Brazil</option><option value="6">China</option>
                  <option value="7">Russia</option></select></td>
                  <td class="jsgrid-cell jsgrid-control-field jsgrid-align-center" style="width: 50px;">
                  <button class="jsgrid-button jsgrid-search-button" type="button" title="Search"></button>
                  <button class="jsgrid-button jsgrid-clear-filter-button" type="button" title="Clear filter">
                  </button></td></tr>
                  <tr class="jsgrid-insert-row" style="display: none;">
                  <td class="jsgrid-cell" style="width: 150px;">
                  <input type="text" class="form-control input-sm"></td>
                  <td class="jsgrid-cell jsgrid-align-right" style="width: 70px;">
                  <input type="number" class="form-control input-sm"></td>
                  <td class="jsgrid-cell" style="width: 200px;">
                  <input type="text" class="form-control input-sm"></td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                  <select class="form-control input-sm"><option value="0"></option>
                  <option value="1">United States</option><option value="2">Canada</option>
                  <option value="3">United Kingdom</option><option value="4">France</option>
                  <option value="5">Brazil</option><option value="6">China</option>
                  <option value="7">Russia</option></select></td>
                  <td class="jsgrid-cell jsgrid-control-field jsgrid-align-center" style="width: 50px;">
                  <button class="jsgrid-button jsgrid-insert-button" type="button" title="Insert">
                  </button></td></tr></table>
                  </div>
                  
                  <div class="jsgrid-grid-body" style="height: 295.2px;">
                  <table class="jsgrid-table table table-striped table-hover">
                  <tbody>
                  <tr class="jsgrid-row">
                  <td class="jsgrid-cell" style="width: 150px;">Otto Clay</td>
                  <td class="jsgrid-cell jsgrid-align-right" style="width: 70px;">61</td>
                  <td class="jsgrid-cell" style="width: 200px;">Ap #897-1459 Quam Avenue</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">China</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;"></td>
                  <td class="jsgrid-cell jsgrid-control-field jsgrid-align-center" style="width: 50px;">
                  <button class="jsgrid-button jsgrid-edit-button" type="button" title="Edit"></button>
                  <button class="jsgrid-button jsgrid-delete-button" type="button" title="Delete">
                  </button></td></tr>
                  
                  <tr class="jsgrid-alt-row">
                  <td class="jsgrid-cell" style="width: 150px;">Connor Johnston</td>
                  <td class="jsgrid-cell jsgrid-align-right" style="width: 70px;">73</td>
                  <td class="jsgrid-cell" style="width: 200px;">Ap #370-4647 Dis Av.</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">Russia</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;"></td>
                  <td class="jsgrid-cell jsgrid-control-field jsgrid-align-center" style="width: 50px;">
                  <button class="jsgrid-button jsgrid-edit-button" type="button" title="Edit"></button>
                  <button class="jsgrid-button jsgrid-delete-button" type="button" title="Delete"></button></td></tr>
                  
                  <tr class="jsgrid-row">
                  <td class="jsgrid-cell" style="width: 150px;">Lacey Hess</td>
                  <td class="jsgrid-cell jsgrid-align-right" style="width: 70px;">29</td>
                  <td class="jsgrid-cell" style="width: 200px;">Ap #365-8835 Integer St.</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">Russia</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;"></td>
                  <td class="jsgrid-cell jsgrid-control-field jsgrid-align-center" style="width: 50px;">
                  <button class="jsgrid-button jsgrid-edit-button" type="button" title="Edit"></button>
                  <button class="jsgrid-button jsgrid-delete-button" type="button" title="Delete"></button></td></tr>
                  
                  <tr class="jsgrid-alt-row">
                  <td class="jsgrid-cell" style="width: 150px;">Timothy Henson</td>
                  <td class="jsgrid-cell jsgrid-align-right" style="width: 70px;">78</td>
                  <td class="jsgrid-cell" style="width: 200px;">911-5143 Luctus Ave</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">United States</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                  </td>
                  <td class="jsgrid-cell jsgrid-control-field jsgrid-align-center" style="width: 50px;">
                  <button class="jsgrid-button jsgrid-edit-button" type="button" title="Edit"></button>
                  <button class="jsgrid-button jsgrid-delete-button" type="button" title="Delete">
                  </button></td></tr>
                 
                  <tr class="jsgrid-row"><td class="jsgrid-cell" style="width: 150px;">Ramona Benton</td>
                  <td class="jsgrid-cell jsgrid-align-right" style="width: 70px;">43</td>
                  <td class="jsgrid-cell" style="width: 200px;">Ap #614-689 Vehicula Street</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">Brazil</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                  </td>
                  <td class="jsgrid-cell jsgrid-control-field jsgrid-align-center" style="width: 50px;">
                  <button class="jsgrid-button jsgrid-edit-button" type="button" title="Edit"></button>
                  <button class="jsgrid-button jsgrid-delete-button" type="button" title="Delete"></button></td>
                  </tr>
                  
                  <tr class="jsgrid-alt-row">
                  <td class="jsgrid-cell" style="width: 150px;">Ezra Tillman</td>
                  <td class="jsgrid-cell jsgrid-align-right" style="width: 70px;">51</td>
                  <td class="jsgrid-cell" style="width: 200px;">P.O. Box 738, 7583 Quisque St.</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">United States</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                  </td>
                  <td class="jsgrid-cell jsgrid-control-field jsgrid-align-center" style="width: 50px;">
                  <button class="jsgrid-button jsgrid-edit-button" type="button" title="Edit"></button>
                  <button class="jsgrid-button jsgrid-delete-button" type="button" title="Delete"></button></td>
                  </tr>
                  
                  <tr class="jsgrid-row"><td class="jsgrid-cell" style="width: 150px;">Dante Carter</td>
                  <td class="jsgrid-cell jsgrid-align-right" style="width: 70px;">59</td>
                  <td class="jsgrid-cell" style="width: 200px;">P.O. Box 976, 6316 Lorem, St.</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">United States</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                  </td>
                  <td class="jsgrid-cell jsgrid-control-field jsgrid-align-center" style="width: 50px;">
                  <button class="jsgrid-button jsgrid-edit-button" type="button" title="Edit"></button>
                  <button class="jsgrid-button jsgrid-delete-button" type="button" title="Delete"></button></td>
                  </tr>
                  
                  <tr class="jsgrid-alt-row"><td class="jsgrid-cell" style="width: 150px;">Christopher Mcclure</td>
                  <td class="jsgrid-cell jsgrid-align-right" style="width: 70px;">58</td>
                  <td class="jsgrid-cell" style="width: 200px;">847-4303 Dictum Av.</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">United States</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                  </td>
                  <td class="jsgrid-cell jsgrid-control-field jsgrid-align-center" style="width: 50px;">
                  <button class="jsgrid-button jsgrid-edit-button" type="button" title="Edit"></button>
                  <button class="jsgrid-button jsgrid-delete-button" type="button" title="Delete"></button></td>
                  </tr>
                  
                  <tr class="jsgrid-row">
                  <td class="jsgrid-cell" style="width: 150px;">Ruby Rocha</td>
                  <td class="jsgrid-cell jsgrid-align-right" style="width: 70px;">62</td>
                  <td class="jsgrid-cell" style="width: 200px;">5212 Sagittis Ave</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">Canada</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                  </td>
                  <td class="jsgrid-cell jsgrid-control-field jsgrid-align-center" style="width: 50px;">
                  <button class="jsgrid-button jsgrid-edit-button" type="button" title="Edit"></button>
                  <button class="jsgrid-button jsgrid-delete-button" type="button" title="Delete"></button></td>
                  </tr>
                  
                  <tr class="jsgrid-alt-row">
                  <td class="jsgrid-cell" style="width: 150px;">Imelda Hardin</td>
                  <td class="jsgrid-cell jsgrid-align-right" style="width: 70px;">39</td>
                  <td class="jsgrid-cell" style="width: 200px;">719-7009 Auctor Av.</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">Brazil</td>
                  <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                  </td>
                  <td class="jsgrid-cell jsgrid-control-field jsgrid-align-center" style="width: 50px;">
                  <button class="jsgrid-button jsgrid-edit-button" type="button" title="Edit"></button>
                  <button class="jsgrid-button jsgrid-delete-button" type="button" title="Delete"></button></td>
                  </tr>
                  </tbody>
                  </table>
                  </div>
   				</div>
              </div>
              </div>
                <!-- *************************************************************** -->
                <!-- End Top Leader Table -->
                <!-- *************************************************************** -->
            </div>
        </div>
        
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
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
    
    
    <script src="${path}/resources/assets/libs/jsgrid/db.js"></script>
    <script src="${path}/resources/assets/libs/jsgrid/jsgrid.min.js"></script>
    <script src="${path}/resources/dist/js/pages/tables/jsgrid-init.js"></script>
</body>

</html>