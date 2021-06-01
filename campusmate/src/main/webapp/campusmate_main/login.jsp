<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 | 캠퍼스 메이트</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>  
</head>
<body>
<%= application.getContextPath()%><br>
<%= request.getSession().getServletContext().getRealPath("/") %><br>
<%= application.getRealPath("/") %><br>





<div class ="login-box">

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
				<button>로그인
				</button>
			</li>
				
		</ul>	
			
	</div>
	<div class ="login-btn">
		<a href ="../join.html">회원가입</a>
	</div>
</div>

</body>
</html>