<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.util.Calendar" %>

<%
Calendar cal = Calendar.getInstance();
DecimalFormat df = new DecimalFormat("00");
Calendar currentCalendar = Calendar.getInstance();
String strYear = Integer.toString(currentCalendar.get(Calendar.YEAR));
String strMonth = df.format(currentCalendar.get(Calendar.MONTH) + 1);
String strDay = df.format(currentCalendar.get(Calendar.DATE));
String strDay2 = df.format(currentCalendar.get(Calendar.DATE) + 4);
String strDate = strYear + strMonth + strDay;
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Plan A - 여행을 알차게!</title>

</head>
<jsp:include page="../common/header.jsp"/>
<!-- 동하 탭 선택시 색상변경 -->
<style>
* {
	font-family: '나눔바른고딕';
}

h1, h2, h3, h4, h5, h6 {
	font-family: '나눔바른고딕';
}

#footer-div {
	background-color: #F8F9FA;
	height: 40%;
}

/* 선택안될때 */
.nav-pills  .nav-link, .nav-pills .show>.nav-link {
	color: #fff;
	border: 1px solid #e2c0bb;
	background-color: #e2c0bb;
}
/* 선택될때 */
.nav-pills .nav-link.active, .nav-pills .show>.nav-link {
	color: #fff;
	/* background-color: #f2aab8c5; */
	background-color: #BF756A;
	/* border: 1px solid #f2aab8c5; */
	border: 1px solid #BF756A;
}
</style>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">
	
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('${contextPath }/resources/images/bg_4.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-start">
				<div class="col-md-9 ftco-animate pb-4">
					<h1 class="mb-3 bread">MyRoute</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a
							href="myRoute.html">myRoute </a></span>
					</p>
				</div>
			</div>
		</div>
	</section>
	<br>
	<script>
        function resetfn(){
           var countryTag = document.getElementById("countryTag");
           var cityTag = document.getElementById("cityTag");
           var personnelTag = document.getElementById("personnelTag");
           var hotelTag = document.getElementById("hotelTag");
           var activityTag = document.getElementById("activityTag");
           var TouristTag = document.getElementById("TouristTag");

           countryTag.innerHTML = "";

        }
     </script>
	<div class="ftco-section-search">
		<div class="container">
			<div class="row">
				<div class="col-md-12 tabulation-search">
					
					<!-- 나만의 패키지 -->
					<script type="text/javascript">
                 function mypackage(){
                    
                 }

                 function countryfn(obj){
                    var country = document.getElementById("country");

                    var countryValue = country.options[country.selectedIndex].value;
                  
                    console.log(country);
                    console.log(countryValue);
					
                    var Vietnam = ["다낭","호치민","하노이"];
                    var Philippines = ["세부","보홀","보라카이"];
                    var China = ["홍콩","베이징","상하이"];
                    var Japan = ["후쿠오카","오키나와","삿포로"];
                    var Thailand = ["방콕","치앙마이","후아힌"];
                    var Taiwan = ["타이베이","타이중","가오슝"];
                     
                    var selectItem = countryValue;
                     
                    var changeItem;
                      
                    if(selectItem == "베트남"){
                      changeItem = Vietnam;
                    }
                    else if(selectItem == "필리핀"){
                      changeItem = Philippines;
                    }
                    else if(selectItem == "중국"){
                      changeItem =  China;
                    }
                    else if(selectItem == "일본"){
                      changeItem =  Japan;
                    }
                    else if(selectItem == "태국"){
                        changeItem =  Thailand;
                    }
                    else if(selectItem == "대만"){
                        changeItem =  Taiwan;
                    }
                     console.log(changeItem.length);
                    $('#city').empty();
                    var option = $("<option selected disabled hidden>-----</option>");
                    $('#city').append(option);
                    for(var count = 0; count < changeItem.length; count++){                
                                     option = $("<option>"+changeItem[count]+"</option>");
                                    $('#city').append(option);
                                }

                    
                    
                 }


                 function personnelfn(obj){
                    var personnel = document.getElementById("personnel");

                    var personnelValue = personnel.options[personnel.selectedIndex].value;
                    var personnelTag = document.getElementById("personnelTag");
                    console.log(personnelValue);
                    personnelTag.innerHTML = personnelValue;
                 }
              </script>
					<div class="tab-content py-5" id="v-pills-tabContent">
						<div class="tab-pane fade show active" id="v-pills-guk"
							role="tabpanel" aria-labelledby="v-pills-guk-tab">
							<section class="ftco-section" style="padding-top: 0em;">
								<div class="container">
									<div class="row justify-content-center pb-5">
										<div
											class="col-md-12 heading-section text-center ftco-animate">
											<span class="subheading">나만의 여행계획 만들기</span>
											<h2 class="mb-4">나만의 패키지</h2>
											<p>계획 하시는 여행일정과 정보를 입력해주세요</p>
										</div>
									</div>
								</div>
							</section>

									<div class="row">
										<div class="col-md-12">
											<div class="search-wrap-1 ftco-animate p-4">
												<form action="myRouteSearch.mr" method="GET" class="search-property-1">
													<div class="row">
													<!--
													국가 :country
													도시 :city
													출발일자 : startDate
													도착일자 : endDate
													인원 : personnel
													  -->
														<div class="col-lg align-items-end">
															<div class="form-group">
															
																<label for="#">국가</label>
																<div class="form-field">
																	<div class="select-wrap">

																		<select name="country" id="country" class="form-control"
																			onchange="countryfn(this);">
																			<option selected disabled hidden>-----</option>
																			<option value="대만">대만</option>
																			<option value="일본">일본</option>
																			<option value="필리핀">필리핀</option>
																			<option value="중국">중국</option>
																			<option value="베트남">베트남</option>
																			<option value="태국">태국</option>
																		</select>
																	</div>

																</div>
																
															</div>
														</div>
														<div class="col-lg align-items-end">
															<div class="form-group">
																<label for="#">도시</label>
																<div class="form-field">
																	<div class="icon">
																		<span class="ion-ios-search"></span>
																	</div>
																	<div class="select-wrap">

																		<select name="city" id="city" class="form-control"
																			onchange="cityfn(this);">

																		</select>
																	</div>
																</div>
															</div>
														</div><%-- 
														${DateFormat sdFormat = new SimpleDateFormat("yyyyMMdd");
															Date day = new Date();
														  String today = dsFormat(day)} --%>
														
														<div class="col-lg align-items-end">
															<div class="form-group">
																<label for="#">출발일자</label>
																<div class="form-field">
																	<div class="icon">
																		<span class="ion-ios-calendar"></span>
																	</div>
																	
																	<input type="date" name="startDate" id="startDate"
																		class="form-control checkin_date"
																		min="<%=strYear %>-<%=strMonth %>-<%=strDay %>"
																		max="<%=strYear %>-<%=strMonth %>-<%=strDay2 %>" >
																</div>
															</div>
														</div>
														<div class="col-lg align-items-end">
															<div class="form-group">
																<label for="#">도착일자</label>
																<div class="form-field">
																	<div class="icon">
																		<span class="ion-ios-calendar"></span>
																	</div>
																	<input type="date" name="endDate" id="endDate"
																		class="form-control checkout_date"
																		placeholder="yyyy-mm-dd"
																		min="<%=strYear %>-<%=strMonth %>-<%=strDay %>"
																		max="<%=strYear %>-<%=strMonth %>-<%=strDay2 %>">
																</div>
															</div>
														</div>
														<div class="col-lg align-items-end">
															<div class="form-group">
																<label for="#">인원</label>
																<div class="form-field">
																	<div class="select-wrap">
																		<div class="icon">
																			<span class="ion-ios-arrow-down"></span>
																		</div>
																		<select onchange="personnelfn(this);" name="personnel"
																			id="personnel" class="form-control">
																			<option selected disabled hidden>-----</option>
																			<option value="1">1명</option>
																			<option value="2">2명</option>
																			<option value="3">3명</option>
																			<option value="4">4명이상</option>
																		</select>
																	</div>
																</div>
															</div>
														</div>
														<div class="col-lg align-self-end">
															<div class="form-group">
																<div class="form-field">
																	<input type="submit"  value="선택"
																		class="form-control btn btn-primary">
																</div>
															</div>
														</div>
														</div>
														</form>
													</div>
											</div>
										</div>
									</div>
								</div>
						</div>





					</div>
				</div>
			</div>

	<footer class="ftco-footer ftco-section" id="footer-div">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<p>
							<font size="5" color="#E2C0BB">About </font>&nbsp;<span><a
								href="index.html"><font size="5" color="gray">Plan A</font></a></span>
						</p>
						<p>
							<font color="gray">Plan A에서 자유롭게 여행을 계획해 보세요.</font>
						</p>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4 ml-md-4">
						<p>
							<font size="5" color="#E2C0BB">Information</font>
						</p>
						<ul class="list-unstyled">
							<li><i class="icon-building-o"></i>&nbsp;&nbsp;서울시 강남구 테헤란로
								14길 6</li>
							<li><i class="icon-group"></i>&nbsp;&nbsp;여행을 떠나조</li>
							<li></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<p>
							<font size="5" color="gray">Have a</font>&nbsp;<font size="5"
								color="#E2C0BB">Questions?</font>
						</p>
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

					<p>
						<font color="gray">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;<script>document.write(new Date().getFullYear());</script>
							All rights reserved | This template is made with <i
							class="icon-heart color-danger" aria-hidden="true"></i> by
						</font><a href="https://colorlib.com" target="_blank"><font
							color="gray">Colorlib</font></a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="${contextPath }/resources/js/google-map.js"></script>

	<script src="${contextPath }/resources/js/main.js"></script>

</body>
</html>
