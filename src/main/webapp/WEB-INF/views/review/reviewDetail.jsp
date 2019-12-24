<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
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
  </style>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
   
     
     <section class="hero-wrap hero-wrap-2" style="background-image: url('${contextPath }/resources/images/bg_4.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-4">
            <font class="mb-3 bread" size="7" style="font-weight:400">여행 후기</font>
            <p class="breadcrumbs"><span class="mr-2"><a href="${contextPath }/index.jsp">PlanA <i class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a href="rList.me">여행 후기 <i class="ion-ios-arrow-forward"></i></a></span> <span>${review.rTitle} <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
      <div class="container">
        <div class="row">
        
          
          <div class="col-lg-8 ftco-animate">
            <h2 class="mb-1">${review.rTitle}</h2>
            ${review.rDate}<font style="float:right" name="rView">조회수 : ${review.rView}</font>
            <c:if test="${review.userId eq user.userId}">
            		<a href="rUpdateView.me?rId=${review.rId}" style="float:right; color:rgb(255, 91, 91);"><span>[수정]&nbsp;&nbsp;</span></a>
            	</c:if>
            <hr width=100% color="#E2C0BB" align="left" size=100/><br><br>
            <font style="color:black">${review.rContent}</font>
            <br><br>
            <div class="about-author d-flex p-4 bg-light">
              <div class="bio mr-5" style="width:20%; height:20%">
              <c:if test="${detail != null }">
                <img src="${contextPath}/resources/profileImg/${detail}" alt="Image placeholder" class="img-fluid">
              </c:if>
              <c:if test="${detail == null }">
                <img src="${contextPath}/resources/profileImg/user.png" alt="Image placeholder" class="img-fluid">
              </c:if>
              </div>
              <div class="desc">
                <h3>${review.nickname}</h3>
                  <div class="tagcloud">
                  	<c:forTokens var="t" items="${review.rTag}" delims=",">
                   		<a href="rSearch.me?rTag=${t}" class="tag-cloud-link" style="background-color:#e2c0bb; color:white"><c:out value="${t}"/></a>
                   	</c:forTokens>
                  </div>
              </div>
            </div>
			

            <div class="pt-5 mt-5" name="test">
              <font size="6" name="rNum" style="color:black">${rNum} Comments</font><br><br>
              <ul class="comment-list" name="ul">
              
              <c:forEach var="co" items="${cList}" varStatus="vs">
              	<li class="comment" style="padding-left:${(cList[vs.index].clevel-1)*70}px">
                  <div class="vcard bio">
                    <img src="${contextPath }/resources/profileImg/${co.profilePicture}" alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>${co.cNickname}</h3>
                    <div class="meta">
						<c:forTokens items="${co.cDate}" delims="T" var="date">
							${date}&nbsp;
						</c:forTokens>
					</div>
                    <p>${co.cContent}</p>
                    <a onclick="reComment(this);" class="reply" name="reply">Reply</a>
                    <div>
                    	<input type="hidden" name="refrId" value="${review.rId}">
		               	<input type="hidden" name="refcId" value="${co.cId}">
		               	<input type="hidden" name="cWriter" value="${user.userId}">
		               	<input type="hidden" name="clevel" value="${co.clevel + 1}">
                    </div>
                  </div>
                </li>
              </c:forEach>
              
              </ul>
              <!-- END comment-list -->
            <input type="hidden" name="refrId" value="${review.rId}">
          	<input type="hidden" name="refcId" value="0">
          	<input type="hidden" name="cWriter" value="${user.userId}">
          	<input type="hidden" name="clevel" value="1">
              <div class="comment-form-wrap">
                <div class="p-4 bg-light">
                  <div class="form-group">
                    <label for="message">댓글 등록</label>
                    <textarea name="cContent" id="message" cols="10" rows="5" class="form-control"></textarea>
                  </div>
                  <div class="form-group text-right">
                    <input type="button" onclick="insertComment(this)" value="등록" class="btn py-2 px-4 btn-primary">&nbsp;
                    <input type="reset" onclick="resetComment(this)" value="취소" class="btn py-2 px-4 btn-primary" style="background-color: #e8d6d3;">
                  </div>
                </div>
              </div>
            </div>
          </div> <!-- .col-md-8 -->

<!-- 사이드바 -->
          <div class="col-lg-4 sidebar ftco-animate">
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
              <h3 class="heading-sidebar">Popular Review</h3>
              
              <c:forEach var="po" items="${popular}">
              <div class="block-21 mb-4 d-flex">
           			<c:url var="rDetail" value="rDetail.me">
	                  <c:param name="rId" value="${ po.rId }"/>
	                  <c:param name="page" value="${page}"/>
	                  <c:param name="rView" value="${po.rView}"/>
	               	</c:url>
                <a class="blog-img mr-4" style="background-image: url('${contextPath }/resources/reviewPhoto/${po.photoChange}');"></a>
                <div class="text">
                  <h3 class="heading"><a href="${rDetail}">${po.rTitle}</a></h3>
                  <div class="meta">
                    <div><a href="${rDetail}"><span class="icon-calendar"></span> ${po.rDate}</a></div>
                    <div><a href="${rDetail}"><span class="icon-person"></span>${po.nickname}</a></div>
                    <div><a href="${rDetail}"><span class="icon-eye"></span> ${po.rView}</a></div>
                  </div>
                </div>
              </div>
              </c:forEach>
              
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

        </div>
      </div>
    </section> <!-- .section -->

	<script>
		function insertComment(obj){
			
			var cContent = $(obj).parent().siblings().find('textArea').val();
			var refrId = $(obj).parent().parent().parent().siblings('input[name="refrId"]').val();
			var refcId = $(obj).parent().parent().parent().siblings('input[name="refcId"]').val();
			var cWriter = $(obj).parent().parent().parent().siblings('input[name="cWriter"]').val();
			var clevel = $(obj).parent().parent().parent().siblings('input[name="clevel"]').val();
			
			$.ajax({
				url: "cInsert.me",
                type: "get",
                data: {
                   cContent : cContent,
                   refrId : refrId,
                   refcId : refcId,
                   cWriter : cWriter,
                   clevel : clevel
                }, 
                success: function(result){
                   console.log("성공");
                   var rNum = result.newComment.length;
                   var newComment = result.newComment;
                   var newCommentForm = "";
                   var dateToString = result.dateToString;
               	   // 출력
                   for(var i=0; i<newComment.length; i++){
               		   
               		   var date = dateToString[i].split("T");
               		   
	               		newCommentForm +=
			             	'<li class="comment" style="padding-left:'+(newComment[i].clevel-1)*70+'px">'
	                     	+	'<div class="vcard bio">'
	                        +		'<img src="'+'${contextPath}/resources/profileImg/'+newComment[i].profilePicture+'" alt="Image placeholder">'
	                     	+	'</div>'
	                     	+	'<div class="comment-body">'
	                     	+		'<h3>'+newComment[i].cNickname+'</h3>'
	                       	+		'<div class="meta">'
	   						+			date[0]+'&nbsp;'+date[1]
	   						+		'</div>'
	                       	+		'<p>'+newComment[i].cContent+'</p>'
	                       	+		'<a onclick="reComment(this);" class="reply" name="reply">Reply</a>'
	                       	+		'<div>'
	                       	+			'<input type="hidden" name="refrId" value="'+newComment[i].refrId+'">'
	   		               	+			'<input type="hidden" name="refcId" value="'+newComment[i].cId+'">'
	   		               	+			'<input type="hidden" name="cWriter" value="'+$("[name=cWriter]").val()+'">'
	   		               	+			'<input type="hidden" name="clevel" value="'+(newComment[i].clevel + 1)+'">'
	                       	+		'</div>'
		                    +	'</div>'
	                   		+ '</li>';
               	   }
               	   
               	   $(obj).parent().siblings().find('textArea').val("");
                   $('[name=newComment]').remove();
                   $('[name=ul]').children().remove();
                   $('[name=rNum]').html(rNum+" Comments");
                   $('[name=ul]').append(newCommentForm);
                   
                }, error: function(){
                   console.log("실패");
                } 
			})
			
		}
	
		function reComment(obj){
			
			$('[name=newComment]').remove();
			
			var commentForm =  
				'<div class="comment-form-wrap" name="newComment">'
           		+ '<div class="p-4 bg-light">'
          			+ '<div class="form-group">'
      					+ '<label for="message">댓글 등록</label>'
           				  + '<textarea name="cContent" id="message" cols="10" rows="5" class="form-control"></textarea>'
            		+ '</div>'
            		+ '<div class="form-group text-right">'
              			+ '<input type="button" onclick="insertComment(this)" value="등록" class="btn py-2 px-4 btn-primary">&nbsp;'
             			+ '<input type="reset" onclick="resetComment(this)" value="취소" class="btn py-2 px-4 btn-primary" style="background-color: #e8d6d3;">'
            		+ '</div>'
       			+ '</div>'
        		+ '</div>';
        		
       		$(obj).next().append(commentForm);
		}
		
		function resetComment(obj){
			$('[name=newComment]').remove();
			$(obj).parent().siblings().find('textArea').val("");
		}
		
		function keywordSearch(){
      		var keyword = $('[name=keyword]').val();
      		location.href="rSearch.me?keyword="+keyword;
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