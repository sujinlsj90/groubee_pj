<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/views/setting.jsp" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 업데이트 실패  -->
	<c:if test="${updateCnt == 0}">
		<script type="text/javascript">
			alert("수정 실패");
		</script>
	</c:if>
	
	<!-- 업데이트 성공  -->
	<c:if test="${updateCnt ==1}">
		<script type="text/javascript">
		window.open("about:blank", "_self").close();
		</script>
	</c:if>

</body>
</html>