<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>Plan A - 여행을 알차게!</title>
  </head>
  <!-- 헤더 -->
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
    @media (min-width: 1200px) {
    .container {
    max-width: 1320px; } 
    }
    @media (min-width: 1200px) {
    .container1 {
    max-width: 1800px;
    margin:auto} 
    }
    

    label {
    display: inline-block;
    margin-bottom: 0;
    }

      .inputGroup {
      background-color: #fff;
      display: block;
      margin: 10px 0;
      position: relative;
    }
    .inputGroup label {
      padding: 10px 20px; /*세로 크기, 글자 앞 공백*/
      width: 100%;
      display: block;
      text-align: left;
      color: #3C454C;
      cursor: pointer;
      position: relative;
      z-index: 2;
      transition: color 200ms ease-in;
      overflow: hidden;
    }
    .inputGroup label:before {
      width: 10px;
      height: 10px;
      border-radius: 50%;
      content: '';
      background-color: #E2C0BB;
      position: absolute;
      left: 20%; /*색 채워지는 길이*/
      top: 20%;
      transform: translate(-50%, -50%) scale3d(1, 1, 1);
      transition: all 450ms cubic-bezier(0.4, 0, 0.2, 1);
      opacity: 0;
      z-index: -1;
    }
    .inputGroup label:after {
      width: 25px;
      height: 25px;
      content: '';
      border: 2px solid #D1D7DC;
      background-color: #fff;
      background-image: url("data:image/svg+xml,%3Csvg width='25%' height='23' viewBox='0 0 32 32' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M5.414 11L4 12.414l5.414 5.414L20.828 6.414 19.414 5l-10 10z' fill='%23fff' fill-rule='nonzero'/%3E%3C/svg%3E ");
      background-repeat: no-repeat;
      background-position: 2px 3px;
      border-radius: 50%;
      z-index: 2;
      position: absolute;
      right: 30px; /*단추*/
      top: 50%;
      transform: translateY(-50%);
      cursor: pointer;
      transition: all 200ms ease-in;
    }
    .inputGroup input:checked ~ label {
      color: #fff;
    }
    .inputGroup input:checked ~ label:before {
      transform: translate(-50%, -50%) scale3d(56, 56, 1);
      opacity: 1;
    }
    .inputGroup input:checked ~ label:after {
      background-color: #757575;
      border-color: #757575;
    }
    .inputGroup input {
      width: 32px;
      height: 32px;
      order: 1;
      z-index: 2;
      position: absolute;
      right: 30px;
      top: 50%;
      transform: translateY(-50%);
      cursor: pointer;
      visibility: hidden;
    }
    .form {
      padding: 0 16px;
      margin: 30px auto;
      font-size: 13px;
      font-weight: 600;
      line-height: 25px;
    }
    body {
      background-color: #fff;
      font-family: 'Fira Sans', sans-serif;
    }
    *, *::before, *::after {
      box-sizing: inherit;
    }
    html {
      box-sizing: border-box;
    }
    code {
      background-color: #9AA3AC;
      padding: 0 8px;
    }


    /* 탭 style */
    .ftco-section-search {
    background: #E2C0BB; 
    }
    .container0 {
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto; }
    @media (min-width: 576px) {
      .container0 {
        max-width: 540px; } }
    @media (min-width: 768px) {
      .container0 {
        max-width: 720px; } }
    @media (min-width: 992px) {
      .container0 {
        max-width: 960px; } }
    @media (min-width: 1200px) {
      .container0 {
        max-width: 1140px; } }

    .container0-fluid {
      width: 100%;
      padding-right: 15px;
      padding-left: 15px;
      margin-right: auto;
      margin-left: auto; 
    }
    .nav-pills .nav-link.active,
    .nav-pills .show > .nav-link {
      color: #fff;
      background-color: #F8F9FA; 
    }

    .nav-pills .nav-link {
      border-radius: 0.25rem; 
    }

    .table {
    width: 50%;
    margin-right: auto;
    margin-left: auto;
    background-color: transparent; 
    position: relative;
    }
    .table th,
    .table td {
      color: black;
      font-family:나눔바른고딕;
      vertical-align: top;
      border-top: 1px solid #dee2e6;
      }
    
    .table thead th {
      vertical-align: bottom;
      border-bottom: 2px solid #dee2e6; }
    .table tbody + tbody {
      border-top: 2px solid #dee2e6; }
    .table .table {
      background-color: #F8F9FA; 
    }
    .table tbody tr th, .table tbody tr td {
      text-align: center !important;
      vertical-align: middle;
      padding: 10px 20px;
      border: 1px solid transparent !important;
      border-bottom: 1px solid rgba(0, 0, 0, 0.05) !important; 
    }
    th{
      background: #dee2e6;
    }

    .test1{
      color: black;
    }

    p2{
      color: #757575;
    }

    h6{
      margin: auto;
      /*탭 가운데정렬*/
    }

    .btn-primary2{
      background: #9AA3AC;
      /*저장, 초기화*/
    }
    btn-primary3{
      position: relative;
      left: 800px;
    }


    /* 잠금버튼 */
  .btn-lock {
    display: inline-block;
    background: #20cca5;
    width: 35px;
    height: 35px;
    box-sizing: border-box;
    padding: 0px 0 0 0px;
    border-radius: 50%;
    cursor: pointer;
    -webkit-tap-highlight-color: transparent;
  }
  .btn-lock svg {
    fill: none;
    transform: translate3d(0, 0, 0);
  }
  .btn-lock svg .bling {
    stroke: #fff;
    stroke-width: 2.5;
    stroke-linecap: round;
    stroke-dasharray: 3;
    stroke-dashoffset: 15;
    transition: all 0.3s ease;
  }
  .btn-lock svg .lock {
    stroke: #fff;
    stroke-width: 4;
    stroke-linejoin: round;
    stroke-linecap: round;
    stroke-dasharray: 36;
    transition: all 0.4s ease;
  }
  .btn-lock svg .lockb {
    fill: #fff;
    fill-rule: evenodd;
    clip-rule: evenodd;
    transform: rotate(8deg);
    transform-origin: 14px 20px;
    transition: all 0.2s ease;
  }
  .inpLock {
    display: none;
  }
  .inpLock:checked + label {
    background: #ff5b5b;
  }
  .inpLock:checked + label svg {
    opacity: 1;
  }
  .inpLock:checked + label svg .bling {
    animation: bling 0.3s linear forwards;
    animation-delay: 0.2s;
  }
  .inpLock:checked + label svg .lock {
    stroke-dasharray: 48;
    animation: locked 0.3s linear forwards;
  }
  .inpLock:checked + label svg .lockb {
    transform: rotate(0);
    transform-origin: 14px 22px;
  }
  @-moz-keyframes bling {
    50% {
      stroke-dasharray: 3;
      stroke-dashoffset: 12;
    }
    100% {
      stroke-dasharray: 3;
      stroke-dashoffset: 9;
    }
  }
  @-webkit-keyframes bling {
    50% {
      stroke-dasharray: 3;
      stroke-dashoffset: 12;
    }
    100% {
      stroke-dasharray: 3;
      stroke-dashoffset: 9;
    }
  }
  @-o-keyframes bling {
    50% {
      stroke-dasharray: 3;
      stroke-dashoffset: 12;
    }
    100% {
      stroke-dasharray: 3;
      stroke-dashoffset: 9;
    }
  }
  @keyframes bling {
    50% {
      stroke-dasharray: 3;
      stroke-dashoffset: 12;
    }
    100% {
      stroke-dasharray: 3;
      stroke-dashoffset: 9;
    }
  }
  @-moz-keyframes locked {
    50% {
      transform: translateY(1px);
    }
  }
  @-webkit-keyframes locked {
    50% {
      transform: translateY(1px);
    }
  }
  @-o-keyframes locked {
    50% {
      transform: translateY(1px);
    }
  }
  @keyframes locked {
    50% {
      transform: translateY(1px);
    }
  }

  .filebox label{
      display: inline-block; 
      padding: .5em .75em; 
      color: #999; 
      font-size: inherit; 
      line-height: normal; 
      vertical-align: middle; 
      background-color: #fdfdfd; 
      cursor: pointer; 
      border: 1px solid #ebebeb; 
      border-bottom-color: #e2e2e2; 
      border-radius: .25em;
    }

    /* 파일 필드 숨기기 */
    .filebox input[type="file"] {  
      position: absolute; 
      width: 1px; 
      height: 1px; 
      padding: 0; 
      margin: -1px; 
      overflow: hidden; 
      clip:rect(0,0,0,0); 
      border: 0; 
    }
    

    .filebox.bs3-primary label {
  color: #757575;
  background-color: #ebebeb;
    border-color: #7575;
}

  .filebox.bs3-success label {
    color: #fff;
    background-color: #5cb85c;
      border-color: #4cae4c;
  }
   /* 회원가입 */
    #image{
      width: 230px;
   }
   
   .validateLb{
          color:red;
   }
   
   #naverDiv{
      background-color:white;
      display:table-cell;      
      width:500px;
      height:50px;
      vertical-align:middle;
      color: green;
   }

    </style>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300" style="overflow-x:hidden">
    <br><br><br><br>
      
      
    <!-- 마이페이지 시작 -->
    <div class="ftco-section-search">
      <div class="container0">
          <div class="row">
          <div class="col-md-12 tabulation-search">
              <div class="element-animate">
              <div class="nav nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                  <a class="nav-link p-3 active" name="tabMenu" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" aria-selected="true"><!-- role="tab" aria-controls="v-pills-home"-->
                  <h6 style="font-family:나눔바른고딕; color:#fff;" name="tabName">여행 히스토리</h6>
                  </a>

                  <a class="nav-link p-3" name="tabMenu" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-selected="false"><!--  왜반응이 없음 -->
                  <h6 style="font-family:나눔바른고딕; color:#fff;" name="tabName">나의 게시물</h6>
                  </a>

                  <a class="nav-link p-3" name="tabMenu" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">
                    <h6 style="font-family:나눔바른고딕; color:#fff;" name="tabName">회원정보수정 & 탈퇴</h6>
                  </a>
              </div>
              </div>
          </div>
          </div>
      </div>
    </div>
    
  <div class="tab-content" id="v-pills-tabContent">
    <!-- 탭 첫번째 버튼 클릭 시 / 여행 히스토리 -->
    
      <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
      <!-- 여행 히스토리, 준비물체크 리스트-->
      <section class="ftco-section" style="padding:2em;" id="blog-section" >
        <div class="container1" style="float: center;"><!--height: 32px;-->
          <h4 style="font-family: 나눔바른고딕; color:#E2C0BB; text-align:center">History</h>
          <div class="row justify-content-center">
      <!-- 여행 히스토리 이미지--><!-- 컨트롤러에서 myHistory 불러오기 -->
            <c:forEach var="m" items="${myHistory}">
               <input type="hidden" value="${m.country}" name="map">
            </c:forEach>
      <!-- 아시아 기본 사진 -->
            <img src="${ contextPath }/resources/images/map.png" id="Asia" width="750px;" height="600px">
          </div>
            <h4 style="font-family: 나눔바른고딕; color:#757575; text-align:center">
            <b>준비물 체크리스트</b>
          	</h4><hr style="border:solid 3px #E2C0BB; width:84%">
            &nbsp&nbsp&nbsp&nbsp
           <div id="newdiv"><!--폼이랑 저장,초기화까지담은 div-->
            <div class="row justify-content-center" align-items>
                <!-- div안에 가운데의 가운데정렬 --> 
                <!-- 체크리스트 -->
                <div class="checkList" id="checkList1">
                  <!-- <span style="width:350px; height: 550px; display: inline-block; "> -->
                  <div class="form" id="formList1" action="mCheckListSave.me">
                    <h5 style="font-family: 나눔바른고딕; color:#757575">필수 준비물</h5>
                    <div class="inputGroup" style="width:220px;"><input id="option1" name="option" type="checkbox"/><label for="option1">여권</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option2" name="option" type="checkbox"/><label for="option2">여권사본</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option3" name="option" type="checkbox"/><label for="option3">항공권(E티켓)</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option4" name="option" type="checkbox"/><label for="option4">현금(원화,외화)</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option5" name="option" type="checkbox"/><label for="option5">신분증, 운전면허증</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option6" name="option" type="checkbox"/><label for="option6">신용카드</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option7" name="option" type="checkbox"/><label for="option7">여행사 보험증</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option8" name="option" type="checkbox"/><label for="option8">숙소 주소 및 연락처</label></div>
                  </div>
                </div>
                <div class="checkList" id="checkList2">
                  <div class="form" id="formList2" action="mCheckListSave.me">
                    <h5 style="font-family: 나눔바른고딕; color:#757575">여행관련 & 전자기기</h5>
                    <div class="inputGroup" style="width:220px;"><input id="option9" name="option" type="checkbox"/><label for="option9">여행 가이드북</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option10" name="option" type="checkbox"/><label for="option10">여행 일정표</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option11" name="option" type="checkbox"/><label for="option11">지도</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option12" name="option" type="checkbox"/><label for="option12">필기 도구</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option13" name="option" type="checkbox"/><label for="option13">카메라(충전기, 메모리)</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option14" name="option" type="checkbox"/><label for="option14">핸드폰 충전기</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option15" name="option" type="checkbox"/><label for="option15">멀티 어댑터</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option16" name="option" type="checkbox"/><label for="option16">노트북 & 충전기</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option17" name="option" type="checkbox"/><label for="option17">삼각대</label></div>
                  </div>
                </div>
                <div class="checkList" id="checkList3">
                  <div class="form" id="formList3" action="mCheckListSave.me">
                    <h5 style="font-family: 나눔바른고딕; color:#757575">세면도구 & 화장품</h5>
                    <div class="inputGroup" style="width:220px;"><input id="option18" name="option" type="checkbox"/><label for="option18">칫솔 & 치약</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option19" name="option" type="checkbox"/><label for="option19">샴푸 & 린스</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option20" name="option" type="checkbox"/><label for="option20">기초 화장품(스킨, 로션)</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option21" name="option" type="checkbox"/><label for="option21">폼 클렌저, 클렌징 오일</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option22" name="option" type="checkbox"/><label for="option22">바디클렌저 & 샤워타월</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option23" name="option" type="checkbox"/><label for="option23">선크림, 바디선크림</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option24" name="option" type="checkbox"/><label for="option24">아이 & 립 리무버</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option25" name="option" type="checkbox"/><label for="option25">브러쉬</label></div>
                    <div class="inputGroup" style="width:220px;"><input id="option26" name="option" type="checkbox"/><label for="option26">마스크팩</label></div>
                  </div>
                </div>
                <div class="checkList" id="checkList4">
                  <div class="form" id="formList4" action="mCheckListSave.me">
                    <h5 style="font-family: 나눔바른고딕; color:#757575">약품 & 생활용품</h5>
                      <div class="inputGroup" style="width:220px;"><input id="option27" name="option" type="checkbox"/><label for="option27">종합연고, 약 & 밴드</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option28" name="option" type="checkbox"/><label for="option28">렌즈 & 세척액</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option29" name="option" type="checkbox"/><label for="option29">수건</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option30" name="option" type="checkbox"/><label for="option30">드라이기</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option31" name="option" type="checkbox"/><label for="option31">지퍼백</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option32" name="option" type="checkbox"/><label for="option32">여성용품</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option33" name="option" type="checkbox"/><label for="option33">휴지 & 물티슈</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option34" name="option" type="checkbox"/><label for="option34">머리끈 & 삔</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option35" name="option" type="checkbox"/><label for="option35">목베개 & 수면안대</label></div>
                  </div>
                </div>
                <div class="checkList" id="checkList5">
                  <div class="form" id="formList5" action="mCheckListSave.me">
                      <h5 style="font-family: 나눔바른고딕; color:#757575">의류 & 신발 & 가방</h5>
                      <div class="inputGroup" style="width:220px;"><input id="option36" name="option" type="checkbox"/><label for="option36">속옷</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option37" name="option" type="checkbox"/><label for="option37">상의 & 하의</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option38" name="option" type="checkbox"/><label for="option38">아우터</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option39" name="option" type="checkbox"/><label for="option39">원피스</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option40" name="option" type="checkbox"/><label for="option40">잠옷</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option41" name="option" type="checkbox"/><label for="option41">모자 & 양말</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option42" name="option" type="checkbox"/><label for="option42">선글라스 & 시계</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option43" name="option" type="checkbox"/><label for="option43">운동화 & 샌들 & 슬리퍼</label></div>
                      <div class="inputGroup" style="width:220px;"><input id="option44" name="option" type="checkbox"/><label for="option44">수영복</label></div>
                  </div>
                </div>
            </div>
           </div>
            <div class="container" style="margin-left: 80%;">
              <a href="#" class="btn btn-primary2" id="formupdate" onclick="return update()"><strong>저장</strong></a>
              <a href="#newdiv" class="btn btn-primary2" id="formdelete" onclick="return uncheck();"><strong>초기화</strong></a>
            </div>
        </div>
      </section>
      </div>
      
      <!-- 준비물 체크리스트 - 체크 되어 있는 값 가져오기 -->
      <script>
      function update() {								// 클릭한 값 가져오기
         var test = $("input[name=option]:checked");
         console.log(test);
         var test1 = "";
         if((confirm('저장 하시겠습니까?')) == true){
            for(var i = 0; i < test.length; i++){       // test의 갯수만큼 for문돌리기
               //if(typeof test[i].id != 'undefined')
               if(i == test.length-1){					// length의 마지막번호는 그냥 넣고
                  test1 += test[i].id;				
               } else{
                  test1 += test[i].id + "/";			// 아닌건 / 붙여서 넣음
               }
            }
         }
         location.href="mCheckListSave.me?data=" + test1;
      }
      </script>
      
      <!-- 준비물 체크리스트 - 초기화 버튼 클릭 -->
      <script>
      function uncheck(){
         var test0 = "";
          if((confirm('초기화 하시겠습니까?')) == true){                  	// 확인을 누르면
             test0 = $('input[type=checkbox]:checked');               	// 체크한 버튼
             console.log(test0);                                 		// 출력
//              $('#newdiv').load(window.location.href + 'newdiv');     // 상단으로 안올라가고 그 자리에서 새로고침할 순 없는지 - 위에 아이디 값을 줌
            $('input[type=checkbox]:checked').prop("checked", false);   // 체크 된 내용 초기화
          }
      };
      </script>
      
      <!-- 화면이 로딩 될 때 저장된 내역을 가져오는 function 사용하기(jsp) -->
      <script>
          window.onload = function(){   										// 슬래시를 기준으로 자른 후 checked 표시
            <c:forTokens var="ch" items="${userInfo.checkList}" delims="/">
             $("input[id=${ch}]").prop("checked", true);
          	</c:forTokens>

          var test2 = $('[name=map]');      
          console.log(test2);               
          
          var test3 = "";
          for(var i = 0; i < test2.length; i++){
             if(i==test2.length-1){
                test3 += test2.eq(i).val();
             } else {
                test3 += test2.eq(i).val() + " ";
             }
          }
          console.log(test3); 																// ex 태국 필리핀 일본
          
          var test4 = test3.split(" ");
          console.log(test4);														// " "제거하고 입력된 나라 출력하기 ex ["태국", "필리핀", "일본"]
          
          var result = [0, 0, 0, 0, 0, 0];
          
          for(var i=0; i < test4.length; i++){
             if(test4[i]=="태국"){
                result[0] = 1;
             }
             if(test4[i]=="일본"){
                result[1] = 1;
             }
             if(test4[i]=="중국"){
                result[2] = 1;
             }
             if(test4[i]=="필리핀"){
                result[3] = 1;
             }
             if(test4[i]=="대만"){
                result[4] = 1;
             }
             if(test4[i]=="베트남"){
                result[5] = 1;
             }
          }
          console.log(result);				// 배열 불러오기
             if(result[0] == 1 && result[1] == 1){    
                $('#Asia').prop('src', '${ contextPath }/resources/images/japan.png');
                console.log('선택 된 나라 불러오기 성공!');
             }
             else{
             console.log('선택 된 나라 불러오기 실패');
             }
         }
      </script>
   
    <!-- 탭 두번째 버튼 클릭 시 / 나의 게시물-->
    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-post-tab">
    <!-- 맞춤 여행의뢰, 및 다녀온 나라 내역-->
      <section class="ftco-section" id="blog-section">
        <div class="container">

          <div class="row justify-content-center mb-5 pb-5">
            <div class="col-md-7 heading-section text-center ftco-animate" id="v-pills-post-tab">
              <span class="subheading">Blog</span>
              <h2 class="mb-4">나의 여행기록</h2>
              <p2>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
            </div>
          </div>
         <!-- 석영 동하 게시판 불러오기 -->
          <div class="row d-flex">
            <c:forEach items="${RouteResultList}" var="RouteResult" varStatus="status">
            <div class="col-md-6 col-lg-4 d-flex ftco-animate">
              <div class="blog-entry justify-content-end">
                <c:url var="resultMyRoute" value="resultMyRoute.me">
                	<c:param name="rootnum" value="${RouteResult.rootnum}"/>
                </c:url>
                <a href="${resultMyRoute}" class="block-20" style="background-image: url('${contextPath }/resources/images/${RouteResult.tour_picture }');"></a>
                <div class="text float-right d-block" style="margin-top:0px; padding-top:0px;">
                  <div class="d-flex align-items-center pt-2 mb-4 topp">
                    <div class="two">
                      <span class="yr">${RouteResult.country }</span>
                      <span class="mos">${RouteResult.city}</span>
                    </div>
                  </div>
                  <p style="margin-bottom: 0%; padding-bottom:0%">${RouteResult.author }[${RouteResult.country } - ${RouteResult.city}] &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                  <div class="d-flex align-items-center meta"  style="margin-top: 0%; padding-top:0%">
                    <p class="mb-0"><a href="${resultMyRoute}" class="btn btn-primary">상세보기<span class="ion-ios-arrow-round-forward"></span></a></p>
                    <p class="ml-auto mb-0">
                      <a href="${resultMyRoute}" class="mr-2">${RouteResult.author }</a>
                      <a href="${resultMyRoute}" class="meta-chat"><span class="icon-chat"></span> 3</a>
                    </p>
                  </div>
                </div>
              </div>
            </div>
            </c:forEach>
          </div>
        </div>
      </section>
      
    <!-- 동행구하기 쓴글, 후기 게시판 작성 글 불러오기-->
      <section class="ftco-section testimony-section">
              <img src="${contextPath }/resources/images/blob-shape-2.svg" class="svg-blob" alt="Colorlib Free Template"><!-- 배경에 분홍색 동그라미 -->
              <img src="${contextPath }/resources/images/blob-shape-2.svg" class="svg-blob-2" alt="Colorlib Free Template"><!-- 배경에 분홍색 동그라미 -->

            <div class="container">
            
              <div class="row justify-content-center pb-3">
                <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                    <span class="subheading"><h3 style="color: #fff; font-family: 나눔바른고딕;">내가 쓴 게시글</h3></span>
                  <font size="5" class="test1" style="font-weight:450;">동행구하기</font>
                </div>
              </div>
              <div class="table">
                <table class="table table-hover" id="together"><!-- th 표의제목, tr 가로, td 셀을 만듬-->
                     <thead>
                        <tr><!-- 한줄 -->
                          <th>번호</th>
                          <th>작성일</th>
                          <th>제목</th>
                          <th>진행상태</th>
                      </tr>
                     </thead>
               <tbody>
               </tbody>
                </table> 
              </div>

              <div class="row justify-content-center pb-3">
                <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                  <font size="5" class="test1" style="font-weight:450;">후기게시판</font>
                </div>
              </div>
              <div class="table">
                <table class="table table-hover" id="myReview"><!-- th 표의제목, tr 가로, td 셀을 만듬-->
                  <thead>
                     <tr><!-- 한줄 -->
                       <th>번호</th>
                       <th>작성일</th>
                       <th>제목</th>
                       <th>조회수</th>
                       <th>비밀글</th>
                     </tr>
                  </thead>
                  <tbody>
                  </tbody>
                </table>
              </div>
              
            </div>
      </section>
    </div>
    
    <!-- 나의 게시물 탭 눌렀을 때 디비 값 다 불러와서 한번에 뿌리기 -->
    <script>
    function naver(i){						// 동행구하기 상세페이지로 이동
        document.location.href="tbDetailView.me?tId=" + i; 
    }
    function daum(a,b){						// 여행후기 상세페이지로 이동
    	var rUserId = $('[name=userId]').val(); 
        window.location.href="rDetail.me?rId=" + a + "&page=1&rView=" + b + "&rUserId=" + rUserId;
     }
    function rLock(obj,rId,rLock){			// 여행후기 잠금버튼
		var lock = $("[name=lock]");
		var Lock = '<a onclick="rLock(this,' + rId + "," + 1 +')"class="icon-lock float-center" name="lock" style="font-size: 17pt; color:rgb(226, 192, 187); cursor:pointer"></a>'
		var UnLock = '<a onclick="rLock(this,' + rId + "," + 0 + ')"class="icon-unlock float-center" name="lock" style="font-size: 17pt; color:rgb(117, 117, 117); cursor:pointer"></a>'
		console.log(rId);
		console.log(rLock);
		
		for(var i in lock){
			if(obj==lock[i]){
				
				var rId = rId;
				console.log(rId);
				// 잠금 안되어있으면
				if(lock[i].style.color =="rgb(177, 177, 177)"){
					
					$.ajax({
						url: "rLock.me",
		                type: "get",
		                data: {
		                   rLock : '1',
		                   rId : rId
		                }, 
		                success: function(result){
		                	$(obj).parent().append(Lock);
							$(obj).remove();
		                }, error: function(){
		                    console.log("실패");
		                } 
					})
				} else { //잠금 되어있으면
					$.ajax({
						url: "rLock.me",
		                type: "get",
		                data: {
		                   rLock : '0',
		                   rId : rId
		                }, 
		                success: function(result){
		                	$(obj).parent().append(UnLock);
							$(obj).remove();
		                }, error: function(){
		                    console.log("실패");
		                } 
					})
					
				}
			}
		}
	}
      $('#v-pills-profile-tab').click(function(){		// 나의 게시물 클릭시 게시글 불러오기
            $.ajax({
               type: "get",            					// type은 통신 타입을 설정(POST, GET) -- POST방식으로 서버와 연결
               url:"BoardList.me",         				// ~~~요청할 url -- myPage의 나의 게시물 -- url을 여러개 쓸수있는지~~~
               dataType: "json",
               success: function(data){
                  console.log('컨트롤러로 보내기 성공!');
                  $tableBody = $('#together tbody');	// 아영 게시판 불러오기
                  $tableBody.html("");
                  $tableBody2 = $('#myReview tbody');	// 수연 게시판 불러오기
                  $tableBody2.html("");
                  
                  var $tr;      
                  
                  var $tId;         	// 번호 
                  var $write_date;   	// 작성일
                  var $title;         	// 제목
                  var $ing;         	// 진행상태
                  
                  var $rId;         	// 번호 
                  
                  var $rDate;         	// 작성일
                  var $rTitle;      	// 제목
                  var $rView;         	// 조회수
                  var $rLock;         	// 비밀글
                  
                  console.log(data);   					// boardList: (2) [{…}, {…}], myReview: (2) [{…}, {…}] 출력
                  console.log(data.boardList);
                  
                  if(data != 0){
                     for(var i in data.boardList){
                        $tr = $("<tr>");
                        $tId = $("<td onclick='naver("+data.boardList[i].tId+");'>").text(data.boardList[i].tId);
                        $write_date = $("<td onclick='naver("+data.boardList[i].tId+");'>").text(data.boardList[i].write_date);
                        $title = $("<td onclick='naver("+data.boardList[i].tId+");'>").text(decodeURIComponent(data.boardList[i].title.replace(/\+/g, " ")));
                        $ing = $("<td onclick='naver("+data.boardList[i].tId+");'>").text(decodeURIComponent(data.boardList[i].ing.replace(/\+/g, " ")));
                        // 눌렀을 때 이동하는 펑션 만들고 주소를 tId?= 이런식으로 넣어줌 tId의 번호로 이동할 수 있게
                        $tr.append($tId);
                        $tr.append($write_date);
                        $tr.append($title);
                        $tr.append($ing);
                        $tableBody.append($tr);
                        
                        console.log('동행구하기 출력!');
                     }
                     for(var i in data.myReview){
                    	 var myLock = '<a onclick="rLock(this,'+data.myReview[i].rId+","+data.myReview[i].rLock + ')" class="icon-lock float-center" name="lock" style="font-size: 17pt; color:rgb(226, 192, 187); cursor:pointer"></a>';
                    	 var myUnLock = '<a onclick="rLock(this,'+data.myReview[i].rId+","+data.myReview[i].rLock + ')" class="icon-unlock float-center" name="lock" style="font-size: 17pt; color:rgb(177, 177, 177); cursor:pointer"></a>';
                    	 var rIdForLock = '<input type="hidden" name="rIdForLock" value="'+data.myReview[i].rId+'"/>';
                    	 
                    	$tr = $("<tr>");
                        $rId = $("<td onclick='daum("+data.myReview[i].rId+","+data.myReview[i].rView+");'>").text(data.myReview[i].rId);
                        $rDate = $("<td onclick='daum("+data.myReview[i].rId+","+data.myReview[i].rView+");'>").text(decodeURIComponent(data.myReview[i].rDate.replace(/\+/g, " ")));
                        $rTitle = $("<td onclick='daum("+data.myReview[i].rId+","+data.myReview[i].rView+");'>").text(decodeURIComponent(data.myReview[i].rTitle.replace(/\+/g, " ")));
                        $rView = $("<td onclick='daum("+data.myReview[i].rId+","+data.myReview[i].rView+");'>").text(data.myReview[i].rView);
                        if(data.myReview[i].rLock == 0){
                        	$rLock = $("<td>").append(myUnLock);
                        }else{
                        	$rLock = $("<td>").append(myLock);
                        }
                        console.log("페이지:" + data.myReview[i].page);
                        console.log("락 : " + data.myReview[i].rLock)
                        $tr.append($rId);
                        $tr.append($rDate);
                        $tr.append($rTitle);
                        $tr.append($rView);
                        $tr.append($rLock);
                        $tableBody2.append($tr);
                        
                        console.log('후기게시판 출력!');
                     }
                  }else{
                     console.log('게시글 불러오기 실패!');
                  }
               }, error:function(data){
                  console.log('게시물 보내기 실패ㅠㅡㅠ!!');
               }
            });   
      });
   </script>
     
    <!-- 탭 세번째 버튼 클릭 시 / 회원정보수정 & 회원탈퇴 -->
    <!-- 기능 경연 -->
    <!-- 탭 세번째 버튼 클릭 시-->
    <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
      <!-- 회원정보수정-->
      <section class="ftco-section contact-section ftco-no-pb" id="contact-section">
        <div class="container">
          <div class="mb-5 pb-3" style="margin: auto;">
            <div class="col-md-7 heading-section text-center ftco-animate" style="margin: 0 auto;">
              <span class="subheading">Plan A</span>
              <h2 class="mb-4" style="font-family:나눔바른고딕; color:#000;">회원정보 수정</h2>
            </div>
          </div>
  
          <div class="row block-9" >
            <div class="col-md-7 order-md-last d-flex ftco-animate" style="margin: auto;">
              <form action="updateUser.me" class="bg-light p-4 p-md-5 contact-form" style="padding: 0 16px; margin: 30px auto; width: 600px;" method="post" encType="multipart/form-data">
            <div class="col-md-12 ftco-animate">
                  <div class="box p-2 px-3 bg-light d-flex">
                    <div class="icon mr-3">
                      <span class="icon-globe"></span>
                    </div>
                    <div>
                      <h3 class="mb-3">Profile</h3>
                    </div>
                    (등록할 사진을 선택해주세요.)
                  </div>
                </div>
                <div class="filebox bs3-primary ftco-animate" style="margin-left:20%;">      
                   <c:if test="${loginUser.originName == null }">
                      <img id="image" src="${contextPath }/resources/profileImg/user.png"><br><br>
                      <input class="upload-name" value="파일선택" disabled="disabled" style="width:70%; margin-left:-10%;">
                      <input type="hidden" name="beforePhotoOr" value="">
                      <input type="hidden" name="beforePhotoCh" value="">                    
                   </c:if>
                    <c:if test="${loginUser.originName != null }">
                       <img id="image" src="${contextPath }/resources/profileImg/${loginUser.changeName}"><br><br>
                       <input class="upload-name" value="${loginUser.originName }" disabled="disabled">    
                       <input type="hidden" name="beforePhotoOr" value="${loginUser.originName}">                  
                       <input type="hidden" name="beforePhotoCh" value="${loginUser.changeName}">
                    </c:if>
                  <label for="ex_filename">업로드</label>
                  <input type="file" id="ex_filename" class="upload-hidden" name="photo">
                </div><br>
                <div class="col-md-12 ftco-animate">
                  <div class="box p-2 px-3 bg-light d-flex">
                    <div class="icon mr-3">
                      <span class="icon-globe"></span>
                    </div>
                    <div>
                      <h3 class="mb-3">Nickname</h3>
                    </div>
                  </div>
                </div>
                <div class="form-group ftco-animate">
                  <input type="hidden" id="userId" name="userId" value="${loginUser.userId }">
                  <input type="text" class="form-control" id="nickName" name="nickName" placeholder="닉네임" value="${loginUser.nickName }">
                  <span id="validateNick" class="validateLb"></span>
                  <input type="hidden" id="nickValidateCheck" value="1">
                </div>

                <div class="col-md-12 ftco-animate">
                  <div class="box p-2 px-3 bg-light d-flex">
                    <div class="icon mr-3">
                      <span class="icon-map-signs"></span>
                    </div>
                    <div>
                      <h3 class="mb-3">password</h3>
                    </div>
                  </div>
                </div>
                <c:if test="${loginUser.userId.contains('@naver.com') }">
                   <div class="form-group ftco-animate" style="display:table;">
                     <div id="naverDiv"><img src="${contextPath }/resources/images/naverLogo.png" style="width:60px;">
                    &nbsp;&nbsp;&nbsp;네이버 계정입니다.</div>
                   </div>
                </c:if>
                <c:if test="${!loginUser.userId.contains('@naver.com') }">
                   <div class="form-group ftco-animate">
                     <input type="password" class="form-control" id="userPwd" name="userPwd" placeholder="비밀번호">
                     <span id="validatePwd" class="validateLb"></span>
                     <input type="hidden" id="pwdValidateCheck" value="0">
                   </div>

                  <div class="col-md-12 ftco-animate">
                    </div>
                    <div class="form-group ftco-animate">
                      <input type="password" class="form-control" id="userPwd2" placeholder="비밀번호 재입력">
                      <span id="validatePwd2" class="validateLb"></span>
                      <input type="hidden" id="pwdValidateCheck2" value="0">
                     </div>
                </c:if>

                  <div class="col-md-12 ftco-animate">
                    <div class="box p-2 px-3 bg-light d-flex">
                      <div class="icon mr-3">
                        <span class="icon-paper-plane"></span>
                      </div>
                      <div>
                        <h3 class="mb-3">Email</h3>
                      </div>
                    </div>
                  </div>
                  <div class="form-group ftco-animate">
                    <input type="text" class="form-control" id="email" name="email" placeholder="이메일" value="${loginUser.email }">
                    <span id="validateEmail" class="validateLb"></span>
                    <input type="hidden" id="emailValidateCheck" value="1">
                  </div>

                <div class="col-md-12 ftco-animate">
                  <div class="box p-2 px-3 bg-light d-flex">
                    <div class="icon mr-3">
                      <span class="icon-phone2"></span>
                    </div>
                    <div>
                      <h3 class="mb-3">Contact Number</h3>
                    </div>
                  </div>
                </div>
                <div class="form-group ftco-animate">
                  <input type="text" class="form-control" id="phone" name="phone" placeholder="전화번호" value="${loginUser.phone }">
                  <span id="validatePhone" class="validateLb"></span>
                  <input type="hidden" id="phoneValidateCheck" value="1">
                </div>     
                &nbsp;&nbsp;<br>
                <div class="form-group ftco-animate" style="float: right;">
                  <input type="submit" value="회원정보수정" class="btn btn-primary" onclick="return updateUser();">
                  <button type="button" class="btn btn-primary" id="deleteUser">회원탈퇴</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </section><br><br>
    </div>
  </div>
    <!-- footer -->
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

<!-- 탭 버튼의 글씨 색 수정 -->
<script>
    $(function(){
        // 처음 페이지가 로드될 때 여행 히스토리(탭)를 분홍색 글씨로 나타내기 위함
        if($('a[name=tabMenu]').eq(0).attr('aria-selected') == "true"){
            $('h6[name=tabName]').eq(0).css('color','#E2C0BB');
        }
        
        // 이후 탭 메뉴들을 클릭했을 때 글씨 색깔이 바뀌도록 함
        $('a[name=tabMenu]').click(function(){       
            for(var i = 0; i < 3; i++){
                if($(this).text() != $('a[name=tabMenu]').eq(i).text()){
                    $('h6[name=tabName]').eq(i).css('color','#fff');
                }else{
                    $('h6[name=tabName]').eq(i).css('color','#E2C0BB');
                }
            }
        });
    }); 
</script>

	<script>		
	  	$(document).ready(function(){
	  		var userPwdCheck = RegExp(/^(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]|.*[0-9]).{6,16}$/);
	  		var nickNameCheck = RegExp(/^[가-힣]{2,8}|[a-zA-Z]{4,10}$/);
	  		var phoneCheck = RegExp(/^01[0179][0-9]{7,8}$/);
	       	var emailCheck = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+$/);
	  		
		  	var fileTarget = $('.filebox .upload-hidden');
		  
		  	fileTarget.on('change', function(){
		      	if(window.FileReader){
		          	var filename = $(this)[0].files[0].name;
		      	} else {
		          	var filename = $(this).val().split('/').pop().split('\\').pop();
		      	}
		      	$(this).siblings('.upload-name').val(filename);

		      	// 이미지 미리보기
		      	var reader = new FileReader();
		      
		      	reader.onload = function(e){
		      		document.getElementById("image").src = e.target.result;
		      	}
		      
		      	reader.readAsDataURL(this.files[0]);
		  	});
		  	
		 	// 닉네임 정규식 확인
	     	$('#nickName').blur(function(){
	     		if($('#nickName').val() == ""){
	     			$('#validateNick').text("닉네임을 입력해주세요.");
	     			$('#validateNick').show();
	     			$('#validateNick').append("<br>");
	     			$('#nickValidateCheck').val(0);
	     		}else{
	     			if(!nickNameCheck.test($('#nickName').val())){
	     				$('#validateNick').text("한글 2~8자 또는 영문 4~10자를 입력하세요.");
	         			$('#validateNick').show();
	         			$('#validateNick').append("<br>");
	         			$('#nickValidateCheck').val(0);
	     			}else{
	     				$('#validateNick').hide();
	         			$('#nickValidateCheck').val(1);
	     			}
	     		}
	     	});
		 	
	     	// 비밀번호 정규식 확인
	     	$('#userPwd').blur(function(){
	     		if($('#userPwd').val() == ""){
	     			$('#validatePwd').text("비밀번호를 입력해주세요.");
	     			$('#validatePwd').show();
	     			$('#validatePwd').append("<br>");
	     			$('#pwdValidateCheck').val(0);
	     		}else{
	     			if(!userPwdCheck.test($("#userPwd").val())){
	     				$('#validatePwd').text("6~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.");
	         			$('#validatePwd').show();
	         			$('#validatePwd').append("<br>");
	         			$('#pwdValidateCheck').val(0);
	     			}else{
	     				$('#validatePwd').hide();
	     				$('#pwdValidateCheck').val(1);     				
	     			}   			
	     		}
	     	});
	     	
	     	// 비밀번호와 비밀번호 재확인이 같은지 확인
	     	$('#userPwd2').blur(function(){
	     		if($('#userPwd2').val() == ""){
	     			$('#validatePwd2').text("비밀번호를 입력해주세요.");
	     			$('#validatePwd2').show();
	     			$('#validatePwd2').append("<br>");
	     			$('#pwdValidateCheck2').val(0);
	     		}else{
	     			if($('#userPwd').val() == $('#userPwd2').val()){
	     				$('#validatePwd2').hide();
	     				$('#pwdValidateCheck2').val(1);
	     			}else{
	     				$('#validatePwd2').text("비밀번호가 일치하지 않습니다.");
	         			$('#validatePwd2').show();
	         			$('#validatePwd2').append("<br>");
	         			$('#pwdValidateCheck2').val(0);
	     			}
	     		}
	     	});
	     	
	     	// 이메일 정규식 확인
	     	$('#email').blur(function(){
	     		if($('#email').val() == ""){
	     			$('#validateEmail').text("이메일을 입력해주세요.");
	     			$('#validateEmail').show();
	     			$('#validateEmail').append("<br>");
	     			$('#emailValidateCheck').val(0);
	     		}else if(!emailCheck.test($('#email').val())){
	     			$('#validateEmail').text("올바른 이메일 양식으로 입력해주세요.");
	     			$('#validateEmail').show();
	     			$('#validateEmail').append("<br>");
	     			$('#emailValidateCheck').val(0);
	     		}else{
	     			$('#validateEmail').hide();
	     			$('#emailValidateCheck').val(1);
	     		}
	     	});
	     	
	     	// 휴대폰 번호 정규식 확인
	     	$('#phone').blur(function(){
	     		if($('#phone').val() == ""){
	     			$('#validatePhone').hide();
	     			$('#phoneValidateCheck').val(1);
	     		}else if(!phoneCheck.test($('#phone').val())){
	     			$('#validatePhone').text("휴대폰 번호를 다시 확인해주세요.");
	     			$('#validatePhone').show();
	     			$('#validatePhone').append("<br>");
	     			$('#phoneValidateCheck').val(0);
	     		}else{
	     			$('#validatePhone').hide();
	     			$('#phoneValidateCheck').val(1);
	     		}
	     	});
		}); 
	  	
	  	// 회원 정보 수정 컨트롤러로 넘어가기
	  	function updateUser(){
	  		if($('#pwdValidateCheck').val() == "0" || $('#pwdValidateCheck2').val() == "0"){
	    		alert("비밀번호를 확인해주세요.");
	    		$("#userPwd").focus();
	    		return false;
	  		}else if($('#nickValidateCheck').val() == "0"){
	    		alert("닉네임을 확인해주세요.");
	    		$("#nickName").focus();
	    		return false;
	  		}else if($('#phoneValidateCheck').val() == "0"){
	    		alert("휴대폰 번호를 확인해주세요.");
	    		$('#phone').focus();
	    		return false;
	    	}else if($('#emailValidateCheck').val() == "0"){
	    		alert("올바른 이메일 양식으로 입력해주세요.");
	    		$('#email').focus();
	    		return false;
	    	}else{
	    		if(confirm("회원정보를 수정하시겠습니까?")){
	    			alert("수정이 완료되었습니다.");
	    			return true;
	    		}else{
	    			return false;
	    		}	    	  		
	    	}
	  	}
	  	
	  	$('#deleteUser').click(function(){
	          if(confirm("정말 탈퇴하시겠습니까?")){
	              if($('#userId').val().substr(-10, 10) == "@naver.com"){
	                 location.href="deleteUser.me";
	              }else{
	                 location.href="deleteBefore.me";
	              }              
	           }
	        });
	</script>
  </body>
</html>