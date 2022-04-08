<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../include/logo.jsp" />

<script src="../resources/js2/jquery.js"> </script>
<style>

</style>
<div class="block"> </div>
<div class="rest_img">
  <div class="re_img">
    <a href=""><img id ="re_size"alt="1" src="../resources/upload${f.food_file1}"></a>
  </div>
  <div class="re_img">
    <a href=""><img id ="re_size" alt="2" src="../resources/upload${f.food_file2}"></a>
  </div>
  <div class="re_img">
    <a href=""><img id ="re_size" alt="3" src="../resources/upload${f.food_file3}"></a>
  </div>
   
</div>

<%----------------------------------------------------%>

<div class="rest_main">
  <div class="main_rname">
    <span class="restName">${f.bsnsnm}</span>
    
    <div class="rew_btn">
      <button type="button" class="btn">
        <img src="../resources/images/starb.png" width="82" height="82" >
      </button>
    </div>
    
    <div class="rew_btn">
      <button type="button" class="btn">
        <img src="../resources/images/pen11.png" width="80" height="80"
         onmouseout="this.src='../resources/images/pen11.png'" onmouseover="this.src='../resources/images/pen22.png'"
         onclick="location='#'">
      </button>
    </div>
    
    <div class="clear"></div>
  </div>
  
  <div class="left_rmain">
    <table class="info_menu">
                <tr>
                  <th>평점</th>
                  <td>${f.grade}</td>
                </tr>
                <tr>
                  <th>조회수</th>
                  <td>${f.grade}</td>
                </tr>
                
                
                <tr>
                  <th>음식 종류 </th>
                  <td>
                    <span> ${f.bsnscond}</span>
                  </td>
                </tr>
                
                <tr>
                  <th>메뉴</th>
                  <td class="menu_td">
                    <ul class="restaurant_menuList">
                        <li class="menuIt">
                          <span class="menu">${f.menu }</span>
                        </li>
                      
                    </ul>
                  </td>
                </tr>
                
                
                
                <tr>
                  <th>주소</th>
                  <td>${f.addr } </td>
                </tr>
                
                

                <tr>
                  <th>전화번호</th>
                  <td>${f.tel }</td>
                </tr>


                <c:if test="${(!empty f.rest)}">              
                <tr>
                  <th>휴무일</th>
                  <td>${f.rest}</td>
                </tr>
                </c:if>
                
                <c:if test="${!empty f.suyong}">              
                <tr>
                  <th>수용인원</th>
                  <td>${f.suyong}</td>
                </tr>
                </c:if>
 
                

              </tbody>
            </table>
  </div>
  
  <%---------------------%>
  
  <div class="right_rmain">
   
<!-- 지도를 표시할 div 입니다 -->
<div id="map" style="width:450px;height:400px; z-index:0; "></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	4a9ef0ef123875d2c771898ba8e90d94"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng("${f.lat}", "${f.lng}"), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
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

var iwContent = '<div style="padding:21px;">"${f.bsnsnm}" <br><a href="https://map.kakao.com/link/map/${f.bsnsnm},${f.lat},${f.lng}" style="color:blue; font-size:12px;" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/${f.bsnsnm},${f.lat},${f.lng}" style="font-size:13px; color:blue;" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
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
</div>

<jsp:include page="../include/footer.jsp" />