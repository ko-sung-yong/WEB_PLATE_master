<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/logo.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="../resources/js2/jquery.js"> </script>
<script src="https://kit.fontawesome.com/9376c7b079.js"></script>

<style>
	input[id*="btn"]{
	display:none;
	}
	input[id*="btn"]+label{
	display:inline-block;
	padding:20px;
	color:#fff;
	margin-top:-17px;
	}
	
	input[id*="btn"]+label+div{
	position:fixed;
	top:0;
	left:0;
	width:100%;
	height:100%;
	z-index:100;
	}
	input[id*="btn"]+label+div >div{
	position:absolute;
	top:50%;
	left:50%;
	transform:translate(-50%,-50%);
	width:500px;
	height:400px;
	background:#fff;
	z-index:2;
	}
	
	/*닫는 버튼 */
	input[id*="btn"]+label+div>div>label{
	position:absolute;
	top:0%;
	right:0%;
	transform:translate(30%,-40%);
	padding:20px;
	background:#ED544A;
	border-radius:100%;
	z-index:1;
	}
	
	input[id*="btn"]+label+div>label{
	position:absolute;
	top:0;
	left:0;
	width:100%;
	height:100%;
	background:rgba(0,0,0,0.05);
	z-index:1;
		}
		
	/* 버튼 체크전 */
	input[id*="btn"]+label+div{
		display:none;
	}
	
	
	<%-- 버튼 체크후  --%>	
	input[id*="btn"]:checked+label+div{
		display:block;
		}
	
	
  .star-rating {
  display: flex;
  flex-direction: row-reverse; /* 아이템이 가로방향으로 흐름(우->좌) */
  font-size: 4rem;          /* rem 루트 요소 글꼴 */  
  justify-content: center;  /* 가로축 중심*/
  letter-spacing:10px;
  margin-left:60px;
  margin-top:10px;
  margin-bottom:10px;
  text-align: center;
  width: 5em;
}
 
.star-rating input {
  display: none;
}
 
.star-rating label {
  -webkit-text-fill-color: transparent; /* 별 부분 투명하게 만들기*/
  -webkit-text-stroke-width: 2.3px; /* 인사이드로 외곽선이 들어감*/
  -webkit-text-stroke-color: #2b2a29; /* 외곽선 색상*/
  cursor: pointer; /* 커서를 클릭할때 반응*/
}
 
.star-rating :checked ~ label {
  -webkit-text-fill-color: gold; /* 체크하면 나오는 색상*/
}
 
.star-rating label:hover,
.star-rating label:hover ~ label {
  -webkit-text-fill-color: #fff58c;
}

#star{
font-size:50px;}

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
</style> 
<script>
    function login(){
    	alert('로그인이 필요한 기능입니다!');
    	location='../Member/login';
    }
    
    function review_check(){
    	if($('input:radio[name=rating]').is(':checked')==false){
    		alert('별점을 체크해주세요!');
    		return false;
    	}
    	
    	if($.trim($('#review_cont').val())==''){
    		alert('리뷰를 남겨주세요!');
    		$('#review_cont').val('').focus();
    		return false;
    	}
    }
    
    
    </script>
<div class="rest_img">

  <%-- <img class="r_i" alt="" src="../resources/images/rest1.jpg"> --%>

  <div class="re_imgbox">
   <div class="re_img">
     <a href=""><img class="r_img" alt="1" src="../resources/upload${f.food_file3}"></a>
   </div>
   
   <div class="re_img">
     <a href=""><img class="r_img" alt="2" src="../resources/upload${f.food_file2}"></a>
   </div>
   <div class="re_img">
     <a href=""><img class="r_img" alt="3" src="../resources/upload${f.food_file1}"></a>
   </div>
   <div class="re_img">
     <a href=""><img class="r_img"  alt="4" src="../resources/images/logo.png"></a>
   </div>
  </div>
  
  <div class="clear"></div>
</div>

<%----------------------------------------------------%>

<div class="rest_main">
  <div class="main_rname">
    <span class="restName">${f.bsnsnm }</span>
    
    <div class="rew_btn">
      <button type="button" class="btn">
        <img src="../resources/images/starb.png" width="82" height="82">
      </button>
    </div>
    
    <c:choose>
    <c:when test="${Sid!=null}">
        <div class="rew_btn">      
    
 <input type="checkbox" id="btn">
<label for="btn"> <img src="../resources/images/pen11.png" width="80" height="80"
         onmouseout="this.src='../resources/images/pen11.png'" onmouseover="this.src='../resources/images/pen22.png'">
</label> <%-- 누르면 가려지는 부분 --%>



<div>
 <div>
 <label for="btn"></label> <%-- 닫는부분 --%>
 </div>
 <label for="btn"></label> <%-- 바깥부분 --%>
<div>
<%-- 내용 채우는 부분 --%>
<h3 class="review_title"> 리 뷰</h3>
<div class="review_wrap">
<span style="color:orange;">${f.bsnsnm}</span>에 대한 솔직한 리뷰를 써주세요!
<form method="post" action="" onsubmit="return review_check();">
<input type="hidden" value="${f.f_num}">
<div class="star-rating space-x-4 mx-auto">
	<input type="radio" id="5-stars" name="rating" value="5" />
	<label for="5-stars" class="star pr-4"><i class="fa-solid fa-star" id="star"></i></label>
	<input type="radio" id="4-stars" name="rating" value="4" />
	<label for="4-stars" class="star"><i class="fa-solid fa-star" id="star"></i></label>
	<input type="radio" id="3-stars" name="rating" value="3" />
	<label for="3-stars" class="star"><i class="fa-solid fa-star" id="star"></i></label>
	<input type="radio" id="2-stars" name="rating" value="2" />
	<label for="2-stars" class="star"><i class="fa-solid fa-star" id="star"></i></label>
	<input type="radio" id="1-star" name="rating" value="1"  />
	<label for="1-star" class="star"><i class="fa-solid fa-star" id="star"></i></label>
</div>


<textarea id="review_cont" name="review_cont" rows="5" cols="50" placeholder="식당에 대해 리뷰 남겨주세요!"></textarea><br>
<div class="review_button">
<input type="submit" value="업로드">
<input type="reset" value="초기화" onclick="$('#review_cont').focus();">

</div>
</form>
</div>
</div>

</div>
</div>
    
    </c:when>
    
    
     <c:when test="${Sid==null}">
        <div class="rew_btn">      
    
 <input type="checkbox" id="btn">
<label for="btn"> <img src="../resources/images/pen11.png" width="80" height="80"
         onmouseout="this.src='../resources/images/pen11.png'" onmouseover="this.src='../resources/images/pen22.png'"
         onclick="login();">
</label> <%-- 누르면 가려지는 부분 --%>

</div> 
     </c:when>
     
     
    
    </c:choose>
    
        
      <div>
      <i class="fa-solid fa-eye" style="padding-top:10px;margin-left:10px;"></i> &nbsp; ${f.viewcnt}
      </div>
    
    <div class="clear"></div>
  </div>
  
  <div class="left_rmain">
    <table class="info_menu">
                <tr>
                  <th class="menu_info_cn">주소</th>
                  <td>${f.addr } </td>                
                </tr>

                <tr>
                  <th class="menu_info_cn">전화번호</th>
                  <td>${f.tel }</td>
                </tr>

               
                <tr>
                  <th class="menu_info_cn">음식 종류 </th>
                  <td>
                    <span> ${f.bsnscond}</span>
                  </td>
                </tr>         
                                                    
                
               <c:if test="${(!empty f.rest)}">              
                <tr>
                  <th class="menu_info_cn">휴무일</th>
                  <td>${f.rest}</td>
                </tr>
                </c:if>
                
               <c:if test="${!empty f.suyong}">              
                <tr>
                  <th class="menu_info_cn">수용인원</th>
                  <td>${f.suyong}</td>
                </tr>
                </c:if>
                
                <tr>
                  <th> 평점 </th>
                  <td>${f.grade}</td>
                </tr>                
                               
                
                 <tr>
                  <th class=food_menu>메뉴</th>
                  <td class="menu_td">
                    <ul class="restaurant_menuList">
                        <li class="menuIt">
                          <span class="menu">${food_menu}</span>
                        </li>
                      
                    </ul>
                  </td>
                </tr>

              </tbody>
            </table>
  </div>
  
  <%---------------------%>
  
  <div class="right_rmain">
   
<!-- 지도를 표시할 div 입니다 -->
<div id="map" style="width:100%;height:450px; z-index:0; "></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	4a9ef0ef123875d2c771898ba8e90d94"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng("${f.lat}", "${f.lng}"), // 지도의 중심좌표
    level: 4 // 지도의 확대 레벨
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

var iwContent = '<div style="padding:21px; color:black; font-size:13px; font-weight:bold;">"${f.bsnsnm}" <br><a href="https://map.kakao.com/link/map/${f.bsnsnm},${f.lat},${f.lng}" style="color:blue; font-size:13px;" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/${f.bsnsnm},${f.lat},${f.lng}" style="color:blue; font-size:13px;" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
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

    
  </div>
  
</div>




<%----------------------------------------------------%>

<div class="rest_down">
  <div>
  
  </div>
</div>

<jsp:include page="../include/footer.jsp" />