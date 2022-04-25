<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="admin_main.jsp"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>  </title>
<script src="./resources/js2/review.js"></script>
<script src="https://kit.fontawesome.com/9376c7b079.js"></script>
<style>
*{
list-style: none;

}
#board_wrap_cont{
margin-top:15px;
width:100%;
line-height:35px;
}
.board_batch1{
width:100%;
margin-left:150px;
}
#food_img01{
width:25%;
height:250px;
margin-bottom:40px;
}



#board_rest_content{
width:35%;
margin-left:170px;
float:left;
margin-right:40px;
}


#board_cont_font{
font-size:18px;
}


#board_bsnsnm{
font-size:25px;
font-weight:bold;
}
<%-- 조회수 오른쪽--%>
#batch2{
float:right;
}


#map {
margin-top:70px;
}




.food_switch{
margin-top:20px;
margin-left:170px;
}

.food_switch input[type=button]{
padding:5px;
border-radius:22px;
border:0px;
color:white;
background-color:darkorange;
width:80px;
height:40px;
}
.food_switch input[type=button]:hover{
cursor:pointer;
}

.review_batch{
margin-top:30px;
margin-left:120px;
display:block;
height:800px;
border:1px solid gray;
}

.clear{
clear:both;
}


.review_wrap{
    width:500px;
	height:400px;
	text-align:center;
}

#review_cont{
 resize:none;
}

div.rest_down{
	width: 95%;
    margin-left: 20px;
    margin-top: 20px;
}

h2.down_title {
    font-size: 18px;
    line-height: 1.5;
    color: #4F4F4F;
    margin: 10px;
}

header.down_header {
	display: -webkit-flex;
	margin-bottom: 10px;
}

ul.point_filter {
	display: -webkit-flex;
    list-style: none;
    margin-left: auto;
    margin-top: 10px;
    margin-right: 10px;
}

li.point_item:after {
	content: '|';
	margin: 0 7px;
}

li.point_item:last-child:after {
	content: '';
	display: none;
}

button.point_button {
    appearance: none;
    cursor: pointer;
    border: 0px;
    border-radius: 0;
    background-color: transparent;
    font-size: 18px;
    color: #4F4F4F;
}

li.review_item {
    margin: 0px 0px 20px 0px;
}

a.review_box{
	display: flex;
    display: -webkit-box;
    display: -webkit-flex;
    -moz-flex-direction: row;
    -ms-flex-direction: row;
    flex-direction: row;
    -webkit-flex-direction: row;
    -webkit-box-direction: normal;
    -webkit-box-orient: horizontal;
    padding: 20px 0 20px 0;
}

div.review_user {
    display: flex;
    display: -webkit-box;
    display: -webkit-flex;
    -moz-flex-direction: column;
    -ms-flex-direction: column;
    flex-direction: column;
    -webkit-flex-direction: column;
    -webkit-box-direction: normal;
    -webkit-box-orient: vertical;
    -moz-flex-basis: 70px;
    -ms-flex-preferred-size: 70px;
    flex-basis: 70px;
    -webkit-flex-basis: 70px;
    margin: 55px 35px 0 8px;
}

div.review_content2{
    display: flex;
    display: -webkit-box;
    display: -webkit-flex;
    -moz-flex-direction: column;
    -ms-flex-direction: column;
    flex-direction: column;
    -webkit-flex-direction: column;
    -webkit-box-direction: normal;
    -webkit-box-orient: vertical;
}

div.review_wrap2{
    display: flex;
    display: -webkit-box;
    display: -webkit-flex;
    flex-direction: column-reverse;
    -webkit-flex-direction: column-reverse;
    -webkit-box-direction: reverse;
    -webkit-box-orient: vertical;
    width: fit-content;
    height: fit-content;
    text-align: -webkit-auto;
    
}

p.review_text {
    font-size: 20px;
    line-height: 1.8;
    word-break: break-all;
    color: #000000;
    font-weight: bold;
}

span.review_date {
    font-size: 14px;
    line-height: 1.2;
    color: #9B9B9B;
}

div.edit_button {
    margin-left: 143px;
}

button.review_edit{
	appearance: none;
    cursor: pointer;
    border: solid #767676;
    border-radius: 8px;
    background-color: #767676;
    font-size: 18px;
    color: #FFFFFF;
    font-weight: lighter;
}

button.review_del{
	margin-left: 8px;
	appearance: none;
    cursor: pointer;
    border: solid #767676;
    border-radius: 8px;
    background-color: #767676;
    font-size: 18px;
    color: #FFFFFF;
    font-weight: lighter;
}

div.review_page{
    display: flex;
    -webkit-align-items: center;
    -webkit-box-align: center;
    min-width: 120px;
    height: 72px;
    margin: 0 auto;
    font-size: 19px;
    color: #ff792a;
    cursor: pointer;
}


.review_title{
text-align:center;
font-size:40px;
color:black;
margin-bottom:5px;}


.review_button{
margin-top:20px;
margin-right:210px;
}

.review_button input[type=submit]{
width:90px;
font-size:18px;
font-weight:bold;
border-radius:10px;
border:1px solid white;
padding:10px;
text-align:center;
background:darkorange;
color:white;
font-style:italic;
}

.review_button input[type=reset]{
width:90px;
font-size:18px;
font-weight:bold;
border-radius:10px;
border:1px solid white;
padding:10px;
text-align:center;
background:darkorange;
color:white;
font-style:italic;
}

.review_button input[type=reset]:hover{
cursor:pointer;
}
.review_button input[type=submit]:hover{
cursor:pointer;
}

.review_wrap{
    width:500px;
	height:400px;
	text-align:center;
}

#review_cont{
 resize:none;
}

div.rest_down{
	width: 95%;
    margin-left: 20px;
    margin-top: 20px;
}

h2.down_title {
    font-size: 18px;
    line-height: 1.5;
    color: #4F4F4F;
    margin: 10px;
}

header.down_header {
	display: -webkit-flex;
	margin-bottom: 10px;
}

ul.point_filter {
	display: -webkit-flex;
    list-style: none;
    margin-left: auto;
    margin-top: 10px;
    margin-right: 10px;
}

li.point_item:after {
	content: '|';
	margin: 0 7px;
}

li.point_item:last-child:after {
	content: '';
	display: none;
}

button.point_button {
    appearance: none;
    cursor: pointer;
    border: 0px;
    border-radius: 0;
    background-color: transparent;
    font-size: 18px;
    color: #4F4F4F;
}

li.review_item {
    margin: 0px 0px 20px 0px;
}

a.review_box{
	display: flex;
    display: -webkit-box;
    display: -webkit-flex;
    -moz-flex-direction: row;
    -ms-flex-direction: row;
    flex-direction: row;
    -webkit-flex-direction: row;
    -webkit-box-direction: normal;
    -webkit-box-orient: horizontal;
    padding: 20px 0 20px 0;
}

div.review_user {
    display: flex;
    display: -webkit-box;
    display: -webkit-flex;
    -moz-flex-direction: column;
    -ms-flex-direction: column;
    flex-direction: column;
    -webkit-flex-direction: column;
    -webkit-box-direction: normal;
    -webkit-box-orient: vertical;
    -moz-flex-basis: 70px;
    -ms-flex-preferred-size: 70px;
    flex-basis: 70px;
    -webkit-flex-basis: 70px;
    margin: 55px 35px 0 8px;
}

div.review_content2{
    display: flex;
    display: -webkit-box;
    display: -webkit-flex;
    -moz-flex-direction: column;
    -ms-flex-direction: column;
    flex-direction: column;
    -webkit-flex-direction: column;
    -webkit-box-direction: normal;
    -webkit-box-orient: vertical;
}

div.review_wrap2{
    display: flex;
    display: -webkit-box;
    display: -webkit-flex;
    flex-direction: column-reverse;
    -webkit-flex-direction: column-reverse;
    -webkit-box-direction: reverse;
    -webkit-box-orient: vertical;
    width: fit-content;
    height: fit-content;
    text-align: -webkit-auto;
    
}

p.review_text {
    font-size: 20px;
    line-height: 1.8;
    word-break: break-all;
    color: #000000;
    font-weight: bold;
}

span.review_date {
    font-size: 14px;
    line-height: 1.2;
    color: #9B9B9B;
}

div.edit_button {
    margin-left: 143px;
}

button.review_edit{
	appearance: none;
    cursor: pointer;
    border: solid #767676;
    border-radius: 8px;
    background-color: #767676;
    font-size: 18px;
    color: #FFFFFF;
    font-weight: lighter;
}

button.review_del{
	margin-left: 8px;
	appearance: none;
    cursor: pointer;
    border: solid #767676;
    border-radius: 8px;
    background-color: #767676;
    font-size: 18px;
    color: #FFFFFF;
    font-weight: lighter;
}

div.review_page{
    display: flex;
    -webkit-align-items: center;
    -webkit-box-align: center;
    min-width: 120px;
    height: 72px;
    margin: 0 auto;
    font-size: 19px;
    color: #ff792a;
    cursor: pointer;
}
	
	h2.m_edit_header {
    text-align: center;
    margin-top: 10px;
    color: #7a7a7a;
}

p.m_edit_text {
    text-align: center;
    margin-top: 10px;
    color: black;
    font-weight: bolder;
}

textarea.m_edit_input {
    margin: 20px 20px 10px 20px;
    width: 95%;
    height: 65%;
    padding: 5px 10px 5px 10px;
    font-size: 18px;
}

.m_edit_btn {
    text-align: -webkit-center;
}

input[type="submit"] {
	margin-left: 8px;
	appearance: none;
    cursor: pointer;
    border: solid #767676;
    border-radius: 8px;
    background-color: #767676;
    font-size: 17px;
    color: #FFFFFF;
    font-weight: lighter;
}
	



</style>

</head>
<body>
<div class="block2"> </div>
<%-- 전체 배치 --%>
<div id="board_wrap_cont">


<%-- 사진 배치  --%>
<div class="board_batch1">
<img id="food_img01" src="./resources/upload${f.food_file1}" alt="1">
<img id="food_img01" src="./resources/upload${f.food_file2}" alt="2">
<img id="food_img01" src="./resources/upload${f.food_file3}" alt="3">
</div>

<div id="board_rest_content">
<div> <span id="board_bsnsnm"> ${f.bsnsnm} </span>
<div id="batch2">

<span> <i class="fa-solid fa-eye"></i></span>
<span> ${f.viewcnt}</span>
</div>
</div>
<hr>

<div id="board_cont_font">
<div>
<span> 등록순서  : </span>
<span> ${f.f_num}</span>
</div>


<div>
<span> 분류  : </span>
<span> ${f.category}</span>
</div>


<div>
<span> 평점 :</span>
<span> ${f.grade}</span>
</div>




<div >
<span> 음식의 종류 :</span>
<span> ${f.bsnscond}</span>
</div>

<div>

<table> 
<tr>
<td rowspan="5" style="vertical-align:top;"> 메뉴 : </td>
<td> ${food_menu }</td>
</tr>
</table>

</div>

<div>
<span> 연락처 :  </span>
<span> ${f.tel}</span>
</div>

<div>
<span> 주소  : </span>
<span> ${f.addr}</span>
</div>

<c:if test="${!empty f.rest}">
<div>
<span> 휴무일  : </span>
<span> ${f.rest}</span>
</div>
</c:if>



<c:if test="${!empty f.suyong}">
<div>
<span> 수용인원  : </span>
<span> ${f.suyong}</span>
</div>
</c:if>


<div>
<span> 위도  : </span>
<span> ${f.lat}</span>
</div>

<div>
<span> 경도  : </span>
<span> ${f.lng}</span>
</div>
  
</div>

</div>




<!-- 지도를 표시할 div 입니다 -->
<div id="map" style="width:35%;height:350px; z-index:0; "></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	4a9ef0ef123875d2c771898ba8e90d94"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng("${f.lat}", "${f.lng}"), // 지도의 중심좌표
    level: 2 // 지도의 확대 레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new kakao.maps.MapTypeControl();

// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);


//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng("${f.lat}", "${f.lng}"); 

//마커를 생성합니다
var marker = new kakao.maps.Marker({
position: markerPosition
});

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

//아래 코드는 지도 위의 마커를 제거하는 코드입니다
//marker.setMap(null);   

var iwContent = '<div style="padding:21px;">"${f.bsnsnm}" <br><a href="https://map.kakao.com/link/map/${f.bsnsnm},${f.lat},${f.lng}" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/${f.bsnsnm},${f.lat},${f.lng}" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
     iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

// 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
    content : iwContent,
    removable : iwRemoveable
});

// 마커에 클릭이벤트를 등록합니다
kakao.maps.event.addListener(marker, 'click', function() {
      // 마커 위에 인포윈도우를 표시합니다
      infowindow.open(map, marker);  
});
</script>


<div class="clear"> </div>


<div class="food_switch">
<input type="button" value="수정하기" onclick="location='admin_Board_Edit?f_num=${f_num}&page=${page}';"> &nbsp;
<input type="button" value="전체목록" onclick="location='admin_Board_list?f_num=${f_num}&page=${page}';">
</div>




</div>
<%-- 리뷰 배치 --%>


<div class="rest_down" style="height: -webkit-fill-available;">
<header class="down_header">
<h2 class="down_title">리뷰</h2>
<ul class="point_filter">
<li class="point_item"><button class="point_button" value="">전체 평점<span class="point_count"> ( ${point} )</span></button></li>
</ul>
</header>
<ul class="review_list">
<c:if test="${empty rlist}">
<li class="review_item">
<a class="review_box">
<div class="review_user">
<div class="profile_wrap">
</div>
<span class="review_username" style="text-align: center; color: #000000; font-weight: 600;"><%-- 리뷰 유저 이름 --%></span>
</div>
<div class="review_content" style="width: 80%;">
<div class="review_wrap2">
<p class="review_text" style="font-size: 20px; line-height: 1.8; color: #000000; font-weight: bold;">
<%-- 작성한 리뷰 --%>작성된 리뷰가 없습니다.
</p>
<span class="review_date" style="font-size: 16px; line-height: 3; color: #C8C8C8;"><%-- 리뷰 작성 시간 --%></span>
</div>
</div>
<div class="point_rating">
</div>
</a>
<div class="edit_button">
</div>
</li>
</c:if>
<c:if test="${!empty rlist}">
 <c:forEach var="r" items="${rlist}" varStatus="status">
<li class="review_item">
<a class="review_box">
<div class="review_user">
<div class="profile_wrap">
<img src="./resources/images/like.jpg" width="100" height="100"/>
</div>
<c:if test="${!empty r.mem_id}">
<span class="review_username" style="text-align: center; color: #000000; font-weight: 600;"><%-- 리뷰 유저 이름 --%>${r.mem_id}</span>
</c:if>
<c:if test="${r.mem_id==null}">
<span class="review_username" style="text-align: center; color: #000000; font-weight: 600;"> 탈퇴한 회원</span>
</c:if>
</div>
<div class="review_content" style="width: 80%;">
<div class="review_wrap2">
<p class="review_text" style="font-size: 20px; line-height: 1.8; color: #000000; font-weight: bold;">
<%-- 작성한 리뷰 --%>${r.r_cont}
</p>
<span class="review_date" style="font-size: 16px; line-height: 3; color: #C8C8C8;"><%-- 리뷰 작성 시간 --%>${r.regdate}</span>
</div>
</div>
<div class="point_rating">
<img src="./resources/images/like.jpg" width="60" height="60" style="margin-top: 55px; margin-left: 20px;"/>
</div>
</a>
<div class="edit_button">

<button class="review_del" onclick="">삭제</button>
</div>
</li>
</c:forEach>
</c:if>
</ul>
<c:if test="${listcount > 5}">
<div class="review_page" role="button" onclick="review_page()" style="margin: 0 50% 0 45%;">더보기</div>
</c:if>
</div>



</body>
</html>