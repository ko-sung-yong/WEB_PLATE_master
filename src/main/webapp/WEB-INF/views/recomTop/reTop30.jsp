<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd");
%>
<script  src="../js2/jquery.js"></script>
<script>
$(function(){
	$(".recom_main").hide();
	$(".recom_main").slice(0, 1).show(); // 최초 페이지만 보이게
	$(".more").click(function(){ // more클래스 클릭시 이벤트 실행
	  $("div:hidden").slice(0, 1).show(); // 숨김 설정된 페이지중 한개를 선택하여 나타냄
	});
});
</script>

<jsp:include page="../include/logo.jsp" />


<div class="recom_top">
  <table>
    <tr>
      <th>조회수</th>
      <td>OOO</td>
      <td><%= dt.format(nowTime) %></td>
    </tr>
  </table>
  <h1>OO 맛집 TOP 30</h1>
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

<%--------------------------------%>

<div class="recom_main">
  <ul>
    <li>
      <img alt="" src="">
      <div>11</div>
    </li>
    
    <li>
      <img alt="" src="">
      <div>12</div>
    </li>
    
    <li>
      <img alt="" src="">
      <div>13</div>
    </li>
    
    <li>
      <img alt="" src="">
      <div>14</div>
    </li>
    
    <li>
      <img alt="" src="">
      <div>15</div>
    </li>
    
    <li>
      <img alt="" src="">
      <div>16</div>
    </li>
    
    <li>
      <img alt="" src="">
      <div>17</div>
    </li>
    
    <li>
      <img alt="" src="">
      <div>18</div>
    </li>
    
    <li>
      <img alt="" src="">
      <div>19</div>
    </li>
    
    <li>
      <img alt="" src="">
      <div>20</div>
    </li>
  </ul>
</div>

<%--------------------------------%>

<div class="recom_main">
  <ul>
    <li>
      <img alt="" src="">
      <div>21</div>
    </li>
    
    <li>
      <img alt="" src="">
      <div>22</div>
    </li>
    
    <li>
      <img alt="" src="">
      <div>23</div>
    </li>
    
    <li>
      <img alt="" src="">
      <div>24</div>
    </li>
    
    <li>
      <img alt="" src="">
      <div>25</div>
    </li>
    
    <li>
      <img alt="" src="">
      <div>26</div>
    </li>
    
    <li>
      <img alt="" src="">
      <div>27</div>
    </li>
    
    <li>
      <img alt="" src="">
      <div>28</div>
    </li>
    
    <li>
      <img alt="" src="">
      <div>29</div>
    </li>
    
    <li>
      <img alt="" src="">
      <div>30</div>
    </li>
  </ul>
</div>

<div class="more">
  <button onclick="more()">▼  더보기  ▼</button>
</div>

<jsp:include page="../include/footer.jsp" />