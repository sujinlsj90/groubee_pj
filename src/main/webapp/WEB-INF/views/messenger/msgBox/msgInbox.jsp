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
	<link rel="stylesheet" type="text/css" href="${path}/resources/assets/libs/quill/dist/quill.snow.css">
	<!-- Custom CSS -->
	<link href="${path}/resources/dist/css/style.min.css" rel="stylesheet">
	
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
	<%-- <c:forEach var="dto" items="${list}"> --%> <!-- 읽지않은 메세지만 -->
		<div class="col-md-4 single-note-item all-category">
			<div class="card card-body">
	    		<span class="side-stick"></span>
	    		<h5 class="note-title text-truncate w-75 mb-0">메세지 제목 ${dto.title}</h5> <!-- 메세지 제목 -->
				<p class="note-date font-12 text-muted">인사부 홍길동 ${dto.depart_name} ${dto.name}</p> <!-- 인사부 홍길동 -->
				<div class="note-content">
					<p class="note-inner-content text-muted">발송일시 ${dto.send_date}</p> <!-- 발송일시 -->
	      		</div>
	        	<div class="d-flex align-items-center" style="float:right;">
		        	<span class="mr-1"><i class="far fa-star favourite-note"></i></span>
		        	<span class="mr-1"><i class="far fa-trash-alt remove-note"></i></span> <!-- 지우면 다음항목이 뜨게 할건지 -->
	        	</div>
			</div>
		</div>
	<%-- </c:forEach> --%>

	
</body>

</html>