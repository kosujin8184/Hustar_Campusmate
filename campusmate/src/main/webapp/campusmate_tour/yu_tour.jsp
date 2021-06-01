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
				<li><a href="../campusmate_main/join.html">회원가입</a></li>
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
					<li><a href="../knu_tour.jsp">경북대</a></li>
					
					<li><a href="../yu_tour.jsp">영남대</a></li>
					<li><a href="../kmu_tour.jsp">계명대</a></li>
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

<div class="title-box">
	<h1>영남대학교</h1>
</div>

<div class ="search-box">
	<input type="text">
	<button>검색</button>
</div>
   
<!-- 지도 표시하는 div -->
<div id="map" style="width:1200px;height:700px; margin: 0 auto; "></div>
	
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
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	139b832047138eaf33012522488849ed"></script>
	<script>
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new kakao.maps.LatLng(35.83606951236984, 128.7529397415764), //지도의 중심좌표.
			level: 4 //지도의 레벨(확대, 축소 정도)
		};
		
		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(35.83606951236984, 128.7529397415764);
		
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
		
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
	</script>	
</body>
</html>