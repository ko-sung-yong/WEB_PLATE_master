<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="../css/board_css/board.css">
<script src="../resources/js2/jquery.js"> </script>
<script src="../resources/js/bootstrap.js"></script>
<title>Insert title here</title>
</head>
<body>
<!-- 공지사항 헤더 -->
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="icon-bar"></span>			
					<span class="icon-bar"></span>			
					<span class="icon-bar"></span>			
			</button>
			<a class="navbar-brand" href="board.jsp">공지사항</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="../index.jsp">메인</a></li>
			</ul>
		</div>
	</nav>
<!-- /공지사항 헤더 -->
<!-- test -->
<div class="container" align="center">
	<div class="row">
		<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th style="background-color: #eeeeee; text-align: center;">번호</th>
					<th style="background-color: #eeeeee; text-align: center;">제목</th>
					<th style="background-color: #eeeeee; text-align: center;">작성자</th>
					<th style="background-color: #eeeeee; text-align: center;">작성일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>1st</td>
					<td>관리자</td>
					<td>2022-2-24</td>
					<!-- 
		<c:choose>
			<c:when test="${list != null }">
				<c:forEach var="dto" items="${list }">
					<tr>
						<td>${dto.seq }</td>
						<td><a href="/board/content.brd?seq=${dto.seq }">${dto.title}</a></td>
						<td>${dto.id }</td>
						<td>${dto.logtime }</td>
						<td>${dto.hit }</td>
					</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr>
					<th colspan="5">
						작성한 글이 없습니다.
					</th>
				</tr>
			</c:otherwise>
		</c:choose>
					 -->
				</tr>
			</tbody>
		</table>
		<a href="write.jsp" class="btn btn-primary">글쓰기</a>
	</div>
</div>
<!-- /test -->
</body>
</html>