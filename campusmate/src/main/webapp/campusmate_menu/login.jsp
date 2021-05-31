<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠퍼스 데이트 | 로그인</title>
<link type="text/css" rel="stylesheet" href="<c:url value='../css/style.css'/>"/>
</head>



<body>
<style>
.login-box .login li button {
    background: #223e5a6b;
}
</style>


<a href="javascript:kakaoLogin();">
<img src="https://www.gb.go.kr/Main/Images/ko/member/certi_kakao_login.png"></a>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>	
	window.Kakao.init("24b26be29ff4d2d72158e4818eddf9e3");
	function kakaoLogin(){
		window.Kakao.Auth.login({
			scope:'profile, account_email, gender',
			success:function(authObj){
				console.log(authObj);
				window.Kakao.API.request({
					url:'/v2/user/me',
					success: res=>{
						const kakao_account  = res.kakao_account;
						console.log(kakao_account);
						
					}
				});
				
			}
		});
	}
</script>
<!-- 상단 헤더 -->
<div class="header">
	<div>
		<div class="logo">
			<h1><a href="../index.jsp"><img src="../img/logo-rem.png"></a></h1>
		</div>

		<div class="top-btn">
			<ul>
				<!-- 로그인 후 
				<li><a href="./member/login.html">로그아웃</a></li>
				<li><a href="./member/join.html">회원정보수정</a></li>
				-->
				<!-- 로그인 전-->
				<li><a href="../campusmate_menu/login.jsp">로그인</a></li>
				<li><a href="../campusmate_menu/join.jsp">회원가입</a></li>
				<!-- 관리자 로그인시 -->
				<li><a href="../campusmate_menu/admin.jsp">관리자</a></li>
			</ul>
		</div>
	</div>
</div>
	<div class="login-box">
		
		<h1>로그인</h1>
		
		<div class="login">
			<ul>
				<li>
					<input type="text" placeholder="아이디">
				</li>
				<li>
					<input type="password" placeholder="비밀번호">
				</li>
				<li>
					<button>로그인</button>
				</li>
			</ul>
		</div>
	
		<div class="login-btn">
			<a href="./campusmate_menu/join.jsp">회원가입</a>
		</div>
	
	
	</div>


<!-- 하단 정보 -->
	<div class="footer">
	
		<div>
			<h1>Light</h1>
			<p>휴스타 3기 </p>
			<p>개발자 : 고수진 김도연 정예성</p>
			<p>github : https://github.com/YS-Jeong/Campusmate.git</p>
			<span>copyright(c) Light. All rights reserved.</span>
	
		</div>
	
	</div>
</body>

</html>