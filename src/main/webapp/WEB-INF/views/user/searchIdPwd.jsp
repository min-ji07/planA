<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
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

        .searchLb{
            margin-left:20%;
        }

        #birthYear{
			margin-left:20%;
			width:19%;
			display: inline;
		}

		#birthMonth{
			width:19%;
			display: inline;
		}

		#birthDay{
			float:right;
			margin-right:20%;
			width:19%;
			display: inline;
		}

		#email, #email2{
			display:inline;
			margin-left:20%;
		}

		#idConfirmBtn, #pwdConfirmBtn{
			display:inline;
			float:right;
			margin-right:20%;
			width:20%;
		}
		
	</style>
  
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
        <br><br><br><br>

        <section class="ftco-section ftco-services-2" id="services-section">
			<div class="container">
				<div class="row justify-content-center pb-5">
          <div class="col-md-12 heading-section text-center ftco-animate">
          	<span class="subheading">Plan A</span>
            <h2 class="mb-4">아이디/비밀번호 찾기</h2>
          </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="search-wrap-1 ftco-animate p-4">
                    <form class="search-property-1" action="searchId.me" method="post">
                        <div class="row">
                            <div class="col-lg align-items-end">
                                <div class="form-group">
                                    <div class="form-field">
                                        <img src="${contextPath }/resources/images/line.png" style="margin-left: 19%;">
                                        <font size="5" color="black">아이디 찾기</font><br><br>
                                        <label for="userName" class="searchLb">이름</label>
										<input type="text" class="form-control" id="userName" name="userName" style="width:60%; margin: 0 auto;"><br>
										<label for="email" class="searchLb">이메일</label><br>
                                        <input type="text" class="form-control" id="email" name="email" style="width:40%;">
                                        <button type="button" class="form-control btn btn-primary" id="idConfirmBtn">인증번호 받기</button><br><br>
                                        <input type="hidden" id="idConfirmStr" value="초기값">
                                        <label for="idConfirmNum" class="searchLb">인증번호</label><br>
                                        <input type="text" class="form-control" id="idConfirmNum" style="width:60%; margin: 0 auto;" placeholder="인증번호 6자리 숫자 입력"><br>	
                                        <input type="submit" class="form-control btn btn-primary" value="확인" onclick="return searchId();" style="width:60%; margin: 0 auto;">
                                    </div>
                            </div>
                        </div>
                    </form>
                </div><br><br><br><br><br>

                <div class="search-wrap-1 ftco-animate p-4">
                        <form class="search-property-1" action="searchPwd.me" method="post">
                            <div class="row">
                                <div class="col-lg align-items-end">
                                    <div class="form-group">
                                        <div class="form-field">
                                            <img src="${contextPath }/resources/images/line.png" style="margin-left: 19%;">
                                            <font size="5" color="black">비밀번호 찾기</font><br><br>
                                            <label for="userId" class="searchLb">아이디</label>
                                        	<input type="text" class="form-control" id="userId" name="userId" style="width:60%; margin: 0 auto;"><br>
                                            <label for="email2" class="searchLb">이메일</label><br>
	                                        <input type="text" class="form-control" id="email2" name="email2" style="width:40%;">
	                                        <button type="button" class="form-control btn btn-primary" id="pwdConfirmBtn">인증번호 받기</button><br><br>
	                                        <input type="hidden" id="pwdConfirmStr" value="초기값">
	                                        <label for="pwdConfirmNum" class="searchLb">인증번호</label><br>
	                                        <input type="text" class="form-control" id="pwdConfirmNum" style="width:60%; margin: 0 auto;" placeholder="인증번호 6자리 숫자 입력"><br>	
	                                        <input type="submit" class="form-control btn btn-primary" value="확인" onclick="return searchPwd();" style="width:60%; margin: 0 auto;">
                                        </div>
                                </div>
                            </div>
                        </form>    
                    </div>
            </div>
        </div>
			</div>
        </section>
      
    <footer class="ftco-footer ftco-section" id="footer-div">
        <div class="container">
            <div class="row mb-5">
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <p><font size="5" color="#E2C0BB">About </font>&nbsp;<span><a href="index.jsp"><font size="5" color="gray">Plan A</font></a></span></p>
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
    
    <script src="js/main.js"></script>


	<script>
		// 아이디 찾기 인증번호 전송
		$('#idConfirmBtn').click(function(){
			if($('#userName').val() == ""){
				alert("이름을 입력해주세요.");
				$('#userName').focus();				
			}else if($('#email').val() == ""){
				alert("이메일 정보를 입력해주세요.");
				$('#email').focus();				
			}else{		
				$.ajax({
					url: "confirmForId.me",
					data: {userName:$('#userName').val(),
						email:$('#email').val()},
					success: function(data){
						if(data.existId == true){
							alert("인증 번호를 발송했습니다.");
							$('#idConfirmStr').val(data.str);							
						}else{
							alert("일치하는 정보가 없습니다. 회원 정보를 다시 확인해주세요.");							
						}					
					},
					error: function(request,status,error){
	    				console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	    			}
				});
			}
		});
	
		// 아이디 찾기 폼 전송
		function searchId(){
			if($('#idConfirmStr').val() == "초기값"){
				alert("이메일 인증을 해주세요.");
				$('#userName').focus();
				return false;
			}else if($('#idConfirmNum').val() == ""){
				alert("인증번호를 입력해주세요.");
				$('#idConfirmNum').focus();
				return false;
			}else if($('#idConfirmNum').val() == $('#idConfirmStr').val()){
				return true;
			}else{
				alert("인증번호가 다릅니다. 다시 입력해주세요.");
				$('#idConfirmNum').val("");
				$('#idConfirmNum').focus();
				return false;
			}
		}
		
		// 비밀번호 찾기 인증번호 전송
		$('#pwdConfirmBtn').click(function(){
			if($('#userId').val() == ""){
				alert("아이디를 입력해주세요.");
				$('#userId').focus();
				return false;
			}else if($('#email2').val() == ""){
				alert("이메일 정보를 입력해주세요.");
				$('#email2').focus();
				return false;
			}else{		
				$.ajax({
					url: "confirmForPwd.me",
					data: {userId:$('#userId').val(),
						email:$('#email2').val()},
					success: function(data){
						if(data.existId == true){
							alert("인증 번호를 발송했습니다.");
							$('#pwdConfirmStr').val(data.str);							
						}else if(data.naverId == true){
							alert("네이버 계정입니다. 네이버에서 비밀번호 찾기를 진행해주세요.");
						}else{
							alert("일치하는 정보가 없습니다. 회원 정보를 다시 확인해주세요.");							
						}					
					},
					error: function(request,status,error){
	    				console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	    			}
				});
			}
		});
		
		// 비밀번호 찾기 폼 전송
		function searchPwd(){
			if($('#pwdConfirmStr').val() == "초기값"){
				alert("이메일 인증을 해주세요.");
				$('#userId').focus();
				return false;
			}else if($('#pwdConfirmNum').val() == ""){
				alert("인증번호를 입력해주세요.");
				$('#pwdConfirmNum').focus();
				return false;
			}else if($('#pwdConfirmNum').val() == $('#pwdConfirmStr').val()){
				return true;
			}else{
				alert("인증번호가 다릅니다. 다시 입력해주세요.");
				$('#pwdConfirmNum').val("");
				$('#pwdConfirmNum').focus();
				return false;
			}
		}
	</script>
    </body>

</html>