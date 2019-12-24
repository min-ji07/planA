<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>Plan A - 여행을 알차게!</title>
  </head>
  <jsp:include page="../common/header.jsp"/>
<style>
    *{
    font-family: '나눔바른고딕';
    }

    h1, h2, h3, h4, h5, h6{
        font-family: '나눔바른고딕';
    }
    
    #footer-div{
        background-color: #F8F9FA;
        height:40%;
    }

      /* 선택안될때 */
   .nav-pills  .nav-link, .nav-pills .show > .nav-link {
    color: #fff;
    border: 1px solid #e2c0bb;
   background-color:#e2c0bb;
   }
   /* 선택될때 */
   .nav-pills .nav-link.active, .nav-pills .show > .nav-link {
    color: #fff;
    background-color: #f2aab8c5;
   border: 1px solid #f2aab8c5;
}
   /* table css */
   table.type10 {
      border-collapse: collapse;
      text-align: left;
      line-height: 1.5;
      border-top: 1px solid #ccc;
      border-bottom: 1px solid #ccc;
      border-radius: 500ch;
      margin: 20px 10px;
      text-align: left;
      margin-left: auto; 
      margin-right: auto;
   }

   table.type10 thead th {
      /* width: 150px; */
      padding: 10px;
      font-weight: bold;
      vertical-align: top;
      color: #fff;
      /* 컬럼색 */
      background: #e2c0bb;
      margin: 20px 10px;
   }
   table.type10 tbody th {
      /* width: 150px; */
      padding: 10px;
   }

   table.type10 td {
      /* width: 350px; */
      padding: 10px;
      vertical-align: top;
      /* 밑 색 */
      /* background: #e9e6df; */
   }
   table.type10 .even {
      background: #e2c0bb;
   }
   table.type10{
      border-collapse: collapse;
       border-radius: 1em;
        overflow: hidden;
   }
   table.type10 td.avenl{
      border-collapse: collapse;
       border-bottom-left-radius: 1em;
        overflow: hidden;
   }
   table.type10 td.avenr{
      border-collapse: collapse;
       border-bottom-right-radius: 1em;
        overflow: hidden;
   }
   table.type10 th.aventl{
      border-collapse: collapse;
       border-top-left-radius: 1em;
        overflow: hidden;
   }
   table.type10 th.aventr{
      border-collapse: collapse;
       border-top-right-radius: 1em;
        overflow: hidden;
   }

   table.type10 tr.airplan{
      border-bottom: 1px dotted;
   }

   table {
        width: 100%;
        margin-left: auto; 
        margin-right: auto;


      }

    th{
        background : #f0d2cc;
        text-align: center;
    }
   </style>


  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
     <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_4.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-4">
            <h1 class="mb-3 bread">동행 구하기</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home <i class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a href="tblist.me?page=1">동행구하기 <i class="ion-ios-arrow-forward"></i></a></span> <span>상세페이지 <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
    <br>


    
    <div class="tab-content py-5" id="v-pills-tabContent">
        <div class="tab-pane fade show active" id="v-pills-guk" role="tabpanel" aria-labelledby="v-pills-guk-tab">
              <section class="ftco-section" style="padding-top:0em;">
                    <div class="container">
                       <div class="row justify-content-center pb-5">
                      <div class="col-md-12 heading-section text-center ftco-animate">
                                   <!-- <span class="subheading">1번 글 상세보기</span> -->
<%--                                  <h2 class="mb-4">${ tb.tId }번 글 상세보기</h2> 
                           
                                 

                                 <hr> --%>
  
     

	
         <table class="type10">
      		<c:url var="tbdetail" value="tbDetailView.me" >
      			<c:param name="tId" value="${ TogetherBoard.tId }"/>
      		</c:url>
                          <h2 class="mb-4">${ TogetherBoard.tId }번 글 상세보기</h2> 
                
                <thead>
                <tr>   
                      <th scope="cols" class="aventl" width="110">번호</th>
                      <td>${ TogetherBoard.tId }</td>
                </tr>
                <tr>
                      <th scope="cols" width="60">제목</th>
                      <td>${ TogetherBoard.title }</td>
                </tr>
                <tr>
                      <th scope="cols" width="60">아이디</th>
                      <td>${ TogetherBoard.user_id }</td>
                </tr>
                <tr>
                    <th scope="cols" width="60">작성자 성별</th>
                    <td>${ TogetherBoard.gender}</td>
                </tr>
                <tr>
                    <th scope="cols" width="60">작성자 나이</th>
                    <td>${ TogetherBoard.age }</td>
                </tr>
 <%--                <tr>
                    <th scope="cols" width="60">전화번호</th>
                    <td>${ TogetherBoard.phone }</td>
              </tr> --%>
                <tr>
                      <th scope="cols" width="60">날짜</th>
                      <td>${ TogetherBoard.travel_date }</td>
                </tr>
                <tr>
                      <th scope="cols" width="60">내용</th>
                      
                         <% pageContext.setAttribute("newLineChar", "\r\n"); %> <!-- \r\n 말고 그냥 \n도, \r도 가능하다 -->
        			 <td>${ fn:replace(TogetherBoard.content, newLineChar, "<br>") }</td>
                      
                </tr>    
                
                <tr>
                        <th scope="cols" width="60">성별</th>
                        <td>${ TogetherBoard.gender2 }</td>
                  </tr>
                <tr>
                        <th scope="cols" width="60">나이</th>
                        <td>${ TogetherBoard.age2 }</td>
                  </tr>

                <tr>
                      <th scope="cols" width="130">진행상태</th>
                      <td>${ TogetherBoard.ing }</td>
                </tr>
                
                 
                </thead>
         
             </table>
        
             

    
              <p align="center">
               <c:if test="${TogetherBoard.user_id eq userid}">    
                   <a href="tbUpdateView.me?tId=${ TogetherBoard.tId }"> 
                  <%--  <input type="hidden" name="tId" value="${togetherBoard.tId }"/> --%>
                   <input type="button" value="수정하기" style="color: white; width:80px; background-color: #e2c0bb; border-radius:0.5em; border: #e2c0bb"> 
             		</a>
             	<input type="button" value="삭제하기" onclick="delete_button();" style="color: white; width:80px; background-color: #e2c0bb; border-radius:0.5em; border: #e2c0bb"> 
             </c:if>
             <script type="text/javascript">
             	function delete_button(){            		
             		document.location.href="tbDelete.me?tId=${ TogetherBoard.tId }";
             	}	      
             </script>
             
             
             </p>


             <hr> 

             <p align="right">
                   
               <a href="tblist.me?page=1">   <input type="button" value="목록 보기로 이동" style="color: white; width:150px; background-color: #e2c0bb; border-radius:0.5em; border: #e2c0bb"> 
               </a></p>
  

               <br>

			<!-- 댓글 등록하기-->
            
                  <table class="replyTable">
		<tr>
			<td><textarea cols="100" rows="3" id="rContent"></textarea></td>
			<td>
			
			
			<button id="rSubmit" style="color: white; width:80px; background-color: #e2c0bb; border-radius:0.5em; border: #e2c0bb">등록하기</button> 
			</td>
		</tr>
	</table>
<!-- 	
	<script>
	function ay(){
	alert("등록하고싶어?");
	}
	</script>
 -->
	<!--  댓글을 불러와서 걔네가 이쪽 테이블안에 담긴다는 거 -> rtb -->
	<table class="replyTable" id="rtb" >
		<thead>
			<tr>
				<td colspan="2"><b id="rCount"></b></td>
			</tr>
		</thead>
		<tbody>
		
		</tbody>
	</table>
	
	<script>
	
		 $(function(){ 
		/* 	$(document).ready(function () { */
			getReplyList(); // 초기 페이지 로딩 시 댓글 불러오기
			
			setInterval(function(){
				getReplyList();
			}, 10000);
		});
	
		function getReplyList(){
			var tId = "${ TogetherBoard.tId }";
			
			$.ajax({
				url:"tbrList.me",
				data:{tId:tId},
				dataType:"json",
				success:function(data){
					$tableBody = $("#rtb tbody");
					$tableBody.html("");
					
					var $tr;
					var $user_id;
					var $rContent;
					var $rCreateDate;
					
					$("#rCount").text("댓글 ("+data.length+")");
					
					if(data.length > 0){
						for(var i in data){
							$tr = $("<tr>");
							$user_id = $("<td width='100'>").text(data[i].user_id);
							$rContent = $("<td>").text(decodeURIComponent(data[i].rContent.replace(/\+/g, " ")));
							$rCreateDate = $("<td width='100'>").text(data[i].createDate);
							
							$tr.append($user_id);
							$tr.append($rContent);
							$tr.append($rCreateDate);
							$tableBody.append($tr);
						}
					}else{
						$tr = $("<tr>");
						$rContent = $("<td colspan='3'>").text("등록된 댓글이 없습니다.");
						
						$tr.append($rContent);
						$tableBody.append($tr);
					}
				}
			});
		}
		
	/* 	function rSubmit(){ */
		$("#rSubmit").on('click', function(){
		
			
			var rContent = $("#rContent").val();
			var tId = ${ TogetherBoard.tId };
			
			$.ajax({
				url: "addReply.me",
				data: {rContent:rContent, tId:tId},
				type:"post",
				success: function(data){
					if(data == "success"){
						getReplyList();
						$("#rContent").val("");
					}
				}
			});
		});
		
		
		
		
		
		
		
	</script>
	


              <!--  <div class="form-group">
                    <label for="message">댓글 달기</label>
                   <br>
                   <textarea name="" id="message" cols="10" rows="5" class="form-control"></textarea>
                    &nbsp;
          
                    <div class="form-group text-right">
                            <input type="submit" value="등록" style="color: white; width:80px; background-color: #e2c0bb; border-radius:0.5em; border: #e2c0bb">&nbsp;
                           
                          </div> -->
        
                   
                    <hr>
      <!--                          <pre align="left">댓글(3) </pre>
                <pre align="left">이길동      같이가요~!!                       2019-10-14 
정해인      010-3216-4567 연락주세요~!        2019-10-14 </pre>  -->

            </div>
        </div>
        </div></div></section></div></div>

    <footer class="ftco-footer ftco-section" id="footer-div">
        <div class="container">
            <div class="row mb-5">
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <p><font size="5" color="#E2C0BB">About </font>&nbsp;<span><a href="index.html"><font size="5" color="gray">Plan A</font></a></span></p>
                <p><font color="gray">Plan A에서 자유롭게 여행을 계획해 보세요.</font></p>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4 ml-md-4">
                    <p><font size="5" color="#E2C0BB">Information</font></p>
                <ul class="list-unstyled">
                    <li><i class="icon-building-o"></i>&nbsp;&nbsp;서울시 강남구 테헤란로 14길 6</li>
                    <li><i class="icon-group"></i>&nbsp;&nbsp;여행을 떠나조</li>
                    <li></li>
                </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <p><font size="5" color="gray">Have a</font>&nbsp;<font size="5" color="#E2C0BB">Questions?</font></p>
                    <div class="block-23 mb-3">
                    <ul>
                        <li><i class="icon-phone"></i>&nbsp;&nbsp;02-201-9010</li>
                        <li><i class="icon-envelope-o"></i>&nbsp;&nbsp;travelwith@plana.com</li>
                    </ul>
                    </div>
                </div>
            </div>
            </div>
            <div class="row">
            <div class="col-md-12 text-center">
        
                <p><font color="gray"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by </font><a href="https://colorlib.com" target="_blank"><font color="gray">Colorlib</font></a>
    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>
            </div>
        </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="${contextPath }/resources/js/jquery.min.js"></script>
  <script src="${contextPath }/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${contextPath }/resources/js/popper.min.js"></script>
  <script src="${contextPath }/resources/js/bootstrap.min.js"></script>
  <script src="${contextPath }/resources/js/jquery.easing.1.3.js"></script>
  <script src="${contextPath }/resources/js/jquery.waypoints.min.js"></script>
  <script src="${contextPath }/resources/js/jquery.stellar.min.js"></script>
  <script src="${contextPath }/resources/js/owl.carousel.min.js"></script>
  <script src="${contextPath }/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="${contextPath }/resources/js/aos.js"></script>
  <script src="${contextPath }/resources/js/jquery.animateNumber.min.js"></script>
  <script src="${contextPath }/resources/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${contextPath }/resources/js/google-map.js"></script>
  
  <script src="${contextPath }/resources/js/main.js"></script>
    
    
  </body>
</html>