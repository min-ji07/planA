<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
    <title>ThemesDetails</title>
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
    <br><br>
    <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
    <jsp:include page="../common/header.jsp"/>  
    <form action="themeinsert.me" method="get" name="action" enctype="Multipart/form-data">  
        <section class="ftco-section " >
            <div class="container">
                <div class="row" style=" margin: auto;">
                    <div class="col-md-12 room-wrap">
                        <div class="row">
                            <div class="col-md-7 d-flex ftco-animate">
                                <div class="img align-self-stretch" style="background-image: url(${contextPath}/resources/images/${ Theme.cityPicture });"></div>
                            </div>
                            <div class="col-md-5 ftco-animate">
                                <div class="text py-5">
                                    <h3><a>${ Theme.themeName }</a></h3>
                                    <br>
                                    <div class="tagcloud">
                                        <a class="tag-cloud-link">${ Theme.category1 }</a>
                                        <a class="tag-cloud-link">${ Theme.category2 }</a>
                                        <a class="tag-cloud-link">${ Theme.category3 }</a>
                                        <a class="tag-cloud-link">${ Theme.category4 }</a>
                                    </div>
                                    
                                    <br><br><br>
                                    <div style="font-weight:500;padding-right:55px;">예상비용</div>
                                    <div style="font-weight:500;padding-right:55px;">(2박3일 , 1인 기준)</div>
                                    <span style=" font-size: 30px; font-weight: bold ;"><a>￦ ${ Theme.cost }</a></span>
                                    <br><br>
                                    <p><a href="javascript:action.submit();" class="btn btn-secondary">추천 테마로 짜기</a> <a href="myRouteInsertView.me" class="btn btn-primary">나만의 계획 짜기</a></p>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section" style="padding-top:0em;">
            <div class="container" >
                <div class="row" >
                    <div class="col-md-12 heading-section text-center ftco-animate">                      
                        <span class="subheading">Tama &amp; Info</span>
                        <h2 class="mb-4">호텔정보</h2>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-lg-4 ftco-animate">
                                <br><br><br><br>
                                <div class="project">
                                    <div class="img">
                                        <a onclick="dongSukso();" id="betcong"><img src="${contextPath}/resources/images/${ Theme.room1_picture1 }" class="img-fluid" alt="Colorlib Template" value="betcong"></a>
                                    </div>
                                    <div class="text">
                                        <h4 class="price">추천</h4>
                                        <span>Hotel</span>
                                        <h3><a href="hotel.html">${ Theme.room1 }</a></h3>
                                    </div>
                                    <a href="images/TaipeiHotel_1.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
                                        <span class="icon-expand"></span>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4 ftco-animate">
                                <br><br><br><br>
                                <div class="project">
                                    <div class="img">
                                        <a onclick="dongSukso1();"><img src="${contextPath}/resources/images/${ Theme.room2_picture1 }" class="img-fluid" alt="Colorlib Template"></a>
                                    </div>
                                    <div class="text">
                                        <span>Hotel</span>
                                        <h3><a href="hotel.html">${ Theme.room2 }</a></h3>
                                    </div>
                                    <a href="images/hotel-2.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
                                        <span class="icon-expand"></span>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4 ftco-animate">
                                <br><br><br><br>
                                <div class="project">
                                    <div class="img">
                                        <a onclick="dongSukso2();"><img src="${contextPath}/resources/images/${ Theme.room3_picture1 }" class="img-fluid" alt="Colorlib Template"></a>
                                    </div>
                                    <div class="text">
                                        <span>Hotel</span>
                                        <h3><a href="hotel.html">${ Theme.room3 }</a></h3>
                                    </div>
                                    <a href="images/hotel-3.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
                                        <span class="icon-expand"></span>
                                    </a>
                                </div>
                            </div>
									<input type="hidden" id="themeName" name="themeName" value="${ Theme.themeName }">
									<input type="hidden" id="country" name="country" value="${ Theme.country }"> 
									<input type="hidden" id="city" name="city" value="${ Theme.city }">
                                    <input type="hidden" id="category1" name="category1" value="${ Theme.category1 }">
                                    <input type="hidden" id="category2" name="category2" value="${ Theme.category2 }">
                                    <input type="hidden" id="category3" name="category3" value="${ Theme.category3 }">
                                    <input type="hidden" id="category4" name="category4" value="${ Theme.category4 }">
                                    <input type="hidden" id="room" name="room" value="${ Theme.room1 }">
                                    <input type="hidden" id="room_picture1" name="room_picture1" value="${ Theme.room1_picture1 }">
                                    <input type="hidden" id="room_picture2" name="room_picture2" value="${ Theme.room1_picture2 }">
                                    <input type="hidden" id="room_picture3" name="room_picture3" value="${ Theme.room1_picture3 }">
                                    <input type="hidden" id="room_picture4" name="room_picture4" value="${ Theme.room1_picture4 }">
                                    <input type="hidden" id="room_picture5" name="room_picture5" value="${ Theme.room1_picture5 }">
                                    <input type="hidden" id="room_wifi" name="room_wifi" value="${ Theme.room1_wifi }">
                                    <input type="hidden" id="room_bf" name="room_bf" value="${ Theme.room1_bf }">
                                    <input type="hidden" id="room_refund" name="room_refund" value="${ Theme.room1_refund }">
                                    <input type="hidden" id="room_safe" name="room_safe" value="${ Theme.room1_safe }">
                                    <input type="hidden" id="room_pool" name="room_pool" value="${ Theme.room1_pool }">
                                    <input type="hidden" id="activity" name="activity" value="${ Theme.tour1 }">
									<input type="hidden" id="activity_picture" name="activity_picture" value="${ Theme.tour1_picture1 }">
									<input type="hidden" id="activity_info" name="activity_info" value="${ Theme.tour1_info }">
									<input type="hidden" id="tour" name="tour" value="${ Theme.activity1 }">
									<input type="hidden" id="tour_picture" name="tour_picture" value="${ Theme.activity1_picture1 }">
									<input type="hidden" id="tour_info" name="tour_info" value="${ Theme.activity1_info }">
                                    
                            <script>
                            function dongSukso(){ 
                                var sukso = document.getElementById("sukso");
                                var sukso1 = document.getElementById("sukso1");
                                var sukso2 = document.getElementById("sukso2");
                                if(sukso.style.display == "block"){
                                    sukso.style.display = "none";
                                }else{
                                    sukso.style.display = "block";
                                    sukso1.style.display = "none";
                                    sukso2.style.display = "none";
                                }
                                
                            };
                            </script>
                            <script>
                            function dongSukso1(){
                            	var sukso = document.getElementById("sukso");
                                var sukso1 = document.getElementById("sukso1");
                                var sukso2 = document.getElementById("sukso2");
                                if(sukso1.style.display == "block"){
                                    sukso1.style.display = "none";
                                }else{
                                    sukso1.style.display = "block";
                                    sukso.style.display = "none";
                                    sukso2.style.display = "none";
                                }
                                
                            };
                            </script>
                            <script>
                            function dongSukso2(){
                            	var sukso = document.getElementById("sukso");
                                var sukso1 = document.getElementById("sukso1");
                                var sukso2 = document.getElementById("sukso2");
                                if(sukso2.style.display == "block"){
                                    sukso2.style.display = "none";
                                }else{
                                    sukso2.style.display = "block";
                                    sukso.style.display = "none";
                                    sukso1.style.display = "none";
                                }
                                
                            };
                            </script>

                            <div id="sukso" style="display: none;">
                                <div class="row">
                                    <div class="col-md-12 room-wrap">
                                        <div class="row">
                                            <div class="col-md-6 d-flex ftco-animate" style="width: 500px; height: 500px;">
                                            <div class="img align-self-stretch" style="background-image: url(${contextPath}/resources/images/${ Theme.room1_picture1 });"></div>
                                            </div>
                                            <div class="col-md-5 ftco-animate">
                                                <div class="text">
                                                    <h3>${ Theme.room1 }</h3>
                                                    <br>
                                                    <div class="icon mr-3">
                                                        
                                                        <span class="icon-check"> Wi-fi : ${ Theme.room1_wifi }</span><br>
                                                        <span class="icon-check"> 안전금고 : ${ Theme.room1_safe }</span><br>
                                                        <span class="icon-check"> 아침식사 : ${ Theme.room1_bf }</span><br>
                                                        <span class="icon-check"> 취소 : ${ Theme.room1_refund }</span><br>
                                                        <span class="icon-check"> 수영장 : ${ Theme.room1_pool }</span><br>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-12 room-wrap room-wrap-thumb mt-4">
                                    
                                        <div class="row">
                                            <div class="col-md-3 ftco-animate">
                                                <a class="d-flex thumb">
                                                    <div class="img align-self-stretch" style="background-image: url(${contextPath}/resources/images/${ Theme.room1_picture2 });"></div>
                                                    <div class="text pl-3 py-3">
                                                        <h3>Facilities view1</h3>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-3 ftco-animate">
                                                <a class="d-flex thumb">
                                                    <div class="img align-self-stretch" style="background-image: url(${contextPath}/resources/images/${ Theme.room1_picture3 });"></div>
                                                    <div class="text pl-3 py-3">
                                                        <h3>Facilities view2</h3>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-3 ftco-animate">
                                                <a class="d-flex thumb">
                                                    <div class="img align-self-stretch" style="background-image: url(${contextPath}/resources/images/${ Theme.room1_picture4 });"></div>
                                                    <div class="text pl-3 py-3">
                                                        <h3>Facilities view3</h3>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-3 ftco-animate">
                                                <a class="d-flex thumb">
                                                    <div class="img align-self-stretch" style="background-image: url(${contextPath}/resources/images/${ Theme.room1_picture5 });"></div>
                                                    <div class="text pl-3 py-3">
                                                        <h3>Facilities view4</h3>
                                                    </div>
                                                </a>
                                            </div>
                                            
                                        </div>
                                    </div>

                                    <div class="col-md-12 room-wrap">
                                        <br><br>
                                        <hr>
                                        <h5><span class="icon-exclamation-circle"> 예약시 유의사항</span></h5>
                                        <ul>
                                            <li>
						                                                현재 국제적으로 통용되는 호텔 등급의 표기 기준은 없으며 일부 국가에서는 자국의 기준에 따라 등급표기를 하는 경우가 있습니다.
						                                                당사 일정표 및 호텔정보에 표기되는 호텔의 등급표기는 현지 호텔측으로부터 받은 등급 기준을 반영하여 정한 것으로 국제적으로
						                                                통용되는 등급은 아니며, 고객님의 선택의 편의를 도모하기 위함임을 양해바랍니다.
                                            </li>
                                            <li>
                                               	 본 정보는 호텔에 대한 전반적인 안내를 위한 것이며, 실제로 사용하시는 시설과는 이미지가 다를 수 있습니다
                                            </li>
                                        </ul>
                                        <hr>
                                    </div>
                                </div>
                            </div>
                            
                            <div id="sukso1" style="display: none;">
                                <div class="row1">
                                    <div class="col-md-12 room-wrap">
                                        <div class="row">
                                            <div class="col-md-6 d-flex ftco-animate" style="width: 500px; height: 500px;">
                                            <div class="img align-self-stretch" style="background-image: url(${contextPath}/resources/images/${ Theme.room2_picture1 });"></div>
                                            </div>
                                            <div class="col-md-5 ftco-animate">
                                                <div class="text">
                                                    <h3>${ Theme.room2 }</h3>
                                                    <br>
                                                    <div class="icon mr-3">
                                                        
                                                        <span class="icon-check"> Wi-fi : ${ Theme.room2_wifi }</span><br>
                                                        <span class="icon-check"> 안전금고 : ${ Theme.room2_safe }</span><br>
                                                        <span class="icon-check"> 아침식사 : ${ Theme.room2_bf }</span><br>
                                                        <span class="icon-check"> 취소 : ${ Theme.room2_refund }</span><br>
                                                        <span class="icon-check"> 수영장 : ${ Theme.room2_pool }</span><br>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-12 room-wrap room-wrap-thumb mt-4">
                                        <div class="row">
                                            <div class="col-md-3 ftco-animate">
                                                <a class="d-flex thumb">
                                                    <div class="img align-self-stretch" style="background-image: url(${contextPath}/resources/images/${ Theme.room2_picture2 });"></div>
                                                    <div class="text pl-3 py-3">
                                                        <h3>Facilities view1</h3>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-3 ftco-animate">
                                                <a class="d-flex thumb">
                                                    <div class="img align-self-stretch" style="background-image: url(${contextPath}/resources/images/${ Theme.room2_picture3 });"></div>
                                                    <div class="text pl-3 py-3">
                                                        <h3>Facilities view2</h3>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-3 ftco-animate">
                                                <a class="d-flex thumb">
                                                    <div class="img align-self-stretch" style="background-image: url(${contextPath}/resources/images/${ Theme.room2_picture4 });"></div>
                                                    <div class="text pl-3 py-3">
                                                        <h3>Facilities view3</h3>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-3 ftco-animate">
                                                <a class="d-flex thumb">
                                                    <div class="img align-self-stretch" style="background-image: url(${contextPath}/resources/images/${ Theme.room2_picture5 });"></div>
                                                    <div class="text pl-3 py-3">
                                                        <h3>Facilities view4</h3>
                                                    </div>
                                                </a>
                                            </div>
                                            
                                        </div>
                                    </div>

                                    <div class="col-md-12 room-wrap">
                                        <br><br>
                                        <hr>
                                        <h5><span class="icon-exclamation-circle"> 예약시 유의사항</span></h5>
                                        <ul>
                                            <li>
						                                                현재 국제적으로 통용되는 호텔 등급의 표기 기준은 없으며 일부 국가에서는 자국의 기준에 따라 등급표기를 하는 경우가 있습니다.
						                                                당사 일정표 및 호텔정보에 표기되는 호텔의 등급표기는 현지 호텔측으로부터 받은 등급 기준을 반영하여 정한 것으로 국제적으로
						                                                통용되는 등급은 아니며, 고객님의 선택의 편의를 도모하기 위함임을 양해바랍니다.
                                            </li>
                                            <li>
                                               	 본 정보는 호텔에 대한 전반적인 안내를 위한 것이며, 실제로 사용하시는 시설과는 이미지가 다를 수 있습니다
                                            </li>
                                        </ul>
                                        <hr>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>
                        
                        <div id="sukso2" style="display: none;">
                                <div class="row1">
                                    <div class="col-md-12 room-wrap">
                                        <div class="row">
                                            <div class="col-md-6 d-flex ftco-animate" style="width: 500px; height: 500px;">
                                            <div class="img align-self-stretch" style="background-image: url(${contextPath}/resources/images/${ Theme.room3_picture1 });"></div>
                                            </div>
                                            <div class="col-md-5 ftco-animate">
                                                <div class="text">
                                                    <h3>${ Theme.room3 }</h3>
                                                    <br>
                                                    <div class="icon mr-3">
                                                        
                                                        <span class="icon-check"> Wi-fi : ${ Theme.room3_wifi }</span><br>
                                                        <span class="icon-check"> 안전금고 : ${ Theme.room3_safe }</span><br>
                                                        <span class="icon-check"> 아침식사 : ${ Theme.room3_bf }</span><br>
                                                        <span class="icon-check"> 취소 : ${ Theme.room3_refund }</span><br>
                                                        <span class="icon-check"> 수영장 : ${ Theme.room3_pool }</span><br>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-12 room-wrap room-wrap-thumb mt-4">
                                        <div class="row">
                                            <div class="col-md-3 ftco-animate">
                                                <a class="d-flex thumb">
                                                    <div class="img align-self-stretch" style="background-image: url(${contextPath}/resources/images/${ Theme.room3_picture2 });"></div>
                                                    <div class="text pl-3 py-3">
                                                        <h3>Facilities view1</h3>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-3 ftco-animate">
                                                <a class="d-flex thumb">
                                                    <div class="img align-self-stretch" style="background-image: url(${contextPath}/resources/images/${ Theme.room3_picture3 });"></div>
                                                    <div class="text pl-3 py-3">
                                                        <h3>Facilities view2</h3>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-3 ftco-animate">
                                                <a class="d-flex thumb">
                                                    <div class="img align-self-stretch" style="background-image: url(${contextPath}/resources/images/${ Theme.room3_picture4 });"></div>
                                                    <div class="text pl-3 py-3">
                                                        <h3>Facilities view3</h3>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="col-md-3 ftco-animate">
                                                <a class="d-flex thumb">
                                                    <div class="img align-self-stretch" style="background-image: url(${contextPath}/resources/images/${ Theme.room3_picture5 });"></div>
                                                    <div class="text pl-3 py-3">
                                                        <h3>Facilities view4</h3>
                                                    </div>
                                                </a>
                                            </div>
                                            
                                        </div>
                                    </div>

                                    <div class="col-md-12 room-wrap">
                                        <br><br>
                                        <hr>
                                        <h5><span class="icon-exclamation-circle"> 예약시 유의사항</span></h5>
                                        <ul>
                                            <li>
						                                                현재 국제적으로 통용되는 호텔 등급의 표기 기준은 없으며 일부 국가에서는 자국의 기준에 따라 등급표기를 하는 경우가 있습니다.
						                                                당사 일정표 및 호텔정보에 표기되는 호텔의 등급표기는 현지 호텔측으로부터 받은 등급 기준을 반영하여 정한 것으로 국제적으로
						                                                통용되는 등급은 아니며, 고객님의 선택의 편의를 도모하기 위함임을 양해바랍니다.
                                            </li>
                                            <li>
                                               	 본 정보는 호텔에 대한 전반적인 안내를 위한 것이며, 실제로 사용하시는 시설과는 이미지가 다를 수 있습니다
                                            </li>
                                        </ul>
                                        <hr>
                                    </div>
                                </div>
                            </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section" style="padding-top:0em;">
                <div class="container">
                    <div class="row justify-content-center pb-5 pt-5">
                        <div class="col-md-12 heading-section text-center ftco-animate">
                            <br><br><br><br>
                            <span class="subheading">Tama &amp; Info</span>
                            <h2 class="mb-3">관광정보</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-lg-4 d-flex ftco-animate">
                            <div class="blog-entry justify-content-end">
                                <br>
                                <a class="block-20" style="background-image: url(${contextPath}/resources/images/${ Theme.tour1_picture1 });">
                                </a>
                                <div class="text float-right d-block">
                                    <h3 class="heading">${ Theme.tour1 }</h3>
                                    <p>${ Theme.tour1_info }</p>
                                </div>
                            </div>
                        </div>
                        <!-- <script>
                            function taipei(){
                                var taipeimodel = document.getElementById("taipei");
                                if(taipeimodel.style.display == "block"){
                                    taipeimodel.style.display = "none";
                                }else{
                                    taipeimodel.style.display = "block";
                                }
                                
                            };
                        </script> -->

                        <div class="col-md-6 col-lg-4 d-flex ftco-animate">
                            <div class="blog-entry justify-content-end">
                                <br>
                                <a class="block-20" style="background-image: url(${contextPath}/resources/images/${ Theme.tour2_picture1 });">
                                </a>
                                <div class="text float-right d-block"> 
                                    <h3 class="heading">${ Theme.tour2 }</h3>
                                    <p>${ Theme.tour2_info }</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 d-flex ftco-animate">
                            <div class="blog-entry">
                                <br>
                                <a class="block-20" style="background-image: url(${contextPath}/resources/images/${ Theme.tour3_picture1 });">
                                </a>
                                <div class="text float-right d-block">
                                    
                                    <h3 class="heading">${ Theme.tour3 }</h3>
                                    <p>${ Theme.tour3_info }</p>                                    
                                </div>
                            </div>
                        </div>
<!-- 
                        <div id="taipei" style="display: none;">
                            <div class="row">
                                <div class="col-md-10 room-wrap" style="margin: auto;">
                                    <div class="row">
                                        <div class="col-md-5 d-flex ftco-animate" style="width: 400px; height: 300px;">
                                            <div class="img align-self-stretch" style="background-image: url(images/Taipei_2_1.jpg);"></div>
                                        </div>
                                        <div class="col-md-7 ftco-animate">
                                            <div class="text">
                                                <h3><a href="hotel-single.html">용산사</a></h3>
                                                <p>타이페이에는 수 많은 사원들이 있는데 이 중 용산사는 가장 오래되고 전형적인 타이완의 사원이다. 멋진 건축양식 자체만으로도 둘러볼 가치가 있으며 돌기둥에는 조화롭게 조각된 용 뒤에 역사적 인물들의 춤추는 모습이 새겨져 있다. 이 곳에서는 매일 신도들이 피워놓은 진한 향 냄새와 더불어 대만인의 종교 생활을 가까이에서 접할 수 있다. 원래는 1740년에 건립된 것으로 자연 또는 인공적 재해를 입으면서 몇 차례 파괴되었다. 현재의 건물은 1957년에 지어진 것으로 매일 오전 7시에서 오후 10시까지 관람할 수 있으며, 유명한 뱀골목이 두 블록 정도 떨어진 곳에 위치해 있다.</p>
                                                <br>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <hr>
                                            <h4>부가정보</h4>
                                            <ul>
                                                <li>찾아가는길&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    : MRT 롱산스역 하차</li>
                                                <li>오픈시간/휴무일&nbsp;
                                                    :  07:00 ~ 22:00</li>
                                            </ul>
                                            <hr>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                    </div>
                </div>
        </section>

        <section class="ftco-section" style="padding-top:0em;">
                <div class="container">
                    <div class="row justify-content-center pb-5 pt-5">
                        <div class="col-md-12 heading-section text-center ftco-animate">
                            <br><br><br><br>
                            <span class="subheading">Tama &amp; Info</span>
                            <h2 class="mb-3">액티비티정보</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-lg-4 d-flex ftco-animate">
                            <div class="blog-entry justify-content-end">
                                <br>
                                <a class="block-20" style="background-image: url(${contextPath}/resources/images/${ Theme.activity1_picture1 });">
                                </a>
                                <div class="text float-right d-block">
                                    <h3 class="heading">${ Theme.activity1 }</h3>
                                    <p>${ Theme.activity1_info }</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-4 d-flex ftco-animate">
                            <div class="blog-entry justify-content-end">
                                <br>
                                <a class="block-20" style="background-image: url(${contextPath}/resources/images/${ Theme.activity2_picture1 });">
                                </a>
                                <div class="text float-right d-block"> 
                                    <h3 class="heading">${ Theme.activity2 }</h3>
                                    <p>${ Theme.activity2_info }</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 d-flex ftco-animate">
                            <div class="blog-entry">
                                <br>
                                <a class="block-20" style="background-image: url(${contextPath}/resources/images/${ Theme.activity3_picture1 });">
                                </a>
                                <div class="text float-right d-block">
                                    
                                    <h3 class="heading">${ Theme.activity3 }</h3>
                                    <p>${ Theme.activity3_info }</p>                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
      </form>
        <jsp:include page="../common/footer.jsp"/>
    </body>
</html>