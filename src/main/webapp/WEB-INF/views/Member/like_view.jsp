<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="../include/logo.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
<style>
table{
width:1300px;
margin-top:40px;
margin-bottom:300px;
text-align:center;
margin-left:auto;
margin-right:auto;}

.img01{
width:150px;
height:100px;}

#not_register{
font-size:23px;
font-weight:bold;
font-color:black;}



</style>

<script>
$(function(){
	$(".more_click").hide();
	$(".more_click").slice(0, 5).show(); // 최초 페이지만 보이게
	$(".more").click(function(){ // more클래스 클릭시 이벤트 실행
	  $(".more_click:hidden").slice(0, 5).show(); // 숨김 설정된 페이지중 한개를 선택하여 나타냄
	  $(".footer").hide();
	  if($(".more_click:hidden").length ==0){ // 보여질 개수가 없다면 클릭버튼 숨기기
		  $('.more').hide();
		  $(".footer").show();
	  }
	});
});

</script>


</head>
<body>

 <table border="1">
 
 <tr>
  <th> 번호 </th><th>음식의 종류 </th><th> 가게이름  </th> <th> 메뉴 </th> <th>주소  </th> <th> 연락처 </th> 
 </tr>
 <c:if test="${!empty like}">
<c:forEach var="go" items="${like}"  varStatus="status" >
 <tr class="more_click">
 <td> ${status.count}</td> 
 
 <td>${go.bsnscond} </td> <td><a href="../rest/rest1?f_num=${go.f_num}">${go.bsnsnm} </a> </td> <td>${go.menu} </td> <td>${go.addr} </td> <td> ${go.tel}</td>
 </tr>
 
 </c:forEach>
 </c:if>

<tr>
 <c:if test="${empty like}"> 
<th colspan="7"> <h3 id="not_register"> 아직 등록된게 없습니다!</h3> </th>
 </c:if>
</tr> 
 </table>
 
 <c:if test="${!empty like}">
 <div class="more">
  <button onclick="more()">▼  더보기  ▼</button>
</div>
 </c:if>

<jsp:include page="../include/footer.jsp" />
</body>
</html>