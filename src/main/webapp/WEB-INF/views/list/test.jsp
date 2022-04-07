<%@ page contentType="text/html; charset=UTF-8"%>
<script  src="../js2/jquery.js"></script>
<script>
$(function(){
	$(".list > div").hide();
	$(".list > div").slice(0, 1).show(); // 최초 10개 선택
	$(".more").click(function(e){ // Load More를 위한 클릭 이벤트e
	  e.preventDefault();
	  $("div:hidden").slice(0, 1).show(); // 숨김 설정된 다음 10개를 선택하여 표시
	});
});
</script>

<jsp:include page="../include/logo.jsp" />



<div class="list_wrap">
  <div class="list">
    <div>
      1
    </div>
  
    <div>
      2
    </div>
 </div> 
  <div class="more">
    <button onclick="more()">▼  더보기  ▼</button>
  </div>  
</div>

<jsp:include page="../include/footer.jsp" />