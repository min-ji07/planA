<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

	<head>
		<title>Plan A - 여행을 알차게!</title>
 	</head>
 	
	<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
		
		<jsp:include page="./common/header.jsp"/>
	  
		<section id="home-section" class="hero">
			<img src="${contextPath }/resources/images/blob-shape-3.svg" class="svg-blob" alt="Colorlib Free Template">
			
			<div class="home-slider owl-carousel">
				<div class="slider-item">
					<div class="overlay"></div>
						<div class="container-fluid p-0">
							<div class="row d-md-flex no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
								<div class="one-third order-md-last">
									<div class="img" style="background-image:url(${contextPath }/resources/images/jiufen.jpg);">
										<div class="overlay"></div>
									</div>
									<div class="bg-primary">
										<div class="vr"><span class="pl-3 py-4" style="background-image: url(${contextPath }/resources/images/jiufen.jpg);">Jiufen</span></div>
										</div>
									</div>
								<div class="one-forth d-flex align-items-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
									<div class="text">
										<span class="subheading pl-5">Discover Jiufen</span>
										<h1 class="mb-4 mt-3">아름다운 홍등으로 <br> 유명한 지우펀</h1>
										<p>애니메이션 '센과 치히로의 행방불명' 배경의 <br> 모티브가 된 대만의 지우펀! <br> 우리 함께 떠나볼까요?</p>                     
										<p><a href="#" class="btn btn-primary px-5 py-3 mt-3">알아보러 가기 <span class="ion-ios-arrow-forward"></span></a></p>
									</div>
								</div>
							</div>
						</div>
				</div>
				<div class="slider-item">
					<div class="overlay"></div>
					<div class="container-fluid p-0">
						<div class="row d-flex no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
							<div class="one-third order-md-last">
								<div class="img" style="background-image:url(${contextPath }/resources/images/boracay.jpg);">
									<div class="overlay"></div>
								</div>
								<div class="vr"><span class="pl-3 py-4" style="background-image: url(${contextPath }/resources/images/boracay.jpg);">Boracay</span></div>
							</div>
							<div class="one-forth d-flex align-items-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
								<div class="text">
									<span class="subheading pl-5">Discover </span>
									<h1 class="mb-4 mt-3">마지막 남은 천국, <br> 보라카이</span></h1>
									<p>전 세계인들에게 사랑받는 핫한 휴양지 보라카이! <br> 눈부신 해변과 투명한 바다가 있는 <br> 보라카이를 만나보세요. </p>
									<p><a href="#" class="btn btn-primary px-5 py-3 mt-3">알아보러 가기 <span class="ion-ios-arrow-forward"></span></a></p>
								</div>
							</div>
						</div>
					</div>
				  </div>
			 </div>
		</section><br><br><br>
		
			<jsp:include page="./common/footer.jsp"/>
	</body>
</html>