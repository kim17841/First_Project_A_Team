<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/user/user_signin.css">
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="/resources/js/user/user_signin.js"></script>
</head>
<body>
	<header>
		<div class="header_logo">
			<img src="/resources/img/user/logo.png" alt="">
		</div>
	</header>
	<section>
		<div class="section_loginform">
			<span class="login"><span class="login_text">로그인</span><small><a href="/user/find">비밀번호를 잊어버리셨나요?</a></small></span>
			<form method="post" action="signin_check">
				<div>
					<div class="input_text">
						<input type="text" name="id" placeholder="ID" autocomplete="off" class="input_size">
						<span id="id" class="formSpans"></span>
					</div>
					<div class="input_text">
						<input type="password" name="password" placeholder="비밀번호" autocomplete="off" class="input_size">
						<span id="password" class="formSpans"></span>
						<!-- test="${message == 'error' } - 조건식 : 컨트롤러에서 들고오는 메세지-->

					</div>
					<button class="login_submit">로그인</button>
					<c:if test="${message == 'error' }">
            				<div class="error_text">아이디 또는 비밀번호가 일치하지 않습니다.</div>
         			</c:if>                    
				</div> 
			</form>
			
			<span class="division_line"> <br>다른 방법으로 로그인하기</span>
                  
			<div class="image-div">
				<div onclick="location.href='https://nid.naver.com/nidlogin.login?mode=form&url=https%3A%2F%2Fwww.naver.com'">
					<div class="naverIcon"><img src="/resources/img/user/iconNaver.svg" alt=""></div>
                </div>
				<div onclick="location.href='https://accounts.kakao.com/'">
					<div class="kakaoIcon"><img src="/resources/img/user/iconKakao.svg" alt=""></div>
				</div>
				<div onclick="location.href='https://www.facebook.com/login'">
					<div class="faceIcon"><img src="/resources/img/user/iconFace.svg" alt=""></div>
				</div>
				<div onclick="location.href='https://appleid.apple.com/sign-in'">
					<div class="appleIcon"><img src="/resources/img/user/iconApple.svg" alt=""></div>
				</div>
			</div>
                  
			<div>
				<span class="signup_text"> <br>혹시 아직 회원이 아닌가요? </span>
				<br>
				<form method="get" action="/user/signup">
					<button class="signup">회원가입</button>
				</form>
			</div>
		</div>
	</section>
	<footer>

	</footer>

</body>
</html>