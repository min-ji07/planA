<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>Plan A - 여행을 알차게!</title>
  </head>
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
	</style>
	<jsp:include page="../common/header.jsp"/>
  <body>  
	  <form action="naverLogin.me" method="post" id="naverLogin">
	  	<input type="hidden" id="userId" name="userId">
	  	<input type="hidden" id="userName" name="userName">
	  	<input type="hidden" id="nickName" name="nickName">
	  	<input type="hidden" id="birthDay" name="birthDay">
	  	<input type="hidden" id="email" name="email">
	  </form>
	  
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
	  	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
	  	
	  	<script type="text/javascript">	
	  		var naver_id_login = new naver_id_login("uPhmtBVQIN8vv69l31g0", "http://localhost:8686/planA/callback.me");
		  	// 접근 토큰 값 출력
		  	console.log(naver_id_login.oauthParams.access_token);
		  	// 네이버 사용자 프로필 조회
		  	naver_id_login.get_naver_userprofile("naverSignInCallback()");
		  	// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
		  	function naverSignInCallback() {	
		    	console.log(naver_id_login);
		    	console.log(naver_id_login.getProfileData('name'));
		    	console.log(naver_id_login.getProfileData('email'));
		    	console.log(naver_id_login.getProfileData('nickname'));
		    	console.log(naver_id_login.getProfileData('birthday'));
	
		    	var userId = naver_id_login.getProfileData('email');
		    	var userName = naver_id_login.getProfileData('name');
		    	var nickName = naver_id_login.getProfileData('nickname');
		    	var birthDay = naver_id_login.getProfileData('birthday');
		    	var email = naver_id_login.getProfileData('email');
		    	
		    	$('#userId').val(email);
		    	$('#userName').val(userName);
		    	$('#nickName').val(nickName);
		    	$('#birthDay').val(birthDay);
		    	$('#email').val(email);
		    	
		    	$('#naverLogin').submit();
		  	}  	
		</script>

    </body>

</html>