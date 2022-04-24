<%@ page contentType="text/html; charset=UTF-8"%>
<script  src="../resources/js2/jquery.js"></script>
<script>
$(function(){
	$(".list_uli").hide();
	$(".list_uli").slice(0, 1).show(); // 최초 페이지만 보이게
	$(".more").click(function(){ // more클래스 클릭시 이벤트 실행
	  $("div:hidden").slice(0, 1).show(); // 숨김 설정된 페이지중 한개를 선택하여 나타냄
	
	
	
	});
});
</script>
<jsp:include page="../include/logo.jsp" />

  <div class="list_layout">
    <div class="list_head">
       <p>메뉴별 맛집 리스트</p>
    </div>
   
   <div class="list_mbox">
     <%-- 메뉴 리스트 더보기 페이지 기본 --%>
     <div class="list_uli">
       <ul class="l_ul1">
         <li>
           <img class="l_img" alt="OO OOOO 추천 TOP OO 사진" src="../resources/images/menu/pasta.jpg" width="550" height="250">
           <a href="../recomTop/reTop20?category=1" class="l_img_text">
             <div class="tit_de">
               <span class="tit">파스타 인기 맛집 TOP 30</span>
               <p class="de">" OOOO "</p>
             </div>
           </a>
         </li>
         <li>
           <img class="l_img" alt="OO OOOO 추천 TOP OO 사진" src="../resources/images/menu/pig.jpg" width="550" height="250">
           <a href="../recomTop/reTop20?category=2" class="l_img_text">
             <div class="tit_de">
               <span class="tit">돼지고기 인기 맛집 TOP 30</span>
               <p class="de">" OOOO "</p>
             </div>
           </a>
         </li>
         
       </ul>
      
       <ul class="l_ul2">
         <li>
           <img class="l_img" alt="OO OOOO 추천 TOP OO 사진" src="../resources/images/menu/sushi.jpg" width="550" height="250">
           <a href="../recomTop/reTop20?category=8" class="l_img_text">
             <div class="tit_de">
               <span class="tit">스시 인기 맛집 TOP 30</span>
               <p class="de">" OOOO "</p>
             </div>
           </a>
         </li>
         <li>
           <img class="l_img" alt="OO OOOO 추천 TOP OO 사진" src="../resources/images/menu/cow.jpg" width="550" height="250">
           <a href="../recomTop/reTop20?category=9" class="l_img_text">
             <div class="tit_de">
               <span class="tit">소고기 인기 맛집 TOP 30</span>
               <p class="de">" OOOO "</p>
             </div>
           </a>
         </li>
         <li>
           
         
       </ul> 
     </div>
     
     
     <div class="clear"></div>
     
     <%-- 더보기 눌렀을때 나오는페이지 2 --%>
     
     <%-- 메뉴 리스트 더보기 페이지 기본 --%>
     <div class="list_uli">
       <ul class="l_ul1">
         <li>
           <img class="l_img" alt="OO OOOO 추천 TOP OO 사진" src="../resources/images/menu/pasta.jpg" width="550" height="250">
           <a href="../recomTop/reTop20?category=1" class="l_img_text">
             <div class="tit_de">
               <span class="tit">파스타 인기 맛집 TOP 30</span>
               <p class="de">" OOOO "</p>
             </div>
           </a>
         </li>
         <li>
           <img class="l_img" alt="OO OOOO 추천 TOP OO 사진" src="../resources/images/menu/pig.jpg" width="550" height="250">
           <a href="../recomTop/reTop20?category=2" class="l_img_text">
             <div class="tit_de">
               <span class="tit">돼지고기 인기 맛집 TOP 30</span>
               <p class="de">" OOOO "</p>
             </div>
           </a>
         </li>
         
       </ul>
      
       <ul class="l_ul2">
         <li>
           <img class="l_img" alt="OO OOOO 추천 TOP OO 사진" src="../resources/images/menu/sushi.jpg" width="550" height="250">
           <a href="../recomTop/reTop20?category=8" class="l_img_text">
             <div class="tit_de">
               <span class="tit">스시 인기 맛집 TOP 30</span>
               <p class="de">" OOOO "</p>
             </div>
           </a>
         </li>
         <li>
           <img class="l_img" alt="OO OOOO 추천 TOP OO 사진" src="../resources/images/menu/cow.jpg" width="550" height="250">
           <a href="../recomTop/reTop20?category=9" class="l_img_text">
             <div class="tit_de">
               <span class="tit">소고기 인기 맛집 TOP 30</span>
               <p class="de">" OOOO "</p>
             </div>
           </a>
         </li>
         <li>
           
         
       </ul> 
     
          
          
     <%-- 더보기 눌렀을때 나오는 페이지 2 end --%>
     
      
      <div class="clear"></div>
      
           <div class="list_uli">
       <ul class="l_ul1">
         <li>
           <img class="l_img" alt="OO OOOO 추천 TOP OO 사진" src="../resources/images/menu/pasta.jpg" width="550" height="250">
           <a href="../recomTop/reTop20?category=1" class="l_img_text">
             <div class="tit_de">
               <span class="tit">파스타 인기 맛집 TOP 30</span>
               <p class="de">" OOOO "</p>
             </div>
           </a>
         </li>
         <li>
           <img class="l_img" alt="OO OOOO 추천 TOP OO 사진" src="../resources/images/menu/pig.jpg" width="550" height="250">
           <a href="../recomTop/reTop20?category=2" class="l_img_text">
             <div class="tit_de">
               <span class="tit">돼지고기 인기 맛집 TOP 30</span>
               <p class="de">" OOOO "</p>
             </div>
           </a>
         </li>
         
       </ul>
      
       <ul class="l_ul2">
         <li>
           <img class="l_img" alt="OO OOOO 추천 TOP OO 사진" src="../resources/images/menu/sushi.jpg" width="550" height="250">
           <a href="../recomTop/reTop20?category=8" class="l_img_text">
             <div class="tit_de">
               <span class="tit">스시 인기 맛집 TOP 30</span>
               <p class="de">" OOOO "</p>
             </div>
           </a>
         </li>
         <li>
           <img class="l_img" alt="OO OOOO 추천 TOP OO 사진" src="../resources/images/menu/cow.jpg" width="550" height="250">
           <a href="../recomTop/reTop20?category=9" class="l_img_text">
             <div class="tit_de">
               <span class="tit">소고기 인기 맛집 TOP 30</span>
               <p class="de">" OOOO "</p>
             </div>
           </a>
         </li>
         <li>
           
         
       </ul> 
     </div>
     
     
     <div class="clear"></div>
     
     </div>
     </div>
     <div class="null"></div>
     
     <div class="more">
       <button onclick="more()">▼  더보기  ▼</button>
     </div>
   </div>
<div class="clear"></div>

<jsp:include page="../include/footer.jsp" />