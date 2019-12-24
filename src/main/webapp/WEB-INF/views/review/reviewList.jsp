<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <title>Plan A - 여행을 알차게!</title>
  </head>
   <jsp:include page="../common/header.jsp"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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

        .sidebar-box {
            margin-bottom: 0px;
            padding: 25px;
            padding-top: 0px;
            padding-right: 25px;
            padding-bottom: 25px;
            padding-left: 25px;
            font-size: 15px;
            width: 100%;
        }

  </style>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
    <br><br><br>

    <section class="ftco-section" id="blog-section">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-5">
          <div class="col-md-7 heading-section text-center ftco-animate">
            <span class="subheading">review</span>
            <h2 class="mb-4">여행 후기</h2>
            <p>다른 사람들의 후기를 보고, 다음 여행을 계획해보세요</p>
          </div>
        </div>
    
        <div class="row">
          <div class="col-lg-9">
            <div class="row ftco-animate">
	          <c:forEach var="r" items="${list}">
	          	<div class="col-lg-4" style="margin-bottom: 50px;">
            		<div class="blog-entry justify-content-end">
	            		<c:url var="rDetail" value="rDetail.me">
		                  <c:param name="rId" value="${ r.rId }"/>
		                  <c:param name="page" value="${ pi.currentPage }"/>
		                  <c:param name="rView" value="${r.rView}"/>
		                  <c:param name="rUserId" value="${r.userId}"/>
		               	</c:url>
            		
		              <a href="${rDetail}" class="block-20" style="background-image: url('${contextPath }/resources/reviewPhoto/${r.photoChange }'); width:300px; height:300px ">
		              </a>
		              <div class="text float-right d-block">
		                <div class="d-flex align-items-center pt-2 mb-4 topp">
		                  <div class="one mr-2">
		                    <span class="day">${fn:split(r.rDate,'-')[2]}</span>
		                  </div>
		                  <div class="two">
		                    <span class="yr">${fn:split(r.rDate,'-')[0]}</span>
		                    
		                    <c:choose>
		                    	<c:when test="${fn:split(r.rDate,'-')[1] == '1'}">
		                    		<span class="mos">January</span>
		                    	</c:when>
		                    	<c:when test="${fn:split(r.rDate,'-')[1] == '2'}">
		                    		<span class="mos">February</span>
		                    	</c:when>
		                    	<c:when test="${fn:split(r.rDate,'-')[1] == '3'}">
		                    		<span class="mos">March</span>
		                    	</c:when>
		                    	<c:when test="${fn:split(r.rDate,'-')[1] == '4'}">
		                    		<span class="mos">April</span>
		                    	</c:when>
		                    	<c:when test="${fn:split(r.rDate,'-')[1] == '5'}">
		                    		<span class="mos">May</span>
		                    	</c:when>
		                    	<c:when test="${fn:split(r.rDate,'-')[1] == '6'}">
		                    		<span class="mos">June</span>
		                    	</c:when>
		                    	<c:when test="${fn:split(r.rDate,'-')[1] == '7'}">
		                    		<span class="mos">July</span>
		                    	</c:when>
		                    	<c:when test="${fn:split(r.rDate,'-')[1] == '8'}">
		                    		<span class="mos">August</span>
		                    	</c:when>
		                    	<c:when test="${fn:split(r.rDate,'-')[1] == '9'}">
		                    		<span class="mos">September</span>
		                    	</c:when>
		                    	<c:when test="${fn:split(r.rDate,'-')[1] == '10'}">
		                    		<span class="mos">October</span>
		                    	</c:when>
		                    	<c:when test="${fn:split(r.rDate,'-')[1] == '11'}">
		                    		<span class="mos">November</span>
		                    	</c:when>
		                    	<c:when test="${fn:split(r.rDate,'-')[1] == '12'}">
		                    		<span class="mos">December</span>
		                    	</c:when>
		                    </c:choose>
		                  </div>
		                </div>
		
		                <!-- <div class="float-right">
		                  <i class="icon-lock float-right" name="unlock" style="font-size: 17pt;"></i>
		                </div> -->
		
		                <h3 class="heading">
		                	<a href="${rDetail}">
		                		<font style="font-weight:400; color:black;" size="4">${r.rTitle}</font>
		                	</a>
		               	 	<input type="hidden" name="rIdForLock" value="${r.rId}">
		               	 	
		                	<c:if test="${r.userId eq userId}">
		                		<i onclick="rLock(this)" class="icon-unlock float-right" name="lock" style="font-size: 17pt; color:rgb(32, 204, 165); cursor:pointer;"></i>
		                	</c:if>
		                </h3>
		                <div class="d-flex align-items-center mt-4 meta">
		                  <p class="mb-0"><a href="${rDetail}" class="btn btn-primary">Read More <span class="ion-ios-arrow-round-forward"></span></a>
		                  </p>
		                  <p class="ml-auto mb-0">
		                    <a href="#" class="mr-2">${r.nickname}</a>
		                    <a href="#" class="meta-chat"><span class="icon-eye"></span> ${r.rView}</a>
		                  </p>
		                </div>
		              </div>
	              	</div>
	              </div>
			  </c:forEach>
            </div>
          </div>
		  
  <!-- sidebar -->    
          <div class="col-lg-3 sidebar ftco-animate">
            <div class="sidebar-box ftco-animate mb-3">
              <a href="${contextPath}/rInsertView.me" class="btn btn-primary" style="width: 247px;"><span class="ion-ios-brush"></span>후기 작성</a>
              <!-- width: 240px; height:50px; -->
            </div>
            <div class="sidebar-box">
              <form action="#" class="search-form">
                <div class="form-group">
                  <span class="icon icon-search" onclick="keywordSearch()" style="cursor:pointer;"></span>
                  <input type="text" class="form-control" name="keyword" placeholder="검색(제목/작성자)">
                </div>
              </form>
            </div>
            <div class="sidebar-box ftco-animate">
              <h3 class="heading-sidebar">Categories</h3>
              <ul class="categories">
                <li><a href="rSearch.me?country=대만">대만 <span>(${fn:split(cCount,",")[0]})</span></a></li>
                <li><a href="rSearch.me?country=베트남">베트남 <span>(${fn:split(cCount,",")[1]})</span></a></li>
                <li><a href="rSearch.me?country=일본">일본 <span>(${fn:split(cCount,",")[2]})</span></a></li>
                <li><a href="rSearch.me?country=중국">중국 <span>(${fn:split(cCount,",")[3]})</span></a></li>
                <li><a href="rSearch.me?country=필리핀">필리핀 <span>(${fn:split(cCount,",")[4]})</span></a></li>
                <li><a href="rSearch.me?country=태국">태국 <span>(${fn:split(cCount,",")[5]})</span></a></li>
              </ul>
            </div>
            <div class="sidebar-box ftco-animate">
              <h3 class="heading-sidebar">Tag Cloud</h3>
              <div class="tagcloud">
                <a href="rSearch.me?rTag=혼자서" class="tag-cloud-link">혼자서</a>
                <a href="rSearch.me?rTag=친구와" class="tag-cloud-link">친구와</a>
                <a href="rSearch.me?rTag=가족과" class="tag-cloud-link">가족과</a>
                <a href="rSearch.me?rTag=커플/신혼" class="tag-cloud-link">커플/신혼</a>
                <a href="rSearch.me?rTag=호캉스" class="tag-cloud-link">호캉스</a>
                <a href="rSearch.me?rTag=액티브" class="tag-cloud-link">액티브</a>
                <a href="rSearch.me?rTag=맛집투어" class="tag-cloud-link">맛집투어</a>
                <a href="rSearch.me?rTag=쇼핑" class="tag-cloud-link">쇼핑</a>
                <a href="rSearch.me?rTag=봄" class="tag-cloud-link">봄</a>
                <a href="rSearch.me?rTag=여름" class="tag-cloud-link">여름</a>
                <a href="rSearch.me?rTag=가을" class="tag-cloud-link">가을</a>
                <a href="rSearch.me?rTag=겨울" class="tag-cloud-link">겨울</a>
              </div>
            </div>
          </div>
<!-- sidebar 끝 -->
                
        </div>
        
        <br><br><br>
      	<div class="form-group ftco-animate col-lg-3" style="margin:auto">
            <%-- <input class="btn btn-primary" type="button" onclick="location.href='<%= root %>?currentPage=1'+'&keyword='+keyword+'&hpIndex='+hpIndex+'&hpArea='+hpArea" value="<<"> --%>
            <%-- <input class="btn btn-primary" type="button" onclick="location.href='<%= root %>currentPage=1'" value="<<"> --%>
            <c:if test="${pi.currentPage <=1 }">
            	<input disabled class="btn btn-primary" type="button" value="<">
            </c:if>
            <c:if test="${pi.currentPage >1 }">
            	<c:url var="before" value="rList.me">
            		<c:param name="page" value="${pi.currentPage-1}"/>
            	</c:url>
            	<input class="btn btn-primary" type="button" onclick="location.href='${before}'" value="<">
            </c:if>
            
            <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
            	<c:if test="${p eq pi.currentPage }">   
            		<input disabled class="btn btn-primary" type="button" value="${p}">
            	</c:if>
            	<c:if test="${p ne pi.currentPage }">
	            	<c:url var="pagination" value="rList.me">
	            		<c:param name="page" value="${p}"/>
	            	</c:url>
                  	<input class="btn btn-primary" type="button" onclick="location.href='${pagination}'" value="${p}">
            	</c:if>
           	</c:forEach>
               
            <c:if test="${pi.currentPage >= pi.maxPage}">
            	<input disabled class="btn btn-primary" type="button" value=">">
           	</c:if>
            <c:if test="${pi.currentPage < pi.maxPage}">
           		<c:url var="after" value="rList.me">
           			<c:param name="page" value="${pi.currentPage+1}"/>
            	</c:url>
            	<input class="btn btn-primary" type="button" onclick="location.href='${after}'" value=">">
     		</c:if>
            <%-- <input class="btn btn-primary" type="button" onclick="location.href='<%= root %>currentPage=<%= maxPage %>'" value=">>"> --%>
      	</div>
      	
      </div>
    </section>
      
      <script>
      	function keywordSearch(){
      		var keyword = $('[name=keyword]').val();
      		location.href="rSearch.me?keyword="+keyword;
      	}
      
		
		function rLock(obj){
			
			var lock = $("[name=lock]");
			var newLock1 = '<i onclick="rLock(this)" class="icon-lock float-right" name="lock" style="font-size: 17pt; color:rgb(255, 91, 91); cursor:pointer"></i>'
			var newLock2 = '<i onclick="rLock(this)" class="icon-unlock float-right" name="lock" style="font-size: 17pt; color:rgb(32, 204, 165); cursor:pointer"></i>'
			
			for(var i in lock){
				if(obj==lock[i]){
					
					var rId = $('[name=rIdForLock]').eq(i);
					
					// 잠금 안되어있으면
					if(lock[i].style.color !="rgb(255, 91, 91)"){
						
						$.ajax({
							url: "rLock.me",
			                type: "get",
			                data: {
			                   rLock : '1',
			                   rId : rId.val()
			                }, 
			                success: function(result){
			                	$(obj).parent().append(newLock1);
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
			                   rId : rId.val()
			                }, 
			                success: function(result){
			                	$(obj).parent().append(newLock2);
								$(obj).remove();
			                }, error: function(){
			                    console.log("실패");
			                } 
						})
						
					}
				}
			}
		}
		
      
      </script>
      
      
      
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