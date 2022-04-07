<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<%-- 아이콘 사용하기 위한 코드  --%>
<script src="https://kit.fontawesome.com/9376c7b079.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet"  href="resources/css2/index.css">

</head>
<body>
<!----------- 상단 (로고+메뉴, 배경이미지+텍스트+검색바) ------------->
     <div class = "header">
       <div class="top_bg">
            <div class="logo_Area">
              <a href="/controller/index">
              <img alt="로고" src="resources/images/web_logo.jpg" width="150" height="50">
              </a>
            </div>
            <c:if test="${empty Sid}">
            <ul class="nav">
              <li><a href="/controller/Member/login">로그인</a></li>
              <li><a href="/controller/Member/loginForm">회원가입</a></li>
              <li><a href="/controller/recomTop/Food_list">맛집리스트</a></li>
            </ul>
            </c:if>
            <c:if test="${!empty Sid}">
            <ul class="nav">              
              <li><a href="/controller/Member/list">MY PAGE </a></li>
              <li><a href="/controller/Member/logOut">로그아웃</a></li>                 
              <li><a href="#"><i class="fa-solid fa-user-large"></i></a>
             
              <li><a href="/controller/recomTop/Food_list">맛집리스트</a></li>
            </ul>
            
            </c:if>                  
        </div>
        
        
        <div class="top_img">
          <div class="top_text">
            <h1>솔직한 리뷰, 믿을 수 있는 평점!</h1>
            <h1>Web 플레이트</h1>
          </div>
          <div class="box_sh">
          
            <form class="box"  action="search">
            
              <input type="text" name="find_name" id="find_name" value="${find_name}" placeholder="지역,식당 또는 음식" maxlength="50">
              <%-- 뒷부분 나중에 수정 필요  --%>
              <input type="submit" value="검색">
            </form>
          </div>
         </div>
      </div>
             
<!------------------ 메인 (리스트+사진) --------------------->
       <%---- 3 x 2 ----%>   
       <div class="main">
              <section class="top_list">
              <div class = "section">
                 <h2>믿고 보는 맛집 리스트</h2>
                 <h3><a href="/controller/list/top_list">리스트 더보기</a></h3>
              </div>
              
              <div class="clear"></div>
              
              <div class="list_img">
                 <ul class="list_ul">
                    <li>
                       <img class="list_img_jpg" alt="대구 가족외식 추천 TOP 20 사진" src="resources/images/top/daegu.jpg">
                       <a href="/controller/recomTop/reTop20">
                       <div class="list_img_text">
                         <span class="title">대구 가족외식 추천 TOP 20</span>
                         <p class="desc">" 가족과 함께 따뜻한 식사를 "</p>
                       </div>
                       </a>
                     </li>
                     <li>
                       <img class="list_img_jpg" alt="카이스트 맛집 TOP 20 사진" src="resources/images/top/kaist.jpg">
                       <a href="/controller/recomTop/reTop20">
                       <div class="list_img_text">
                         <span class="title">카이스트 맛집 TOP 20</span>
                         <p class="desc">" 수재들이 먹는 맛집은 어딜까? "</p>
                       </div>
                       </a>
                     </li>
                     
                  </ul>
                  
                  <ul class="list_ul">
                    <li>
                       <img class="list_img_jpg" alt="치즈 맛집 TOP 10 사진" src="resources/images/top/cheese.jpg">
                       <a href="/controller/recomTop/reTop10">
                       <div class="list_img_text">
                         <span class="title">치즈 맛집 TOP 10</span>
                         <p class="desc">" 치즈를 정말 좋아한다면! "</p>
                       </div>
                       </a>
                     </li>
                     <li>
                       <img class="list_img_jpg" alt="신촌이대 맛집 TOP 20 사진" src="resources/images/top/sin2.jpg">
                       <a href="/controller/recomTop/reTop20">
                       <div class="list_img_text">
                         <span class="title">신촌이대 맛집 TOP 20</span>
                         <p class="desc">" 신촌이대에 가면 뭐 먹지 "</p>
                       </div>
                       </a>
                     </li>
                  </ul>
                  
                  <ul class="list_ul">
                    <li>
                       <img class="list_img_jpg" alt="안양 한식집 TOP 15 사진" src="resources/images/top/korea.jpg">
                       <a href="./recomTop/reTop15">
                       <div class="list_img_text">
                         <span class="title">안양 한식집 TOP 15</span>
                         <p class="desc">" 안양에서 한식이 먹고싶다면 "</p>
                       </div>
                       </a>
                     </li>
                     <li>
                       <img class="list_img_jpg" alt="송파구 가락동 맛집 TOP 15 사진" src="resources/images/top/songpa.jpg">
                       <a href="/controller/recomTop/reTop15">
                       <div class="list_img_text">
                         <span class="title">송파구 가락동 맛집 TOP 15</span>
                         <p class="desc">" 송파구에 이런 맛집이!? "</p>
                       </div>
                       </a>
                     </li>
                  </ul>
              </div>
          </section>
         </div>
         
         <%-------------------------%>
         <div class="main">
              <section class="menu_list">
              <div class = "section">
                 <h2>메뉴별 맛집 리스트</h2>
                 <h3><a href="/controller/list/menu_list">리스트 더보기</a></h3>
              </div>
              
              <div class="clear"></div>
              
              <div class="list_img">
                 <ul class="list_ul">
                    <li>
                       <img class="list_img_jpg" alt="파스타 인기 맛집 TOP 30 사진" src="resources/images/menu/pasta.jpg">
                       <a href="/controller/recomTop/reTop30">
                       <div class="list_img_text">
                         <span class="title">파스타 인기 맛집 TOP 30</span>
                         <p class="desc">" 파스타가 먹고싶은날엔~ "</p>
                       </div>
                       </a>
                     </li>
                     <li>
                       <img class="list_img_jpg" alt="스시 인기 맛집 TOP 30 사진" src="resources/images/menu/sushi.jpg">
                       <a href="/controller/recomTop/reTop30">
                       <div class="list_img_text">
                         <span class="title">스시 인기 맛집 TOP 30</span>
                         <p class="desc">" 스시 먹으려면  여기를 가야지"</p>
                       </div>
                       </a>
                     </li>
                  </ul>
                  
                  <ul class="list_ul">
                    <li>
                       <img class="list_img_jpg" alt="돼지고기 인기 맛집 TOP 30 사진" src="resources/images/menu/pig.jpg">
                       <a href="/controller/recomTop/reTop30">
                       <div class="list_img_text">
                         <span class="title">돼지고기 인기 맛집 TOP 30</span>
                         <p class="desc">" 한국인의 소울푸드는 돼지고기가 아닐까?  "</p>
                       </div>
                       </a>
                     </li>
                     <li>
                       <img class="list_img_jpg" alt="소고기 인기 맛집 TOP 30 사진" src="resources/images/menu/cow.jpg">
                       <a href="/controller/recomTop/reTop30">
                       <div class="list_img_text">
                         <span class="title">소고기 인기 맛집 TOP 30</span>
                         <p class="desc">" 소고기가 입에 들어가면 정말 행복해 "</p>
                       </div>
                       </a>
                     </li>
                  </ul>
                  
                  <ul class="list_ul">
                    <li>
                       <img class="list_img_jpg" alt="돈까스 인기 맛집 TOP 30 사진" src="resources/images/menu/donkgas.jpg">
                       <a href="/controller/recomTop/reTop30">
                       <div class="list_img_text">
                         <span class="title">돈까스 인기 맛집 TOP 30</span>
                         <p class="desc">" 돈까스를 소스에 찍어 먹어야지  "</p>
                       </div>
                       </a>
                     </li>
                     <li>
                       <img class="list_img_jpg" alt="라멘 인기 맛집 TOP 30 사진" src="resources/images/menu/ramen.jpg">
                       <a href="/controller/recomTop/reTop30">
                       <div class="list_img_text">
                         <span class="title">라멘 인기 맛집 TOP 30</span>
                         <p class="desc">" 추운 날 따듯한 라멘 한 그릇 "</p>
                       </div>
                       </a>
                     </li>
                  </ul>
              </div>
          </section>
         </div>
         
         <%-------------------------%>
         <div class="main">
              <section class="loca_list">
              <div class = "section">
                 <h2>지역별 인기 맛집</h2>
              </div>
              
              <div class="clear"></div>
              
              <div class="list_img">
                 <ul class="list_ul">
                    <li>
                       <img class="list_img_jpg" alt="강원도 인기 맛집 TOP 10 사진" src="resources/images/loca/squid.jpg">
                       <a href="/controller/recomTop/reTop10">
                       <div class="list_img_text">
                         <span class="title">강원도 인기 맛집 TOP 10</span>
                         <p class="desc">" 강원도 음식이 맛있다는데 "</p>
                       </div>
                       </a>
                     </li>
                     <li>
                       <img class="list_img_jpg" alt="경기도 인기 맛집 TOP 10 사진" src="resources/images/loca/suwon.jpg">
                       <a href="/controller/recomTop/reTop10">
                       <div class="list_img_text">
                         <span class="title">경기도 인기 맛집 TOP 10</span>
                         <p class="desc">" 경기도 맛집이 여기 다 있네 "</p>
                       </div>
                       </a>
                     </li>
                  </ul>
                  
                  <ul class="list_ul">
                    <li>
                       <img class="list_img_jpg" alt="제주도 인기 맛집 TOP 10" src="resources/images/loca/jeju.jpg">
                       <a href="/controller/recomTop/reTop10">
                       <div class="list_img_text">
                         <span class="title">제주도 인기 맛집 TOP 10</span>
                         <p class="desc">" 제주도를 가면 꼭 가야지 "</p>
                       </div>
                       </a>
                     </li>
                     <li>
                       <img class="list_img_jpg" alt="부산 인기 맛집 TOP 10" src="resources/images/loca/busan.jpg">
                       <a href="/controller/recomTop/reTop10">
                       <div class="list_img_text">
                         <span class="title">부산 인기 맛집 TOP 10</span>
                         <p class="desc">" 이곳이 부산 맛집이라 안카나 "</p>
                       </div>
                       </a>
                     </li>
                  </ul>
                  
                  <ul class="list_ul">
                    <li>
                       <img class="list_img_jpg" alt="강남 인기 맛집 TOP 10" src="resources/images/loca/gangnam.jpg">
                       <a href="/controller/recomTop/reTop10">
                       <div class="list_img_text">
                         <span class="title">강남 인기 맛집 TOP 10</span>
                         <p class="desc">" 맛집하면 강남! 강남하면 맛집! "</p>
                       </div>
                       </a>
                     </li>
                     <li>
                       <img class="list_img_jpg" alt="강북 인기 맛집 TOP 10" src="resources/images/loca/gangbuk.jpg">
                       <a href="/controller/recomTop/reTop10">
                       <div class="list_img_text">
                         <span class="title">강북 인기 맛집 TOP 10</span>
                         <p class="desc">" 다양한 먹거리는 강북에서 "</p>
                       </div>
                       </a>
                     </li>
                  </ul>
              </div>
          </section>
         </div>
         
         
         <%---- 4 x 2 ----%>
         <div class="main">
              <section class="bakery_list">
              <div class = "section">
                 <h2>돼지고기 맛집 추천</h2>
                 <%-- <h3><a href="#">리스트 더보기</a></h3> --%>
              </div>
              
              <div class="clear"></div>
              
              <div class="list_img2">
                <div class="contain2">
                  <p>
                   <a href="/controller/rest/rest1">
                    <img src="resources/images/pig_top/tamra.jpg">
                    <span class="t_b">탐라도야지 본점</span><br>
                    <span class="t_s">서울 서초구 서초대로50길 82 정원빌딩</span>
                   </a>
                  </p>
                </div>
                <div class="contain2">
                  <p>
                   <a href="/controller/rest/rest1.jsp">
                    <img src="resources/images/pig_top/goldpig.jpg">
                    <span class="t_b">금돼지식당</span><br>
                    <span class="t_s">서울 중구 다산로 149</span>
                   </a>
                  </p>
                </div>
                <div class="contain2">
                  <p>
                   <a href="/controller/rest/rest1">
                    <img src="resources/images/pig_top/montwo.jpg">
                    <span class="t_b">월화고기 보라매점</span><br>
                    <span class="t_s">서울 관악구 보라매로3길 16</span>
                   </a>
                  </p>
                </div>
                <div class="contain2">
                  <p>
                   <a href="/controller/rest/rest1">
                    <img src="resources/images/pig_top/sixpung.jpg">
                    <span class="t_b">육풍 구로디지털단지점</span><br>
                    <span class="t_s">서울 구로구 디지털로32나길 20</span>
                   </a>
                  </p>
                </div>
                <div class="contain2">
                  <p>
                   <a href="/controller/rest/rest1">
                    <img src="resources/images/pig_top/gilmok.jpg">
                    <span class="t_b">길목</span><br>
                    <span class="t_s">서울 강남구 영동대로129길 10 진성빌딩</span>
                   </a>
                  </p>
                </div>
                <div class="contain2">
                  <p>
                   <a href="/controller/rest/rest1">
                    <img src="resources/images/pig_top/nam0.jpg">
                    <span class="t_b">남영돈</span><br>
                    <span class="t_s">서울 용산구 한강대로80길 17</span>
                   </a>
                  </p>
                </div>
                <div class="contain2">
                  <p>
                   <a href="/controller/rest/rest1">
                    <img src="resources/images/pig_top/jotan.png">
                    <span class="t_b">조연탄</span><br>
                    <span class="t_s">서울 강서구 곰달래로60길 29</span>
                   </a>
                  </p>
                </div>
                <div class="contain2">
                  <p>
                   <a href="/controller/rest/rest1">
                    <img src="resources/images/pig_top/migang.jpeg">
                    <span class="t_b">미강식당</span><br>
                    <span class="t_s">서울 송파구 백제고분로 122 103호</span>
                   </a>
                  </p>
                </div>
              </div>  
          </section>
         </div>
         
         <%--------%>
         
         <div class="main">
              <section class="bakery_list">
              <div class = "section">
                 <h2>OO 맛집 추천</h2>
                 <%-- <h3><a href="#">리스트 더보기</a></h3> --%>
              </div>
              
              <div class="clear"></div>
              
              <div class="list_img2">
                <div class="contain2">
                  <p>
                   <a href="/controller/rest/rest1">
                    <img src="resources/images/squid.jpg">
                    <span class="t_b">OOO</span><br>
                    <span class="t_s">OO로 OO길 OO</span>
                   </a>
                  </p>
                </div>
                <div class="contain2">
                  <p>
                   <a href="/controller/rest/rest1">
                    <img src="resources/images/squid.jpg">
                    <span class="t_b">OOO</span><br>
                    <span class="t_s">OO로 OO길 OO</span>
                   </a>
                  </p>
                </div>
                <div class="contain2">
                  <p>
                   <a href="/controller/rest/rest1">
                    <img src="resources/images/squid.jpg">
                    <span class="t_b">OOO</span><br>
                    <span class="t_s">OO로 OO길 OO</span>
                   </a>
                  </p>
                </div>
                <div class="contain2">
                  <p>
                   <a href="/controller/rest/rest1">
                    <img src="resources/images/squid.jpg">
                    <span class="t_b">OOO</span><br>
                    <span class="t_s">OO로 OO길 OO</span>
                   </a>
                  </p>
                </div>
                <div class="contain2">
                  <p>
                   <a href="/controller/rest/rest1">
                    <img src="resources/images/squid.jpg">
                    <span class="t_b">OOO</span><br>
                    <span class="t_s">OO로 OO길 OO</span>
                   </a>
                  </p>
                </div>
                <div class="contain2">
                  <p>
                   <a href="/controller/rest/rest1">
                    <img src="resources/images/squid.jpg">
                    <span class="t_b">OOO</span><br>
                    <span class="t_s">OO로 OO길 OO</span>
                   </a>
                  </p>
                </div>
                <div class="contain2">
                  <p>
                   <a href="/controller/rest/rest1.jsp">
                    <img src="resources/images/squid.jpg">
                    <span class="t_b">OOO</span><br>
                    <span class="t_s">OO로 OO길 OO</span>
                   </a>
                  </p>
                </div>
                <div class="contain2">
                  <p>
                   <a href="/controller/rest/rest1">
                    <img src="resources/images/squid.jpg">
                    <span class="t_b">OOO</span><br>
                    <span class="t_s">OO로 OO길 OO</span>
                   </a>
                  </p>
                </div>
              </div>  
          </section>
         </div>
        
<!----------------------- 하단 시작 ------------------------->
         <div class="footer">
           <div class="foot_box">
             <div class="foot_logo">
               <a href="/controller/index">
               <img alt="로고" src="resources/images/logoW_ex.png">
               </a>
             </div>
             
             <div class="foot_ul" id="foot_ul1">
               <ul>
                 <li><a href="/controller/footer/Terms_of_Use">이용약관</a></li>
                 <li><a href="/controller/footer/NonMember">비회원 이용자 이용약관</a></li>
                 <li><a href="/controller/footer/Terms_of_Use">개인정보처리방침</a></li>
               </ul>
             </div>
             <div class="foot_ul" id="foot_ul2">
               <ul>               
                 <li><a href="#">사이트 소개</a></li>
                 <li><a href="#">고객센터</a></li>
                 <li><a href="#">공지사항</a></li>
               </ul>
             </div>
           </div>
           
           <div class="clear"></div>
           
           <div id="foot_down">
            주소 &nbsp;:&nbsp; 서울특별시 OO구 OOOO로 OOO &nbsp; &nbsp; &nbsp; |&nbsp; &nbsp; &nbsp; E-mail &nbsp;:&nbsp; webplate@webplate.com &nbsp; &nbsp; &nbsp; |&nbsp; &nbsp; &nbsp; Tel &nbsp;:&nbsp; 02) 123 - 4567 &nbsp; &nbsp; &nbsp; |&nbsp; &nbsp; &nbsp; Fax &nbsp;:&nbsp; 02 - 1234 - 5678<br>
            <br>All contents CopyRight ⓒ 2022 WebPlate Inc. all rights reserved
           </div>
         </div> 
</body>
</html>