<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd");
%>
<jsp:include page="../include/logo.jsp" />

<div class="recom_top">
  <table>
    <tr>
      <th>조회수</th>
      <td>OOO</td>
      <td><%= dt.format(nowTime) %></td>
    </tr>
  </table>
  <h1>OO 맛집 TOP 10</h1>
  <h4>"OOOO"</h4>
</div>

<div class="recom_main">
  <ul>
    <li>
      <div class="recom_timg">
        <img alt="" src="#">
      </div>
      
      <div class="recom_tbox">
        <div class="recom_rest">
          <a href="#">
             <span class="recom_rest_name">1. OOOO</span>
             <div class="recom_rest_null"></div>
             <span class="recom_rest_addr">OO구 OO로 OOO</span>
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
    
    <li>
      <div class="recom_timg">
        <img alt="" src="#">
      </div>
      
      <div class="recom_tbox">
        <div class="recom_rest">
          <a href="#">
             <span class="recom_rest_name">2. OOOO</span>
             <div class="recom_rest_null"></div>
             <span class="recom_rest_addr">OO구 OO로 OOO</span>
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
    
    <li>
      <div class="recom_timg">
        <img alt="" src="#">
      </div>
      
      <div class="recom_tbox">
        <div class="recom_rest">
          <a href="#">
             <span class="recom_rest_name">3. OOOO</span>
             <div class="recom_rest_null"></div>
             <span class="recom_rest_addr">OO구 OO로 OOO</span>
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
    
    <li>
      <div class="recom_timg">
        <img alt="" src="#">
      </div>
      
      <div class="recom_tbox">
        <div class="recom_rest">
          <a href="#">
             <span class="recom_rest_name">4. OOOO</span>
             <div class="recom_rest_null"></div>
             <span class="recom_rest_addr">OO구 OO로 OOO</span>
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
    
   <li>
      <div class="recom_timg">
        <img alt="" src="#">
      </div>
      
      <div class="recom_tbox">
        <div class="recom_rest">
          <a href="#">
             <span class="recom_rest_name">5. OOOO</span>
             <div class="recom_rest_null"></div>
             <span class="recom_rest_addr">OO구 OO로 OOO</span>
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
    
    <li>
      <div class="recom_timg">
        <img alt="" src="#">
      </div>
      
      <div class="recom_tbox">
        <div class="recom_rest">
          <a href="#">
             <span class="recom_rest_name">6. OOOO</span>
             <div class="recom_rest_null"></div>
             <span class="recom_rest_addr">OO구 OO로 OOO</span>
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
    
    <li>
      <div class="recom_timg">
        <img alt="" src="#">
      </div>
      
      <div class="recom_tbox">
        <div class="recom_rest">
          <a href="#">
             <span class="recom_rest_name">7. OOOO</span>
             <div class="recom_rest_null"></div>
             <span class="recom_rest_addr">OO구 OO로 OOO</span>
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
    
    <li>
      <div class="recom_timg">
        <img alt="" src="#">
      </div>
      
      <div class="recom_tbox">
        <div class="recom_rest">
          <a href="#">
             <span class="recom_rest_name">8. OOOO</span>
             <div class="recom_rest_null"></div>
             <span class="recom_rest_addr">OO구 OO로 OOO</span>
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
    
    <li>
      <div class="recom_timg">
        <img alt="" src="#">
      </div>
      
      <div class="recom_tbox">
        <div class="recom_rest">
          <a href="#">
             <span class="recom_rest_name">9. OOOO</span>
             <div class="recom_rest_null"></div>
             <span class="recom_rest_addr">OO구 OO로 OOO</span>
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
    
    <li>
      <div class="recom_timg">
        <img alt="" src="#">
      </div>
      
      <div class="recom_tbox">
        <div class="recom_rest">
          <a href="#">
             <span class="recom_rest_name">10. OOOO</span>
             <div class="recom_rest_null"></div>
             <span class="recom_rest_addr">OO구 OO로 OOO</span>
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
</div>

<jsp:include page="../include/footer.jsp" />