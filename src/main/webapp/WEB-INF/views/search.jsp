<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<jsp:include page="./include/Main_logo.jsp" />    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
<style>



/* --------- */
.recom_wrap{
margin-top:-500px;

}
.recom_main{
	width: 800px;
	border: 0.5px solid gray;
	margin: auto;
}
.recom_main li{
	width: 800px;
	height: 300px;
	border: 0.5px solid gray;
}

.recom_timg{
	width: 300px;
	height: 300px;
	float: left;
}
.recom_timg img{
	width: 250px;
	height: 250px;
	border: 1px solid;
	margin: 25px 0px 0px 25px;
}
.recom_tbox{
	width: 350px;
	height: 300px;
	float: left;
}
.recom_rest{
	padding: 45px 0px 0px 0px;
	width: 370px;
	height: 255px;
	border: 0.5px solid gray;
}
.recom_rest span{
	padding-top: 10px;
}
.recom_rest_name{
	font-size: 30px;
	width: 350px;
	display: inline-block;
	border: 0px solid;
	padding-left: 10px;
}

.recom_rest_name2{
font-size:18px;
font-weight:bold;}
.recom_rest_null{
	height: 10px;
}
.recom_rest_addr{
	font-size: 20px;
	font-weight: normal;
	width: 350px;
	display: inline-block;
	border: 0px solid;
	padding-left: 10px;
}

.recom_right{
	width: 120px;
	float: right;
	margin-top: 20px;
}
.recom_right img:hover{
	cursor: pointer;
}

.recom_rdown{
	padding-top: 150px;
}
.sangshe{
	font-size: 18px;
}

.box input[type=text]{
border:1px solid gray;
margin-bottom:20px;
margin-left:42px;
}

.food_paging{

margin:30px 0px 40px 20px;  /*위 오 아 왼*/ 
text-align:center;

}

.search_notexist{
text-align:center;
}
</style>
</head>
<body>
<div class="recom_wrap">
 <div class="box_sh">
            
            <form class="box"  action="search">
            
              <input type="text" name="find_name" id="find_name" value="${find_name}" placeholder="지역,식당 또는 음식" maxlength="50">
              <%-- 뒷부분 나중에 수정 필요  --%>
              <input type="submit" value="검색">
            </form>
          </div>
<div class="recom_main">
<c:if test="${!empty flist}">
<c:forEach var="f" items="${flist}">
<ul>
    <li>   
      <div class="recom_timg">
        <img alt="이미지 준비중입니다" src="./resources/upload${f.food_file1}">
      </div>
      
      <div class="recom_tbox">
        <div class="recom_rest">
          <a href="../controller/rest/rest1?f_num=${f.f_num}">
             <span class="recom_rest_name2"> 식당이름 : ${f.bsnsnm}</span>
           
             <div class="recom_rest_null"></div>
             <span class="recom_rest_addr">주소 : ${f.addr }</span>
          </a>
        </div>
      </div>  
      
      <div class="recom_right">
        <img alt="" src="./resources/images/starb.png" width="80" height="80">
        
        <div class="recom_rdown">
          <a href="../controller/rest/rest1?f_num=${f.f_num}">
             <span class="sangshe">상세보기 ></span>
          </a>
        </div>
      </div>

       <div class="clear"></div>
   
    </li>
    
           
  </ul>

</c:forEach>
</c:if>

<div class="search_notexist">
<c:if test="${empty flist}">
<h3> 검색 목록이 없습니다!</h3>

</c:if>
</div>


</div>




<%--페이징  --%>
<div class="food_paging">

<c:if test="${empty find_name}">
 <c:if test="${page<=1}">
 [이전]&nbsp;
  </c:if>
 
 <c:if  test="${page>1}">
  <a href="search?page=${page-1}"> [이전]</a> &nbsp;
  </c:if>
  
  
  <%-- 현재 쪽번호 출력  --%>
  <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
   <c:if test="${a==page}">
   <%-- 현재 페이지 선택되었다면 --%>
   <${a}>
   
   </c:if>  
       
   <c:if test="${a !=page}">
   <%--현재 페이지 선택 안되었다면 --%>
   <a href="search?page=${a}">[${a}]</a>&nbsp;
    </c:if>   

  </c:forEach>
  
  <c:if test="${page>=maxpage}">  
  [다음]
  </c:if>
  
  <c:if test="${page<maxpage}">
  <a href="search?page=${page+1}">[다음]</a>    
 </c:if> 
 </c:if>
 
 <%-- 검색 후 페이징 --%>
 <c:if test="${ !empty find_name}" >
  <c:if test="${page<=1}">
  [이전] &nbsp;
  </c:if>
  
  
  <c:if test="${page>1}">
  <a href="search?page=${page-1}  &find_name=${find_name}">[이전] </a> &nbsp;
  </c:if>
  
  <%-- 현재 쪽번호 출력 --%>
  <c:forEach var="a" begin="${startpage}" end="${endpage }" step="1">
   <c:if test="${a==page}">
   <${a}>
   </c:if>
   
   <c:if test="${a !=page}">
   <a href="search?page=${a}&find_name=${find_name}">[${a}]</a> &nbsp;
   </c:if>
  </c:forEach>
  
  <c:if test="${page >=maxpage}">
  [다음]
  </c:if>
  
  <c:if test="${page<maxpage}">
  <a href="search?page=${page+1}&find_name=${find_name}">[다음]</a>
</c:if>
 
 </c:if>
</div>


</div>
</body>
</html>


<jsp:include page="./include/Main_footer.jsp" />