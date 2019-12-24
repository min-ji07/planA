<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
  <head> 
	<meta charset="UTF-8">
	<title>Travel location information</title>
	
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
	
	.tm-tabs-links {
	    display: -webkit-box;
	    display: -webkit-flex;
	    display: -ms-flexbox;
	    display: flex;
	    -webkit-box-align: stretch;
	    -webkit-align-items: stretch;
	    -ms-flex-align: stretch;
	    align-items: stretch;
	    -webkit-box-pack: space-evenly;
	    -webkit-justify-content: space-evenly;
	    -ms-flex-pack: space-evenly;
	    justify-content: space-evenly;
	    background: white;
	}
	
	.tm-tab-link {
	    padding: 30px 25px;
	    text-align: center;
	    display: -webkit-box;
	    display: -webkit-flex;
	    display: -ms-flexbox;
	    display: flex;
	    -webkit-box-orient: vertical;
	    -webkit-box-direction: normal;
	    -webkit-flex-direction: column;
	    -ms-flex-direction: column;
	    flex-direction: column;
	    -webkit-box-align: center;
	    -webkit-align-items: center;
	    -ms-flex-align: center;
	    align-items: center;
	    -webkit-box-pack: center;
	    -webkit-justify-content: center;
	    -ms-flex-pack: center;
	    justify-content: center;
	    text-transform: uppercase;
	    color: gray;
	    font-weight: 400;
	    font-size: 0.9rem;
	    height: 100%;
	}
	
	.tm-tab-link:hover { color: gray; }
	
	.tm-tab-link-li {
	    background: transparent;
	    -webkit-box-flex: 1;
	    -webkit-flex: 1 1 auto;
	    -ms-flex: 1 1 auto;
	    flex: 1 1 auto;
	    transition: all 0.3s ease;    
	}
	
	.tm-tab-link:hover,
	.tm-tab-link.active {
	    background: rgb(226, 192, 187);
	}
	
	.tab-pane {
	    max-width: 970px;
	    margin: 60px auto;
	}
	</style>
    </head>

    <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">   
    <jsp:include page="../common/header.jsp"/>
   
        <br><br>

        <section class="ftco-section ftco-services-2" id="services-section">
            <div class="container">
                <div class="col-md-12 heading-section text-center ftco-animate">
                    <span class="subheading">Trip &amp; Info</span>
                    <h2 class="mb-4">Travel location information</h2>
                </div>
            </div>
        </section>

        <br>

        <div class="col-md-12 ftco-animate container">
            <ul class="nav nav-pills tm-tabs-links" role="tablist">
                
                <li class="tm-tab-link-li">
                    <a data-toggle="tab" class="tm-tab-link active" href="#Philippines">
                        <img src="${contextPath}/resources/images/travelInfo/Philippines.png" alt="Image" class="img-fluid">
                        Philippines
                    </a>
                </li>
                <li class="tm-tab-link-li">
                    <a data-toggle="tab" class="tm-tab-link" href="#China">
                        <img src="${contextPath}/resources/images/travelInfo/china.png" alt="Image" class="img-fluid">
                        China
                    </a>
                </li>
                <li class="tm-tab-link-li">
                    <a data-toggle="tab" class="tm-tab-link" href="#Japan">
                        <img src="${contextPath}/resources/images/travelInfo/japan.png" alt="Image" class="img-fluid">
                        Japan
                    </a>
                </li>
                <li class="tm-tab-link-li">
                    <a data-toggle="tab" class="tm-tab-link" href="#Taiwan">
                        <img src="${contextPath}/resources/images/travelInfo/taiwan.png" alt="Image" class="img-fluid">
                        Taiwan
                    </a>
                </li>
                <li class="tm-tab-link-li">
                    <a data-toggle="tab" class="tm-tab-link" href="#Vietnam">
                        <img src="${contextPath}/resources/images/travelInfo/vietnam.png" alt="Image" class="img-fluid">
                        Vietnam
                    </a>
                </li>
                <li class="tm-tab-link-li">
                    <a data-toggle="tab" class="tm-tab-link" href="#Thailand">
                        <img src="${contextPath}/resources/images/travelInfo/thailand.png" alt="Image" class="img-fluid">
                        Thailand
                    </a>
                </li>
            </ul>
            
        </div>

        <br><br>

        <div class="tab-content">
            <div class="tab-pane fade show active" id="Philippines">
                <div class="container">
                    <div class="col-md-12 room-wrap">
                        <br>
                        <div class="row">
                            <div class="col-md-6 d-flex ftco-animate">
                                <p><img src="${contextPath}/resources/images/travelInfo/boracay-2065643_1920.jpg" alt="" class="img-fluid"></p>
                            </div>
                            <div class="col-md-6 ftco-animate">
                                <div class="text py-2">
                                    <h2>Philippines</h2>
                                    <p>적도의 약간 북쪽, 아시아 대륙 남동쪽의 서태평양에 산재하는 7000여 개의 섬들로 구성된 나라이다.</p>
                                </div>
                            </div>

                            <div class="col-md-8 ftco-animate">
                                <br><br>
                                <h4>필리핀 여행 기초정보</h4>
                                <p>떠나기 전 미리 알아두면 좋을 여행정보</p>
                                
                                <br>
                                
                                <p><i class="icon-home"></i>&nbsp; 수도&nbsp; : &nbsp;마닐라</p>
                                <p><i class="icon-user"></i>&nbsp; 인구&nbsp; : &nbsp;1억 70만 명</p>
                                <p><i class="icon-font"></i>&nbsp; 언어&nbsp; : &nbsp;영어 및 타갈로그어</p>
                                
								<c:set var="now" value="<%= new java.util.Date() %>" />																								
								<fmt:setTimeZone value="Asia/Manila"/>
                                <p><i class="icon-history"></i>&nbsp; 시차&nbsp; : &nbsp; <fmt:formatDate value="${now}" type="time" dateStyle="full" timeStyle="full" /></p>
       
                                <p><i class="icon-won"></i>&nbsp; 통화&nbsp; : &nbsp;페소(PHP)</p>
                                <p><i class="icon-won"></i>&nbsp; 환율&nbsp; : &nbsp;1미불 = 52.7페소</p>
                                <p><i class="icon-sun-o"></i>&nbsp; 기후&nbsp; : &nbsp;고온 다습 아열대성 기후,  11-5월은 건기 6-10월은 우기</p>
                                <p><i class="icon-file-text"></i>&nbsp; 비자&nbsp; : &nbsp;30일 무비자</p>
                                <p><i class="icon-bolt"></i>&nbsp; 전압&nbsp; : &nbsp;110V와 220V를 겸용해서 사용가능 숙소에따라 110V용 콘센트를 <br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   	 쓰는 곳이 있느니 돼지코를 준비하는것이 좋다</p>
                                
                                <br><br>
                                <h4>필리핀 날씨</h4>
                                	<div class = "row">
		                                <div class="col-md-4 col-lg-3">
		                                	<img id="weatherImg" src="${contextPath}/resources/images/asd.jpg" width="120" height="120" >
		                                	<br>
		                                	<p id="city" style="margin-bottom: 0rem;"></p> 
		                                	<p id="temp" style="font-size: 30px; font-weight: bold; color: black; margin-bottom: 0rem;"></p>
		                                </div>
		                                <div class="col-md-4 col-lg-3" >
		                                	<img id="CebuweatherImg" src="${contextPath}/resources/images/asd.jpg" width="120" height="120" >
		                                	<br>
		                                	<p id="Cebucity" style="margin-bottom: 0rem;"></p> 
		                                	<p id="Cebutemp" style="font-size: 30px; font-weight: bold; color: black; margin-bottom: 0rem;"></p>
		                                </div>
	                                </div>
                                
                                <script>
	                                var apiURI = "http://api.openweathermap.org/data/2.5/weather?q="+"Manila"+"&appid="+"0f7dfa7413698f15336248906624e173";
	                                var temp2 = document.getElementById("temp");
	                                
	                                var city2 = document.getElementById("city");
	                                var weatherImg2 = document.getElementById("weatherImg");
										$.ajax({
										    url: apiURI,
										    dataType: "json",
										    type: "GET",
										    async: "false",
										    success: function(resp) {
										    	
										    	var temp = String((resp.main.temp- 273.15)).substring(0,4)+"℃"; // 온도
										    	var city = resp.name;
										    										   	
												temp2.innerHTML = temp;
												city2.innerHTML = city;												
										        
												if(resp.weather[0].main == "Clouds"){
										        	if(resp.weather[0].description == "few clouds"){
										        		$('#weatherImg').attr("src","${contextPath}/resources/images/weather/fewClouds.png");
										        	}else{
											        	$('#weatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        	}
										        }
										        else if(resp.weather[0].main == "Clear"){
										        	$('#weatherImg').attr("src","${contextPath}/resources/images/weather/Clear.png")
										        }
										        else if(resp.weather[0].main == "Thunderstorm"){
										        	$('#weatherImg').attr("src","${contextPath}/resources/images/weather/Thunderstorm.png");
										        }else{
										        	$('#weatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        }
										    }
										})																													      
									      
								  </script>
								  <script>
	                                var apiURI2 = "http://api.openweathermap.org/data/2.5/weather?q="+"Cebu City"+"&appid="+"0f7dfa7413698f15336248906624e173";
	                                var Cebutemp2 = document.getElementById("Cebutemp");
	                                
	                                var Cebucity2 = document.getElementById("Cebucity");
	                                var CebuweatherImg2 = document.getElementById("CebuweatherImg");
										$.ajax({
										    url: apiURI2,
										    dataType: "json",
										    type: "GET",
										    async: "false",
										    success: function(resp) {
										    	
										    	var Cebutemp = String((resp.main.temp- 273.15)).substring(0,4)+"℃"; // 온도
										    	var Cebucity = resp.name;									    	
										   	
										    	Cebutemp2.innerHTML = Cebutemp;
												Cebucity2.innerHTML = Cebucity;
										        
												if(resp.weather[0].main == "Clouds"){
										        	if(resp.weather[0].description == "few clouds"){
										        		$('#CebuweatherImg').attr("src","${contextPath}/resources/images/weather/fewClouds.png");
										        	}else{
											        	$('#CebuweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        	}
										        }
										        else if(resp.weather[0].main == "Clear"){
										        	$('#CebuweatherImg').attr("src","${contextPath}/resources/images/weather/Clear.png")
										        }
										        else if(resp.weather[0].main == "Thunderstorm"){
										        	$('#CebuweatherImg').attr("src","${contextPath}/resources/images/weather/Thunderstorm.png");
										        }else{
										        	$('#CebuweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        }
										    }
										})																													      
									      
								  </script>										  																													      									      
                                <br><br>
                            </div>
                            <br>
                                    
                        </div>                       
                    </div>   
                    <div class="col-md-12">
                        <h4>여행지 유의사항</h4>
                        <p>지금 만들어 놓은건 대만꺼</p>  
                        <ul>
                            <li>여권만료일이 도착일 기준으로 6개월이상 남아있어야 합니다.</li>
                            <br>
                            <li>
				                                대만은 한국과 마찬가지로 4계절이 있습니다.
				                                겨울에는 한국처럼 영하로 내려가지는 않지만, 그래도 습한 곳이다보니 조금만 기온이 내려가도 춥게 느끼십니다.
				                                바람도 불고, 비도 오는 경우는 한국만큼 춥게 느끼시는 경우가 많으니,한국의 초겨울 날씨 생각하시고 두터운 점퍼와 긴팔 챙기시기 바랍니다.
                            </li>
                        </ul>
                        <br>
                        <h5>방문 도시별 입국카드 작성법</h5>
                        <p style="text-align: center;">
                            <img src="${contextPath}/resources/images/travelInfo/Philippine_Entry.jpg">
                        </p>
                        <br><br>
                    </div>                                                                          
                </div>                                             
            </div>

            <div class="tab-pane fade" id="China">
                <div class="container">
                    <div class="col-md-12 room-wrap">
                        <br>
                        <div class="row">
                            <div class="col-md-6 d-flex ftco-animate">
                                <p><img src="${contextPath}/resources/images/travelInfo/china_1.jpg" alt="" class="img-fluid"></p>
                            </div>
                            <div class="col-md-6 ftco-animate">
                                <div class="text py-2">
                                    <h2>China</h2>
                                    <p>정식 명칭은 중화인민공화국(People's Republic of China)이다. 세계 최대의 인구와 광대한 국토를 가진 나라로, 국토는 남북 5500㎞, 동서로 우수리강(江)과 헤이룽강의 합류점에서부터 파미르 고원까지 5200㎞에 달한다.</p>
                                </div>
                            </div>

                            <div class="col-md-8 col-lg-12 ftco-animate">
                                <br><br>
                                <h4>중국 여행 기초정보</h4>
                                <p>떠나기 전 미리 알아두면 좋을 여행정보</p>
                                
                                <br>
                                
                                <p><i class="icon-home"></i>&nbsp; 수도&nbsp; : &nbsp;베이징</p>
                                <p><i class="icon-user"></i>&nbsp; 인구&nbsp; : &nbsp;13억 명</p>
                                <p><i class="icon-font"></i>&nbsp; 언어&nbsp; : &nbsp;중국어</p>
                                <c:set var="now" value="<%= new java.util.Date() %>" />																								
								<fmt:setTimeZone value="Asia/Shanghai"/>
                                <p><i class="icon-history"></i>&nbsp; 시차&nbsp; : &nbsp; <fmt:formatDate value="${now}" type="time" dateStyle="full" timeStyle="full" /></p>
                                <p><i class="icon-won"></i>&nbsp; 통화&nbsp; : &nbsp;위안화(CNY)</p>
                                <p><i class="icon-won"></i>&nbsp; 환율&nbsp; : &nbsp;1 CNY = 166.71원</p>
                                <p><i class="icon-sun-o"></i>&nbsp; 기후&nbsp; : &nbsp; 최남단의 열대에서 서부의 건조기후, 동북삼성의 냉대에 이르기까지 지구상의 다양한 기후가 대부분 나타난다</p>
                                <p><i class="icon-file-text"></i>&nbsp; 비자&nbsp; : &nbsp;비자 신청 필수</p>
                                <p><i class="icon-bolt"></i>&nbsp; 전압&nbsp; : &nbsp;220V, 50Hz</p>
                                
                                <br><br>
                                <h4>중국 날씨</h4>
                                <div class="row">
                                	<div class="col-md-4 col-lg-3" >
	                                	<img id="BeijingweatherImg" src="${contextPath}/resources/images/asd.jpg" width="120" height="120" >
	                                	<br>
	                                	<p id="Beijingcity" style="margin-bottom: 0rem;"></p> 
	                                	<p id="Beijingtemp" style="font-size: 30px; font-weight: bold; color: black; margin-bottom: 0rem;"></p>
	                                </div>
	                                <div class="col-md-4 col-lg-3" >
	                                	<img id="HongKongweatherImg" src="${contextPath}/resources/images/asd.jpg" width="120" height="120" >
	                                	<br>
	                                	<p id="HongKongcity" style="margin-bottom: 0rem;"></p> 
	                                	<p id="HongKongtemp" style="font-size: 30px; font-weight: bold; color: black; margin-bottom: 0rem;"></p>
	                                </div>
	                                <div class="col-md-4 col-lg-3" >
	                                	<img id="ShanghaiweatherImg" src="${contextPath}/resources/images/asd.jpg" width="120" height="120" >
	                                	<br>
	                                	<p id="Shanghaicity" style="margin-bottom: 0rem;"></p> 
	                                	<p id="Shanghaitemp" style="font-size: 30px; font-weight: bold; color: black; margin-bottom: 0rem;"></p>
	                                </div>
                                </div>
                                
                                <script>
	                                var apiURI3 = "http://api.openweathermap.org/data/2.5/weather?q="+"Beijing"+"&appid="+"0f7dfa7413698f15336248906624e173";
	                                var Beijingtemp2 = document.getElementById("Beijingtemp");                                
	                                var Beijingcity2 = document.getElementById("Beijingcity");
	                                var BeijingweatherImg2 = document.getElementById("BeijingweatherImg");
										$.ajax({
										    url: apiURI3,
										    dataType: "json",
										    type: "GET",
										    async: "false",
										    success: function(resp) {
										    	
										    	var Beijingtemp = String((resp.main.temp- 273.15)).substring(0,4)+"℃"; // 온도
										    	var Beijingcity = resp.name;									    	
										   	
										    	Beijingtemp2.innerHTML = Beijingtemp;
												Beijingcity2.innerHTML = Beijingcity;
											
												if(resp.weather[0].main == "Clouds"){
										        	if(resp.weather[0].description == "few clouds"){
										        		$('#BeijingweatherImg').attr("src","${contextPath}/resources/images/weather/fewClouds.png");
										        	}else{
											        	$('#BeijingweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        	}
										        }
										        else if(resp.weather[0].main == "Clear"){
										        	$('#BeijingweatherImg').attr("src","${contextPath}/resources/images/weather/Clear.png")
										        }
										        else if(resp.weather[0].main == "Thunderstorm"){
										        	$('#BeijingweatherImg').attr("src","${contextPath}/resources/images/weather/Thunderstorm.png");
										        }else{
										        	$('#BeijingweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        }
										        
										    }
										})																													      
									      
								  </script>
								  <script>
	                                var apiURI4 = "http://api.openweathermap.org/data/2.5/weather?q="+"Hong Kong"+"&appid="+"0f7dfa7413698f15336248906624e173";
	                                var HongKongtemp2 = document.getElementById("HongKongtemp");                                
	                                var HongKongcity2 = document.getElementById("HongKongcity");
	                                var HongKongweatherImg2 = document.getElementById("HongKongweatherImg");
										$.ajax({
										    url: apiURI4,
										    dataType: "json",
										    type: "GET",
										    async: "false",
										    success: function(resp) {
										    	
										    	var HongKongtemp = String((resp.main.temp- 273.15)).substring(0,4)+"℃"; // 온도
										    	var HongKongcity = resp.name;									    	
										   	
										    	HongKongtemp2.innerHTML = HongKongtemp;
										    	HongKongcity2.innerHTML = HongKongcity;										    											    	
										        
										    	if(resp.weather[0].main == "Clouds"){
										        	if(resp.weather[0].description == "few clouds"){
										        		$('#HongKongweatherImg').attr("src","${contextPath}/resources/images/weather/fewClouds.png");
										        	}else{
											        	$('#HongKongweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        	}
										        }
										        else if(resp.weather[0].main == "Clear"){
										        	$('#HongKongweatherImg').attr("src","${contextPath}/resources/images/weather/Clear.png")
										        }
										        else if(resp.weather[0].main == "Thunderstorm"){
										        	$('#HongKongweatherImg').attr("src","${contextPath}/resources/images/weather/Thunderstorm.png");
										        }else{
										        	$('#HongKongweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        }
										        
										    }
										})																													      		      
								  </script>
								  <script>
	                                var apiURI5 = "http://api.openweathermap.org/data/2.5/weather?q="+"Shanghai"+"&appid="+"0f7dfa7413698f15336248906624e173";
	                                var Shanghaitemp2 = document.getElementById("Shanghaitemp");                                
	                                var Shanghaicity2 = document.getElementById("Shanghaicity");
	                                var ShanghaiweatherImg2 = document.getElementById("ShanghaiweatherImg");
										$.ajax({
										    url: apiURI5,
										    dataType: "json",
										    type: "GET",
										    async: "false",
										    success: function(resp) {
										    	
										    	var Shanghaitemp = String((resp.main.temp- 273.15)).substring(0,4)+"℃"; // 온도
										    	var Shanghaicity = resp.name;									    	
										   	
										    	Shanghaitemp2.innerHTML = Shanghaitemp;
										    	Shanghaicity2.innerHTML = Shanghaicity;
										    
										    	if(resp.weather[0].main == "Clouds"){
										        	if(resp.weather[0].description == "few clouds"){
										        		$('#ShanghaiweatherImg').attr("src","${contextPath}/resources/images/weather/fewClouds.png");
										        	}else{
											        	$('#ShanghaiweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        	}
										        }
										        else if(resp.weather[0].main == "Clear"){
										        	$('#ShanghaiweatherImg').attr("src","${contextPath}/resources/images/weather/Clear.png")
										        }
										        else if(resp.weather[0].main == "Thunderstorm"){
										        	$('#ShanghaiweatherImg').attr("src","${contextPath}/resources/images/weather/Thunderstorm.png");
										        }else{
										        	$('#ShanghaiweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        }
										    }
										})																													      
									      
								  </script>
                                <br><br>

                                
                            </div>
                            <br>
                        
                                                    
                        </div>                       
                    </div>   
                    <div class="col-md-12">
                        <h4>여행지 유의사항</h4>
                         
                        <ul>
                            <li>관광지의 날씨변화에 대응하기 쉽도록 우비 혹은 우산을 챙기시기 바랍니다.</li>
                            <br>
                            <li>여권을 분실하지 않도록 각별히 주의 보관하기 바랍니다.</li>
                        </ul>
                        <br>
                        <h5>방문 도시별 입국카드 작성법</h5>
                        <p style="text-align: center;">
                        <br>
                            <img src="${contextPath}/resources/images/travelInfo/China_Entry.jpg">
                        </p>
                        <br><br>
                    </div>                                              
                </div>
            </div>

            <div class="tab-pane fade" id="Japan" >
                <div class="container">
                    <div class="col-md-12 room-wrap">
                        <br>
                        <div class="row">
                            <div class="col-md-6 d-flex ftco-animate">
                                <p><img src="${contextPath}/resources/images/travelInfo/Japan_1.jpg" alt="" class="img-fluid"></p>
                            </div>
                            <div class="col-md-6 ftco-animate">
                                <div class="text py-2">
                                    <h2>Japan</h2>
                                    <p>아시아 대륙 동쪽에 홋카이도, 혼슈 , 시코쿠, 규슈 4개 큰 섬을 중심으로 북동에서 남서 방향으로 이어지는 일본열도를 차지한 섬나라이다.</p>
                                </div>
                            </div>

                            <div class="col-md-8 col-lg-12 ftco-animate">
                                <br><br>
                                <h4>일본 여행 기초정보</h4>
                                <p>떠나기 전 미리 알아두면 좋을 여행정보</p>
                                
                                <br>
                                
                                <p><i class="icon-home"></i>&nbsp; 수도&nbsp; : &nbsp;도쿄</p>
                                <p><i class="icon-user"></i>&nbsp; 인구&nbsp; : &nbsp;1억 2천만 명</p>
                                <p><i class="icon-font"></i>&nbsp; 언어&nbsp; : &nbsp;일본어</p>
                                <c:set var="now" value="<%= new java.util.Date() %>" />																								
								<fmt:setTimeZone value="Asia/Tokyo"/>
                                <p><i class="icon-history"></i>&nbsp; 시차&nbsp; : &nbsp; <fmt:formatDate value="${now}" type="time" dateStyle="full" timeStyle="full" /></p>
                                <p><i class="icon-won"></i>&nbsp; 통화&nbsp; : &nbsp;엔(YEN)</p>
                                <p><i class="icon-won"></i>&nbsp; 환율&nbsp; : &nbsp;100 JPY = 1,086.83원</p>
                                <p><i class="icon-sun-o"></i>&nbsp; 기후&nbsp; : &nbsp; 일본은 홋카이도와 혼슈 북부 및 중부 내륙고지가 아한대다우기후에 속할 뿐, 그 밖의 모든 지역이 온대다우기후에 포함된다. </p>
                                <p><i class="icon-file-text"></i>&nbsp; 비자&nbsp; : &nbsp;90일 무비자</p>
                                <p><i class="icon-bolt"></i>&nbsp; 전압&nbsp; : &nbsp;110V</p>
                                
                                <br><br>
                                <h4>일본 날씨</h4>
                                <div class="row">
	                                <div class="col-md-4 col-lg-3" >
	                                	<img id="TokyoweatherImg" src="${contextPath}/resources/images/asd.jpg" width="120" height="120" >
	                                	<br>
	                                	<p id="Tokyocity" style="margin-bottom: 0rem;"></p> 
	                                	<p id="Tokyotemp" style="font-size: 30px; font-weight: bold; color: black; margin-bottom: 0rem;"></p>
	                                </div>
                                	<div class="col-md-4 col-lg-3" >
	                                	<img id="OkinawaweatherImg" src="${contextPath}/resources/images/asd.jpg" width="120" height="120" >
	                                	<br>
	                                	<p id="Okinawacity" style="margin-bottom: 0rem;"></p> 
	                                	<p id="Okinawatemp" style="font-size: 30px; font-weight: bold; color: black; margin-bottom: 0rem;"></p>
	                                </div>
	                                <div class="col-md-4 col-lg-3" >
	                                	<img id="FukuokaweatherImg" src="${contextPath}/resources/images/asd.jpg" width="120" height="120" >
	                                	<br>
	                                	<p id="Fukuokacity" style="margin-bottom: 0rem;"></p> 
	                                	<p id="Fukuokatemp" style="font-size: 30px; font-weight: bold; color: black; margin-bottom: 0rem;"></p>
	                                </div>
                                </div>
                                
                                <script>
	                                var apiURI5 = "http://api.openweathermap.org/data/2.5/weather?q="+"Okinawa"+"&appid="+"0f7dfa7413698f15336248906624e173";
	                                var Okinawatemp2 = document.getElementById("Okinawatemp");                                
	                                var Okinawacity2 = document.getElementById("Okinawacity");
	                                var OkinawaweatherImg2 = document.getElementById("OkinawaweatherImg");
										$.ajax({
										    url: apiURI5,
										    dataType: "json",
										    type: "GET",
										    async: "false",
										    success: function(resp) {
										    	
										    	var Okinawatemp = String((resp.main.temp- 273.15)).substring(0,4)+"℃"; // 온도
										    	var Okinawacity = resp.name;									    	
										   	
										    	Okinawatemp2.innerHTML = Okinawatemp;
										    	Okinawacity2.innerHTML = Okinawacity;
												
										    	if(resp.weather[0].main == "Clouds"){
										        	if(resp.weather[0].description == "few clouds"){
										        		$('#OkinawaweatherImg').attr("src","${contextPath}/resources/images/weather/fewClouds.png");
										        	}else{
											        	$('#OkinawaweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        	}
										        }
										        else if(resp.weather[0].main == "Clear"){
										        	$('#OkinawaweatherImg').attr("src","${contextPath}/resources/images/weather/Clear.png")
										        }
										        else if(resp.weather[0].main == "Thunderstorm"){
										        	$('#OkinawaweatherImg').attr("src","${contextPath}/resources/images/weather/Thunderstorm.png");
										        }else{
										        	$('#OkinawaweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        }
										        
										    }
										})																													      		      
								  </script>
								  <script>
	                                var apiURI6 = "http://api.openweathermap.org/data/2.5/weather?q="+"Tokyo"+"&appid="+"0f7dfa7413698f15336248906624e173";
	                                var Tokyotemp2 = document.getElementById("Tokyotemp");                                
	                                var Tokyocity2 = document.getElementById("Tokyocity");
	                                var TokyoweatherImg2 = document.getElementById("TokyoweatherImg");
										$.ajax({
										    url: apiURI6,
										    dataType: "json",
										    type: "GET",
										    async: "false",
										    success: function(resp) {
										    	
										    	var Tokyotemp = String((resp.main.temp- 273.15)).substring(0,4)+"℃"; // 온도
										    	var Tokyocity = resp.name;									    	
										   	
										    	Tokyotemp2.innerHTML = Tokyotemp;
										    	Tokyocity2.innerHTML = Tokyocity;
										        
										    	if(resp.weather[0].main == "Clouds"){
										        	if(resp.weather[0].description == "few clouds"){
										        		$('#TokyoweatherImg').attr("src","${contextPath}/resources/images/weather/fewClouds.png");
										        	}else{
											        	$('#TokyoweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        	}
										        }
										        else if(resp.weather[0].main == "Clear"){
										        	$('#TokyoweatherImg').attr("src","${contextPath}/resources/images/weather/Clear.png")
										        }
										        else if(resp.weather[0].main == "Thunderstorm"){
										        	$('#TokyoweatherImg').attr("src","${contextPath}/resources/images/weather/Thunderstorm.png");
										        }else{
										        	$('#TokyoweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        }
										    }
										})																													      		      
								  </script>
								  <script>
	                                var apiURI7 = "http://api.openweathermap.org/data/2.5/weather?q="+"Fukuoka-shi"+"&appid="+"0f7dfa7413698f15336248906624e173";
	                                var Fukuokatemp2 = document.getElementById("Fukuokatemp");                                
	                                var Fukuokacity2 = document.getElementById("Fukuokacity");
	                                var FukuokaweatherImg2 = document.getElementById("FukuokaweatherImg");
										$.ajax({
										    url: apiURI7,
										    dataType: "json",
										    type: "GET",
										    async: "false",
										    success: function(resp) {
										    	
										    	var Fukuokatemp = String((resp.main.temp- 273.15)).substring(0,4)+"℃"; // 온도
										    	var Fukuokacity = resp.name;									    	
										   	
										    	Fukuokatemp2.innerHTML = Fukuokatemp;
										    	Fukuokacity2.innerHTML = Fukuokacity;
										    	
										    	if(resp.weather[0].main == "Clouds"){
										        	if(resp.weather[0].description == "few clouds"){
										        		$('#FukuokaweatherImg').attr("src","${contextPath}/resources/images/weather/fewClouds.png");
										        	}else{
											        	$('#FukuokaweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        	}
										        }
										        else if(resp.weather[0].main == "Clear"){
										        	$('#FukuokaweatherImg').attr("src","${contextPath}/resources/images/weather/Clear.png")
										        }
										        else if(resp.weather[0].main == "Thunderstorm"){
										        	$('#FukuokaweatherImg').attr("src","${contextPath}/resources/images/weather/Thunderstorm.png");
										        }else{
										        	$('#FukuokaweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        }
										    }
										})																													      		      
								  </script>

                                <br><br>

                                
                            </div>
                            <br>
                        
                                                    
                        </div>                       
                    </div>   
                    <div class="col-md-12">
                        <h4>여행지 유의사항</h4>
                         
                        <ul>
                            <li> 2008년 6월부터 일본에서 대형버스 탑승시, 탑승객 전원의 안전벨트 착용이 의무화되었습니다. 이에, 일반 도로및 고속도로 주행시 안전벨트 미착용이 적발되면 벌금이 부과되므로 안전을 위해 여러분의 협력 부탁드립니다.</li>
                            <br>
                            <li>여권을 분실하지 않도록 각별히 주의 보관하기 바랍니다.</li>
                        </ul>
                        <br>
                        <h5>방문 도시별 입국카드 작성법</h5>
                        <p style="text-align: center;">
                        <br>
                            <img src="${contextPath}/resources/images/travelInfo/Japan_Entry.jpg">
                        </p>
                        <br><br>
                    </div>
                                                                          
                </div>
            </div>
        
            
            

            <div class="tab-pane fade" id="Taiwan">
                <div class="container">
                    <div class="col-md-12 room-wrap">
                        <br>
                        <div class="row">
                            <div class="col-md-6 d-flex ftco-animate">
                                <p><img src="${contextPath}/resources/images/travelInfo/Taipei_1.jpg" alt="" class="img-fluid"></p>
                            </div>
                            <div class="col-md-6 ftco-animate">
                                <div class="text py-2">
                                    <h2>Taiwan</h2>
                                    <p>유라시아 대륙 동남부와 태평양 서부의 사이에 놓여 있는 섬나라이다.</p>
                                </div>
                            </div>

                            <div class="col-md-8 col-lg-12 ftco-animate">
                                <br><br>
                                <h4>대만 여행 기초정보</h4>
                                <p>떠나기 전 미리 알아두면 좋을 여행정보</p>
                                
                                <br>
                                
                                <p><i class="icon-home"></i>&nbsp; 수도&nbsp; : &nbsp;타이베이</p>
                                <p><i class="icon-user"></i>&nbsp; 인구&nbsp; : &nbsp;2천 3백만 명</p>
                                <p><i class="icon-font"></i>&nbsp; 언어&nbsp; : &nbsp;중국어</p>
                                <c:set var="now" value="<%= new java.util.Date() %>" />																								
								<fmt:setTimeZone value="Asia/Taipei"/>
                                <p><i class="icon-history"></i>&nbsp; 시차&nbsp; : &nbsp; <fmt:formatDate value="${now}" type="time" dateStyle="full" timeStyle="full" /></p>
                                <p><i class="icon-won"></i>&nbsp; 통화&nbsp; : &nbsp;타이완달러(TWD)</p>
                                <p><i class="icon-won"></i>&nbsp; 환율&nbsp; : &nbsp;1달러(USD) = 1200.54원</p>
                                <p><i class="icon-sun-o"></i>&nbsp; 기후&nbsp; : &nbsp; 타이완의 기후는 북부지역은 아열대기후, 남부지역은 열대기후이며 연평균기온은 북부지역 22℃, 남부지역 24℃ 정도이다.</p>
                                <p><i class="icon-file-text"></i>&nbsp; 비자&nbsp; : &nbsp;90일 무비자</p>
                                <p><i class="icon-bolt"></i>&nbsp; 전압&nbsp; : &nbsp;110V, 60Hz</p>
                                
                                <br><br>
                                <h4>대만 날씨</h4>
                                <div class="row">
                                	<div class="col-md-4 col-lg-3" >
	                                	<img id="TaipeiweatherImg" src="${contextPath}/resources/images/asd.jpg" width="120" height="120" >
	                                	<br>
	                                	<p id="Taipeicity" style="margin-bottom: 0rem;"></p> 
	                                	<p id="Taipeitemp" style="font-size: 30px; font-weight: bold; color: black; margin-bottom: 0rem;"></p>
	                                </div>
	                                <div class="col-md-4 col-lg-3" >
	                                	<img id="TaichungweatherImg" src="${contextPath}/resources/images/asd.jpg" width="120" height="120" >
	                                	<br>
	                                	<p id="Taichungcity" style="margin-bottom: 0rem;"></p> 
	                                	<p id="Taichungtemp" style="font-size: 30px; font-weight: bold; color: black; margin-bottom: 0rem;"></p>
	                                </div>
	                                <div class="col-md-4 col-lg-3" >
	                                	<img id="KaohsiungweatherImg" src="${contextPath}/resources/images/asd.jpg" width="120" height="120" >
	                                	<br>
	                                	<p id="Kaohsiungcity" style="margin-bottom: 0rem;"></p> 
	                                	<p id="Kaohsiungtemp" style="font-size: 30px; font-weight: bold; color: black; margin-bottom: 0rem;"></p>
	                                </div>
                                </div>
                                
                                <script>
	                                var apiURI8 = "http://api.openweathermap.org/data/2.5/weather?q="+"Taipei"+"&appid="+"0f7dfa7413698f15336248906624e173";
	                                var Taipeitemp2 = document.getElementById("Taipeitemp");                                
	                                var Taipeicity2 = document.getElementById("Taipeicity");
	                                var TaipeiweatherImg2 = document.getElementById("TaipeiweatherImg");
										$.ajax({
										    url: apiURI8,
										    dataType: "json",
										    type: "GET",
										    async: "false",
										    success: function(resp) {
										    	
										    	var Taipeitemp = String((resp.main.temp- 273.15)).substring(0,4)+"℃"; // 온도
										    	var Taipeicity = resp.name;									    	
										   	
										    	Taipeitemp2.innerHTML = Taipeitemp;
										    	Taipeicity2.innerHTML = Taipeicity;										    	

										    	if(resp.weather[0].main == "Clouds"){
										        	if(resp.weather[0].description == "few clouds"){
										        		$('#TaipeiweatherImg').attr("src","${contextPath}/resources/images/weather/fewClouds.png");
										        	}else{
											        	$('#TaipeiweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        	}
										        }
										        else if(resp.weather[0].main == "Clear"){
										        	$('#TaipeiweatherImg').attr("src","${contextPath}/resources/images/weather/Clear.png")
										        }
										        else if(resp.weather[0].main == "Thunderstorm"){
										        	$('#TaipeiweatherImg').attr("src","${contextPath}/resources/images/weather/Thunderstorm.png");
										        }else{
										        	$('#TaipeiweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        }
										    }
										})																													      		      
								  </script>
								  <script>
	                                var apiURI9 = "http://api.openweathermap.org/data/2.5/weather?q="+"Taichung"+"&appid="+"0f7dfa7413698f15336248906624e173";
	                                var Taichungtemp2 = document.getElementById("Taichungtemp");                                
	                                var Taichungcity2 = document.getElementById("Taichungcity");
	                                var TaichungweatherImg2 = document.getElementById("TaichungweatherImg");
										$.ajax({
										    url: apiURI9,
										    dataType: "json",
										    type: "GET",
										    async: "false",
										    success: function(resp) {
										    	
										    	var Taichungtemp = String((resp.main.temp- 273.15)).substring(0,4)+"℃"; // 온도
										    	var Taichungcity = resp.name;									    	
										   	
										    	Taichungtemp2.innerHTML = Taichungtemp;
										    	Taichungcity2.innerHTML = Taichungcity;
										        
										    	if(resp.weather[0].main == "Clouds"){
										        	if(resp.weather[0].description == "few clouds"){
										        		$('#TaichungweatherImg').attr("src","${contextPath}/resources/images/weather/fewClouds.png");
										        	}else{
											        	$('#TaichungweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        	}
										        }
										        else if(resp.weather[0].main == "Clear"){
										        	$('#TaichungweatherImg').attr("src","${contextPath}/resources/images/weather/Clear.png")
										        }
										        else if(resp.weather[0].main == "Thunderstorm"){
										        	$('#TaichungweatherImg').attr("src","${contextPath}/resources/images/weather/Thunderstorm.png");
										        }else{
										        	$('#TaichungweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        }
										    }
										})																													      		      
								  </script>
								  <script>
	                                var apiURI10 = "http://api.openweathermap.org/data/2.5/weather?q="+"Kaohsiung"+"&appid="+"0f7dfa7413698f15336248906624e173";
	                                var Kaohsiungtemp2 = document.getElementById("Kaohsiungtemp");                                
	                                var Kaohsiungcity2 = document.getElementById("Kaohsiungcity");
	                                var KaohsiungweatherImg2 = document.getElementById("KaohsiungweatherImg");
										$.ajax({
										    url: apiURI10,
										    dataType: "json",
										    type: "GET",
										    async: "false",
										    success: function(resp) {
										    	
										    	var Kaohsiungtemp = String((resp.main.temp- 273.15)).substring(0,4)+"℃"; // 온도
										    	var Kaohsiungcity = resp.name;									    	
										   	
										    	Kaohsiungtemp2.innerHTML = Kaohsiungtemp;
										    	Kaohsiungcity2.innerHTML = Kaohsiungcity;
										        
										        if(resp.weather[0].main == "Clouds"){
										        	if(resp.weather[0].description == "few clouds"){
										        		$('#KaohsiungweatherImg').attr("src","${contextPath}/resources/images/weather/fewClouds.png");
										        	}else{
											        	$('#KaohsiungweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        	}
										        }
										        else if(resp.weather[0].main == "Clear"){
										        	$('#KaohsiungweatherImg').attr("src","${contextPath}/resources/images/weather/Clear.png")
										        }
										        else if(resp.weather[0].main == "Thunderstorm"){
										        	$('#KaohsiungweatherImg').attr("src","${contextPath}/resources/images/weather/Thunderstorm.png");
										        }else{
										        	$('#KaohsiungweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        }
										    }
										})																													      		      
								  </script>

                                <br><br>

                                
                            </div>
                            <br>
                        
                                                    
                        </div>                       
                    </div>   
                    <div class="col-md-12">
                        <h4>여행지 유의사항</h4>
                         
                        <ul>
                            <li>여권만료일이 도착일 기준으로 6개월이상 남아있어야 합니다.</li>
                            <br>
                            <li>대만은 한국과 마찬가지로 4계절이 있습니다.
				                                겨울에는 한국처럼 영하로 내려가지는 않지만, 그래도 습한 곳이다보니 조금만 기온이 내려가도 춥게 느끼십니다.
				                                바람도 불고, 비도 오는 경우는 한국만큼 춥게 느끼시는 경우가 많으니,한국의 초겨울 날씨 생각하시고 두터운 점퍼와 긴팔 챙기시기 바랍니다.</li>
                        </ul>
                        <br>
                        <h5>방문 도시별 입국카드 작성법</h5>
                        <p style="text-align: center;">
                        <br>
                            <img src="${contextPath}/resources/images/travelInfo/Taiwan_Entry.JPG">
                        </p>
                        <br><br>
                    </div>
                                                                          
                </div>
            </div>

            <div class="tab-pane fade" id="Vietnam">
                <div class="container">
                    <div class="col-md-12 room-wrap">
                        <br>
                        <div class="row">
                            <div class="col-md-6 d-flex ftco-animate">
                                <p><img src="${contextPath}/resources/images/travelInfo/vietnam.jpg" alt="" class="img-fluid"></p>
                            </div>
                            <div class="col-md-6 ftco-animate">
                                <div class="text py-2">
                                    <h2>Vietnam</h2>
                                    <p>동남아시아의 인도차이나 반도 동부에 있는 나라이다.</p>
                                </div>
                            </div>

                            <div class="col-md-8 col-lg-12 ftco-animate">
                                <br><br>
                                <h4>베트남 여행 기초정보</h4>
                                <p>떠나기 전 미리 알아두면 좋을 여행정보</p>
                                
                                <br>
                                
                                <p><i class="icon-home"></i>&nbsp; 수도&nbsp; : &nbsp;하노이</p>
                                <p><i class="icon-user"></i>&nbsp; 인구&nbsp; : &nbsp;9천만 명</p>
                                <p><i class="icon-font"></i>&nbsp; 언어&nbsp; : &nbsp;베트남어</p>
                                <c:set var="now" value="<%= new java.util.Date() %>" />																								
								<fmt:setTimeZone value="Asia/Ho_Chi_Minh"/>
                                <p><i class="icon-history"></i>&nbsp; 시차&nbsp; : &nbsp; <fmt:formatDate value="${now}" type="time" dateStyle="full" timeStyle="full" /></p>
                                <p><i class="icon-won"></i>&nbsp; 통화&nbsp; : &nbsp;동(VND)</p>
                                <p><i class="icon-won"></i>&nbsp; 환율&nbsp; : &nbsp;1동(VND) = 5.04원</p>
                                <p><i class="icon-sun-o"></i>&nbsp; 기후&nbsp; : &nbsp; 고지를 제외한 건 지역이 열대몬순기후를 이룬다.</p>
                                <p><i class="icon-file-text"></i>&nbsp; 비자&nbsp; : &nbsp;15일 무비자</p>
                                <p><i class="icon-bolt"></i>&nbsp; 전압&nbsp; : &nbsp;220V, 50Hz</p>
                                
                                <br><br>
                                <h4>베트남 날씨</h4>
                                <div class="row">
                                	<div class="col-md-4 col-lg-3" >
	                                	<img id="HaNoiweatherImg" src="${contextPath}/resources/images/asd.jpg" width="120" height="120" >
	                                	<br>
	                                	<p id="HaNoicity" style="margin-bottom: 0rem;"></p> 
	                                	<p id="HaNoitemp" style="font-size: 30px; font-weight: bold; color: black; margin-bottom: 0rem;"></p>
	                                </div>
	                                <div class="col-md-4 col-lg-3" >
	                                	<img id="HoiAnweatherImg" src="${contextPath}/resources/images/asd.jpg" width="120" height="120" >
	                                	<br>
	                                	<p id="HoiAncity" style="margin-bottom: 0rem;"></p> 
	                                	<p id="HoiAntemp" style="font-size: 30px; font-weight: bold; color: black; margin-bottom: 0rem;"></p>
	                                </div>
                                </div>
                                
                                <script>
	                                var apiURI11 = "http://api.openweathermap.org/data/2.5/weather?q="+"Ha Noi"+"&appid="+"0f7dfa7413698f15336248906624e173";
	                                var HaNoitemp2 = document.getElementById("HaNoitemp");                                
	                                var HaNoicity2 = document.getElementById("HaNoicity");
	                                var HaNoiweatherImg2 = document.getElementById("HaNoiweatherImg");
										$.ajax({
										    url: apiURI11,
										    dataType: "json",
										    type: "GET",
										    async: "false",
										    success: function(resp) {
										    	
										    	var HaNoitemp = String((resp.main.temp- 273.15)).substring(0,4)+"℃"; // 온도
										    	var HaNoicity = resp.name;									    	
										   	
										    	HaNoitemp2.innerHTML = HaNoitemp;
										    	HaNoicity2.innerHTML = HaNoicity;										    	
										        
										        if(resp.weather[0].main == "Clouds"){
										        	if(resp.weather[0].description == "few clouds"){
										        		$('#HaNoiweatherImg').attr("src","${contextPath}/resources/images/weather/fewClouds.png");
										        	}else{
											        	$('#HaNoiweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        	}
										        }
										        else if(resp.weather[0].main == "Clear"){
										        	$('#HaNoiweatherImg').attr("src","${contextPath}/resources/images/weather/Clear.png")
										        }
										        else if(resp.weather[0].main == "Thunderstorm"){
										        	$('#HaNoiweatherImg').attr("src","${contextPath}/resources/images/weather/Thunderstorm.png");
										        }else{
										        	$('#HaNoiweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        }
										    }
										})																													      		      
								  </script>
								  <script>
	                                var apiURI12 = "http://api.openweathermap.org/data/2.5/weather?q="+"Hoi An"+"&appid="+"0f7dfa7413698f15336248906624e173";
	                                var HoiAntemp2 = document.getElementById("HoiAntemp");                                
	                                var HoiAncity2 = document.getElementById("HoiAncity");
	                                var HoiAnweatherImg2 = document.getElementById("HoiAnweatherImg");
										$.ajax({
										    url: apiURI12,
										    dataType: "json",
										    type: "GET",
										    async: "false",
										    success: function(resp) {
										    	
										    	var HoiAntemp = String((resp.main.temp- 273.15)).substring(0,4)+"℃"; // 온도
										    	var HoiAncity = resp.name;									    	
										   	
										    	HoiAntemp2.innerHTML = HoiAntemp;
										    	HoiAncity2.innerHTML = HoiAncity;						    	    						                
										        
										        if(resp.weather[0].main == "Clouds"){
										        	if(resp.weather[0].description == "few clouds"){
										        		$('#HoiAnweatherImg').attr("src","${contextPath}/resources/images/weather/fewClouds.png");
										        	}else{
											        	$('#HoiAnweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        	}
										        }
										        else if(resp.weather[0].main == "Clear"){
										        	$('#HoiAnweatherImg').attr("src","${contextPath}/resources/images/weather/Clear.png")
										        }
										        else if(resp.weather[0].main == "Thunderstorm"){
										        	$('#HoiAnweatherImg').attr("src","${contextPath}/resources/images/weather/Thunderstorm.png");
										        }else{
										        	$('#HoiAnweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        }
										    }
										})																													      		      
								  </script>								  
                                <br><br>                               
                            </div>
                            <br>                                                                          
                        </div>                       
                    </div>   
                    <div class="col-md-12">
                        <h4>여행지 유의사항</h4>
                       
                        <br>
                        <h5>방문 도시별 입국카드 작성법</h5>
                        <p style="text-align: center;">
                            <img src="${contextPath}/resources/images/travelInfo/Vietnam_Entry.jpg">
                        </p>
                        <br><br>
                    </div>
                                                                          
                </div>
            </div> 

            <div class="tab-pane fade" id="Thailand">
                <div class="container">
                    <div class="col-md-12 room-wrap">
                        <br>
                        <div class="row">
                            <div class="col-md-6 d-flex ftco-animate">
                                <p><img src="${contextPath}/resources/images/travelInfo/Thailand.jpg" alt="" class="img-fluid"></p>
                            </div>
                            <div class="col-md-6 ftco-animate">
                                <div class="text py-2">
                                    <h2>Thailand</h2>
                                    <p>태국(타이, Thailand)은 동남아시아 중심부에 위치해 인도차이나와 미얀마, 그리고 중국 남부 지역의 관문 역할을 한다.</p>
                                </div>
                            </div>

                            <div class="col-md-8 col-lg-12 ftco-animate">
                                <br><br>
                                <h4>태국 여행 기초정보</h4>
                                <p>떠나기 전 미리 알아두면 좋을 여행정보</p>
                                
                                <br>
                                
                                <p><i class="icon-home"></i>&nbsp; 수도&nbsp; : &nbsp;방콕</p>
                                <p><i class="icon-user"></i>&nbsp; 인구&nbsp; : &nbsp;6천 9백만 명</p>
                                <p><i class="icon-font"></i>&nbsp; 언어&nbsp; : &nbsp;태국어</p>
                                <c:set var="now" value="<%= new java.util.Date() %>" />																								
								<fmt:setTimeZone value="Asia/Bangkok"/>
                                <p><i class="icon-history"></i>&nbsp; 시차&nbsp; : &nbsp; <fmt:formatDate value="${now}" type="time" dateStyle="full" timeStyle="full" /></p>
                                <p><i class="icon-won"></i>&nbsp; 통화&nbsp; : &nbsp;바트(THB)</p>
                                <p><i class="icon-won"></i>&nbsp; 환율&nbsp; : &nbsp;1바트(THB) = 38.77원</p>
                                <p><i class="icon-sun-o"></i>&nbsp; 기후&nbsp; : &nbsp; 열대몬순기후로 강수량은 비교적 많은 편이다.</p>
                                <p><i class="icon-file-text"></i>&nbsp; 비자&nbsp; : &nbsp;90일 무비자</p>
                                <p><i class="icon-bolt"></i>&nbsp; 전압&nbsp; : &nbsp;110V, 60Hz</p>
                                
                                <br><br>
                                <h4>태국 날씨</h4>
                                <div class="row">
                                	<div class="col-md-4 col-lg-3" >
	                                	<img id="BangkokweatherImg" src="${contextPath}/resources/images/asd.jpg" width="120" height="120" >
	                                	<br>
	                                	<p id="Bangkokcity" style="margin-bottom: 0rem;"></p> 
	                                	<p id="Bangkoktemp" style="font-size: 30px; font-weight: bold; color: black; margin-bottom: 0rem;"></p>
	                                </div>
	                                <div class="col-md-4 col-lg-3" >
	                                	<img id="ChiangMaiweatherImg" src="${contextPath}/resources/images/asd.jpg" width="120" height="120" >
	                                	<br>
	                                	<p id="ChiangMaicity" style="margin-bottom: 0rem;"></p> 
	                                	<p id="ChiangMaitemp" style="font-size: 30px; font-weight: bold; color: black; margin-bottom: 0rem;"></p>
	                                </div>
	                                <div class="col-md-4 col-lg-3" >
	                                	<img id="HuaHinweatherImg" src="${contextPath}/resources/images/asd.jpg" width="120" height="120" >
	                                	<br>
	                                	<p id="HuaHincity" style="margin-bottom: 0rem;"></p> 
	                                	<p id="HuaHintemp" style="font-size: 30px; font-weight: bold; color: black; margin-bottom: 0rem;"></p>
	                                </div>
                                </div>
                                
                                <script>
	                                var apiURI13 = "http://api.openweathermap.org/data/2.5/weather?q="+"Bangkok"+"&appid="+"0f7dfa7413698f15336248906624e173";
	                                var Bangkoktemp2 = document.getElementById("Bangkoktemp");                                
	                                var Bangkokcity2 = document.getElementById("Bangkokcity");
	                                var BangkokweatherImg2 = document.getElementById("BangkokweatherImg");
										$.ajax({
										    url: apiURI13,
										    dataType: "json",
										    type: "GET",
										    async: "false",
										    success: function(resp) {
										    	
										    	var Bangkoktemp = String((resp.main.temp- 273.15)).substring(0,4)+"℃"; // 온도
										    	var Bangkokcity = resp.name;												    	
										   	
										    	Bangkoktemp2.innerHTML = Bangkoktemp;
										    	Bangkokcity2.innerHTML = Bangkokcity;										    											        							       
										        
										        if(resp.weather[0].main == "Clouds"){
										        	if(resp.weather[0].description == "few clouds"){
										        		$('#BangkokweatherImg').attr("src","${contextPath}/resources/images/weather/fewClouds.png");
										        	}else{
											        	$('#BangkokweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        	}
										        }
										        else if(resp.weather[0].main == "Clear"){
										        	$('#BangkokweatherImg').attr("src","${contextPath}/resources/images/weather/Clear.png")
										        }
										        else if(resp.weather[0].main == "Thunderstorm"){
										        	$('#BangkokweatherImg').attr("src","${contextPath}/resources/images/weather/Thunderstorm.png");
										        }else{
										        	$('#BangkokweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        }
										    }
										})																													      		      
								  </script>
								  <script>
	                                var apiURI14 = "http://api.openweathermap.org/data/2.5/weather?q="+"Chiang Mai"+"&appid="+"0f7dfa7413698f15336248906624e173";
	                                var ChiangMaitemp2 = document.getElementById("ChiangMaitemp");                                
	                                var ChiangMaicity2 = document.getElementById("ChiangMaicity");
	                                var ChiangMaiweatherImg2 = document.getElementById("ChiangMaiweatherImg");
										$.ajax({
										    url: apiURI14,
										    dataType: "json",
										    type: "GET",
										    async: "false",
										    success: function(resp) {
										    	
										    	var ChiangMaitemp = String((resp.main.temp- 273.15)).substring(0,4)+"℃"; // 온도
										    	var ChiangMaicity = resp.name;									    	
										   	
										    	ChiangMaitemp2.innerHTML = ChiangMaitemp;
										    	ChiangMaicity2.innerHTML = ChiangMaicity;										    											    	 
										        
										        if(resp.weather[0].main == "Clouds"){
										        	if(resp.weather[0].description == "few clouds"){
										        		$('#ChiangMaiweatherImg').attr("src","${contextPath}/resources/images/weather/fewClouds.png");
										        	}else{
											        	$('#ChiangMaiweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        	}
										        }
										        else if(resp.weather[0].main == "Clear"){
										        	$('#ChiangMaiweatherImg').attr("src","${contextPath}/resources/images/weather/Clear.png")
										        }
										        else if(resp.weather[0].main == "Thunderstorm"){
										        	$('#ChiangMaiweatherImg').attr("src","${contextPath}/resources/images/weather/Thunderstorm.png");
										        }else{
										        	$('#ChiangMaiweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        }
										    }
										})																													      		      
								  </script>
								  <script>
	                                var apiURI15 = "http://api.openweathermap.org/data/2.5/weather?q="+"Hua Hin"+"&appid="+"0f7dfa7413698f15336248906624e173";
	                                var HuaHintemp2 = document.getElementById("HuaHintemp");                                
	                                var HuaHincity2 = document.getElementById("HuaHincity");
	                                var HuaHinweatherImg2 = document.getElementById("HuaHinweatherImg");
										$.ajax({
										    url: apiURI15,
										    dataType: "json",
										    type: "GET",
										    async: "false",
										    success: function(resp) {
										    	
										    	var HuaHintemp = String((resp.main.temp- 273.15)).substring(0,4)+"℃"; // 온도
										    	var HuaHincity = resp.name;									    	
										   	
										    	HuaHintemp2.innerHTML = HuaHintemp;
										    	HuaHincity2.innerHTML = HuaHincity;
										    	/* 
										    	console.log(resp);
								                console.log("현재온도 : "+ (resp.main.temp- 273.15) );
								                console.log("현재습도 : "+ resp.main.humidity);
								                console.log("날씨 : "+ resp.weather[0].main );
								                console.log("상세날씨설명 : "+ resp.weather[0].description );
								                console.log("날씨 이미지 : "+ resp.weather[0].icon );
								                console.log("바람   : "+ resp.wind.speed );
								                console.log("나라   : "+ resp.sys.country );
								                console.log("도시이름  : "+ resp.name );
								                console.log("구름  : "+ (resp.clouds.all) +"%" );
										         */
										        if(resp.weather[0].main == "Clouds"){
										        	if(resp.weather[0].description == "few clouds"){
										        		$('#HuaHinweatherImg').attr("src","${contextPath}/resources/images/weather/fewClouds.png");
										        	}else{
											        	$('#HuaHinweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        	}
										        }
										        else if(resp.weather[0].main == "Clear"){
										        	$('#HuaHinweatherImg').attr("src","${contextPath}/resources/images/weather/Clear.png")
										        }
										        else if(resp.weather[0].main == "Thunderstorm"){
										        	$('#HuaHinweatherImg').attr("src","${contextPath}/resources/images/weather/Thunderstorm.png");
										        }else{
										        	$('#HuaHinweatherImg').attr("src","${contextPath}/resources/images/weather/Clouds.png");
										        }
										    }
										})																													      		      
								  </script>

                                <br><br>

                                
                            </div>
                            <br>
                        
                                                    
                        </div>                       
                    </div>   
                    <div class="col-md-12">
                        <h4>여행지 유의사항</h4>
                         
                        <ul>
                            <li>여권만료일이 도착일 기준으로 6개월이상 남아있어야 합니다.</li>
                            <br>
                            <li>일부 호텔 내에는 두리안, 망고스틴, 잭프룻 등의 과일이 반입 또는 섭취가 불가합니다.</li>
                        </ul>
                        <br>
                        <h5>방문 도시별 입국카드 작성법</h5>
                        <p style="text-align: center;">
                        <br>
                            <img src="${contextPath}/resources/images/travelInfo/Thailand_Entry.jpg">
                        </p>
                        <br><br>
                    </div>
                                                                          
                </div>
            </div>
        </div>

       

		<jsp:include page="../common/footer.jsp"/>      
    </body>


</html>