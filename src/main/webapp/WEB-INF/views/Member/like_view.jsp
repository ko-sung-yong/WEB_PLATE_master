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

</head>
<body>

 <table border="1">
 
 <tr>
  <th> 번호 </th><th>사진  </th><th>음식의 종류 </th><th> 가게이름  </th> <th> 메뉴 </th> <th>주소  </th> <th> 연락처 </th> 
 </tr>
 <c:if test="${!empty like}">
<c:forEach var="go" items="${like}"  varStatus="status" >
 <tr>
 <td> ${status.count}</td> <td> <img  class="img01" alt="이미지 준비중입니다" src="../resources/upload${go.food_file1}">
      </td>
 
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
 
 

<jsp:include page="../include/footer.jsp" />
</body>
</html>