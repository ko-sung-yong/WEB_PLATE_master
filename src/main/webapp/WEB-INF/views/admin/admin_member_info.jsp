<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="admin_main.jsp" />

<style>



#mlist_wrap{
width:300px; height:370px;
margin-left:auto; margin-right:auto;
color:black;
}

.mlist_title{
color:black;
margin-bottom:20px;
}

.mem_label{
padding:10px;
color:black;
}

#mem_list{
color:black;}


#cont_list{
margin-top:20px;
}

#cont_list input[type=submit]{
width:130px;
font-size:15px;

font-weight:bold;
border-radius:10px;
border:1px solid white;
padding:15px;
text-align:center;
background:darkorange;
color:white;
font-style:italic;
}

#cont_list input[type=button]{
width:130px;
font-size:15px;

font-weight:bold;
border-radius:10px;
border:1px solid white;
padding:15px;
margin-left:13px;
text-align:center;
background:darkorange;
color:white;
font-style:italic;
}

#cont_list input[type=button]:hover{
cursor:pointer;
}

#cont_list input[type=submit]:hover{
cursor:pointer;
}

.mem_dellabel{
padding:10px;
color:black;
font-weight:bold;
font-size:16px;
margin-bottom:20px;
}

#mem_delcont{
margin-top:10px;
resize:none;
margin-left:10px;
}


</style>
   

<br>
<div id="mlist_wrap">
<h1 class="mlist_title"> 회원 페이지 조회</h1>
<form method="post" action="admin_member_Edit">
<table id="mem_list">
<tr>
<th class="mem_label"> 아이디 :</th>
<td > <input name="id" id="id" value="${m.id}" readOnly style="color:black;"></td>
</tr>

<tr>
 <th class="mem_label"> 이름 :</th>
 <td> <input name="name" id="name" value="${m.name}" readOnly style="color:black;"></td>
</tr>

<tr>
<th class="mem_label"> 생년월일 : </th>
<td> <input name="birth" id="birth" value="${jumin}" readOnly style="color:black;" > </td>
</tr>

<tr>
<th class="mem_label"> 성별 :</th>
<td> <input name="gender" id="gender" value="${m.gender}" readOnly style="color:black;"></td>
</tr>

<tr>
<th class="mem_label"> 이메일 : </th>
<td> <input name="email" id="email" value="${m.email}" readOnly style="color:black;"></td>
</tr>

<tr>
<th class="mem_label"> 휴대전화  : </th>
<td> <input name="tel" id="tel" value="${tel}" readOnly style="color:black;"></td>
</tr>

<tr>
<th class="mem_label"> 계정상태  : </th>
<td> <input name="mem_state" id="mem_state" value="${m.mem_state}" readOnly style="color:black;"></td>
</tr>

</table>

<div>
<span class="mem_dellabel"> 탈퇴사유  : </span>
<span> <textarea id="mem_delcont" name="mem_delcont"  rows="8" cols="38" readonly style="color:black;">${m.mem_delcont}</textarea>
</span> 
</div>

<div id="cont_list">
<input type="submit" value="정보 수정하기">
<input type="button" value="전체목록" onclick="location='adminMember_List?page=${page}&id=${m.id}';">


</div>

</form>
</div>
<br> <br> <br> <br><br>