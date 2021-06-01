<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠퍼스 데이트 | 소개</title>
<link type="text/css" rel="stylesheet" href="<c:url value='../css/style.css'/>"/>
</head>

<body>
	
<style>
	#main > section {
			margin: 0;
			overflow: hidden;
			padding: 4em 0;
			box-shadow: inset 0 1px 0 0 rgba(0, 0, 0, 0.05), inset 0 0.1em 0.1em 0 rgba(0, 0, 0, 0.025);
			text-align: center;
			background-image: url("images/overlay.png");
		}

			#main > section.dark {
				color: #ddd;
				color: rgba(255, 255, 255, 0.75);
			}

				#main > section.dark h2, #main > section.dark h3, #main > section.dark h4, #main > section.dark h5, #main > section.dark h6 {
					color: inherit;
				}

				#main > section.dark strong {
					color: #000;
					border-color: inherit;
					padding-top:10px;
					font-size:14px;
				}

				#main > section.dark a {
					color: #fff;
					border-color: inherit;
				}

					#main > section.dark a:hover {
						border-bottom-color: rgba(255, 255, 255, 0);
					}

			#main > section.cover {
				padding: 10em 0;
				background-size: cover;
				background-position: center center;
			}

			#main > section.one {
				background-color: #fff;
				background-image: url("../img/campus_mate_date_intro_pic.jpg");
			}

			#main > section.two {
				background-color: #ffffff;
			}

			#main > section.three {
				background-color: #f4fdfd;
			}
			
			
			.parent{display:flex; margin:100px;}
			.child{flex:1;}			
			
		
			
			

</style>



<!--콘텐츠 시작 -->
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
				<li><a href="./campusmate_main/login.jsp">로그인</a></li>
				<li><a href="./member/join.html">회원가입</a></li>
				<!-- 관리자 로그인시 -->
				<li><a href="./adm/set.html">관리자</a></li>
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

<body class="is-preload">
		<!-- Main -->
			<div id="main">

				<!-- Intro -->
					<section id="top" class="one dark cover">
						<div class="container">

							<header>
								<h2 class="alt"><strong><img src="../img/logo_campusdate_rem.png"></strong></h2>
								<a><strong> 새로운 사랑의 큐피드가 되어줄 캠퍼스 데이트</strong></a>
							</header>

							

						</div>
					</section>

				<!-- 캠퍼스 데이트 소개  -->
					<section id="portfolio" class="two">
						<div class="container">

							<header>
								<h2>캠퍼스 데이트</h2>
							</header>

							<p>대학생을 위한 공식적인 데이트 매칭 서비스 제공</p>

							<div class="parent">
								<div class="child">
									<article class="item">
										<a href="#" class="image fit"><img src="../img/knu/knu_logo_3.jpg" alt="" /></a>
										<header>
											<h3>경북대학교</h3>
										</header>
									</article>
						
								</div>
								<div class="child">
									<article class="item">
										<a href="#" class="image fit"><img src="../img/yu/campusmate_date_yu.png" alt="" /></a>
										<header>
											<h3>영남대학교</h3>
										</header>
									</article>
								
								</div>
								<div class="child">
									<article class="item">
										<a href="#" class="image fit"><img src="../img/kmu_logo_1.jpg" alt="" /></a>
										<header>
											<h3>계명대학교</h3>
										</header>
									</article>
								
								</div>
							</div>

						</div>
					</section>

				<!-- 준비중인 서비스 소개 -->
					<section id="about" class="three">
						<div class="container">

							<header>
								<h2><strong>VISION</strong></h2>
							</header>

							<a href="#" class="image featured"><img src="images/pic08.jpg" alt="" /></a>

							<p>학번과 개인정보활용동의를 거치는 2단계 인증을 통해 신뢰성 확보<br> 
							대구 경북권 대학을 중심으로 전국 대학 서비스를 위한 서비스 구축
							<br>
							
							 </p>

						</div>
					</section>

	<!-- 하단 정보 -->
	<div class="footer">
	
		<div>
			<h1>Light</h1>
			<p>휴스타 3기 </p>
			<p>개발자 : 고수진 김도연 정예성</p>
			<p>github : https://github.com/kosujin8184/Hustar_Campusmate</p>
			<span>copyright(c) Light. All rights reserved.</span>
	
		</div>
	
	</div>
</body>
</html>

<!--autofix 스크롤시 fixed 클래스 추가-->
<script>
	$(document).ready( function() {
		$(".header").autofix_anything();
	});
</script>
