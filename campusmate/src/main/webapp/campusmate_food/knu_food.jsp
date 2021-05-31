<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CampusMate</title>
<link rel="icon" href="../img/Logo.PNG">
 <link type="text/css" rel="stylesheet" href="<c:url value='../css/style.css'/>"/>
</head>
<body>





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
				<li><a href="../campusmate_main/login.jsp">로그인</a></li>
				<li><a href="../member/join.html">회원가입</a></li>
				<!-- 관리자 로그인시 -->
				<li><a href="../adm/set.html">관리자</a></li>
			</ul>
		</div>
	</div>
</div>



<!-- 메뉴 -->
<div class="menu">
	<div>
		<ul>
			<li>
				<a href="#none">캠퍼스 투어</a>
				<ul class="submenu">
					<li><a href="../campusmate_tour/knu_tour.jsp">경북대</a></li>
					
					<li><a href="../campusmate_tour/yu_tour.jsp">영남대</a></li>
					<li><a href="../campusmate_tour/kmu_tour.jsp">계명대</a></li>
				</ul>
			</li>
			<li>
				<a href="#none">캠퍼스 데이트</a>
				<ul class="submenu">
					<li><a href="../campusmate_date/date_intro.jsp">소개</a></li>
					<li><a href="../campusmate_date/member.jsp">회원 등록</a></li>
					<li><a href="../campusmate_date/matching.jsp">매칭하기</a></li>
				</ul>
			</li>
			<li>
				<a href="#none">캠퍼스 그룹</a>
				<ul class="submenu">
					<li><a href="../campusmate_group/club.jsp">동아리</a></li>
					<li><a href="../campusmate_group/study.jsp">스터디</a></li>
				</ul>
			</li>
			<li><a href="#none">캠퍼스 푸드</a>
					<ul class="submenu">
						<li><a href="../campusmate_food/knu_food.jsp">경북대 맛집</a></li>
						<li><a href="../campusmate_food/yu_food.jsp">영남대 맛집</a></li>
						<li><a href="../campusmate_food/kmu_food.jsp">계명대 맛집</a></li>
					</ul>
			</li>
			
		</ul>
	</div>
</div>



<!-- contents 시작-->
<div class="contents">

<div class="notice-wrap">
	<div class="notice-box">
		<h1>경북대 맛집 리스트</h1>

		<div class="search-box">
			<input type="text">
			<button>검색</button>
		</div>

		<div class="gallery-table">
			<ul class="table-bd">
				<li>
					<div class="thum">
						<a href="./gallery_view.html"><img src="../img/knu/knu_food_1.PNG" alt=""></a>
					</div>
					<div class="info">
						<h3><a href="./gallery_view.html">게시물 제목</a></h3>
						<p>게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시</p>
						<i>2020-05-05</i>
					</div>
				</li>
				<li>
					<div class="thum">
						<a href="./gallery_view.html"><img src="../img/knu/knu_food_2.PNG" alt=""></a>
					</div>
					<div class="info">
						<h3><a href="./gallery_view.html">게시물 제목</a></h3>
						<p>게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시</p>
						<i>2020-05-05</i>
					</div>
				</li>
				<li>
					<div class="thum">
						<a href="./gallery_view.html"><img src="../img/knu/knu_food_3.PNG" alt=""></a>
					</div>
					<div class="info">
						<h3><a href="./gallery_view.html">게시물 제목</a></h3>
						<p>게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시</p>
						<i>2020-05-05</i>
					</div>
				</li>
				<li>
					<div class="thum">
						<a href="./gallery_view.html"><img src="../img/knu/knu_food_4.PNG" alt=""></a>
					</div>
					<div class="info">
						<h3><a href="./gallery_view.html">게시물 제목</a></h3>
						<p>게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시</p>
						<i>2020-05-05</i>
					</div>
				</li>
				<li>
					<div class="thum">
						<a href="./gallery_view.html"><img src="../img/knu/knu_food_5.PNG" alt=""></a>
					</div>
					<div class="info">
						<h3><a href="./gallery_view.html">게시물 제목</a></h3>
						<p>게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시물 내용게시</p>
						<i>2020-05-05</i>
					</div>
				</li>
				
			</ul>

		</div>
		<div class="paging">
			<ul>
				<li><a href="#none">처음으로</a></li>
				<li><a href="#none">이전</a></li>
				<li class="on"><a href="#none">1</a></li>
				<li><a href="#none">2</a></li>
				<li><a href="#none">3</a></li>
				<li><a href="#none">다음</a></li>
				<li><a href="#none">마지막</a></li>
			</ul>
		</div>
		
		


	</div>
</div>



</div>
<!-- // contents 끝 -->











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