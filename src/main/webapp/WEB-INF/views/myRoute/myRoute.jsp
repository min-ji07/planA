<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>Plan A - 여행을 알차게!</title>
  </head>
  <jsp:include page="../common/header.jsp"/>
  <!-- 동하 탭 선택시 색상변경 -->
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
            /* background-color: #f2aab8c5; */
            background-color: #BF756A;
            /* border: 1px solid #f2aab8c5; */
            border: 1px solid #BF756A;
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
            text-align: center;
        }

        table.type10 thead th {
            width: 150px;
            padding: 10px;
            font-weight: bold;
            vertical-align: top;
            color: #fff;
            /* 컬럼색 */
            background: #b2bbc9;
            margin: 20px 10px;
        }
        table.type10 tbody th {
            width: 150px;
            padding: 10px;
            /* background: #E6E6E6; */
        }

        table.type10 td {
            width: 350px;
            padding: 10px;
            vertical-align: top;
            /* 밑 색 */
            /* background: #F5F5F5; */
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
        table.type10 th.tblreset {
            color: #ccc;
            border-collapse: collapse;
            border-top-left-radius: 1em;
            border-bottom-left-radius: 1em;
                overflow: hidden;
            background: #FAF4C0;
        }
        table.type10 th.tblsubmit {
            color: #ccc;
            border-collapse: collapse;
            border-top-right-radius: 1em;
            border-bottom-right-radius: 1em;
                overflow: hidden;
            background: #E4F7BA;
      
        }
   </style>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
  
  
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
        
    </nav>
    <section class="hero-wrap hero-wrap-2" style="background-image: url('${contextPath }/resources/images/bg_4.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-4">
            <h1 class="mb-3 bread">MyRoute</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a href="myRoute.html">myRoute </a></span> </p>
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
              <div class="element-animate">
               <div class="nav nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                 <a class="nav-link p-3 active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="ture"><span>01</span> 항공권</a>
                 <a class="nav-link p-3" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false"><span>02</span> 숙소</a>
                 <a class="nav-link p-3" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false"><span>03</span> 액티비티</a>
                 <a class="nav-link p-3" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false"><span>04</span> 관광지</a>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               </div>
               <br>
               <form action="myRouteInsert.mr" method="GET" name="action">
               <input name="country" value="${city.country}" style="display:none;"/>
               <input name="city" value="${city.city}" style="display:none;"/>
               <input id="roomInput" name="room" value="" style="display:none;"/>
               <input id="room_picture1Input" name="room_picture1" value="" style="display:none;"/>
               <input id="room_picture2Input" name="room_picture2" value="" style="display:none;"/>
               <input id="room_picture3Input" name="room_picture3" value="" style="display:none;"/>
               <input id="room_picture4Input" name="room_picture4" value="" style="display:none;"/>
               <input id="room_picture5Input" name="room_picture5" value="" style="display:none;"/>
               
               <input id="room_wifiInput" name="room_wifi" value="" style="display:none;"/>
               <input id="room_bfInput" name="room_bf" value="" style="display:none;"/>
               <input id="room_refundInput" name="room_refund" value="" style="display:none;"/>
               <input id="room_safeInput" name="room_safe" value="" style="display:none;"/>
               <input id="room_poolInput" name="room_pool" value="" style="display:none;"/>
               
               <input id="activityInput" name="activity" value="" style="display:none;"/>
               <input id="activity_pictureInput" name="activity_picture" value="" style="display:none;"/>
               <input id="activity_infoInput" name="activity_info" value="" style="display:none;"/>
               
               <input id="tourInput" name="tour" value="" style="display:none;"/>
               <input id="tour_pictureInput" name="tour_picture" value="" style="display:none;"/>
               <input id="tour_infoInput" name="tour_info" value="" style="display:none;"/>
               
               <input id="dep_airLineInput" name="dep_airLine" value="" style="display:none;"/>
               <input id="dep_airDayInput" name="dep_airDay" value="" style="display:none;"/>
               <input id="dep_airPortInput" name="dep_airPort" value="" style="display:none;"/>
               <input id="dep_airTimeInput" name="dep_airTime" value="" style="display:none;"/>
               
               <input id="ent_airLineInput" name="ent_airLine" value="" style="display:none;"/>
               <input id="ent_airDayInput" name="ent_airDay" value="" style="display:none;"/>
               <input id="ent_airPortInput" name="ent_airPort" value="" style="display:none;"/>
               <input id="ent_airTimeInput" name="ent_airTime" value="" style="display:none;"/>
               <table class="type10">
                     <thead>
                        <tr>
                              <th style="background: #fff;"></th>
                              <th style="background: #fff;"></th>
                              <th style="background: #fff;"></th>
                              <th style="background: #fff;"></th>
                           <th scope="cols" class="tblreset" ><a href="#" onclick="resetfn();" style="color:#FFA7A7">취소</a></th>
                           <th scope="cols" class="tblsubmit"><a href="javascript:action.submit();" style="color:#B2CCFF">저장</a></th>
                        </tr>
                        <tr>
                              <th style="background: #fff;"></th>
                              <th style="background: #fff;"></th>
                              <th style="background: #fff;"></th>
                              <th style="background: #fff;"></th>
                              <th style="background: #fff;"></th>
                              <th style="background: #fff;"></th>
                        </tr>
                     <tr>
                        <th scope="cols" style="border-top-left-radius: 1em;">나라</th>
                        <th scope="cols">도시</th>
                        <th scope="cols">인원</th>
                        <th scope="cols">숙소</th>
                        <th scope="cols">액티비티</th>
                        <th scope="cols" style="border-top-right-radius: 1em;">관광지</th>
                     </tr>
                     </thead>
                     <tbody>
                     <tr>
                        <td class="avenl" id="countryTag">${city.country}</td>
                        <td id="cityTag">${city.city}</td>
                        <td id="personnelTag">${rp.personnel }</td>
                        <td id = "hotelTag" name ="room"></td>
                        <td id = "activityTag" name="activity"></td>
                        <td id = "TouristTag"class="avenr" name="tour"></td>
                     </tr>
                     <thead>
                     <tr>   
                           <th scope="cols" class="aventl">비행날짜</th>
                           <th scope="cols">항공사</th>
                           <th scope="cols">이륙시간</th>
                           <th scope="cols">출국공항</th>
                           <th scope="cols"></th>
                           <th scope="cols" class="aventr">입국공항</th>
                     </tr>
                     </thead>
                     <tr class="airplan">
                           <td id="depDateTag" name="dep_airDay"></td>
                           <td id="depAirlineTag" name="dep_airLine"></td>
                           <td id="depTimeTag" name="dep_airTime"></td>
                           <td id="depStartTag"></td>
                           <td id="depArrowTag"></td>
                           <td id="depEndTag"name="dep_airPort_code"></td>
                     </tr>
                     <tr>
                           <td id="entDateTag" class="avenl" name="ent_airDay" ></td>
                           <td id="entAirlineTag" name="ent_airLine"></td>
                           <td id="entTimeTag" name="ent_airTime"></td>
                           <td id="entStartTag" name="ent_airPort_code"></td>
                           <td id="entArrowTag"></td>
                           <td id="entEndTag" class="avenr"></td>
                     </tr>
                     </tbody>
                  </table>
               </form>
              </div>
              <!-- 나만의 패키지 -->
              <script type="text/javascript">
                 function mypackage(){
                    
                 }

                 function countryfn(obj){
                    var country = document.getElementById("country");

                    var countryValue = country.options[country.selectedIndex].value;
                  
                    var countryTag = document.getElementById("countryTag");
                    console.log(country);
                    console.log(countryValue);
                    console.log(countryTag);
                    countryTag.innerHTML = countryValue;
					
                    var Vietnam = ["다낭","호치민","하노이"];
                    var Philippines = ["세부","보홀","보라카이"];
                    var China = ["홍콩","베이징","상해"];
                    var Japan = ["후쿠오카","오키나와","삿포로"];
                    var Thailand = ["방콕","치앙마이","후아힌"];
                    var Taiwan = ["타이페이","타이중","가오슝"];
                     
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
                    cityTag.innerHTML = "";

                    
                    
                 }

                  function cityfn(obj){
                   var city = document.getElementById("city");

                   var cityValue = city.options[city.selectedIndex].value;
                   var cityTag = document.getElementById("cityTag");
                   cityTag.innerHTML = cityValue;
                
                   console.log(cityValue);
                   /* document.getElementById("danangSk").style.display = "none";
                   document.getElementById("danangActivity").style.display = "none";
                   document.getElementById("danangTourist").style.display = "none"; */
                   if(cityValue == "다낭"){
                        /* document.getElementById("danangSk").style.display = "block";
                        document.getElementById("danangActivity").style.display = "block";
                        document.getElementById("danangTourist").style.display = "block"; */
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
                  <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                     
                  

                        <section class="ftco-section" style="padding-top:0em;" >
                              <div class="container">
                                    <div class="row justify-content-center pb-5">
                                 <div class="col-md-12 heading-section text-center ftco-animate">
                                    <span class="subheading">나만의 항공권</span>
                                    <h2 class="mb-4">항공권 상세 결과</h2>
                                    <p>나만의 항공권을 선택해주세요</p>
                                 </div>
                                 </div>
                              </div>
                              <!-- 출국 -->
                              <script>
                                    function dep(obj){
                                       var dep =document.getElementsByName("depname");
                                       var depDate = document.getElementsByName("depDate");
                                       var depAirline = document.getElementsByName("depAirline");
                                       var depTime = document.getElementsByName("depTime");
                                       var depStart = document.getElementsByName("depStart");
                                       var depEnd = document.getElementsByName("depEnd");
                                       
                                       for(var i in dep){
                                          if(obj == dep[i]){
                                             
                                             document.getElementById("depDateTag").innerHTML = depDate[i].innerHTML;
                                             document.getElementById("depAirlineTag").innerHTML = depAirline[i].innerHTML;
                                             document.getElementById("depTimeTag").innerHTML = depTime[i].innerHTML;
                                             document.getElementById("depStartTag").innerHTML = depStart[i].innerHTML;
                                             document.getElementById("depArrowTag").innerHTML = "→";
                                             document.getElementById("depEndTag").innerHTML = depEnd[i].innerHTML;
                                             var dep_airLineInput = document.getElementById("dep_airLineInput");
                                             dep_airLineInput.value = document.getElementById("depAirlineTag").innerHTML;
                                             
                                             var dep_airDayInput = document.getElementById("dep_airDayInput");
                                             dep_airDayInput.value = document.getElementById("depDateTag").innerHTML;
                                             
                                             var dep_airPortInput = document.getElementById("dep_airPortInput");
                                             dep_airPortInput.value = document.getElementById("depEndTag").innerHTML;
                                             
                                             var dep_airTimeInput = document.getElementById("dep_airTimeInput");
                                             dep_airTimeInput.value = document.getElementById("depTimeTag").innerHTML;
                                             
                                             alert("출국시간 : "+depDate[i].innerHTML+
                                            	   "\n항공사    : "+depAirline[i].innerHTML+
                                            	   "\n이륙시간 : "+depTime[i].innerHTML+
                                            	   "\n출국공항 : 인천(INC)"+
                                            	   "\n입국공항 : "+depEnd[i].innerHTML+
                                            	   "\n\n선택되었습니다."
                                            	   );
                                          }
                                       }
                                    }
                                 </script>
                              	<div style=" width: 350px; float:left; margin-left:16%; margin-right:5%;">
                                    <h3 class="mb-4">- 출국</h2>
                                    <c:forEach items="${airportCodeList}" var="AirportCode" varStatus="status">
                                    <div style="border:1px solid #24A6BD; margin-bottom: 2em;" name="depname" onclick="dep(this);">
                                          <div  class="box p-2 px-3 d-flex" style="background-color: #186686; ">
                                             <div class="icon mr-3">
                                                <span class="icon-fighter-jet"></span>
                                             </div>
                                             <div style="float: left;">
                                                <div style="display: inline;">
                                                   <spen style="display: inline; color:#FFCD12">
                                                      <a name="depDate">${AirportCode.estimatedDateTime}</a> | 직항편 |
                                                      <a class="mb-3" style="display: inline;">출국</a>
                                                   </spen>
                                                </div>
                                             </div>
                                          </div>
                                          <div>
                                                <table style="width: 350px; margin-bottom: 0em; margin-top: 0px;">
                                                   <tr>
                                                   <td style="text-align:center; background:#DCEBF1; color:#186686 ; width: 8em;"><a name="depAirline">${AirportCode.airline}</a></td>
                                                   <td rowspan="2" style="text-align: center;"><a name="depStart">인천(INC)</a> -> <a name="depEnd">${AirportCode.airport}(${AirportCode.airportcode})</a></td>
                                                   </tr>
                                                   <tr>
                                                      <td style="text-align:center; background:#DCEBF1; color:#186686 ; width: 8em;"><a name="depTime">${AirportCode.flyTime}</a></td>
                                                   </tr>
                                                </table>
                                             
                                          </div>
                                       </div>
                                       </c:forEach>

                              </div>

                              <!-- 귀국 -->
                              <script>
                                 function ent(obj){
                                    var ent =document.getElementsByName("entname");
                                    var entDate = document.getElementsByName("entDate");
                                    var entAirline = document.getElementsByName("entAirline");
                                    var entTime = document.getElementsByName("entTime");
                                    var entStart = document.getElementsByName("entStart");
                                    var entEnd = document.getElementsByName("entEnd");
                                    console.log(entDate);
                                    for(var i in ent){
                                       if(obj == ent[i]){
                                          
                                          document.getElementById("entDateTag").innerHTML = entDate[i].innerHTML;
                                          document.getElementById("entAirlineTag").innerHTML = entAirline[i].innerHTML;
                                          document.getElementById("entTimeTag").innerHTML = entTime[i].innerHTML;
                                          document.getElementById("entStartTag").innerHTML = entStart[i].innerHTML;
                                          document.getElementById("entArrowTag").innerHTML = "→";
                                          document.getElementById("entEndTag").innerHTML = entEnd[i].innerHTML;
                                          
                                          var ent_airLineInput = document.getElementById("ent_airLineInput");
                                          ent_airLineInput.value = document.getElementById("entAirlineTag").innerHTML;
                                          
                                          var ent_airDayInput = document.getElementById("ent_airDayInput");
                                          ent_airDayInput.value = document.getElementById("entDateTag").innerHTML;
                                          
                                          var ent_airPortInput = document.getElementById("ent_airPortInput");
                                          ent_airPortInput.value = document.getElementById("entEndTag").innerHTML;
                                          
                                          var ent_airTimeInput = document.getElementById("ent_airTimeInput");
                                          ent_airTimeInput.value = document.getElementById("entTimeTag").innerHTML;
                                          
                                          alert("출국시간 : "+entDate[i].innerHTML+
                                           	   "\n항공사    : "+entAirline[i].innerHTML+
                                           	   "\n이륙시간 : "+entTime[i].innerHTML+
                                           	   "\n출국공항 : "+entStart[i].innerHTML+
                                           	   "\n입국공항 : 인천(INC)"+
                                           	   "\n\n선택되었습니다."
                                           	   );
                                          
                                       }
                                    }
                                 }
                              </script>
                              <div style="float:left; ">
                                    <h3 class="mb-4">- 귀국</h2>
                                    <c:forEach items="${airportCodeList2}" var="AirportCode2" varStatus="status">
                                    
                                    <div style="border:1px solid #24A6BD; margin-bottom: 2em;" name="entname" onclick="ent(this);">
                                          <div  class="box p-2 px-3 d-flex" style="background-color: #186686; ">
                                             <div class="icon mr-3">
                                                <span class="icon-fighter-jet"></span>
                                             </div>
                                             <div style="float: left;">
                                                <div style="display: inline;">
                                                   <spen style="display: inline; color:#FFCD12">
                                                      <a name="entDate">${AirportCode2.estimatedDateTime}</a> | 직항편 |
                                                      <a class="mb-3" style="display: inline;">귀국</a>
                                                   </spen>
                                                </div>
                                             </div>
                                          </div>
                                          <div>
                                                <table style="width: 350px; margin-bottom: 0em; margin-top: 0px;">
                                                   <tr>
                                                   <td style="text-align:center; background:#DCEBF1; color:#186686 ; width: 8em;"><a name="entAirline">${AirportCode2.airline}</a></td>
                                                   <td rowspan="2" style="text-align: center;"><a name="entStart">${AirportCode2.airport}(${AirportCode2.airportcode})</a> -> <a name="entEnd">인천(INC)</a></td>
                                                   </tr>
                                                   <tr>
                                                      <td style="text-align:center; background:#DCEBF1; color:#186686 ; width: 8em;"><a name="entTime">${AirportCode2.flyTime}</a></td>
                                                   </tr>
                                                </table>
                                             
                                          </div>
                                       </div>
                                       </c:forEach>
                                       </div>
                              
                                 </section>
                  </div>
               <!-- 숙소 -->
               <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                     
                        <section class="ftco-section" style="padding-top:0em;">
                              <div class="container">
                                 <div class="row justify-content-center pb-5">
                                <div class="col-md-12 heading-section text-center ftco-animate">
                                   <span class="subheading">나만의 숙소</span>
                                 <h2 class="mb-4">숙소 상세 결과</h2>
                                 <p>나만의 숙소를 선택해 주세요</p>
                                 <br>
                                </div>
                                <script>
                                function dongSukso(obj){
                                    
                                    var sukso = document.getElementById(obj);
                                    console.log(obj)
                                    if(sukso == document.getElementById("danangSukso1")){
                                    	if(sukso.style.display == "none"){
                                    		sukso.style.display = "block";
                                    		document.getElementById("danangSukso2").style.display = "none";
                                        	document.getElementById("danangSukso3").style.display = "none";	
                                    	}else{
                                    		sukso.style.display = "none";
                                    		document.getElementById("danangSukso2").style.display = "none";
                                        	document.getElementById("danangSukso3").style.display = "none";	
                                    	}
                                    	
                                    }else if(sukso == document.getElementById("danangSukso2")){
                                    	if(sukso.style.display == "none"){
                                    		sukso.style.display = "block";
                                    		document.getElementById("danangSukso1").style.display = "none";
                                        	document.getElementById("danangSukso3").style.display = "none";	
                                    	}else{
                                    		sukso.style.display = "none";
                                    		document.getElementById("danangSukso1").style.display = "none";
                                        	document.getElementById("danangSukso3").style.display = "none";	
                                    	}
                                    }else if(sukso == document.getElementById("danangSukso3")){
                                    	if(sukso.style.display == "none"){
                                    		sukso.style.display = "block";
                                    		document.getElementById("danangSukso1").style.display = "none";
                                        	document.getElementById("danangSukso2").style.display = "none";	
                                    	}else{
                                    		sukso.style.display = "none";
                                    		document.getElementById("danangSukso1").style.display = "none";
                                        	document.getElementById("danangSukso2").style.display = "none";	
                                    	}
                                    }
                                    
                                 }
                                    function hotel(hotelId, room_picture1, room_picture2, room_picture3, room_picture4, room_picture5,
                                    		room_wifi,room_bf,room_refund,room_safe,room_pool){
                                    
                                    var hotelTag = document.getElementById("hotelTag");
                                    hotelTag.innerHTML = hotelId;
                                    var roomInput = document.getElementById("roomInput");
                                    roomInput.value = hotelId;
                                    
                                    var room_picture1Input = document.getElementById("room_picture1Input");
                                    room_picture1Input.value = room_picture1;
                                    
                                    var room_picture2Input = document.getElementById("room_picture2Input");
                                    room_picture2Input.value = room_picture2;
                                    
                                    var room_picture3Input = document.getElementById("room_picture3Input");
                                    room_picture3Input.value = room_picture3;
                                    
                                    var room_picture4Input = document.getElementById("room_picture4Input");
                                    room_picture4Input.value = room_picture4;
                                    
                                    var room_picture5Input = document.getElementById("room_picture5Input");
                                    room_picture5Input.value = room_picture5;
                                    
                                    var room_wifiInput = document.getElementById("room_wifiInput");
                                    room_wifiInput.value = room_wifi;
                                    
                                    var room_bfInput = document.getElementById("room_bfInput");
                                    room_bfInput.value = room_bf;
                                    
                                    var room_refundInput = document.getElementById("room_refundInput");
                                    room_refundInput.value = room_refund;
                                    
                                    var room_safeInput = document.getElementById("room_safeInput");
                                    room_safeInput.value = room_safe;
                                    
                                    var room_poolInput = document.getElementById("room_poolInput");
                                    room_poolInput.value = room_pool;
                                    
                                    alert("----숙소정보----\n"+hotelId+"\n\n선택되었습니다.");
                                    }
                                 </script>

                                <!-- 다낭 -->
                                <div class="container"  id="danangSk" style="display: block;">
                                    <div class="row" >
                                       <!-- 베트남_다낭_숙소1 -->
                                       <div class="col-md-6 col-lg-4 ftco-animate">
                                          <div class="project">
                                             <div class="img">
                                                <a onclick="dongSukso(this.name);" id="danangSukso" class="sukso" name="danangSukso1"><img src="${contextPath }/resources/images/${city.sukso1_picture1}" class="img-fluid" style="width: 407.98px; height: 419.96px;" alt="Colorlib Template" ></a>
                                             </div>
                                             <div class="text">
                                                
                                                <span>${city.city}</span>
                                                <h3><a href="hotel.html">${city.sukso1}</a></h3>
                                                <div class="star d-flex clearfix">
                                                   <div class="mr-auto float-left">
                                                      <span class="ion-ios-star"></span>
                                                      <span class="ion-ios-star"></span>
                                                      <span class="ion-ios-star"></span>
                                                      <span class="ion-ios-star"></span>
                                                      <span class="ion-ios-star"></span>
                                                   </div>
                                                </div>
                                             </div>
                                             
                                          </div>
                                       </div>
                                       <!-- 베트남_다낭_숙소2 -->
                                       <div class="col-md-6 col-lg-4 ftco-animate">
                                          <div class="project">
                                             <div class="img"  >
                                                   <a onclick="dongSukso(this.name);" id="danangSukso" name="danangSukso2"><img src="${contextPath }/resources/images/${city.sukso2_picture1}" class="img-fluid" style="width: 407.98px; height: 419.96px;" alt="Colorlib Template" value="betcong"></a>
                                                </div>
                                                <div class="text">
                                                   
                                                   <span>${city.city}</span>
                                                   <h3><a href="hotel.html">${city.sukso2}</a></h3>
                                                   <div class="star d-flex clearfix">
                                                      <div class="mr-auto float-left">
                                                         <span class="ion-ios-star"></span>
                                                         <span class="ion-ios-star"></span>
                                                         <span class="ion-ios-star"></span>
                                                         <span class="ion-ios-star"></span>
                                                         <span class="ion-ios-star"></span>
                                                      </div>
                                                   </div>
                                                </div>
                                                
                                             </div>
                                          </div>
                                       <!-- 베트남_다낭_숙소3 -->
                                       <div class="col-md-6 col-lg-4 ftco-animate">
                                             <div class="project">
                                                <div class="img">
                                                      <a onclick="dongSukso(this.name);" id="danangSukso" name="danangSukso3"><img src="${contextPath }/resources/images/${city.sukso3_picture1}" class="img-fluid" style="width: 407.98px; height: 419.96px;" alt="Colorlib Template" value="betcong"></a>
                                                   </div>
                                                   <div class="text">
                                                      
                                                      <span>${city.city}</span>
                                                      <h3><a href="hotel.html">${city.sukso3}</a></h3>
                                                      <div class="star d-flex clearfix">
                                                         <div class="mr-auto float-left">
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                            <span class="ion-ios-star"></span>
                                                         </div>
                                                      </div>
                                                   </div>
                                                  
                                                </div>
                                             </div>

                                             <!-- 다낭 숙소_리스트 끝 -->
                                    </div>
                                    <!-- 다낭숙소1 -->
                                    <div id="danangSukso1" name="sukso" style="display: none;" class="sukso">
                                       <div class="row justify-content-center pb-5 pt-5">
                                          <div class="col-md-12 heading-section text-center ftco-animate">
                                             <span class="subheading">Rooms &amp; Suites</span>
                                             <h2 class="mb-4">${city.sukso1}</h2>
                                             <p>${city.country} ${city.city}</p>
                                          </div>
                                       </div>

                                       <section id="home-section " class="hero col-lg-12 " style="width: 700px; height:400px; margin-right: 0; float: left;">
                                             <div class="home-slider owl-carousel" style="width: 700px; height:400px; float: left;">
                                                <!-- 슬라이드 이미지 추가-->
                                                <div class="slider-item" style="width: 700px; float: left;">
                                                   <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;">
                                                      <div class="  no-gutters slider-text " data-scrollax-parent="true" style="width: 700px; height:400px; float: left;">
                                                         
                                                            <img src="${contextPath }/resources/images/${city.sukso1_picture1}" width="700px" height="400px" style="float: left;" >
                                                      </div>
                                                   </div>
                                                </div>
                                                <!-- 슬라이드 이미지 추가-->
                                                <div class="slider-item" style="width: 700px; ">
                                                      <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;">
                                                         <div class="row d-flex no-gutters slider-text align-items-center " data-scrollax-parent="true" style="width: 700px; height:400px; float: left;">
                                                            
                                                               <img src="${contextPath }/resources/images/${city.sukso1_picture2}" width="700px" height="400px">
                                                         </div>
                                                      </div>
                                                   </div>
                                                <!-- 슬라이드 이미지 추가-->
                                                <div class="slider-item" style="width: 700px; ">
                                                      <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;">
                                                         <div class="row d-flex no-gutters slider-text align-items-center " data-scrollax-parent="true" style="width: 700px; height:400px;">
                                                            
                                                               <img src="${contextPath }/resources/images/${city.sukso1_picture3}" width="700px" height="400px">
                                                         </div>
                                                      </div>
                                                   </div>
                                                   <!-- 슬라이드 이미지 추가-->
                                                <div class="slider-item" style="width: 700px; ">
                                                      <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;">
                                                         <div class="row d-flex no-gutters slider-text align-items-center " data-scrollax-parent="true" style="width: 700px; height:400px;">
                                                            
                                                               <img src="${contextPath }/resources/images/${city.sukso1_picture4}" width="700px" height="400px">
                                                         </div>
                                                      </div>
                                                   </div>
                                                   <!-- 슬라이드 이미지 추가-->
                                                <div class="slider-item" style="width: 700px; ">
                                                      <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;">
                                                         <div class="row d-flex no-gutters slider-text align-items-center " data-scrollax-parent="true" style="width: 700px; height:400px;">
                                                            
                                                               <img src="${contextPath }/resources/images/${city.sukso1_picture5}" width="700px" height="400px">
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
                                                     
                                                     <h3><a href="hotel-single.html">${city.sukso1}</a></h3>
                                                     <p class="pos">요금 <span class="price">&#8361;76,000</span>/1박</p>
                                                     <div class="icon mr-3">
                                                        <span class="icon-check"> Wi-fi : ${city.sukso1_wifi }</span><br>
                                                        <span class="icon-check"> 조식 : ${city.sukso1_bf }</span><br>
                                                        <span class="icon-check"> 취소환불 : ${city.sukso1_refund }</span><br>
                                                        <span class="icon-check"> 안전금고 : ${city.sukso1_safe }</span><br>
                                                        <span class="icon-check"> 수영장 : ${city.sukso1_pool }</span><br><br>
                                                     </div>
                                                     <p><a id="${city.sukso1}" onclick="hotel(this.id,'${city.sukso1_picture1}','${city.sukso1_picture2}',
                                                     '${city.sukso1_picture3}','${city.sukso1_picture4}','${city.sukso1_picture5}',
                                                     '${city.sukso1_wifi }','${city.sukso1_bf}','${city.sukso1_refund}','${city.sukso1_safe}','${city.sukso1_pool }');" class="btn btn-secondary">선택</a></p>
                                                     
                                                  </div>
                                               </div>
                                            </div>
                                            </div>
                                         </div>
                                         <!-- 숙소1 끝 -->
                                         <!-- 다낭숙소2 -->
                                    <div id="danangSukso2" style="display: none;" class="sukso">
                                       <div class="row justify-content-center pb-5 pt-5">
                                          <div class="col-md-12 heading-section text-center ftco-animate">
                                             <span class="subheading">Rooms &amp; Suites</span>
                                             <h2 class="mb-4">${city.sukso2}</h2>
                                             <p>${city.country} ${city.city}</p>
                                          </div>
                                       </div>

                                       <section id="home-section " class="hero col-lg-12 " style="width: 700px; height:400px; margin-right: 0; float: left;">
                                             <div class="home-slider owl-carousel" style="width: 700px; height:400px; float: left;">
                                                <!-- 슬라이드 이미지 추가-->
                                                <div class="slider-item" style="width: 700px; float: left;">
                                                   <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;">
                                                      <div class="  no-gutters slider-text " data-scrollax-parent="true" style="width: 700px; height:400px; float: left;">
                                                         
                                                            <img src="${contextPath }/resources/images/${city.sukso2_picture1}" width="700px" height="400px" style="float: left;" >
                                                      </div>
                                                   </div>
                                                </div>
                                                <!-- 슬라이드 이미지 추가-->
                                                <div class="slider-item" style="width: 700px; ">
                                                      <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;">
                                                         <div class="row d-flex no-gutters slider-text align-items-center " data-scrollax-parent="true" style="width: 700px; height:400px;">
                                                            
                                                               <img src="${contextPath }/resources/images/${city.sukso2_picture2}" width="700px" height="400px">
                                                         </div>
                                                      </div>
                                                   </div>
                                                <!-- 슬라이드 이미지 추가-->
                                                <div class="slider-item" style="width: 700px; ">
                                                      <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;">
                                                         <div class="row d-flex no-gutters slider-text align-items-center " data-scrollax-parent="true" style="width: 700px; height:400px;">
                                                            
                                                               <img src="${contextPath }/resources/images/${city.sukso2_picture3}" width="700px" height="400px">
                                                         </div>
                                                      </div>
                                                   </div>
                                                   <!-- 슬라이드 이미지 추가-->
                                                <div class="slider-item" style="width: 700px; ">
                                                      <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;">
                                                         <div class="row d-flex no-gutters slider-text align-items-center " data-scrollax-parent="true" style="width: 700px; height:400px;">
                                                            
                                                               <img src="${contextPath }/resources/images/${city.sukso2_picture4}" width="700px" height="400px">
                                                         </div>
                                                      </div>
                                                   </div>
                                                   <!-- 슬라이드 이미지 추가-->
                                                <div class="slider-item" style="width: 700px; ">
                                                      <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;">
                                                         <div class="row d-flex no-gutters slider-text align-items-center " data-scrollax-parent="true" style="width: 700px; height:400px;">
                                                            
                                                               <img src="${contextPath }/resources/images/${city.sukso2_picture5}" width="700px" height="400px">
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                          </section>
                                          
                                          <div class="col-lg-4 justify-content-center room-wrap" style="float: right; margin: auto;">
                                            <div class="row" style="width: 300px; float: right; margin-right: 0px;">
                                               
                                               <div class="ftco-animate" style="width: 400px; margin-right: 0px;">
                                                  <div class="text py-5">
                                                     
                                                     <h3><a href="hotel-single.html">${city.sukso2}</a></h3>
                                                     <p class="pos">요금 <span class="price">&#8361;76,000</span>/1박</p>
                                                     <div class="icon mr-3">
                                                        <span class="icon-check"> Wi-fi : ${city.sukso2_wifi }</span><br>
                                                        <span class="icon-check"> 조식 : ${city.sukso2_bf }</span><br>
                                                        <span class="icon-check"> 취소환불 : ${city.sukso2_refund }</span><br>
                                                        <span class="icon-check"> 안전금고 : ${city.sukso2_safe }</span><br>
                                                        <span class="icon-check"> 수영장 : ${city.sukso2_pool }</span><br><br>
                                                     </div>
                                                     <p><a id="${city.sukso2}" onclick="hotel(this.id,'${city.sukso2_picture1}','${city.sukso2_picture2}',
                                                     '${city.sukso2_picture3}','${city.sukso2_picture4}','${city.sukso2_picture5}',
                                                     '${city.sukso2_wifi }','${city.sukso2_bf}','${city.sukso2_refund}','${city.sukso2_safe}','${city.sukso2_pool }');" class="btn btn-secondary">선택</a></p>
                                                     
                                                  </div>
                                               </div>
                                            </div>
                                            </div>
                                         </div>
                                         <!-- 숙소2 끝 -->
                                          <!-- 다낭숙소3 -->
                                    <div id="danangSukso3" style="display: none;" class="sukso">
                                       <div class="row justify-content-center pb-5 pt-5">
                                          <div class="col-md-12 heading-section text-center ftco-animate">
                                             <span class="subheading">Rooms &amp; Suites</span>
                                             <h2 class="mb-4">${city.sukso3}</h2>
                                             <p>${city.country} ${city.city}</p>
                                          </div>
                                       </div>

                                       <section id="home-section " class="hero col-lg-12 " style="width: 700px; height:400px; margin-right: 0; float: left;">
                                             <div class="home-slider owl-carousel" style="width: 700px; height:400px; float: left;">
                                                <!-- 슬라이드 이미지 추가-->
                                                <div class="slider-item" style="width: 700px; float: left;">
                                                   <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;">
                                                      <div class="  no-gutters slider-text " data-scrollax-parent="true" style="width: 700px; height:400px; float: left;">
                                                         
                                                            <img src="${contextPath }/resources/images/${city.sukso3_picture1}" width="700px" height="400px" style="float: left;" >
                                                      </div>
                                                   </div>
                                                </div>
                                                <!-- 슬라이드 이미지 추가-->
                                                <div class="slider-item" style="width: 700px; ">
                                                      <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;">
                                                         <div class="row d-flex no-gutters slider-text align-items-center " data-scrollax-parent="true" style="width: 700px; height:400px;">
                                                            
                                                               <img src="${contextPath }/resources/images/${city.sukso3_picture2}" width="700px" height="400px">
                                                         </div>
                                                      </div>
                                                   </div>
                                                <!-- 슬라이드 이미지 추가-->
                                                <div class="slider-item" style="width: 700px; ">
                                                      <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;">
                                                         <div class="row d-flex no-gutters slider-text align-items-center " data-scrollax-parent="true" style="width: 700px; height:400px;">
                                                            
                                                               <img src="${contextPath }/resources/images/${city.sukso3_picture3}" width="700px" height="400px">
                                                         </div>
                                                      </div>
                                                   </div>
                                                   <!-- 슬라이드 이미지 추가-->
                                                <div class="slider-item" style="width: 700px; ">
                                                      <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;">
                                                         <div class="row d-flex no-gutters slider-text align-items-center " data-scrollax-parent="true" style="width: 700px; height:400px;">
                                                            
                                                               <img src="${contextPath }/resources/images/${city.sukso3_picture4}" width="700px" height="400px">
                                                         </div>
                                                      </div>
                                                   </div>
                                                   <!-- 슬라이드 이미지 추가-->
                                                <div class="slider-item" style="width: 700px; ">
                                                      <div class="container-fluid " style="width: 700px; height:400px; padding:0px; float: left;">
                                                         <div class="row d-flex no-gutters slider-text align-items-center " data-scrollax-parent="true" style="width: 700px; height:400px;">
                                                            
                                                               <img src="${contextPath }/resources/images/${city.sukso3_picture5}" width="700px" height="400px">
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
                                                     
                                                     <h3><a href="hotel-single.html">${city.sukso2}</a></h3>
                                                     <p class="pos">요금 <span class="price">&#8361;54,000</span>/1박</p>
                                                     <div class="icon mr-3">
                                                        <span class="icon-check"> Wi-fi : ${city.sukso3_wifi }</span><br>
                                                        <span class="icon-check"> 조식 : ${city.sukso3_bf }</span><br>
                                                        <span class="icon-check"> 취소환불 : ${city.sukso3_refund }</span><br>
                                                        <span class="icon-check"> 안전금고 : ${city.sukso3_safe }</span><br>
                                                        <span class="icon-check"> 수영장 : ${city.sukso3_pool }</span><br><br>
                                                     </div>
                                                     <p><a id="${city.sukso3}" onclick="hotel(this.id,'${city.sukso3_picture1}','${city.sukso3_picture2}',
                                                     '${city.sukso3_picture3}','${city.sukso3_picture4}','${city.sukso3_picture5}',
                                                     '${city.sukso3_wifi }','${city.sukso3_bf}','${city.sukso3_refund}','${city.sukso3_safe}','${city.sukso3_pool }');" class="btn btn-secondary">선택</a></p>
                                                     
                                                  </div>
                                               </div>
                                            </div>
                                            </div>
                                         </div>
                                         <!-- 숙소3 끝 -->
                                    </div>
                                    <!-- 다낭 끝 -->
                               
                                    </div>
                                 </div>
                           </section>
                           
               </div>
               <!-- 액티비티 -->
               <script>
                     function activity(clicked_id,activity_picture,activity_info){
                        var activityTag = document.getElementById("activityTag");
                         activityTag.innerHTML = clicked_id;
                        document.getElementById("activityInput").value = clicked_id;
                        document.getElementById("activity_pictureInput").value = activity_picture;
                        document.getElementById("activity_infoInput").value = activity_info;
                        
                        alert("----액티비티 정보----\n"+clicked_id+"\n\n선택되었습니다.");
                     }
                  </script>
                  
               <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                     
                           <div class="col-md-12 heading-section text-center ftco-animate">
                                 <span class="subheading">나만의 액티비티</span>
                                <h2 class="mb-4">액티비티 상세 결과</h2>
                                <p>나만의 액티비티를 선택해 주세요</p>
                              </div>
                              <br>
                              <!-- 베트남_다낭_액티비티_시작 -->
                        <div class="container" id="danangActivity" style="display: block;">
                           <div id="danangActivity"  class="row d-flex">
                                 <div class="col-md-6 col-lg-4 d-flex ftco-animate">
                                    <div class="blog-entry justify-content-end">
                                    <a onclick="activity(this.id,'${city.activity1_picture}','${city.activity1_info}');" id="${city.activity1}" class="block-20" style="background-image: url('${contextPath }/resources/images/${city.activity1_picture}');">
                                    </a>
                                    <div class="text float-right d-block">
                                       
                                      <h3 class="heading" ><a onclick="activity(this.id,'${city.activity1_picture}','${city.activity1_info}');" id="${city.activity1}" value="${city.activity1}">${city.activity1}</a></h3>
                                      <p>${city.activity1_info}</p>
                                      <div class="d-flex align-items-center mt-4 meta">
                                          <p class="mb-0"><a onclick="activity(this.id,'${city.activity1_picture}','${city.activity1_info}');" id="${city.activity1}" class="btn btn-primary" value="${city.activity1}">선택 <span class="ion-ios-arrow-round-forward"></span></a></p>
                                          

                                       </div>
                                    </div>
                                   </div>
                                 </div>
                                 <div class="col-md-6 col-lg-4 d-flex ftco-animate">
                                    <div class="blog-entry justify-content-end">
                                    <a onclick="activity(this.id,'${city.activity2_picture}','${city.activity2_info}');" id="${city.activity2}" class="block-20" style="background-image: url('${contextPath }/resources/images/${city.activity2_picture}');">
                                    </a>
                                    <div class="text float-right d-block">
                                       
                                      <h3 class="heading"><a onclick="activity(this.id,'${city.activity2_picture}','${city.activity2_info}');" id="${city.activity2}" value="${city.activity2}">${city.activity2}</a></h3>
                                      <p>${city.activity2_info}</p>
                                      <div class="d-flex align-items-center mt-4 meta">
                                          <p class="mb-0"><a onclick="activity(this.id,'${city.activity2_picture}','${city.activity2_info}');" id="${city.activity2}" class="btn btn-primary" value="${city.activity2}">선택 <span class="ion-ios-arrow-round-forward"></span></a></p>
                                          
                                       </div>
                                    </div>
                                   </div>
                                 </div>
                                 <div class="col-md-6 col-lg-4 d-flex ftco-animate">
                                    <div class="blog-entry">
                                    <a onclick="activity(this.id,'${city.activity3_picture}','${city.activity3_info}');" id="${city.activity3}" class="block-20" style="background-image: url('${contextPath }/resources/images/${city.activity3_picture}');">
                                    </a>
                                    <div class="text float-right d-block">
                                       
                                      <h3 class="heading"><a onclick="activity(this.id,'${city.activity3_picture}','${city.activity3_info}');" id="${city.activity3}" >${city.activity3}</a></h3>
                                      <p>${city.activity3_info}</p>
                                      <div class="d-flex align-items-center mt-4 meta">
                                         <p class="mb-0"><a onclick="activity(this.id,'${city.activity3_picture}','${city.activity3_info}');" id="${city.activity3}" class="btn btn-primary" value="${city.activity3}">선택 <span class="ion-ios-arrow-round-forward"></span></a></p>
                                        
                                      </div>
                                    </div>
                                   </div>
                                 </div>
                                </div>
                              </div>
                        <!-- 베트남_다낭_액티비티_끝 -->

               </div>
               
               <!-- 관광지 -->
               <script>
                  function Tourist(clicked_id,tour_picture,tour_info){
                     var TouristTag = document.getElementById("TouristTag");
                     TouristTag.innerHTML = clicked_id;
                     document.getElementById("tourInput").value = clicked_id;
                     document.getElementById("tour_pictureInput").value = tour_picture;
                     document.getElementById("tour_infoInput").value = tour_info;
                     
                     alert("----관광지 정보----\n"+clicked_id+"\n\n선택되었습니다.");
                  }
               </script>
             
               <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab" >
                     
                        <div class="container">
                              <div class="row justify-content-center pb-5">
                             <div class="col-md-12 heading-section text-center ftco-animate">
                                <span class="subheading">나만의 관광지</span>
                              <h2 class="mb-4">관광지 상세 결과</h2>
                              <p>나만의 관광지를 선택해 주세요</p>
                             </div>
                           </div>
                        </div>
                     <!-- 베트남_다낭_관광지_시작 -->
                     <div class="container" id="danangTourist" style="display: block;">
                           <div class="row d-flex">
                                 <div class="col-md-6 col-lg-4 d-flex ftco-animate">
                                    <div class="blog-entry justify-content-end">
                                    <a onclick="Tourist(this.id,'${city.tour1_picture}','${city.tour1_info}');" id="나트랑해변" class="block-20" style="background-image: url('${contextPath }/resources/images/${city.tour1_picture}');">
                                    </a>
                                    <div class="text float-right d-block">
                                       
                                      <h3 class="heading"><a onclick="Tourist(this.id,'${city.tour1_picture}','${city.tour1_info}');" id="${city.tour1}">${city.tour1}</a></h3>
                                      <p>${city.tour1_info}</p>
                                      <div class="d-flex align-items-center mt-4 meta">
                                          <p class="mb-0"><a onclick="Tourist(this.id,'${city.tour1_picture}','${city.tour1_info}');" id="${city.tour1}" class="btn btn-primary">선택 <span class="ion-ios-arrow-round-forward"></span></a></p>
                                          
                                       </div>
                                    </div>
                                   </div>
                                 </div>
                                 <div class="col-md-6 col-lg-4 d-flex ftco-animate">
                                    <div class="blog-entry justify-content-end">
                                    <a onclick="Tourist(this.id,'${city.tour2_picture}','${city.tour2_info}');" id="${city.tour2}" class="block-20" style="background-image: url('${contextPath }/resources/images/${city.tour2_picture}');">
                                    </a>
                                    <div class="text float-right d-block">
                                       
                                      <h3 class="heading"><a onclick="Tourist(this.id,'${city.tour2_picture}','${city.tour2_info}');" id="${city.tour2}">${city.tour2}</a></h3>
                                      <p>${city.tour2_info}</p>
                                      <div class="d-flex align-items-center mt-4 meta">
                                          <p class="mb-0"><a onclick="Tourist(this.id,'${city.tour2_picture}','${city.tour2_info}');" id="${city.tour2}" class="btn btn-primary">선택 <span class="ion-ios-arrow-round-forward"></span></a></p>
                                          
                                       </div>
                                    </div>
                                   </div>
                                 </div>
                                 <div class="col-md-6 col-lg-4 d-flex ftco-animate">
                                    <div class="blog-entry">
                                    <a onclick="Tourist(this.id,'${city.tour3_picture}','${city.tour3_info}');" id="${city.tour3}" class="block-20" style="background-image: url('${contextPath }/resources/images/${city.tour3_picture}');">
                                    </a>
                                    <div class="text float-right d-block">
                                       
                                      <h3 class="heading"><a onclick="Tourist(this.id,'${city.tour3_picture}','${city.tour3_info}');" id="${city.tour3}">${city.tour3}</a></h3>
                                      <p>${city.tour3_info} </p>
                                      <div class="d-flex align-items-center mt-4 meta">
                                         <p class="mb-0"><a onclick="Tourist(this.id,'${city.tour3_picture}','${city.tour3_info}');" id="${city.tour3}" class="btn btn-primary">선택 <span class="ion-ios-arrow-round-forward"></span></a></p>
                                        
                                      </div>
                                    </div>
                                   </div>
                                 </div>
                                </div>
                           </div>
                                 <!-- 베트남_다낭_관광지_끝 -->
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