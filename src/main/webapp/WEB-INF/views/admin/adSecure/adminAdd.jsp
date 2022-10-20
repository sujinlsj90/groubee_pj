<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/views/setting.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 추가 팝업 창</title>

	<script type="text/javascript">
	 
		/* 
		function ChangeValue(){
			var administrator = $(".administrator${dto.id} option:selected").val();
			alert("value:" + administrator);
		}
		 */
		$(function(){
			$("#all_check").change(function() {
		         var is_checked = $("#all_check").is(":checked");
		         $(".p_selectChk").prop("checked", is_checked); // is_checked : true
		      });
			//수정
			$("#checkAdd").click(function(){
				
				if(confirm("관리자를 추가하시겠습니까?")){					
			 	
				/* var select = document.getElementById('administrator');
			    var option = select.options[select.selectedIndex];

			    document.getElementById('value').value = option.value; */
			    /* document.getElementById('text').value = option.text; */			
				
			    // location.href = '${path}/adminAdd2.ad?administrator='+administrator+'&id='+id;\
			   
      			//var cartQuan= $(this).prev().prev().val();
			    
			   /*  var adminprev = $(this).data("num");
			    var administrator = $(this).next().val();
			    alert(adminprev+","+administrator); */
				
			    
			    document.adminAddGroubee.action = "${path}/adminAdd2.ad?"
				document.adminAddGroubee.submit();
				
				//window.open("about:blank", "_self").close();
				}
		});
	});
		/*  
	   //개별체크시 개별체크의 name 속성을 checked로 변경
	   $(".p_selectChk").change(function(){
		      if($(this).prop("checked")){
		         $(this).attr("name", "checked");
		      }else{
		         $(this).attr("name", "check")
		      }
		      
		      if ($(this).find('.p_selectChk').is(":checked")){   //체크가 되어있는경우
		    	  var administrator = $(this).find('#administrator').is(":selected").val();   
		      }
	   });
		  */
/* 	   $('.p_selectChk').change(function(){      //개별 체크박스 변동이 생기면
		      var administrator = [];
		      
		      $(".admin_detail").each(function(index, element){
		         if ($(this).find('.p_selectChk').is(":checked")){   //체크가 되어있는경우
		        	 administrator += $(this).find('#administrator').val();
		         }
		      });		      
		     
		   }); */
	   
	</script>

</head>
<body>
<div class="card">
	<div class="card-body">
        <h4 class="card-title">관리자 추가</h4>
        <br>
        <button type ="button" class="btn btn-secondary" id="checkAdd">운영자 추가</button>
        <br><br>
        <div class="table-responsive">
        	<form name="adminAddGroubee" method="post">
        		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	            <table class="tablesaw no-wrap table-bordered table-hover table" data-tablesaw>
	              
	                    <tr>
	                        <th scope="col" class="border">
	                        	<label for="all_check">
	                        		<input type="checkbox" id="all_check">
	                        		<span class="sr-only"></span>
	                        	</label>
	                        </th>
	                        <th>사번</th>
	                        <th scope="col" class="border">
	                        	이름(이메일)                                               	                                          
	                        </th>
	                        <th scope="col" class="border">부서</th>
	                        <th>내선번호</th>
	                        <th>재직상태</th>
	                        <th align="center" scope="col" class="border">입사일</th>
	                        <th>관리자 권한<th>                                              
	                    </tr>
	               		<c:forEach var="dto" items="${list}">
	                    <tr class="admin_detail">
	                        <td>
	                        	<label for="chk">
	                        		<input type="checkbox" class="p_selectChk" name="chk_secure" id="chk" value="${dto.id}">
	                        		<span class="sr-only"></span>
	                        	</label>
	                        </td>
	                        <td>${dto.id}</td>
	                        <td>${dto.name}
	                        	(${dto.email_in})
	                        </td>  
	                        <td>${dto.depart_name}</td>
	                        <td>${dto.in_tel}</td>
	                        <td>${dto.state}</td>
	                        <td>${dto.hireday}</td>
	                        <td>	                        	     
	                        	<input type="hidden" class="adminprev" name="adminprev" id="adminprev" data-num="${dto.id}">                 	
		                        <select class="administrator" id="administrator" name="administrator" onchange="ChangeValue();">
									<option value="0">선택</option> 
									<option value="근태관리">근태관리</option>
									<option value="인사관리">인사관리</option>
									<option value="결제문서관리">결제문서관리</option>
									<option value="게시판관리">게시판관리</option>
									<option value="메신저관리">메신저관리</option>
									<option value="서비스관리">서비스관리</option>
									<option value="보안관리">보안관리</option>
								</select>
	                        </td>                                                
	                    </tr>
	                    </c:forEach>	
	                    
	                    <tr align="center" height="100">
	     					<td colspan="8" align="center">
	                   		
	                    		<%-- <% 페이징 처리%> --%>
	                    		<%-- <% 이전 버튼 활성화 여부%> --%>
	                   
	                    		<c:if test="${paging.startPage > 10}">
	                    			<a href="${path}/adminAdd.ad?pageNum=${paging.prev}">[이전]</a>
	                    		</c:if>
	                   
	                    		<%-- <% 페이지 번호 처리%> --%>
	                    		<c:forEach var="num" begin="${paging.startPage}" end="${paging.endPage}">
	                    			<a href="${path}/adminAdd.ad?pageNum=${num}">${num}</a>
	                    		</c:forEach>
	                    		
	                    		<%-- <% 다음버튼 활성화 여부 %> --%>
	                    		<c:if test="${paging.endPage < paging.pageCount}">
	                    			<a href="${path}/adminAdd.ad?pageNum=${paging.next}">[다음]</a>
	                    		</c:if>
	     					</td>
	        			</tr>
	            </table>
            </form>
        </div>
    </div>
</div>
</body>
</html>