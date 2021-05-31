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
<link rel="icon" href="./img/Logo.PNG">
 <link type="text/css" rel="stylesheet" href="<c:url value='./css/style.css'/>"/>
</head>
<body>

<!-- 상단 헤더 -->
<div class="header">
	<div>
		<div class="logo">
			<h1><a href="./index.jsp"><img src="./img/logo-rem.png"></a></h1>
		</div>

		<div class="top-btn">
			<ul>
				<!-- 로그인 후 
				<li><a href="./member/login.html">로그아웃</a></li>
				<li><a href="./member/join.html">회원정보수정</a></li>
				-->
				<!-- 로그인 전-->
				<li><a href="./campusmate_menu/login.jsp">로그인</a></li>
				<li><a href="./campusmate_menu/join.jsp">회원가입</a></li>
				<!-- 관리자 로그인시 -->
				<li><a href="./campusmate_menu/admin.jsp">관리자</a></li>
			</ul>
		</div>
	</div>
</div>


<style>
html.active .menu{left:0%;}	

</style>

<!-- 모바일 메뉴 -->
<div class="m-menu">
	<div>
		<a href="#none">
			<span></span>
			<span></span>
			<span></span>
		</a>
	</div>
</div>


<script>
$('.m-menu a').click(
	function(){
		$(this).toggleClass('active');
		$('html').toggleClass('active');
	}
)
</script>


<!-- 메뉴 -->
<div class="menu">
	<div>
		<ul>
			<li>
				<a href="#none">캠퍼스 투어</a>
				<ul class="submenu">
					<li><a href="./campusmate_tour/knu_tour.jsp">경북대</a></li>
					
					<li><a href="./campusmate_tour/yu_tour.jsp">영남대</a></li>
					<li><a href="./campusmate_tour/kmu_tour.jsp">계명대</a></li>
				</ul>
			</li>
			<li>
				<a href="#none">캠퍼스 데이트</a>
				<ul class="submenu">
					<li><a href="./campusmate_date/date_intro.jsp">소개</a></li>
					<li><a href="./campusmate_date/member.jsp">회원 등록</a></li>
					<li><a href="./campusmate_date/matching.jsp">매칭하기</a></li>
				</ul>
			</li>
			<li>
				<a href="#none">캠퍼스 그룹</a>
				<ul class="submenu">
					<li><a href="./campusmate_group/club.jsp">동아리</a></li>
					<li><a href="./campusmate_group/study.jsp">스터디</a></li>
				</ul>
			</li>
			<li><a href="#none">캠퍼스 푸드</a>
					<ul class="submenu">
						<li><a href="./campusmate_food/knu_food.jsp">경북대 맛집</a></li>
						<li><a href="./campusmate_food/yu_food.jsp">영남대 맛집</a></li>
						<li><a href="./campusmate_food/kmu_food.jsp">계명대 맛집</a></li>
					</ul>
			</li>
			
		</ul>
	</div>
</div>



<!-- 팝업 
<div class="popup-box">
	<img src="./img/r06.jpg" alt="">

	<div class="pop-btn">
		<input type="checkbox" id="chk-pop"> <label for="chk-pop">오늘 하루 그만 보기</label>
		<a href="#none">닫기</a>
	</div>
</div>
-->




<!-- 배너 -->
<div class="banner">


	<!-- Swiper -->
	  <div class="swiper-container">
		<div class="swiper-wrapper">
		  <div class="swiper-slide"><img src="./img/t02.jpg"></div>
		  <div class="swiper-slide"><img src="./img/t06.jpg"></div>
		</div>
		<!-- Add Pagination -->
	    <div class="swiper-pagination"></div>
		<!-- Add Arrows -->
		<div class="swiper-button-next"></div>
		<div class="swiper-button-prev"></div>
	  </div>

	  <!-- Initialize Swiper -->
	  <script>
		var swiper = new Swiper('.swiper-container', {
		  autoHeight: true,
		  navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		  },
		  pagination: {
			el: '.swiper-pagination',
		  },
		  autoplay: {
			delay: 2500,
			disableOnInteraction: false,
		  },
		});
	  </script>


</div>


<!-- 게시물-->

<div class="bbs-box">
	<div>
		<div class="board-box">

			<div class="tab-menu">
				<ul>
					<li class="on"><a href="#none">공지사항</a></li>
					<li><a href="#none">자유게시판</a></li>
					<li><a href="#none">갤러리</a></li>
				</ul>
			</div>

			<div class="tab-con">
				<ul>
					<li>
						<a href="./bbs/notice_view.html">공지사항 입니다....</a>
						<span>2021.04.19</span>
					</li>
					<li><a href="./bbs/notice_view.html">공지사항 입니다....</a><span>2021.04.19</span></li>
					<li><a href="./bbs/notice_view.html">공지사항 입니다....</a><span>2021.04.19</span></li>
					<li><a href="./bbs/notice_view.html">공지사항 입니다....</a><span>2021.04.19</span></li>
				</ul>
			</div>

		</div>



		<div class="right-banner">


			<!-- Swiper -->
			  <div class="swiper-container r-slide">
				<div class="swiper-wrapper">
				  <div class="swiper-slide"><img src="./img/right_n03.jpg"></div>
				</div>
				<!-- Add Pagination -->
				<div class="swiper-pagination"></div>
				<!-- Add Arrows -->
				<div class="swiper-button-next"></div>
				<div class="swiper-button-prev"></div>
			  </div>

			  <!-- Initialize Swiper -->
			  <script>
				var swiper = new Swiper('.r-slide', {
				  navigation: {
					nextEl: '.swiper-button-next',
					prevEl: '.swiper-button-prev',
				  },
				  pagination: {
					el: '.swiper-pagination',
				  },
				  autoplay: {
					delay: 2500,
					disableOnInteraction: false,
				  },
				});
			  </script>


		</div>
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