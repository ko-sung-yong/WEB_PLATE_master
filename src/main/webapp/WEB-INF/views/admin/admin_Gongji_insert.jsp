<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <jsp:include page="admin_main.jsp" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 공지사항 글쓰기 </title>

<script>
function check_gongji(){
	if($.trim($('#title').val())==''){
		alert('제목을 입력해주세요!');
		$('#title').val('').focus();
		return false;
	}
	if($.trim($('#gongji_cont').val())==''){
		alert('글내용을 입력해주세요!');
		$('#gongji_cont').val('').focus();
		return false;
	}	
	
}


</script>
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

.button_page{
margin-bottom:30px;
margin-right:115px;
}

.button_page input[type=submit]{
width:40px;
margin-left:5px;
padding:5px;
background-color:darkorange;
border:0px;
color:white;
border-radius:15px;
}

.button_page input[type=button]{
width:40px;
margin-left:5px;
padding:5px;
background-color:darkorange;
border:0px;
color:white;
border-radius:15px;
}

.button_page input[type=submit]:hover{
cursor:pointer;
}
.button_page input[type=button]:hover{
cursor:pointer;
}
</style>
</head>
<body>
<div class="gongji_wrap"> 
<h2> 공지사항 글쓰기</h2>

<form method="post" action="admin_Gongji_ok" onsubmit="return check_gongji();">

<div class="gongji_content">
<h4>
<label for ="title" id="ad_title" >제목 :</label> <input name="title" id="title" size="40" maxlength="50"> <br>
 <label for ="writer" id="ad_writer" > 작성자 :</label> <input name="writer" id="writer"  size="40" value="${admin_name}" readOnly><br>
 <label for ="gongji_cont" id="cont" >글내용 : </label> <textarea id="gongji_cont" name="gongji_cont" rows="8" cols="41"></textarea>
</h4>

</div>
<div class="button_page">
<input type="submit" value="등록 " > 
<input type="button" value="목록" onclick="location='admin_Gongji_list?page=${page}';">
</div>
</form>
</div>

</body>
</html>