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
			height: 40%;
        }

        #findIdPw{
            margin-left: 20%;
        }
        
        .joinInfoLb{
            margin-left:20%;
        }
        
        .validateLb{
        	margin-left:20%;
        	color:red;
        }

	</style>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
    <br><br><br><br><br>

		<section class="ftco-section ftco-services-2" id="services-section">
			<div class="container">
				<div class="row justify-content-center pb-5">
          <div class="col-md-12 heading-section text-center ftco-animate">
          	<span class="subheading">Plan A</span>
            <h2 class="mb-4">회원 탈퇴</h2>
            <h4 class="mb-4">회원 탈퇴를 위해 비밀번호를 한 번 더 입력해주세요.</h4><br>
          </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="search-wrap-1 ftco-animate p-4">
                    <form action="deleteUser.me" method="post" class="search-property-1">
                        <div class="row">
                            <div class="col-lg align-items-end">
                                <div class="form-group">
                                    <div class="form-field">
                                <input type="hidden" id="userId" name="userId" value="${loginUser.userId }">
                                <label for="userPwd" class="joinInfoLb">비밀번호</label>
                                <input type="password" class="form-control" id="userPwd" name="userPwd" style="width:60%; margin: 0 auto;">
                                <span id="validatePwd" class="validateLb"></span>
                                <input type="submit" class="form-control btn btn-primary" onclick="return deleteUser();" value="확인" style="width:60%; margin: 0 auto;"><br>
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
  	
  	<script>
  	function deleteUser(){
  		if($('#userPwd').val() == ""){
  			alert("비밀번호를 입력해주세요.");
  			$('#userPwd').focus();
  			return false;
  		}
  		var check = false;
  		$.ajax({
  			url:"loginIdCheck.me",
  			data:{id:$('#userId').val(),
				pwd:$('#userPwd').val()},
			async:false,
			success:function(data){
				if(confirm("정말 탈퇴하시겠습니까?")){
					if(data.isUsablePwd == false){
						alert("비밀번호가 다릅니다.");
						$('#userPwd').focus();
					}else{
						check = true;
					}
				}	
			},
			error: function(request,status,error){
				console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
   			}
  		});
  		return check;
  	}
  	</script>
  	
    </body>

</html>