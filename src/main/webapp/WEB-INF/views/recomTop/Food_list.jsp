<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<style>
.block{
height:120px;
}

.recom_rest_name2{
	font-size: 22px;
	width: 350px;
	display: inline-block;
	border: 0px solid;
	padding-left: 10px;
}

.block{
height:30px;
}
</style>

<script  src="../resources/js2/jquery.js"></script>
<script>
$(function(){
	$(".recom_main").hide();
	$(".recom_main").slice(0, 1).show(); // 최초 페이지만 보이게
	$(".more").click(function(){ // more클래스 클릭시 이벤트 실행
	  $("div:hidden").slice(0, 1).show(); // 숨김 설정된 페이지중 한개를 선택하여 나타냄
	  $("div:hidden").slice(1,2).show();
	  $("div:hidden").slice(2,3).show();
	});
});
</script>



<jsp:include page="../include/logo.jsp" />
<div class="block">

</div>


<div class="recom_main">
<c:if test="${!empty flist}">
<c:forEach var="food" items="${flist}" begin="0" end="10" step="1" >
  <ul>
    <li>   
      <div class="recom_timg">
        <img alt="이미지 준비중입니다" src="../resources/upload${food.food_file1}">
      </div>
      
      <div class="recom_tbox">
        <div class="recom_rest">
          <a href="#">
             <span class="recom_rest_name2"> 식당이름 : ${food.bsnsnm}</span>
           
             <div class="recom_rest_null"></div>
             <span class="recom_rest_addr">주소 : ${food.addr }</span>
          </a>
        </div>
      </div>  
      
      <div class="recom_right">
        <img alt="" src="../resources/images/starb.png" width="80" height="80">
        
        <div class="recom_rdown">
          <a href="#">
             <span class="sangshe">상세보기 ></span>
          </a>
        </div>
      </div>

       <div class="clear"></div>
   
    </li>
    
           
  </ul>
  
   
    </c:forEach>    

  
<div class="recom_main">
<c:forEach var="food" items="${flist}" begin="11" end="20" step="1">
  <ul>
    <li>   
      <div class="recom_timg">
        <img alt="" src="#">
      </div>
      
      <div class="recom_tbox">
        <div class="recom_rest">
          <a href="#">
             <span class="recom_rest_name2"> 식당이름 : ${food.bsnsnm}</span>
           
             <div class="recom_rest_null"></div>
             <span class="recom_rest_addr">주소 : ${food.addr }</span>
          </a>
        </div>
      </div>  
      
      <div class="recom_right">
        <img alt="" src="../resources/images/starb.png" width="80" height="80">
        
        <div class="recom_rdown">
          <a href="#">
             <span class="sangshe">상세보기 ></span>
          </a>
        </div>
      </div>

       <div class="clear"></div>
   
    </li>
    
           
  </ul>
  
   
    </c:forEach>
          
   



</div>

<div class="recom_main">
<c:forEach var="food" items="${flist}" begin="21" end="30" step="1">
  <ul>
    <li>   
      <div class="recom_timg">
        <img alt="" src="#">
      </div>
      
      <div class="recom_tbox">
        <div class="recom_rest">
          <a href="#">
             <span class="recom_rest_name2"> 식당이름 : ${food.bsnsnm}</span>
           
             <div class="recom_rest_null"></div>
             <span class="recom_rest_addr">주소 : ${food.addr }</span>
          </a>
        </div>
      </div>  
      
      <div class="recom_right">
        <img alt="" src="../resources/images/starb.png" width="80" height="80">
        
        <div class="recom_rdown">
          <a href="#">
             <span class="sangshe">상세보기 ></span>
          </a>
        </div>
      </div>

       <div class="clear"></div>
   
    </li>
    
           
  </ul>
  
   
    </c:forEach>
     
     
<div class="recom_main">
<c:forEach var="food" items="${flist}" begin="31" end="50" step="1">
  <ul>
    <li>   
      <div class="recom_timg">
        <img alt="" src="#">
      </div>
      
      <div class="recom_tbox">
        <div class="recom_rest">
          <a href="#">
             <span class="recom_rest_name2"> 식당이름 : ${food.bsnsnm}</span>
           
             <div class="recom_rest_null"></div>
             <span class="recom_rest_addr">주소 : ${food.addr }</span>
          </a>
        </div>
      </div>  
      
      <div class="recom_right">
        <img alt="" src="../resources/images/starb.png" width="80" height="80">
        
        <div class="recom_rdown">
          <a href="#">
             <span class="sangshe">상세보기 ></span>
          </a>
        </div>
      </div>

       <div class="clear"></div>
   
    </li>
    
           
  </ul>
  
   
    </c:forEach>
               
          
      </div>    
    
</c:if>


</div>





<%--------------------------------%>



<div class="more">
  <button onclick="more()">▼  더보기  ▼</button>
</div>



