<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<body>

        <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Left Part  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- End Left Part  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Right Part  Mail Compose -->
            <!-- ============================================================== -->
			<!-- 여기부터 내용 넣으십시오 -->
               <!-- Column -->
                       <div class="card-body">
                           <center class="mt-4"> <img src="${path}/resources/assets/images/users/5.jpg" class="rounded-circle" width="150" />
                               <h4 class="card-title mt-2">${dto.name}</h4>
                           </center>
                       </div>
                       <div>
                           <hr>
                       </div>
                       <div class="card-body"> 
                            <small class="text-muted pt-4 db">직책</small>
                           <h6>${dto.rank}</h6>
                            <small class="text-muted pt-4 db">부서</small>
                           <h6>${dto.depart_name}</h6>
                            <small class="text-muted pt-4 db">사번</small>
                           <h6>${dto.id}</h6>
                       <small class="text-muted">이메일 </small>
                         <h6>${dto.email_in}</h6> 
                         <small class="text-muted pt-4 db">폰번호</small>
                         <h6>${dto.tel}</h6> 
                         <small class="text-muted pt-4 db">내선번호</small>
                         <h6>${dto.in_tel}</h6>
                         
                        <br />
                        <button class="btn btn-circle btn-secondary"><a href="#"><i class="mr-2 mdi mdi-email"></i></a></button>
                        <button class="btn btn-circle btn-secondary"><a href="#"><i class="mr-2 mdi mdi-message-outline"></i></a></button>
                        <button class="btn btn-circle btn-secondary"><a href="#"><i class="fab fa-youtube"></i></a></button>
                       </div>
    <!-- All Jquery -->
    <!-- ============================================================== -->
</body>

</html>

