<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <jsp:include page="admin_main.jsp" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 공지사항 글쓰기 </title>

<style>
.gongji_wrap{
width:600px;
text-align:center;
border:1px solid orange;
margin:auto;
letter-spacing: 3px;
}
.gongji_content{
line-height:30px;
}

#ad_title{
margin-left:18px;
}
#cont{
vertical-align:top;
}

#gongji_cont{
margin-top:5px;
resize:none;
}

.cont_button_page{
margin-bottom:30px;
margin-right:100px;
}



.cont_button_page input[type=button]{
width:50px;
margin-left:5px;
padding:5px;
background-color:darkorange;
border:0px;
color:white;
border-radius:15px;
}


.cont_button_page input[type=button]:hover{
cursor:pointer;
}
</style>
</head>
<body>
<div class="gongji_wrap"> 
<h2> 공지사항 글쓰기</h2>


<div class="gongji_content">
<h4>
<label for ="title" id="ad_title" >제목 :</label> <input name="title" id="title" size="40" maxlength="50" value="${g.title}" readOnly> <br>
 <label for ="writer" id="ad_writer" > 작성자 :</label> <input name="writer" id="writer"  size="40" value="${g.writer}" readOnly><br>
 <label for ="hit" id="ad_hit" > 조회수 :</label> <input name="hit" id="hit"  size="40" value="${g.hit}" readOnly><br>
 
 <label for ="gongji_cont" id="cont" >글내용 : </label> <textarea id="gongji_cont" name="gongji_cont" rows="8" cols="41" readOnly>${cont}</textarea>
</h4>

</div>
<div class="cont_button_page">
<input type="button" value="글쓰기" onclick="location='admin_Gongji_insert';">
<input type="button" value="목록" onclick="location='admin_Gongji_list?page=${page}';">
</div>
</div>

</body>
</html>