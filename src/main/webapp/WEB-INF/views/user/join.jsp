<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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

        .joinInfoLb{
            margin-left:20%;
        }

		#birthYear{
			margin-left:20%;
			width:19%;
			display: inline;
		}

		#birthMonth{
			width:19%;
			display: inline;
		}

		#birthDay{
			float:right;
			margin-right:20%;
			width:19%;		
		}

        #fileName{
            display: inline;
            width:45%;
            margin-left:20%;
        }

        #fileLb{
            display: inline;
            float:right;
            margin-right:20%;
            width:15%;
            line-height: 50px;
        }
		
        #uploadBtn{
            position: absolute;
            overflow: hidden; 
            clip:rect(0,0,0,0); 
        }
               
        .validateLb{
        	margin-left:20%;
        	color:red;
        }
        
        #duplicateId{
        	margin-left:20%;
        	color:green;
        }
	</style>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
        <br><br><br><br>

		<section class="ftco-section ftco-services-2" id="services-section">
			<div class="container">
				<div class="row justify-content-center pb-5">
          <div class="col-md-12 heading-section text-center ftco-animate">
          	<span class="subheading">Plan A</span>
            <h2 class="mb-4">회원가입</h2>
          </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="search-wrap-1 ftco-animate p-4">
                    <form action="insertUser.me" class="search-property-1" method="post" encType="multipart/form-data" id="joinForm">
                        <div class="row">
                            <div class="col-lg align-items-end">
                                <div class="form-group">
                                    <div class="form-field">
                                        <label for="userId" class="joinInfoLb">아이디</label>
                                        <input type="text" class="form-control" id="userId" name="userId" style="width:60%; margin: 0 auto;">
                                        <span id="validateId" class="validateLb"></span>
                                        <span id="duplicateId"></span>
                                        <input type="hidden" id="idValidateCheck" value="0">
                                        <input type="hidden" id="idDuplicateCheck" value="0">
                                        <br>
                                        <label for="userPwd" class="joinInfoLb">비밀번호</label>
                                        <input type="password" class="form-control" id="userPwd" name="userPwd" style="width:60%; margin: 0 auto;">
                                        <span id="validatePwd" class="validateLb"></span>
                                        <input type="hidden" id="pwdValidateCheck" value="0"><br>
                                        <label for="userPwd2" class="joinInfoLb">비밀번호 재확인</label>
                                        <input type="password" class="form-control" id="userPwd2" style="width:60%; margin: 0 auto;">
                                        <span id="validatePwd2" class="validateLb"></span>
                                        <input type="hidden" id="pwdValidateCheck2" value="0"><br>
                                        <label for="userName" class="joinInfoLb">이름</label>
										<input type="text" class="form-control" id="userName" name="userName" style="width:60%; margin: 0 auto;">
										<span id="validateName" class="validateLb"></span>
                                        <input type="hidden" id="nameValidateCheck" value="0"><br>
										<label for="nickName" class="joinInfoLb">닉네임</label>
                                        <input type="text" class="form-control" id="nickName" name="nickName" style="width:60%; margin: 0 auto;">
                                        <span id="validateNick" class="validateLb"></span>
                                        <input type="hidden" id="nickValidateCheck" value="0"><br>
                                        <label for="birthYear" class="joinInfoLb">생년월일</label><br>
										<input type="text" class="form-control" id="birthYear" name="birthYear" placeholder="년(4자리)" maxlength="4">&nbsp;&nbsp;
										<select name="birthMonth" id="birthMonth" name="birthMonth" class="form-control">
											<option value="mon">월</option>
											<option value="01">1</option>
											<option value="02">2</option>
											<option value="03">3</option>
											<option value="04">4</option>
											<option value="05">5</option>
											<option value="06">6</option>
											<option value="07">7</option>
											<option value="08">8</option>
											<option value="09">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
										</select>
										<input type="text" class="form-control" id="birthDay" name="birthDay" placeholder="일" maxlength="2">
										<span id="validateBirth" class="validateLb"></span>
                                        <input type="hidden" id="birthYearValidateCheck" value="0">
                                        <input type="hidden" id="birthMonthValidateCheck" value="0">
                                        <input type="hidden" id="birthDayValidateCheck" value="0"><br><br>
										<label for="phone" class="joinInfoLb">휴대폰 번호</label>
                                        <input type="text" class="form-control" id="phone" name="phone" style="width:60%; margin: 0 auto;"
                                        placeholder="'-' 없이 입력" maxlength="11">
                                        <span id="validatePhone" class="validateLb"></span>
                                        <input type="hidden" id="phoneValidateCheck" value="0"><br>
										<label for="email" class="joinInfoLb">이메일</label>
                                        <input type="text" class="form-control" id="email" name="email" style="width:60%; margin: 0 auto;">
                                        <span id="validateEmail" class="validateLb"></span>
                                        <input type="hidden" id="emailValidateCheck" value="0"><br>										   
                                        <label class="joinInfoLb">프로필 사진</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <div class="profile">
                                            <input type="text" class="form-control" id="fileName" value="선택된 파일 없음" readonly>
                                            <label for="uploadBtn" class="form-control btn btn-primary" id="fileLb">찾아보기</label>
                                            <input type="file" id="uploadBtn" class="uploadBtn" name="photo">
                                        </div><br><br>
                                        <input type="submit" class="form-control btn btn-primary" onclick="return validate();" value="회원가입" style="width:60%; margin: 0 auto;"><br>
                                    </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
			</div>
        </section>

    <footer class="ftco-footer ftco-section" id="footer-div">
        <div class="container">
            <div class="row mb-5">
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <p><font size="5" color="#E2C0BB">About </font>&nbsp;<span><a href="index.jsp"><font size="5" color="gray">Plan A</font></a></span></p>
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

    <script>   
    // 파일 업로드 버튼 디자인
    $('#uploadBtn').on('change', function(){
        if(window.FileReader){
            console.log($(this));
            var fileName = $(this)[0].files[0].name;
        }else{
            var fileName = $(this).val().split('/').pop().split('\\').pop();
        }
        $(this).siblings('#fileName').val(fileName);
    });
    
    $(function(){
       	var userIdCheck = RegExp(/^[a-z0-9_\-]{5,20}$/);
       	var userPwdCheck = RegExp(/^(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]|.*[0-9]).{6,16}$/);
       	var userNameCheck = RegExp(/^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/);
       	var nickNameCheck = RegExp(/^[가-힣]{2,8}|[a-zA-Z]{4,10}$/);
       	var birthYearCheck = RegExp(/^[0-9]{4}$/);
       	var birthMonthCheck = RegExp(/^[0-9]{1,2}$/);
       	var phoneCheck = RegExp(/^01[0179][0-9]{7,8}$/);
       	var emailCheck = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+$/);
        	  
     	// 아이디 정규식 확인
    	$('#userId').blur(function(){
			$('#duplicateId').hide();
    		if($('#userId').val() == ""){
    			$('#validateId').text("필수 정보입니다.");
    			$('#validateId').show();
    			$('#validateId').append("<br>");
    			$('#idValidateCheck').val(0);
    			$('#idDuplicateCheck').val(0);
    		}else{
    			if(!userIdCheck.test($('#userId').val())){
   					$('#validateId').text("5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.");
       				$('#validateId').show();
       				$('#validateId').append("<br>");
       				$('#idValidateCheck').val(0);
       				$('#idDuplicateCheck').val(0);
    			}else{
    				// 아이디 중복 확인
    				$.ajax({
    	    			url: "duplicationCheck.me",
    	    			data: {id:$('#userId').val()},
    	    			success: function(data){
    	    				$('#validateId').hide();
    	    				if(data.isUsable == true){   	    					
    	    					$('#duplicateId').text("사용 가능한 아이디입니다.");
    	    					$('#duplicateId').css("color","green");
    	    					$('#duplicateId').show();
    	    					$('#duplicateId').append("<br>");
    	    					$('#idValidateCheck').val(1);
    	    					$('#idDuplicateCheck').val(1);
    	    				}else{
    	    					$('#duplicateId').text("이미 사용중인 아이디입니다.");
    	    					$('#duplicateId').css("color","red");
    	    					$('#duplicateId').show();
    	    					$('#duplicateId').append("<br>");
    	    					$('#idValidateCheck').val(1);
    	    					$('#idDuplicateCheck').val(0);
    	    				}
    	    			},
    	    			error: function(request,status,error){
    	    				console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
    	    			}
    	    		});
    			} 			
    		}   		 		
    	});
     	
     	// 비밀번호 정규식 확인
     	$('#userPwd').blur(function(){
     		if($('#userPwd').val() == ""){
     			$('#validatePwd').text("필수 정보입니다.");
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
     			$('#validatePwd2').text("필수 정보입니다.");
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
     	
     	// 이름 정규식 확인
     	$('#userName').blur(function(){
     		if($('#userName').val() == ""){
     			$('#validateName').text("필수 정보입니다.");
     			$('#validateName').show();
     			$('#validateName').append("<br>");
     			$('#nameValidateCheck').val(0);
     		}else{
     			if(!userNameCheck.test($('#userName').val())){
     				$('#validateName').text("한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)");
     				$('#validateName').show();
     				$('#validateName').append("<br>");
     				$('#nameValidateCheck').val(0);
     			}else{
     				$('#validateName').hide();
     				$('#nameValidateCheck').val(1);
     			}
     		}
     	});
     	
     	// 닉네임 정규식 확인
     	$('#nickName').blur(function(){
     		if($('#nickName').val() == ""){
     			$('#validateNick').text("필수 정보입니다.");
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
     	
     	// 생년 정규식 확인
     	$('#birthYear').blur(function(){
     		if($('#birthYear').val() == ""){
     			$('#validateBirth').text("필수 정보입니다.");
     			$('#validateBirth').show();
     			$('#birthYearValidateCheck').val(0);
     		}else{
				$('#validateBirth').hide();
				$('#birthYearValidateCheck').val(1);	
     		}
     		
     		if(!birthYearCheck.test($('#birthYear').val()) || (Number($('#birthYear').val()) < 1920 || Number($('#birthYear').val()) > 2019)){
  				$('#validateBirth').text("태어난 년도 4자리를 정확하게 입력하세요.");
      			$('#validateBirth').show();
      			$('#birthYearValidateCheck').val(0);
      		}else if($('#birthDay').val() == ""){
      			$('#validateBirth').text("태어난 일(날짜) 2자리를 정확하게 입력하세요.");
       			$('#validateBirth').show();
       			$('#birthDayValidateCheck').val(0);
      		}else if($('#birthMonthValidateCheck').val() == "0"){
      			$('#validateBirth').text("생년월일을 다시 확인해주세요.");
       			$('#validateBirth').show();
       			$('#birthMonthValidateCheck').val(0);
      		}
     	});
     	
     	// 생월 셀렉트박스 이벤트
     	$('#birthMonth').change(function(){
     		if($('#birthMonth').val() == "mon"){
     			$('#birthMonthValidateCheck').val(0);
     			$('#validateBirth').text("생년월일을 다시 확인해주세요.");
       			$('#validateBirth').show();
     		}else{
     			$('#birthMonthValidateCheck').val(1);
     			$('#validateBirth').hide();
     		}
     		
     		if($('#birthYear').val() == ""){
   				$('#validateBirth').text("태어난 년도 4자리를 정확하게 입력하세요.");
     			$('#validateBirth').show();
     			$('#birthYearValidateCheck').val(0);
   			}else if($('#birthDay').val() == ""){
   				$('#validateBirth').text("태어난 일(날짜) 2자리를 정확하게 입력하세요.");
       			$('#validateBirth').show();
       			$('#birthDayValidateCheck').val(0);
   			}
     	});
     	
     	// 생일 정규식 확인
     	$('#birthDay').blur(function(){
   			if($('#birthDay').val() == "" || !birthMonthCheck.test($('#birthDay').val()) || $('#birthDay').val() == "0"){
   				$('#validateBirth').text("태어난 일(날짜) 2자리를 정확하게 입력하세요.");
       			$('#validateBirth').show();
       			$('#birthDayValidateCheck').val(0);
   			}else{
   				$('#validateBirth').hide();
				$('#birthDayValidateCheck').val(1);
   			}
   			
   			if($('#birthYear').val() == "0"){
   				$('#validateBirth').text("태어난 년도 4자리를 정확하게 입력하세요.");
     			$('#validateBirth').show();     			
     			$('#birthYearValidateCheck').val(0);
   			}else if($('#birthMonthValidateCheck').val() == "0"){
   				$('#validateBirth').text("생년월일을 다시 확인해주세요.");
       			$('#validateBirth').show();
       			$('#birthMonthValidateCheck').val(0);
   			}
     	});
     	
     	// 휴대폰 번호 정규식 확인
     	$('#phone').blur(function(){
     		if($('#phone').val() == ""){
     			$('#validatePhone').text("필수 정보입니다.");
     			$('#validatePhone').show();
     			$('#validatePhone').append("<br>");
     			$('#phoneValidateCheck').val(0);
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
     	
     	// 이메일 정규식 확인
     	$('#email').blur(function(){
     		if($('#email').val() == ""){
     			$('#validateEmail').text("필수 정보입니다.");
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
    });
    
    function validate(){
    	if($('#idValidateCheck').val() == "0" || $('#idDuplicateCheck').val() == "0"){
    		alert("사용 가능한 아이디를 입력하세요.");
    		$("#userId").focus();
    		return false;
    	}else if($('#pwdValidateCheck').val() == "0" || $('#pwdValidateCheck2').val() == "0"){
    		alert("비밀번호를 확인해주세요.");
    		$("#userPwd").focus();
    		return false;
    	}else if($('#nameValidateCheck').val() == "0"){
    		alert("이름을 확인해주세요.");
    		$("#userName").focus();
    		return false;
    	}else if($('#nickValidateCheck').val() == "0"){
    		alert("닉네임을 확인해주세요.");
    		$("#nickName").focus();
    		return false;
    	}else if($('#birthYearValidateCheck').val() == "0" || $('#birthMonthValidateCheck').val() == "0" || $('#birthDayValidateCheck').val() == "0"){
    		alert("생년월일을 확인해주세요.");
    		$("#birthYear").focus();
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
    		return true;
    	}
    }
    </script>
    </body>

</html>