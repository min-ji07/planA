<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="ko">
  <head>
      
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
                width: 7.5px;
                height: 10px;
                border-radius: 0%;
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
            .inputGroup label:after {/*원*/
                width: 32px;
                height: 32px;
                content: '';
                border: 2px solid #D1D7DC;
                background-color: #fff;
                background-image: url("data:image/svg+xml,%3Csvg width='32' height='32' viewBox='0 0 32 32' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M5.414 11L4 12.414l5.414 5.414L20.828 6.414 19.414 5l-10 10z' fill='%23fff' fill-rule='nonzero'/%3E%3C/svg%3E ");
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
                max-width: 550px;
                margin: 30px auto;
                font-size: 15px;
                font-weight: 600;
                line-height: 36px;
            }
            body {
                background-color: rgb(255, 255, 255);
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

            .row1 {
                display: -webkit-box;
                display: -ms-flexbox;
                display: flex;
                -ms-flex-wrap: wrap;
                flex-wrap: wrap;
                margin-right: 40px;
                margin-left: 40px;
            }
        </style>
    </head>

    <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	<jsp:include page="../common/header.jsp"/>
	
        <section class="ftco-section ftco-services-2" id="services-section">
            <br><br>
            <div class="container">
                <div class="col-md-12 heading-section text-center ftco-animate">
                    <span class="subheading">Trip &amp; Info</span>
                    <h2 class="mb-4">Custom Travel Information</h2>
                </div>
            </div>
        </section>
        
        
        <!--쳌박-->
	        <section class="ftco-section" >
	        <form name="cgsearch">
	            <div class="container">
	                <div class="row p-5 col-lg-9 justify-content-center" style="border:1px solid lightgray; margin: auto;" align-items>
	                    <div class="col-lg-4 room-wrap checkList" id="checkList" >
	                        <div class="justify-content-center" >
	                            <div class="row justify-content-center">
	                                    <span style="border-bottom: 2px solid rgb(226, 192, 187); height: 45px;"><h3>여행 구성원</h3></span>
	                                
	                                <div class="inputGroup" style="width:310px; padding-top: 10px;"><input id="혼자서" name="option" type="checkbox" onClick="count_ck(this);"/><label for="혼자서">혼자서</label></div>
	                                <div class="inputGroup" style="width:310px;"><input id="친구와" name="option" type="checkbox" onClick="count_ck(this);"/><label for="친구와">친구와</label></div>
	                                <div class="inputGroup" style="width:310px;"><input id="가족과" name="option" type="checkbox" onClick="count_ck(this);"/><label for="가족과">가족과</label></div>
	                                <div class="inputGroup" style="width:310px;"><input id="커플/신혼" name="option" type="checkbox" onClick="count_ck(this);"/><label for="커플/신혼">커플/신혼</label></div>
	                            </div>
	                            
	                        </div>
	                    </div>
	                    <div class="col-lg-4 room-wrap checkList" id="checkList" >
	                        <div class="row justify-content-center">
	                                <span style="border-bottom: 2px solid rgb(226, 192, 187); height: 45px;"><h3>여행 테마</h3></span>
	                            
	                            <div class="inputGroup" style="width:310px; padding-top: 10px;"><input id="호캉스" name="option" type="checkbox" onClick="count_ck(this);"/><label for="호캉스">호캉스</label></div>
	                            <div class="inputGroup" style="width:310px;"><input id="액티브" name="option" type="checkbox" onClick="count_ck(this);"/><label for="액티브">액티브</label></div>
	                            <div class="inputGroup" style="width:310px;"><input id="맛집" name="option" type="checkbox" onClick="count_ck(this);"/><label for="맛집">맛집</label></div>
	                            <div class="inputGroup" style="width:310px;"><input id="쇼핑" name="option" type="checkbox" onClick="count_ck(this);"/><label for="쇼핑">쇼핑</label></div>
	                        </div>
	                    </div>
	                    <div class="col-lg-4 room-wrap checkList" id="checkList" >
	                        <div class="row justify-content-center">
	                                <span style="border-bottom: 2px solid rgb(226, 192, 187); height: 45px;"><h3>여행 계절</h3></span>
	                            
	                            <div class="inputGroup" style="width:310px; padding-top: 10px;"><input id="봄" name="option" type="checkbox" onClick="count_ck(this);"/><label for="봄">봄</label></div>
	                            <div class="inputGroup" style="width:310px;"><input id="여름" name="option" type="checkbox" onClick="count_ck(this);"/><label for="여름">여름</label></div>
	                            <div class="inputGroup" style="width:310px;"><input id="가을" name="option" type="checkbox" onClick="count_ck(this);"/><label for="가을">가을</label></div>
	                            <div class="inputGroup" style="width:310px;"><input id="겨울" name="option" type="checkbox" onClick="count_ck(this);"/><label for="겨울">겨울</label></div>   
	                        </div>
	                        
	                    </div>
	                    <div class="col-lg-12">
	                        <br><br>
	                        <div class="row justify-content-center">    
	                            <p class="mb-0" id="formupdate" ><a class="btn btn-primary px-5 py-3" onclick="update();">Search Places</a></p>
	                        </div>
	                    </div>
	                    
	                </div>
	            </div>
	        </form>
	        
	        <!-- 쳌 5개 까지로 막기! -->
			<script>
				function count_ck(obj){
					var chk_obj = document.getElementsByName("option");
					var checked = 0;
					
					for(i=0; i< chk_obj.length; i++){
						if(chk_obj[i].checked){
							checked ++;
							
						}
					}
					if(checked > 5){
						alert("최대 5개까지 선택가능합니다.")
						obj.checked = false;
						return false;
					}
				}	        	
			</script>
            <script>
         		// 다중 checkbox 타입의 값 데이터베이스에서 저장, 불러오기, 출력
          		// https://webisfree.com/2015-03-10/%EB%8B%A4%EC%88%98%EC%9D%98-input-checkbox-%ED%83%80%EC%9E%85%EC%9D%98-%EA%B0%92-%EB%8D%B0%EC%9D%B4%ED%84%B0%EB%B2%A0%EC%9D%B4%EC%8A%A4%EC%97%90%EC%84%9C-%EC%A0%80%EC%9E%A5%ED%95%98%EA%B8%B0-%EB%B6%88%EB%9F%AC%EC%98%A4%EA%B8%B0-%EC%B6%9C%EB%A0%A5%ED%95%98%EA%B8%B0
          		// https://feel2you84.tistory.com/entry/2%EA%B0%9C%EC%9D%B4%EC%83%81-%ED%8F%BC%EB%8B%A4%EC%A4%91-%ED%8F%BC%EC%9D%84-%EB%8F%99%EC%8B%9C-%EC%A0%84%EC%86%A1submit%ED%95%98%EA%B8%B0
		      	// 다중 폼 한곳으로 보내기
		      	
		      	// https://lng1982.tistory.com/80
		      	// 체크리스트 저장
		      	
		      	//checkList
		      	//체크리스트들을 배열로 만들고
		      	//스트링으로 바꿔서 디비에 저장하기
		      	
		      	//체크 되어 있는 값 추출
		      	function update(){
		      		//클릭한 값 가져오기
		      		var checked = $("input[name=option]:checked");
		      		console.log(checked);
		      		
		      		var result = "";
		      		
		      		for(var i = 0; i< checked.length; i++){ //checked의 갯수만큼 for문 돌리기
		      			if(i == checked.length-1){
		      				result += checked[i].id; // length의 마지막번호는 그냥 넣고
		      			}else{
		      				result += checked[i].id + "/"; // 아닌건 / 붙여서 넣음
		      			}
		      			
		      		}
		      		location.href="tCheckListSave.me?checked="+result;
		      		console.log("dljdldjld"+result);
		      	}
            </script>

            <br><br>
            
            <div class="container">
                <div class="row1">
	                <c:forEach var="t" items="${ list }"> 
	                    <div class="col-md-6 col-lg-3 d-flex ftco-animate">
	                        <div class="blog-entry justify-content-end">
	                        <a class="block-20" style="background-image: url('${contextPath}/resources/images/${ t.cityPicture }');">
	                        </a>
	                        
	                         <c:url var="tdetail" value="tdetail.me">
                            	<c:param name="tseq" value="${t.tseq}"/>
                            </c:url>
	                        <div class="text float-right d-block">
	                            <h3 class="heading"><a href="${ tdetail }">${ t.themeName }</a></h3>
	                            
	                            <p>${ t.cityInfo }</p>       
	                            
	                            <div class="d-flex align-items-center mt-4 meta">
		                            <p class="mb-0"><a href="${ tdetail }" class="btn btn-primary">더알아보기 <span class="ion-ios-arrow-round-forward"></span></a></p>
	                            </div>
	                        </div>
	                        </div>
	                    </div>
					</c:forEach>
				</div>
			</div>
        </section>        

        <br><br>
		<jsp:include page="../common/footer.jsp"/>
    </body>
</html>