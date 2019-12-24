<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Route</title>
</head>
<jsp:include page="../common/header.jsp"/>
   <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
    <section class="hero-wrap" style="background-image: url('${contextPath }/resources/images/bg_4.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-start">
          <div class="col-md-9 ftco-animate pb-4">
            <h1 class="mb-3 bread">MY ROUTE</h1>
            <p><a href="mCheckList.me" class="btn btn-primary py-2 px-4">뒤로가기</a> </p>
          </div>
        </div>
      </div>
    </section>
    <br>
      <section class="ftco-section">
           <div class="container">
               <div class="row justify-content-center pb-5">
                   <div class="col-md-12 heading-section text-center ftco-animate">
                     <span class="subheading">나만의 여행계획</span>
                     <h2 class="mb-4">${RouteResult.country} - ${RouteResult. city}</h2>
                     
                     <c:set var="category1" value="${RouteResult.category1}"/>
       				<c:if test="${category1 ne null}">
                     	<div class="tagcloud">
                       	<a class="tag-cloud-link">${RouteResult.category1}</a>
                       	<a class="tag-cloud-link">${RouteResult.category2}</a>
                       	<a class="tag-cloud-link">${RouteResult.category3}</a>
                       	<a class="tag-cloud-link">${RouteResult.category4}</a>
                     			</div>
                     	</c:if>
                     
                   </div>
                   </div>
       
             <div class="row">
                 <div class="col-md-12">
                   <div class="search-wrap-1 ftco-animate p-4">
                     <!-- 태그 -->
       				<c:set var="dep_airLine" value="${RouteResult.dep_airLine}"/>
       				<c:if test="${dep_airLine ne null}">
                      <!--항공권  -->
                      <div >
                         <section class="ftco-section" style="padding-top:0em;" >
                             <div class="container">
                               <div class="row justify-content-center pb-5">
                              <div class="col-md-12 heading-section text-center ftco-animate">
                               <span class="subheading">Air Ticket</span>
                               <h2 class="mb-4">항공권</h2>
                               <p>선택하신 항공권 입니다.</p>
                              </div>
                              </div>
                             </div>
                             <!-- 출국 -->
                             <div style=" width: 350px; float:left; margin-left:16%; margin-right:5%;">
                               <h3 class="mb-4">- 출국</h2>
                               <div style="border:1px solid #24A6BD; margin-bottom: 2em;"  >
                                   <div  class="box p-2 px-3 d-flex" style="background-color: #186686; ">
                                    <div class="icon mr-3">
                                     <span class="icon-fighter-jet"></span>
                                    </div>
                                    <div style="float: left;">
                                     <div style="display: inline;">
                                        <spen style="display: inline; color:#FFCD12">
                                         <a name="depDate">${RouteResult.dep_airDay}</a> | 직항편 |
                                         <a class="mb-3" style="display: inline;">귀국</a>
                                        </spen>
                                     </div>
                                    </div>
                                   </div>
                                   <div>
                                     <table style="width: 350px; margin-bottom: 0em; margin-top: 0px;">
                                        <tr>
                                        <td style="text-align:center; background:#DCEBF1; color:#186686 ; width: 7em;"><a name="depAirline">${RouteResult.dep_airLine}</a></td>
                                        <td rowspan="2" style="text-align: center;"><a name="depStart">인천(ICN)</a> -> <a name="depEnd">${RouteResult.dep_airPort}</a></td>
                                        </tr>
                                        <tr>
                                         <td style="text-align:center; background:#DCEBF1; color:#186686 ; width: 7em;"><a name="depTime">${RouteResult.dep_airTime}</a></td>
                                        </tr>
                                     </table>
                                    
                                   </div>
                                  </div>
             
                             </div>
             
                             <!-- 귀국 -->
                             <div style="float:left; ">
                               <h3 class="mb-4">- 귀국</h2>
                               <div style="border:1px solid #24A6BD; margin-bottom: 2em;" name="entname" onclick="ent(this);">
                                   <div  class="box p-2 px-3 d-flex" style="background-color: #186686; ">
                                    <div class="icon mr-3">
                                     <span class="icon-fighter-jet"></span>
                                    </div>
                                    <div style="float: left;">
                                     <div style="display: inline;">
                                        <spen style="display: inline; color:#FFCD12">
                                         <a name="entDate">${RouteResult.ent_airDay}</a> | 직항편 |
                                         <a class="mb-3" style="display: inline;">귀국</a>
                                        </spen>
                                     </div>
                                    </div>
                                   </div>
                                   <div>
                                     <table style="width: 350px; margin-bottom: 0em; margin-top: 0px;">
                                        <tr>
                                        <td style="text-align:center; background:#DCEBF1; color:#186686 ; width: 7em;"><a name="entAirline">${RouteResult.ent_airLine}</a></td>
                                        <td rowspan="2" style="text-align: center;"><a name="entStart">${RouteResult.ent_airPort}</a> -> <a name="entEnd">인천(ICN)</a></td>
                                        </tr>
                                        <tr>
                                         <td style="text-align:center; background:#DCEBF1; color:#186686 ; width: 7em;"><a name="entTime">${RouteResult.ent_airTime}</a></td>
                                        </tr>
                                     </table>
                                    
                                   </div>
                                  </div>
                                  </div>
                             
                              </section>
                       </div>
                   <br><br><br><br><br>
                   </c:if>
                 <!-- 숙소 -->
                 <div class="" id="" role="">
                     
                     <section class="ftco-section" style="padding-top:0em; padding-bottom:0em;">
                         <div class="container">
                           <div class="row justify-content-center pb-5" style="padding-bottom:0em;">
                           <div class="col-md-12 heading-section text-center ftco-animate">
                             <span class="subheading">Room</span>
                           <h2 class="mb-4">숙소</h2>
                           <p>선택하신 숙소 입니다.</p>
                           <br>
                           </div>
       
                           <!-- 다낭 -->
                           <div class="container">
                             <div class="row" id="danang">
                             </div>
                             <!-- 숙소1_1 -->
                             <div id="danangSukso1"  class="ftco-animate">
       
                               <section id="home-section " class="hero col-lg-12  " style="width: 700px; height:400px; margin-right: 0; float: left;">
                                   <div class="home-slider owl-carousel" style="width: 700px; height:400px; float: left;">
                                     <!-- 슬라이드 이미지 추가-->
                                     <div class="slider-item" style="width: 700px; float: left;">
                                       <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;">
                                         <div class="  no-gutters slider-text " data-scrollax-parent="true" style="width: 700px; height:400px; float: left;">
                                           
                                             <img src="${contextPath }/resources/images/${RouteResult.room_picture1}" width="700px" height="400px" style="float: left;" >
                                         </div>
                                       </div>
                                     </div>
                                     <!-- 슬라이드 이미지 추가-->
                                     <div class="slider-item" style="width: 700px; float: left;">
                                         <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;" >
                                           <div class="row d-flex no-gutters slider-text align-items-center " data-scrollax-parent="true" style="width: 700px; height:400px;">
                                             
                                               <img src="${contextPath }/resources/images/${RouteResult.room_picture2}" width="700px" height="400px">
                                           </div>
                                         </div>
                                       </div>
                                     <!-- 슬라이드 이미지 추가-->
                                     <div class="slider-item" style="width: 700px; float: left;">
                                         <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;">
                                           <div class="row d-flex no-gutters slider-text align-items-center " data-scrollax-parent="true" style="width: 700px; height:400px;">
                                             
                                               <img src="${contextPath }/resources/images/${RouteResult.room_picture3}" width="700px" height="400px">
                                           </div>
                                         </div>
                                       </div>
                                       <!-- 슬라이드 이미지 추가-->
                                     <div class="slider-item" style="width: 700px;  float: left;">
                                         <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;">
                                           <div class="row d-flex no-gutters slider-text align-items-center " data-scrollax-parent="true" style="width: 700px; height:400px;">
                                             
                                               <img src="${contextPath }/resources/images/${RouteResult.room_picture4}" width="700px" height="400px">
                                           </div>
                                         </div>
                                       </div>
                                       <!-- 슬라이드 이미지 추가-->
                                     <div class="slider-item" style="width: 700px; float: left;">
                                         <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;">
                                           <div class="row d-flex no-gutters slider-text align-items-center " data-scrollax-parent="true" style="width: 700px; height:400px;">
                                             
                                               <img src="${contextPath }/resources/images/${RouteResult.room_picture5}" width="700px" height="400px">
                                           </div>
                                         </div>
                                       </div>
                                     </div>
                                 </section>
                                 
                                 <div class="col-lg-4 justify-content-center room-wrap" style="float: right; margin: auto;">
                                   <div class="row" style="width: 300px; float: right; margin-right: 0px;">
                                     <!-- <div class="col-md-7 d-flex ftco-animate">
                                       <div class="img align-self-stretch" style="background-image: url(images/베트남_2베드룸_1.jpg);"></div>
                                     </div> -->
                                     
                                     <div class="ftco-animate" style="width: 400px; margin-right: 0px;">
                                       <div class="text py-5">
                                         
                                         <h3><a href="hotel-single.html">${RouteResult.room}</a></h3>
                                         <p class="pos">요금 <span class="price">&#8361;76,000</span>/1박</p>
                                         <div class="icon mr-3">
                                           <span class="icon-check"> Wi-fi : ${RouteResult.room_wifi}</span><br>
                                           <span class="icon-check"> 조식 : ${RouteResult.room_bf}</span><br>
                                           <span class="icon-check"> 취소환불 : ${RouteResult.room_refund}</span><br>
                                           <span class="icon-check"> 안전금고 : ${RouteResult.room_safe}</span><br>
                                           <span class="icon-check"> 수영장 : ${RouteResult.room_pool}</span><br><br>
                                         </div>
                                       </div>
                                     </div>
                                   </div>
                                   </div>
                                 </div>
       
       
                             </div>
                             </div>
                           </div>
                       </section>
                       
               </div>
               <!-- 액티비티 -->
               <div class="row justify-content-center pb-5">
                   <div class="col-md-12 heading-section text-center ftco-animate"  style="padding-top: 2em;">
                     <span class="subheading">Activity</span>
                     <h2 class="mb-4">액티비티</h2>
                     <p>선택하신 액티비티 입니다.</p>
                   </div>
                 </div>
               <div class="container">
                   <div class="container">
                 <div class="container">
                   <div class="row">
                     <div class="col-md-12 room-wrap">
                         <div class="row">
                           <div class=" d-flex ftco-animate" style="width: 500px; height: 300px;">
                             <div class="img align-self-stretch" style="background-image: url(${contextPath }/resources/images/${RouteResult.activity_picture});"></div>
                           </div>
                           <div class="col-md-6 ftco-animate" style="padding-left: 5%;">
                             <div class="text">
                               <h3><a href="#">${RouteResult.activity}</a></h3>
                               <p>${RouteResult.activity_info}</p>
                               
                             </div>
                           </div>
                         </div>
                       </div>
                       </div>
                       </div>
                   </div>
                 </div>
           <!-- 관광지 -->
           <div>
                 
               <div class="container">
                 <div class="row justify-content-center pb-5">
                   <div class="col-md-12 heading-section text-center ftco-animate"  style="padding-top: 5em;">
                     <span class="subheading">Toutrist</span>
                     <h2 class="mb-4">관광지</h2>
                     <p>선택하신 관광지 입니다.</p>
                   </div>
                 </div>
               </div>
               <div class="container">
                   <div class="container">
                 <div class="container">
                   <div class="row">
                     <div class="col-md-12 room-wrap">
                         <div class="row">
                           <div class=" d-flex ftco-animate" style="width: 500px; height: 300px;">
                             <div class="img align-self-stretch" style="background-image: url(${contextPath }/resources/images/${RouteResult.tour_picture});"></div>
                           </div>
                           <div class="col-md-6 ftco-animate" style="padding-left: 5%;">
                             <div class="text">
                               <h3><a href="#">${RouteResult.tour }</a></h3>
                               <p>${RouteResult.tour_info }</p>
                               
                             </div>
                           </div>
                         </div>
                       </div>
                       </div>
                       </div>
                   </div>
                 </div>
             </div>
       
       
               </div>
                 </div>
             </div>
           </div>
           </section><%-- 
           <jsp:include page="../common/footer.jsp"/> --%>
           
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