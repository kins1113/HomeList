<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/inc/top.jsp"%>
<script type="text/javascript" >
$(document).ready(function(){
	//add로 가기 
	$("input[name=ToGo_Add]").click(function(){
		$(location).attr("href","<c:url value='/add/addList.do'/>")
	});
	
	// list로 가기
	$("input[name=ToGo_Trash]").click(function(){
		$(location).attr("href","<c:url value='/homeListTrash.do'/>")
	});
	
	//검색 버튼 클릭 시 검색되도록
	$("#searchBt").click(function(){
		$("form[name=searchForm]").submit();
	});
	
	//searchCondition select의 값이 H_PIRCE일때는 값을 하나더 보내주기
	$("#searchCondition").change(function(){
		var selectVal=$(this).val();
		if(selectVal =="H_PRICE"){
			$(".searchInfoPrice").show();
			$("#searchInfo").hide();
		}else{
			$(".searchInfoPrice").hide();
			$("#searchInfo").show();
		}
	});
	//값 세팅
	$("#searchSetting").click(function(){
		searchSetting();
	});
	$("#searchSetting").trigger("click");
});
	
	//갑 세팅하기
	function searchSetting(){
		//검색 input name= searchCondition
		var searchCondition="${param.searchCondition}";
		if(searchCondition!=null && searchCondition!=""){
			$("#searchCondition").val(searchCondition).prop("selected", true);
		}else{
			$("#searchCondition").val("all").prop("selected", true);
		}
		if("${param.searchCondition}" == "H_PRICE"){
			$("#searchInfo").hide();
			$(".searchInfoPrice").show();
		}else{
			$("#searchInfo").show();
			$(".searchInfoPrice").hide();
		}
		//input name = searchKeyWord
		var searchKeyword="${param.searchKeyword}";
		$("input[name=searchKeyword]").val("${param.searchKeyword}");
		//name=searchKeyWordPrice1.2
		$("input[name=searchKeywordPrice1]").val("${param.searchKeywordPrice1}");
		$("input[name=searchKeywordPrice2]").val("${param.searchKeywordPrice2}");
		//#searchKate
		var selectCateNo="${param.cateNo}";
		if(selectCateNo!=null && selectCateNo!=""){
			$("#searchKate").val("${param.cateNo}").prop("selected",true);
		}else{
			$("#searchKate").val(0).prop("selected",true);
		}
		//#recodeCount
		var recordCount="${param.recordCountPerPage}";
		if(recordCount!=null && recordCount!=""){
			$("#recodeCount").val("${param.recordCountPerPage}").prop("selected",true);
		}else{
			$("#recodeCount").val(20).prop("selected",true);
		}
		
	}
//페이지 처리 함수
function pageFunc(curPage){
$("input[name=currentPage]").val(curPage);
$("form[name=searchForm]").attr("action","<c:url value='/homeList.do'/>");
$("form[name=searchForm]").submit();
}

</script>
<style type="text/css" >
#addListTbody td {padding: 2px 0 0 0;font-size: 13px;}
#addListThead th {padding: 0;}
.noMargin{margin:0}
.noPadding{padding:0}
input.checkbox {margin-top: 5px; margin-bottom: 5px;}
input.btn--primary.noMargin.noPadding.addListButton {height: 3rem; line-height: 1.6rem;  padding: 0 5px 0 5px; float:right; font-size: 8px;}
#addListDiv {min-height: 418.4px;margin-bottom: 32px;}
#addListThead th, #addListTbody td {text-align: center;}
#addListThead th:nth-of-type(1){width: 2%;}
#addListThead th:nth-of-type(2){width: 2%;}
#addListThead th:nth-of-type(3){width: 30%;text-align: left; padding-left: 10px;}
#addListThead th:nth-of-type(4){width: 11%;}
#addListThead th:nth-of-type(5){width: 15%;}
#addListThead th:nth-of-type(6){width: 15%;}
#addListThead th:nth-of-type(7){width: 7%;}
#addListTbody td:nth-of-type(1){width: 2%;}
#addListTbody td:nth-of-type(2){width: 2%;}
#addListTbody td:nth-of-type(3){width: 30%;text-align: left; padding-left: 10px;}
#addListTbody td:nth-of-type(4){width: 11%;}
#addListTbody td:nth-of-type(5){width: 15%;}
#addListTbody td:nth-of-type(6){width: 15%;}
#addListTbody td:nth-of-type(7){width: 7%;}
#searchDiv label { float: left; margin: 0 5px;    color: #535151;}
input#searchInfo, input.searchInfoPrice { float: left;border: solid 1px silver;padding: 0; margin: 0; height: 22px; width: 140px;}
span.searchInfoPrice { float: left; line-height: normal; margin: 0 5px;}
select#searchKate { float: right; padding: 0; margin: 0 5px;height: 23px;width: 116px;font-size: 12px;}
select#recodeCount { float: right; padding: 0; margin: 0 12px; height: 23px; width: 77px;font-size: 12px;}
select#searchCondition { float: left; padding: 0; margin: 0 5px; height: 23px; width: 77px;font-size: 16px; border: 1px solid silver;    color: #535151;}
button#searchBt {margin: 0 5px;padding: 0;height: 23px; width: 96px;line-height: inherit;font-size: 12px;border: 1px solid silver;color: #4a0808;}
button#searchSetting {display: none;}
</style>
<div class="s-content content">
	<main class="row s-styles">
	<section id="styles" class="column large-full">
		<div class="row">
			 <div class="column large-12 tab-full">
                   	<form action="<c:url value='/homeList.do'/>" name="searchForm" method="post">
                   	<button type="button" id="searchSetting"></button>
                      <h3>HomeList All</h3>
                      <div id="searchDiv">
                      
							<label for="searchInfo">검색 </label>
                      		<select id="searchCondition" name="searchCondition">
								<option value="all">.All</option>
								<option value="H_NAME">.Name</option>
								<option value="H_PRICE">.Price</option>
								<option value="MAKER">.Maker</option>
							</select>
							<input type="text" id="searchInfo" name="searchKeyword"/> 
							<input type="text" class="searchInfoPrice" name="searchKeywordPrice1"/> 
							<span class="searchInfoPrice" > - </span>
							<input type="text" class="searchInfoPrice" name="searchKeywordPrice2"/> 
							<button type="button" id="searchBt">search</button>
							<select id="recodeCount" name="recordCountPerPage">
								<option value="10">10개</option>
								<option value="20">20개</option>
								<option value="30">30개</option>
								<option value="40">40개</option>
								<option value="50">50개</option>
							</select>   
							  	<!-- cateNo를 저장하기 위한 히든 값 -->
	                     <%--  	<input type="hidden" name="cateNo" value="${param.cateNo}"/> --%>
							<select id="searchKate" name="cateNo">
								<option value="0">카테고리</option>
								<c:forEach var="cateDTO" items="${cateList}">
									<option value="${cateDTO.cateNo}">${cateDTO.cateName }</option>
								</c:forEach>
							</select>                     
                      </div>
                      <br>
                      <div id="addListDiv">
                      	<table>
                      		<thead id="addListThead">
                      			<tr>
                      				<th><input type="checkbox" class="checkbox" name="checkAll"/></th>
                      				<th>.No</th>
                      				<th>.Name</th>
                      				<th>.Price</th>
                      				<th>.maker</th>
                      				<th>.GDate</th>
                      				<th>.Kg</th>
                      			</tr>	
                      		</thead>
                      		<tbody id="addListTbody"> 
                      		<c:if test="${empty listHome}">
                         		<tr>
                         			<td colspan="7" rowspan="3"> 카테고리의 가지고 계신 목록이 없습니다......!@#$%^&*()</td>
                         		</tr>
                         		<tr></tr>
                         		<tr></tr>
                         	</c:if>
                         	<c:if test="${!empty listHome }">
		                         <c:forEach items="${listHome}" var="listDTO">
		                        		<tr>
		                        			<td>
		                        				<input type="checkbox" class="checkbox" name="check_del" />
												<input type="hidden" value="${listDTO['H_NO'] }" />		                            			
		                        			</td>
		                        			<td>${listDTO['H_NO']}</td>
		                        			<td>${listDTO['H_NAME']}</td>
		                        			<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${listDTO['H_PRICE']}"/></td>
		                        			<td>${listDTO['MAKER']}</td>
		                        			<td><fmt:formatDate value="${listDTO['H_GETDATE']}" pattern="YY.MM.dd"/></td>
		                        			<td>${listDTO['CATE_NAME'] }</td>
		                        		</tr>
		                         </c:forEach>
	                         </c:if>
                      		</tbody>
                      	</table>
                     	</div>
                      
                      	<!-- 페이징 처리를 위한 히든값 -->
                          	<input type="hidden" name="currentPage" />
                           	<!-- 15개 까지만 나오고 패이징 처리 -->
                           	<div class="divPage" align="center">
								<!-- 이전블럭으로 이동하기 -->
								<c:if test="${pagingInfo.firstPage>1 }">
									<a href="#" class="pgn__prev" onclick="pageFunc('${pagingInfo.firstPage-1}')"> <img
										src="<c:url value='/resources/images/first.JPG'/>"
										alt="이전블럭으로 이동">
									</a>
								</c:if>
								<!-- 페이지 번호 추가 -->
								<!-- [1][2][3][4][5][6][7][8][9][10] -->
								<c:forEach var="i" begin="${pagingInfo.firstPage }"
									end="${pagingInfo.lastPage }">
									<c:if test="${i==pagingInfo.currentPage }">
										<span class="pgn__num" style="color: #000000; font-size: 1em">${i }</span>
									</c:if>
									<c:if test="${i!=pagingInfo.currentPage }">
										<a class="pgn__num" href="#" onclick="pageFunc('${i}')">[${i}]</a>
									</c:if>
								</c:forEach>
								<!--  페이지 번호 끝 -->
			
								<!-- 다음 블럭으로 이동하기 -->
								<c:if test="${pagingInfo.lastPage<pagingInfo.totalPage }">
									<a href="#" class="pgn__next" onclick="pageFunc('${pagingInfo.lastPage+1}')"> <img
										src="<c:url value='/resources/images/last.JPG'/>"
										alt="다음블럭으로 이동">
									</a>
								</c:if>
				<input class="btn--primary noMargin noPadding addListButton" type="button" name="CK_DEL" value="CK_DEL">
				<input class="btn--primary noMargin noPadding addListButton" type="button" name="ToGo_Trash" value="ToGo_Trash">
				<input class="btn--primary noMargin noPadding addListButton" type="button" name="ToGo_Add" value="ToGo_Add">
			</div>
        	</form>
        </div>

		</div>
		<!-- end row -->
	</section>
	</main>

</div>
<!-- end s-content -->

<%@include file="/WEB-INF/views/inc/bottom.jsp"%>