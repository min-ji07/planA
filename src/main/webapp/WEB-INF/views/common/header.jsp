<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <link rel="stylesheet" href="${contextPath}/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/animate.css">
    
    <link rel="stylesheet" href="${contextPath}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="${contextPath}/resources/css/aos.css">

    <link rel="stylesheet" href="${contextPath}/resources/css/ionicons.min.css">
    
    <link rel="stylesheet" href="${contextPath}/resources/css/flaticon.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/icomoon.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/style.css">   

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
</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
		<div class="container">
			<img src="${contextPath }/resources/images/air-transport_pink.png" width="50px">&nbsp;&nbsp;&nbsp;<a class="navbar-brand" href="index.jsp">Plan A</a>
			<button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="oi oi-menu"></span> Menu
			</button>
			
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav nav ml-auto">
					<li class="nav-item"><a href="myRoute.mr" class="nav-link"><span>나만의 여행</span></a></li>
					<li class="nav-item"><a href="themesInsertView.me" class="nav-link"><span>테마 여행</span></a></li>
					<li class="nav-item"><a href="travelInfoView.me" class="nav-link"><span>여행지 정보</span></a></li>
					<li class="nav-item"><a href="tblist.me?page=1" class="nav-link"><span>동행 구하기</span></a></li>
					<li class="nav-item"><a href="rList.me" class="nav-link"><span>여행 후기</span></a></li>
				<c:if test="${empty sessionScope.loginUser }">
              		<li class="nav-item"><a href="login.me" class="nav-link"><span>로그인</span></a></li>
              		<li class="nav-item"><a href="join.me" class="nav-link"><span>회원가입</span></a></li>
			  	</c:if>
              	<c:if test="${!empty sessionScope.loginUser }">
           			<li class="nav-item"><a href="mCheckList.me" class="nav-link"><span>마이페이지</span></a></li>
              		<li class="nav-item"><a href="logout.me" class="nav-link"><span>로그아웃</span></a></li>
              	</c:if>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>