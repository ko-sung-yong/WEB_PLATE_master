<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="../resources/js2/jquery.js"></script>
<script src="../resources/js2/show.js"></script>


<jsp:include page="../include/logo.jsp" />

<div class="recom_top">

  <table>
    <tr>
      <th>조회수</th>
      <td>${hit}</td>
      <td>${Date}</td>
    </tr>
  </table>
  <h1>${divide2} 맛집 TOP ${listcount}</h1>
  <h4>${ment }</h4>
</div>


<div class="recom_main">


  <ul>  
     <c:if test="${!empty food}"> 
 <c:forEach var="f" items="${food}" varStatus="status"> 
    <li class="more_click">    
   
      <div class="recom_timg">
        <img alt="업로드 중" src="../resources/upload${f.food_file1}">
      </div>
      
      <div class="recom_tbox">
        <div class="recom_rest">
          <a href="../rest/rest1?f_num=${f.f_num}">
             <span class="recom_rest_name">${status.count}. ${f.bsnsnm}</span>
             <div class="recom_rest_null">${f.grade }</div>
             <span class="recom_rest_addr">${f.addr}</span>
          </a>
        </div>
      </div>  
      
      <div class="recom_right">
        <img alt="" src="../resources/images/starb.png" width="80" height="80">
        
        <div class="recom_rdown">
          <a href="../rest/rest1?f_num=${f.f_num}">
             <span class="sangshe">상세보기 ></span>
          </a>
         
        </div>
      </div>       
  
       
    </li>
      </c:forEach>
    </c:if>

    
    </ul>
    <div class="clear"></div>
</div>

<div class="more">
  <button onclick="more()">▼  더보기  ▼</button>
</div>

<jsp:include page="../include/footer.jsp" />