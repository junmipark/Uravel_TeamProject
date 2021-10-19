<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%
response.setContentType("text/html; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 클릭했을 때</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
<style type="text/css">

*{
	font-family: 'Noto Sans KR', sans-serif;
}

footer {
	bottom: 0;
	width: 100%;
	height: 100px;
	background-color: white;
}
footer h5 {
	text-align: center;
}
header {
	position: sticky;
	top: 0;
	margin: 0;
	padding: 0;
	overflow: hidden;
	width: 100%;
	height: auto;
	font-size: large;
	background: white;
	z-index: 1;
    text-align: center;
    
}
.logo, .menu, .login, li {
	display: inline-block;
}
header li {
	margin-inline: 30px;
}
.logo {
	float: left;
	margin: 0;
	font-weight: bold;
	margin-inline-start: 60px;
}
.menu {
	float: none;
    font-weight: bold;
}
.login {
	float: right;
}
header a {
	text-decoration: none;
	color: black;
	vertical-align: middle;
}
header a:hover {
	font-weight: bold;
	background: linear-gradient(to top, skyblue 10%, transparent 10%);
}
.sub-menu {
	display: none;
	margin: 0;
	padding: 0;
	background-color: white;
	text-align: center;
	font-weight: normal;
}
.menu li:hover .sub-menu {
	display: table;
}
.sub-menu li {
	display: block;
	margin: 0;
}
.sub-menu li:hover {
	font-weight: bold;
}
@media ( max-width :768px) {
	header {
		position: relative;
		display: inline-block;
	}
}
.page_title{
	margin-left: 10%;
}
.travel_name{
	font-weight: bold;
	color: #06AEBD;
	font-size: 14px;
}
.travel_name_detail{
	font-weight: bold;
	font-size: 16px;
}

.map_box1{
	width: 100%;
	height: 300px;
}
.map_name{
	margin: 5px;
}
.map_address{
	margin: 5px;
}
.travel_address{
	font-weight: bold;
	font-size: 16px;
	color: #06AEBD;
}
.travel_address_detail{
	font-weight: bold;
	font-size: 16px;
}
.map_btn{
	font-size: 13px;
}
.tell_number{
	font-weight: bold;
	font-size: 16px;
	color: #06AEBD;
}
.tell_num{
	margin: 5px;
}
.comment{
	font-family: arial;
    color: rgb(133, 146, 166);
    line-height: 18px;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical;
}
.map_img{
	position: inherit;
	width: 100%; 
	height: 100%;
	background-size: cover; 
	border-radius: 2px; 
	overflow: hidden;
}
.total_review{
	margin: 5px;
}
.rating_review{
	background: rgb(73, 120, 206);
    display: inline-flex;
    border-radius: 5px;
    width: 44px;
    -webkit-box-pack: center;
    justify-content: center;
    height: 22px;
    -webkit-box-align: center;
    align-items: center;
}
.info_box{
	position: relative;
	top: -86px;
	display: inline-block;
	margin-left: 10%;
	width: 35%;
	height: 602px;
}
.photo_box{
	position: relative;
	display: inline-block;
	border: 1px groove;
	width: 40%;
	height: 600px;
	margin-left: 4%;
	
}
.bottom_box{
	width: 80%;
	height: 100%;
	position: relative;
	border: hidden;
	margin-left: 10%;
	margin-right: 10%;

}
.page_style {
	margin: 0;
	padding: 0;
	overflow: hidden;
	display: inline-block;
}

.page_style a {
	float: left;
	display: block;
	color: black;
	text-align: center;
	padding: 16px;
	text-decoration: none;
	transition: 0.5s;
}

.page_style a:hover {
	transform: scale(1.5);
	color: gray;
	transition: 0.5s;
}

</style>
</head>
<body>
	<body>
    	<!-- 상단부 -->
	<header>
		<!-- 로고 : 메인페이지로 이동 -->
		<h1>
			<a href="./main.jsp" class="logo">URAVEL</a>
		</h1>
		<!-- 네비게이션 -->
		<nav>
			<!-- 네비게이션 : 메뉴 부분 -->
			<ul class="menu">
				<li><a href="main.jsp">여행지 추천</a> <!-- 하위 메뉴 -->
					<ul class="sub-menu">
						<li><a href="./travel/travel.jsp">지역별</a></li>
						<li><a href="#">테마별</a></li>
					</ul></li>
				<li><a href="#">역사 문화</a></li>
				<li><a href="#">후기</a></li>
				<li><a href="#">공지사항</a></li>
				<li><a href="#">고객센터</a> <!-- 하위 메뉴 -->
					<ul class="sub-menu">
						<li><a href="#">FAQ</a></li>
						<li><a href="#">1:1문의</a></li>
					</ul></li>
			</ul>
			<!-- 네비게이션 : 로그인 -->
			<ul class="login">
				<li><a href="#">로그인</a></li>
				<li><a href="#">회원가입</a></li>
			</ul>
		</nav>
	</header>
	<!-- 헤더 종료 -->
	<h1 class="page_title">
		<div class="page_title_name">테스트용</div>
	</h1>

	<div class="all_box">
		<div class="top_box">
			<div class="info_box">
				<div style="background-color: rgb(68, 138, 255, 0.1); position: relative;">
					<div class="map_name">
						<img src="http://drive.google.com/uc?export=view&id=1i9JyxxltWWcXP8cea-KpeXSaOelUfUq0"
						style="width: 16px; height: 16px;">
						<span class="travel_name">여행지 이름</span>
						<span class="travel_name_detail" style="font-size: 24px">테스트용</span>
					</div>
					<div class="total_review" style="margin-left: 23px;">
						<div>
							<span class="rating_review">
								<span>4.5</span>
								<span>/5</span>
							</span>
							<span class="total_reivew_num">132건의 리뷰</span>
						</div>
						
					</div>
					<div class="map_address">
						<img src="http://drive.google.com/uc?export=view&id=1i9JyxxltWWcXP8cea-KpeXSaOelUfUq0"
						style="width: 16px; height: 16px;">
						<span class="travel_address">주소</span>
						<span class="travel_address_detail">: 테스트용 주소</span>
						<span class="map_btn">지도</span>
					</div>
					<div class="tell_num">
						<img src="http://drive.google.com/uc?export=view&id=1i9JyxxltWWcXP8cea-KpeXSaOelUfUq0"
						style="width: 16px; height: 16px;">
						<span class="tell_number">연락처</span>
						<span class="tell_number_detail">: 010-5151-5151</span>
					</div>
				</div>
				<div class="map_box1">
					<div id="">
						<div class="map_container" style="width: 100%; height: 300px;">
						<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=078e401a64f63ae93818c494f7f8ac99"></script>
						<script>
							var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
							
							var options = { //지도를 생성할 때 필요한 기본 옵션
								center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
								level: 3 //지도의 레벨(확대, 축소 정도)
							
							};
							var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
						</script>
						</div>
					</div>
				</div>

				<div class="review">
					<div class="comment_box" style="background-color: rgb(68, 138, 255, 0.1); height: 170px;">
						<h4 class="top_review" style="margin-left: 15px; margin-top: 15px;">대표 리뷰:</h4>
						<p class="comment" style="margin-left: 15px; margin-top: 15px">여기 정말 재밌었고 인상깊고 테스트용에 대한 리뷰 설명글<input type="button" value="더보기"></p>
						
					</div>
				</div>
			</div>
			<div class="photo_box">
				<div class="photo_slide" style="height: 450px; background-image: url(http://drive.google.com/uc?export=view&id=1g23fc04wTXEvVchJOhvFswplWNs5bB_q);
				background-position: center; width: 100%; background-size: cover; position: relative;" >
					 
				</div>
				<div class="photo_cursor" style="height: 150px; position: relative; ">
					<div class="photo_cursor1" style="width: 190px; height: 100%; display: inline-block; background-position: center;
					background-image: url(http://drive.google.com/uc?export=view&id=1jQqOHfBCiZ5Eiu1wFDPZJZah-TpQnM8i);
					background-size: cover; margin: 0; padding: 0; cursor: pointer;">
					</div>
					<div class="photo_cursor2" style="width: 190px; height: 100%; display: inline-block; background-position: center;
					background-image: url(http://drive.google.com/uc?export=view&id=1SBxhpkSTV3dpz1OHMjjChx-sdyGOhIfs);
					background-size: cover; margin: 0; padding: 0; cursor: pointer;">
					</div>
					<div class="photo_cursor3" style="width: 190px; height: 100%; display: inline-block; background-position: center;
					background-image: url(http://drive.google.com/uc?export=view&id=1HQOYYZ042gKlbHAPTaAwQ7mxRQRUKL7k);
					background-size: cover; margin: 0; padding: 0; cursor: pointer;">
					</div>
					<div class="photo_cursor4" style="width: 190px; height: 100%; display: inline-block; background-position: center;
					background-image: url(http://drive.google.com/uc?export=view&id=1KhvW2CtvLHn4LIJiwRU-7wGLMnn_bWo9);
					background-size: cover; margin: 0; padding: 0; cursor: pointer;">

					</div>
				</div>
			</div>
		</div>
		<div class="bottom_box">
			<div class="review_container" style="background-color: rgb(68, 138, 255, 0.2);">
				<div class="review_header_container">
					<div class="header_container_title"
					style="font-size: 24px; font-weight: bold; margin-left: 15px;">리뷰</div>
				
					<span class="tip_text" style="font-size: 16px; color: rgb(172, 180, 191); margin-left: 15px;">
						<i class="icon_tip" style="position: relative; width: 20px; height: 20px; top: 3px;"
						><img src="http://drive.google.com/uc?export=view&id=1i9JyxxltWWcXP8cea-KpeXSaOelUfUq0"
						style="width: 20px; height: 20px; position: relative;"></i>
						리뷰 일부분은 번역기로 번역되어 보일 수 있습니다
					</span>
				</div>
				<div class="review_content_container" style="margin: 15px; background-color: white;">
					<div class="content_container_detail">
							<div class="container_detail_rating" style="padding: 10px;">
								<span style="font-size: 40px; color: rgb(73, 120, 206); font-weight: bold; line-height: 52px;">4.5</span>
								<span style="font-size: 26px; color: rgb(172, 180, 191); position: relative; top: 4px;">/5</span>
								<span style="font-size: 36px; color: rgb(73, 120, 206); margin-left: 10px; font-weight: bold;">완벽해요!</span>
							</div>
							<div class="container_detail_review" style="padding: 0px 24px 8px; flex-flow: row wrap; display: flex; align-items: center;">
								<div class="detail_review_all" style="color: rgb(40, 125, 250); border: 1px solid; padding: 9px 17px;
								background: rgb(40, 125, 250, 0.1); border-color: white; font-size: 14px; margin-top: 5px; cursor: pointer;">
									모두 보기(1)
								</div>
								<div class="detail_review_latest" style="font-size: 14px; color: rgb(15,41,77);
								padding: 8px 18px; border: 1px solid rgb(218, 223, 230); margin-left: 16px; cursor: pointer; margin-top: 5px; 
								">
									최신순
								</div>
								<div class="detail_review_positive" style="font-size: 14px; color: rgb(15,41,77);
								padding: 8px 18px; border: 1px solid rgb(218, 223, 230); margin-left: 16px; cursor: pointer; margin-top: 5px; 
								">
									긍정적
								</div>
								<div class="detail_review_nagative" style="font-size: 14px; color: rgb(15,41,77);
								padding: 8px 18px; border: 1px solid rgb(218, 223, 230); margin-left: 16px; cursor: pointer; margin-top: 5px; 
								">
									부정적
								</div>
							</div>
					</div>

					<div class="content_container_review">
						<ul class="review_list" style="padding: 20px;">
							<div class="user_review" style="display: block;">
								<li style="border-top: 1px solid #DADFE6; display: flex; flex-direction: column; align-items: flex-start;">
									<div class="user_info_box" style="display: flex;">
										<div class="info_box_detail" style="cursor: pointer; font-size: 18px; margin-left: 80px;
										margin-bottom: 20px; margin-top: 20px;">테스트닉네임</div>
									</div>
									<div class="user_comment" style="margin-left: 80px;">
										<div class="comment_rating">
											<span style="font-size: 30px; color: rgb(73, 120, 206); font-weight: bold;">4.5</span>
											<span style="font-size: 18px; color: rgb(172, 180, 191);">/5</span>
											<span style="margin-left: 5px; font-size: 28px; color: rgb(73, 120, 206); font-weight: bold;">완벽해요!</span>
										</div>
										<div class="user_comment_content" style="margin-top: 15px; flex-wrap: wrap;">
											<span>일단 리뷰 내용을 보통 길게 쓸텐데 테스트용으론 쓸 말이 없어서 좀 길게 어쩌구저쩌구
												쓰는중입니다요일단 리뷰 내용을 보통 길게 쓸텐데 테스트용으론 쓸 말이 없어서 좀 길게 어쩌구저쩌구
												쓰는중입니다요일단 리뷰 내용을 보통 길게 쓸텐데 테스트용으론 쓸 말이 없어서 좀 길게 어쩌구저쩌구
												쓰는중입니다요일단 리뷰 내용을 보통 길게 쓸텐데 테스트용으론 쓸 말이 없어서 좀 길게 어쩌구저쩌구
												쓰는중입니다요
											</span>
										</div>
										<div class="comment_photo_list" style="height: 110px; overflow: hidden; position: relative;">
											<div class="photo_list_detail" style="display: flex;">
												<img src="http://drive.google.com/uc?export=view&id=1jQqOHfBCiZ5Eiu1wFDPZJZah-TpQnM8i"
												style="float: left; width: 150px; height: 150px; margin-right: 4px; margin-top: 12px;
												cursor: pointer;">
												<img src="http://drive.google.com/uc?export=view&id=1SBxhpkSTV3dpz1OHMjjChx-sdyGOhIfs"
												style="float: left; width: 150px; height: 150px; margin-right: 4px; margin-top: 12px;
												cursor: pointer;">
												<img src="http://drive.google.com/uc?export=view&id=1HQOYYZ042gKlbHAPTaAwQ7mxRQRUKL7k"
												style="float: left; width: 150px; height: 150px; margin-right: 4px; margin-top: 12px;
												cursor: pointer;">
												<img src="http://drive.google.com/uc?export=view&id=1KhvW2CtvLHn4LIJiwRU-7wGLMnn_bWo9"
												style="float: left; width: 150px; height: 150px; margin-right: 4px; margin-top: 12px;
												cursor: pointer;">
											</div>
										</div>
									</div>
								</li>
							</div>
						</ul>
					</div>

				</div>

				<div class="page_detail" style="text-align: center; margin-bottom: 30px; background-color: rgb(255, 255, 255);">
					<div class="page_detail_button" style="margin-left: 25%; margin-right: 25%;">
						<div style="align-items: center;">
							<ul class="page_detail_number">
								<li class="page_style"><a href="#">이전</a></li>
								<li class="page_style"><a href="#">1</a></li>
								<li class="page_style"><a href="#">...</a></li>
								<li class="page_style"><a href="#">1</a></li>
								<li class="page_style"><a href="#">다음</a></li>
							</ul>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>






    <footer>
		<h5>copyright &copy;구렁이담넘어가조. All rights reserved.</h5>
	</footer>
</body>
</html>
</body>
</html>