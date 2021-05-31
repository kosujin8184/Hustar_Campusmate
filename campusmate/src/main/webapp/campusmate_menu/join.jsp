<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠퍼스 데이트 | 회원가입</title>
<link type="text/css" rel="stylesheet" href="<c:url value='../css/style.css'/>"/>
</head>



<body>
<style>

</style>
<!-- 상단 헤더 -->
<div class="header">
	<div>
		<div class="logo">
			<h1><a href="./index.jsp"><img src="../img/logo-rem.png"></a></h1>
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






<!-- contents 시작 -->
<div class="join-box">
	
	<h1>회원가입</h1>
	
	<div class="join-form">
		<ul>
			<li>
				<label for="">학번</label>
				<input type="text" placeholder="학번">
			</li>
			<li>
				<label for="">비밀번호</label>
				<input type="password" placeholder="비밀번호">
			</li>
			<li>
				<label for="">비밀번호 확인</label>
				<input type="password" placeholder="비밀번호 확인">
			</li>
			<li>
				<label for="">이름</label>
				<input type="text" placeholder="이름">
			</li>
			<li>
				<label for="">연락처</label>
				<input type="text" placeholder="연락처">
			</li>
			<li>
				<label for="">생년월일</label>
				<input type="text" placeholder="생년월일">
			</li>
			<li class="gender">
				<label for="">성별</label>
				<span>
					<label for="">남</label>
					<input type="radio">
				</span>
				<span>
					<label for="">여</label>
					<input type="radio">
				</span>
			</li>
			<li>
				<label for="">학교</label>
				<select name="" id="">
					<option value="">경북대학교</option>
					<option value="">영남대학교</option>
					<option value="">계명대학교</option>
				</select>
				
				<label for="">학과</label>
				<select name="" id="">
					<option value="">기계공학과</option>
					<option value="">정보통신공학과</option>
					<option value="">컴퓨터공학과</option>
					<option value="">전자공학과</option>
					<option value="">경영학과</option>
					<option value="">경제학과</option>
				</select>
			</li>
			<li class="add">
				<label for="">주소</label>
				<span class="zipcode">
					<input type="text"><button>검색</button>
				</span>
				<span>
					<input type="text" placeholder="기본 주소">
				</span>
				<span>
					<input type="text" placeholder="상세 주소">
				</span>
			</li>
		</ul>
	</div>

	<div class="join-btn">
		<a href="#none">이전</a>	
		<a href="#none">가입완료</a>
	</div>

</div>
<!-- contents 끝 -->




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