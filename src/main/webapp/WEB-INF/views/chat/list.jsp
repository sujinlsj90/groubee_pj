<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

<script type="text/javascript">
$(function(){
	/* if($(createResult == 1)){
		alert("채팅방 생성 완료");
	} */
    /* $(".chat-user").click(function(){
    	alert("채팅방 클릭");
    }); */
	
     // 개설하기 버튼을 눌렀을때
     $("#createBtn").click(function(){
    	 
        var name = $("input[name='chatroom_name']").val();
		alert("입력한 name : " + name);

         // 채팅방 이름 공백이면 alert 
         if(name == "") {
             alert("채팅방 이름을 입력해주세요.");
         	return false;
         }
         // 그렇지 않으면 submit
         else{
             document.createRoom.submit();
         }
     });

});


/* 
function chattingRoom(chatroom_num) {
			
	$.ajax({
		url:"${path}/chat/room?chatroom_num="+chatroom_num+"&${_csrf.parameterName}=${_csrf.token}",
		type:"post",
		success: function(result){
			$("#chattingRoom").html(result);
		},
		error: function(){
			alert('chattingRoom() - 채팅방 불러오기 오류');
		}
	});
	
} */

</script>

</head>
<body>

<c:forEach var="room" items="${list}">
<!-- onclick="chattingRoom(${room.chatroom_num});"  -->
	<a href="javascript:void(0)" onclick="window.open('${path}/chat/room?chatroom_num=${room.chatroom_num}','${room.chatroom_name}', width='50%');"
		class="chat-user message-item align-items-center border-bottom px-3 py-2">
		<%-- <span class="user-img"> 
		    <img src="${path}/resources/assets/images/users/2.jpg" alt="user" class="img-fluid rounded-circle" width="40"> 
		    <span class="profile-status busy float-right"></span> 
		</span> --%>
		<div class="mail-contnet w-75 d-inline-block v-middle pl-2">
		    <h6 class="message-title  mb-0 mt-1">${room.chatroom_name}</h6> 
		        <span class="font-12 text-nowrap d-block text-muted">(${room.chatmem_total})</span> 
		</div>
	</a>
</c:forEach>

	<form name="createRoom" action="${path}/chat/create" method="post">
		<!-- 시큐리티 적용 -->
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		    <input type="text" name="chatroom_name" class="form-control" placeholder="개설할 채팅방 이름을 입력하세요">
            <a href="javascript:void(0)" class="nav-link btn-primary rounded-pill d-flex align-items-center px-3" id="createBtn" style="margin:10%">
            <i class="fas fa-user-plus"></i><span class="d-none d-md-block font-14" style="padding-left:30%">개설하기</span></a>
                            
	</form>

</body>
</html>

<%-- <a href="javascript:void(0)" class="chat-user message-item align-items-center border-bottom px-3 py-2" id='chat_user_1' data-user-id='1'>
    <span class="user-img"> 
        <img src="${path}/resources/assets/images/users/1.jpg" alt="user" class="img-fluid rounded-circle" width="40"> 
        <span class="profile-status online float-right"></span> 
    </span>
    <div class="mail-contnet w-75 d-inline-block v-middle pl-2">
        <h6 class="message-title  mb-0 mt-1" data-username="Pavan kumar">groubee 모임</h6> 
        <span class="font-12 text-nowrap d-block text-muted text-truncate">Just see the my admin!</span> <span class="font-12 text-nowrap d-block text-muted">9:30 AM</span> 
    </div>
</a>


<!-- Message -->
 --%>