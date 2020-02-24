<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/inc/top.jsp"%>
<style type="text/css" >
.alert-box.alert-box--notice.hideit {float: left; width: 9vw; MARGIN: 5PX; height: 9vw;}
h3#h3_AEC {margin-bottom: 0;}
a.showList, a.showIcon{ font-size: 12px; color: #a2a2a2; padding-left: 5px;}
th.tb1 { padding: 0;}
td.tb1 { padding: 0; color: #6b6b6b; font-size: 13px;}
th.tb2 { padding: 0;}
td.tb2 { padding: 0; color: #6b6b6b; font-size: 13px;}
th.tb3 { padding: 0;}
td.tb3 { padding: 0; color: #6b6b6b; font-size: 13px;}
th.tb4 { padding: 0;}
td.tb4 { padding: 0; color: #6b6b6b; font-size: 13px;}
</style>
<c:set var="showCk" value="icon"></c:set>
<script type="text/javascript">
	$(document).ready(function (){
		$("#categorieShow_List").hide();
		$(".showIcon").click(function(){
			$("#categorieShow_icon").show();
			$("#categorieShow_List").hide();
		})
		$(".showList").click(function(){
			$("#categorieShow_icon").hide();
			$("#categorieShow_List").show();
		})
		
	})
</script>

  <!-- site content
        ================================================== -->
        <div class="s-content content">
            <main class="row s-styles">
 				<section id="styles" class="column large-full">
 				 <div class="row">
                        <div class="column large-6 tab-full">

                            <h3>ADD CATEGORIE</h3>
                            <form action="<c:url value='/add/addCategoreInsert.do'/>" method="post" name="cateInsert">
                                <div>
                                    <label for="addName">Categorie Name</label>
                                    <input class="full-width" type="text" placeholder="Name" id="CateName" name="cateName">
                                </div>
                               <!--  <div>
                                    <label for="addMaker">Maker</label>
                                    <div class="ss-custom-select">
                                    	 <input class="full-width" type="text" placeholder="Maker" id="addMaker">
                                         <select class="full-width" id="sampleRecipientInput">
                                            <option value="Option 1">Questions</option>
                                            <option value="Option 2">Report</option>
                                            <option value="Option 3">Others</option>
                                        </select> 
                                    </div>
                                </div> -->
                                
                                <label for="addPrice">Categorie Info</label>
                                <!-- <input class="full-width" type="text" placeholder="Name" id="CateInfo"> -->
                                <textarea class="full-width" placeholder="Info" id="CateInfo" name="cateInfo"></textarea> 

                                <label class="add-bottom">
                                    <input type="checkbox" name="useCk" for="useCk" value="y">
                                    <span class="label-text" id="useCk">Do you want to use it right away?</span><br>
                                    <span class="label-text" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(The default is no.)</span>
                                </label>
                            
                                <input class="btn--primary full-width" type="submit" value="Add Categorie">
                            </form>

                        </div>

                        <div class="column large-6 tab-full" id="categorieShow_icon">

                            <h3 id="h3_AEC">Already Exists Categories</h3>
                            	<a href="#" class="showList">The Show List</a>
                            <br>
                            
	                            <c:forEach items="${cateList}" var="dto" >
	                            	<div class="alert-box alert-box--notice hideit" 
	                            		<c:if test='${dto.useCk =="n"}'>
		                            		style="background-color: #ffd1d2;color: #dd4043;"
	                            		</c:if>
	                            		<c:if test='${dto.useCk =="y"}'>
		                            		style="background-color: #d5ebfb;color: #387fb2;"
	                            		</c:if>
	                            	>
	                                <span>${dto.cateName}</span>
	                           <%-- <span>${dto.cateInfo}</span> --%>
	                                <i class="fa fa-times alert-box__close" id= aria-hidden="true"></i>
	                            </div>
	                            </c:forEach>
                            </div>
                             <div class="column large-6 tab-full" id="categorieShow_List">
	                              <h3 id="h3_AEC">Already Exists Categories</h3>
	                            	<a href="#" class="showIcon">The Show Icon</a>
                         	  	 <br>
                            	<table>
                            		<tr>
                            			<th class="tb1">.No</th>
                            			<th class="tb2">Name</th>
                            			<th class="tb3">Infomation</th>
                            			<th class="tb4">Use</th>
                            		</tr>
		                        	 <c:forEach items="${cateList}" var="dto" >
		                            	<tr>
		                            		<td class="tb1">${dto.cateNo }</td>
		                            		<td class="tb2">${dto.cateName }</td>
		                            		<td class="tb3">${dto.cateInfo }</td>
		                            		<td class="tb4">
		                            			<c:if test="${dto.useCk =='y' }">사용중</c:if>
		                            			<c:if test="${dto.useCk =='n' }">미사용</c:if>
		                            		</td>
		                            	</tr>	
                            </c:forEach>
                            	</table>
                            </div>
                    </div> <!-- end row -->
 		</section>
  </main>

   </div> <!-- end s-content -->

<%@include file="/WEB-INF/views/inc/bottom.jsp"%>