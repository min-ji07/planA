<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
%>



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
    background-color: #f2aab8c5;
   border: 1px solid #f2aab8c5;
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
      margin-left: auto; 
      margin-right: auto;
   }

   table.type10 thead th {
      /* width: 150px; */
      padding: 10px;
      font-weight: bold;
      vertical-align: top;
      color: #fff;
      /* 컬럼색 */
      background: #b2bbc9;
      margin: 20px 10px;
   }
   table.type10 tbody th {
      /* width: 150px; */
      padding: 10px;
   }

   table.type10 td {
      /* width: 350px; */
      padding: 10px;
      vertical-align: top;
      /* 밑 색 */
      /* background: #e9e6df; */
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

   table {
        width: 100%;
        margin-left: auto; 
        margin-right: auto;


      }

    th{
        background : #f0d2cc;
    }
   </style>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
     <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_4.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-4">
            <h1 class="mb-3 bread">동행 구하기</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home <i class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a href="tblist.me?page=1">동행구하기 <i class="ion-ios-arrow-forward"></i></a></span> <span>메인페이지 <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
    <br>


    
    <div class="tab-content py-5" id="v-pills-tabContent">
        <div class="tab-pane fade show active" id="v-pills-guk" role="tabpanel" aria-labelledby="v-pills-guk-tab">
              <section class="ftco-section" style="padding-top:0em;">
                    <div class="container">
                       <div class="row justify-content-center pb-5">
                      <div class="col-md-12 heading-section text-center ftco-animate">
                                   <span class="subheading">동행 구하기</span>
                                  <h2 class="mb-4">동행 구하기</h2>
                                  <p>국가, 도시를 선택하시고 검색버튼을 눌러주세요~</p>
                                </div>
                               </div>


                               <div class="row">
                               
                            <script>
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
</script>
                               
                               
                                    <div class="col-md-12">
                                       <div class="search-wrap-1 ftco-animate p-4">
                                          <form action="#" class="search-property-1">
                                       <div class="row">
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

                                                      <select name="city" id="city" class="form-control">

                                                      </select>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                         
                                         
                                          <div class="col-lg align-self-end">
                                             <div class="form-group">
                                                <div class="form-field">
                                             <input type="button" onclick="myselect_board();" value="검색" class="form-control btn btn-primary">
                                                   <script type="text/javascript">
             											function myselect_board(){            		            											
             											/* 	 document.location.href="tbSelectView.me";  */
             												var target = document.getElementById("city");
             												var selected =  target.options[target.selectedIndex].text; 
             											/* 	var result = selected; */
             											/* 	var selected = $("input[id=city]:selected"); */
             											console.log(selected); 
             											document.location.href="tbSelectMy.me?selected="+selected; 
             											
             													}	      
       										      </script>
                                            </div>
                                         </div>
                                          </div>
                                          
                                       </div>
                                     </form> 
                                 </div> 
                                  </div>
                              </div>
          

                                 <hr>
                                 
           
     <table class="type10">
           
            <thead>
            <tr>   
                  <th scope="cols" class="aventl" width="60">번호</th>
                  <th scope="cols" width="200">제목</th>
                  <th scope="cols" width="60">작성자</th>
                  <th scope="cols" width="70">작성 날짜</th>
                  <th scope="cols" width="80">작성자 나이</th>
                  <th scope="cols" width="60">진행상태</th>
            </tr>
            </thead>
            <tr class="airplan">
            
          <c:forEach var="tba" items="${ list }"> 
               <td>${ tba.tId }</td>
                  <td><a href="tbDetailView.me?tId=${ tba.tId }">${ tba.title }</a></td>
                  <td>${ tba.user_id }</td>
        <%--           <td><%= sf.format(nowTime) %></td>
 --%>
                <td>${ tba.write_date }</td> 
                  <td>${ tba.age }</td>
                  <td>${ tba.ing }</td>
            </tr> 
          
	       </c:forEach>
            </tbody>
   </table>



    
              <p align="right">
                  <a href="tbInsertView.me">   <input type="button" value="글쓰기" style="color: white; width:60px; background-color: #b2bbc9; border-radius:0.5em; border: #b2bbc9"> 
             </a></p>


          <!--    <pre align="center">이전    1   2   3   4   5    다음</pre> -->
	<table>
             		<!-- 페이징 처리 -->
		<tr align="center" height="20" id="buttonTab">
			<td colspan="6">
				
				<!-- [이전] -->
				<c:if test="${ pi.currentPage <= 1 }">
					[이전] &nbsp;
				</c:if>
				<c:if test="${ pi.currentPage > 1 }">
					<c:url var="before" value="tblist.me">
						<c:param name="page" value="${ pi.currentPage - 1 }"/>
					</c:url>
					<a href="${ before }">[이전]</a> &nbsp;
				</c:if>
				
				<!-- 페이지 -->
				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<c:if test="${ p eq pi.currentPage }">
						<font color="red" size="4"><b>[${ p }]</b></font>
					</c:if>
					
					<c:if test="${ p ne pi.currentPage }">
						<c:url var="pagination" value="tblist.me">
							<c:param name="page" value="${ p }"/>
						</c:url>
						<a href="${ pagination }">${ p }</a> &nbsp;
					</c:if>
				</c:forEach>
				
				<!-- [다음] -->
				<c:if test="${ pi.currentPage >= pi.maxPage }">
					[다음]
				</c:if>
				<c:if test="${ pi.currentPage < pi.maxPage }">
					<c:url var="after" value="tblist.me">
						<c:param name="page" value="${ pi.currentPage + 1 }"/>
					</c:url> 
					<a href="${ after }">[다음]</a>
				</c:if>
			</td>
		</tr>

    </div></section></div></div>
          </table>
    
    
    
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