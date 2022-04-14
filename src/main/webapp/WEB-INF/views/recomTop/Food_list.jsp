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
<script src="../resources/js2/show.js"></script>



<jsp:include page="../include/logo.jsp" />
<div class="block">

</div>


<div class="recom_main">
<c:if test="${!empty flist}">
<c:forEach var="food" items="${flist}" begin="0" end="50" step="1" varStatus="status" >
  <ul>
    <li class="more_click">   
      <div class="recom_timg">
        <img alt="이미지 준비중입니다" src="../resources/upload${food.food_file1}">
      </div>
      
      <div class="recom_tbox">
        <div class="recom_rest">
          <a href="../rest/rest1?f_num=${food.f_num}">
             <span class="recom_rest_name2"> ${status.count}.${food.bsnsnm}</span>
           
             <div class="recom_rest_null">${food.grade }</div>
             <span class="recom_rest_addr">주소 : ${food.addr }</span>
          </a>
        </div>
      </div>  
      
      <div class="recom_right">
        <img alt="" src="../resources/images/starb.png" width="80" height="80">
        
        <div class="recom_rdown">
          <a href="../rest/rest1?f_num=${food.f_num}">
             <span class="sangshe">상세보기 ></span>
          </a>
        </div>
      </div>

       <div class="clear"></div>
   
    </li>
    
           
  </ul>
  
   
 </c:forEach>    
      
    
</c:if>


</div>





<%--------------------------------%>



<div class="more">
  <button onclick="more()">▼  더보기  ▼</button>
</div>


<jsp:include page="../include/footer.jsp" />
