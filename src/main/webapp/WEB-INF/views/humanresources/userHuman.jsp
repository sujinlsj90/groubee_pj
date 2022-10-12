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
        <!-- 좌측고정 메뉴바 -->
        <%@ include file="/WEB-INF/views/common/leftMenu.jsp" %>
        <!-- 좌측고정 메뉴바 -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper" style="height:100%;">
            <!-- ============================================================== -->
            <!-- Left Part  -->
            <!-- ============================================================== -->
			<%@ include file="/WEB-INF/views/humanresources/leftMenu.jsp" %>
            <!-- ============================================================== -->
            <!-- End Left Part  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Right Part  Mail Compose -->
            <!-- ============================================================== -->
            <div class="right-part overflow-auto">
			<div class="row">
                    <!-- Column -->
                <div class="card-body">
			<!-- *********************여기부터 내용 넣으십시오 -->
                    <h4 class="card-title">전체인사정보</h4>
                    <div class="table-responsive">
                        <div id="zero_config_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4">
                        <div class="row">
                        <div class="col-sm-12">
                        <table id="zero_config" class="table table-striped table-bordered no-wrap dataTable" role="grid" aria-describedby="zero_config_info">
                            <thead>
                                <tr role="row"><th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" 
                                colspan="1" aria-label="Name: activate to sort column ascending" style="width: 0px;">사번</th>
                                <th class="sorting_desc" tabindex="0" aria-controls="zero_config" rowspan="1" 
                                colspan="1" aria-label="Position: activate to sort column ascending" style="width: 0px;" aria-sort="descending">소속</th>
                                <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" 
                                colspan="1" aria-label="Office: activate to sort column ascending" style="width: 0px;">이름</th>
                                <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" 
                                colspan="1" aria-label="Age: activate to sort column ascending" style="width: 0px;">직위</th>
                                <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" 
                                colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 0px;">이메일</th>
                                <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" 
                                colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 0px;">내선번호</th></tr>
                            </thead>
                            <tbody>
                            <tr role="row" class="odd">
                                    <td class=""><a class="link" href="javascript:void(0)" onclick="">Prescott Bartlett</a></td>
                                    <td class="sorting_1">Technical Author</td>
                                    <td>London</td>
                                    <td>27</td>
                                    <td>2011/05/07</td>
                                    <td>$145,000</td>
                                </tr>
                                <tr role="row" class="even">
                                    <td class=""><a class="link" href="#" onclick="window.open('${path}/myHuman.hu','인사정보','width=400,height=650,location=no,status=no,scrollbars=yes');">Avatar</a></td>
                                    <td class="sorting_1">Team Leader</td>
                                    <td>San Francisco</td>
                                    <td>22</td>
                                    <td>2008/10/26</td>
                                    <td>$235,500</td>
                                </tr>
                                <tr role="row" class="odd">
                                    <td class=""><a class="link" href="javascript:void(0)">Gloria Little</a></td>
                                    <td class="sorting_1">Systems Administrator</td>
                                    <td>New York</td>
                                    <td>59</td>
                                    <td>2009/04/10</td>
                                    <td>$237,500</td>
                                </tr>
                                <tr role="row" class="even">
                                    <td class=""><a class="link" href="javascript:void(0)">Lael Greer</a></td>
                                    <td class="sorting_1">Systems Administrator</td>
                                    <td>London</td>
                                    <td>21</td>
                                    <td>2009/02/27</td>
                                    <td>$103,500</td>
                                </tr><tr role="row" class="odd">
                                    <td class="">Tiger Nixon</td>
                                    <td class="sorting_1">System Architect</td>
                                    <td>Edinburgh</td>
                                    <td>61</td>
                                    <td>2011/04/25</td>
                                    <td>$320,800</td>
                                </tr><tr role="row" class="even">
                                    <td class="">Quinn Flynn</td>
                                    <td class="sorting_1">Support Lead</td>
                                    <td>Edinburgh</td>
                                    <td>22</td>
                                    <td>2013/03/03</td>
                                    <td>$342,000</td>
                                </tr><tr role="row" class="odd">
                                    <td class="">Finn Camacho</td>
                                    <td class="sorting_1">Support Engineer</td>
                                    <td>San Francisco</td>
                                    <td>47</td>
                                    <td>2009/07/07</td>
                                    <td>$87,500</td>
                                </tr><tr role="row" class="even">
                                    <td class="">Olivia Liang</td>
                                    <td class="sorting_1">Support Engineer</td>
                                    <td>Singapore</td>
                                    <td>64</td>
                                    <td>2011/02/03</td>
                                    <td>$234,500</td>
                                </tr><tr role="row" class="odd">
                                    <td class="">Sakura Yamamoto</td>
                                    <td class="sorting_1">Support Engineer</td>
                                    <td>Tokyo</td>
                                    <td>37</td>
                                    <td>2009/08/19</td>
                                    <td>$139,575</td>
                                </tr>
                                <tr role="row" class="even">
                                    <td class="">Bradley Greer</td>
                                    <td class="sorting_1">Software Engineer</td>
                                    <td>London</td>
                                    <td>41</td>
                                    <td>2012/10/13</td>
                                    <td>$132,000</td>
                                </tr>
                                
                                  <tr role="row" class="even">
                                    <td class="">Olivia Liang</td>
                                    <td class="sorting_1">Support Engineer</td>
                                    <td>Singapore</td>
                                    <td>64</td>
                                    <td>2011/02/03</td>
                                    <td>$234,500</td>
                                </tr><tr role="row" class="odd">
                                    <td class="">Sakura Yamamoto</td>
                                    <td class="sorting_1">Support Engineer</td>
                                    <td>Tokyo</td>
                                    <td>37</td>
                                    <td>2009/08/19</td>
                                    <td>$139,575</td>
                                </tr>
                                <tr role="row" class="even">
                                    <td class="">Bradley Greer</td>
                                    <td class="sorting_1">Software Engineer</td>
                                    <td>London</td>
                                    <td>41</td>
                                    <td>2012/10/13</td>
                                    <td>$132,000</td>
                                </tr>
                               <tr role="row" class="even">
                                    <td class="">Olivia Liang</td>
                                    <td class="sorting_1">Support Engineer</td>
                                    <td>Singapore</td>
                                    <td>64</td>
                                    <td>2011/02/03</td>
                                    <td>$234,500</td>
                                </tr><tr role="row" class="odd">
                                    <td class="">Sakura Yamamoto</td>
                                    <td class="sorting_1">Support Engineer</td>
                                    <td>Tokyo</td>
                                    <td>37</td>
                                    <td>2009/08/19</td>
                                    <td>$139,575</td>
                                </tr>
                                <tr role="row" class="even">
                                    <td class="">Bradley Greer</td>
                                    <td class="sorting_1">Software Engineer</td>
                                    <td>London</td>
                                    <td>41</td>
                                    <td>2012/10/13</td>
                                    <td>$132,000</td>
                                </tr>
                             <tr role="row" class="even">
                                    <td class="">Olivia Liang</td>
                                    <td class="sorting_1">Support Engineer</td>
                                    <td>Singapore</td>
                                    <td>64</td>
                                    <td>2011/02/03</td>
                                    <td>$234,500</td>
                                </tr><tr role="row" class="odd">
                                    <td class="">Sakura Yamamoto</td>
                                    <td class="sorting_1">Support Engineer</td>
                                    <td>Tokyo</td>
                                    <td>37</td>
                                    <td>2009/08/19</td>
                                    <td>$139,575</td>
                                </tr>
                                <tr role="row" class="even">
                                    <td class="">Bradley Greer</td>
                                    <td class="sorting_1">Software Engineer</td>
                                    <td>London</td>
                                    <td>41</td>
                                    <td>2012/10/13</td>
                                    <td>$132,000</td>
                                </tr>
                                <tr role="row" class="even">
                                    <td class="">Olivia Liang</td>
                                    <td class="sorting_1">Support Engineer</td>
                                    <td>Singapore</td>
                                    <td>64</td>
                                    <td>2011/02/03</td>
                                    <td>$234,500</td>
                                </tr><tr role="row" class="odd">
                                    <td class="">Sakura Yamamoto</td>
                                    <td class="sorting_1">Support Engineer</td>
                                    <td>Tokyo</td>
                                    <td>37</td>
                                    <td>2009/08/19</td>
                                    <td>$139,575</td>
                                </tr>
                                <tr role="row" class="even">
                                    <td class="">Bradley Greer</td>
                                    <td class="sorting_1">Software Engineer</td>
                                    <td>London</td>
                                    <td>41</td>
                                    <td>2012/10/13</td>
                                    <td>$132,000</td>
                                </tr>
                                <tr role="row" class="even">
                                    <td class="">Olivia Liang</td>
                                    <td class="sorting_1">Support Engineer</td>
                                    <td>Singapore</td>
                                    <td>64</td>
                                    <td>2011/02/03</td>
                                    <td>$234,500</td>
                                </tr><tr role="row" class="odd">
                                    <td class="">Sakura Yamamoto</td>
                                    <td class="sorting_1">Support Engineer</td>
                                    <td>Tokyo</td>
                                    <td>37</td>
                                    <td>2009/08/19</td>
                                    <td>$139,575</td>
                                </tr>
                                <tr role="row" class="even">
                                    <td class="">Bradley Greer</td>
                                    <td class="sorting_1">Software Engineer</td>
                                    <td>London</td>
                                    <td>41</td>
                                    <td>2012/10/13</td>
                                    <td>$132,000</td>
                                </tr>
                                
                                </tbody>
                        </table></div></div>
                        </div>
                    </div>
                </div>
              </div>
            </div>
         </div>
      </div>
                <!-- Row -->
            <!-- ============================================================== -->
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
                    <input type="checkbox" class="custom-control-input" name="sidebar-position"
                        id="sidebar-position">
                    <label class="custom-control-label" for="sidebar-position">Fixed Sidebar</label>
                </div>
                <div class="custom-control custom-checkbox mt-2">
                    <input type="checkbox" class="custom-control-input" name="header-position"
                        id="header-position">
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
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link"
                            data-navbarbg="skin1"></a></li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link"
                            data-navbarbg="skin2"></a></li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link"
                            data-navbarbg="skin3"></a></li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link"
                            data-navbarbg="skin4"></a></li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link"
                            data-navbarbg="skin5"></a></li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link"
                            data-navbarbg="skin6"></a></li>
                </ul>
                <!-- Header BG -->
            </div>
            <div class="p-3 border-bottom">
                <!-- Logo BG -->
                <h5 class="font-weight-medium mb-2 mt-2">Sidebar Backgrounds</h5>
                <ul class="theme-color">
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link"
                            data-sidebarbg="skin1"></a></li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link"
                            data-sidebarbg="skin2"></a></li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link"
                            data-sidebarbg="skin3"></a></li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link"
                            data-sidebarbg="skin4"></a></li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link"
                            data-sidebarbg="skin5"></a></li>
                    <li class="theme-item"><a href="javascript:void(0)" class="theme-link"
                            data-sidebarbg="skin6"></a></li>
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
  <!--This page plugins -->
    <script src="${path}/resources/assets/extra-libs/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="${path}/resources/dist/js/pages/datatable/datatable-basic.init.js"></script>
</body>

</html>

