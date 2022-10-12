<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="canonical" href="https://www.wrappixel.com/templates/severny-admin-template/" />
<link href="${path}/resources/dist/css/style.min.css" rel="stylesheet">

</head>
<body>

<c:forEach var="dto" items="${comment}">
	<div class="card-body border-bottom">
		<div>
			<strong class="pb-3" style="float:left">${dto.writer}</strong>
			<small style="padding-left:10px">${dto.reg_date}</small>
			<button type="submit" class="btn waves-effect waves-light btn-outline-secondary"
			 style="float:right"><i class="fas fa-times"></i></button>
			 
			
			 
  		</div>
		<div style="clear:both">
			<p>${dto.content}</p>
		</div>
	</div>
</c:forEach>                        
                        
                        
</body>
</html>