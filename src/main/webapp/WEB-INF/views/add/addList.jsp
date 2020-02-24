<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/inc/top.jsp"%>
<script type="text/javascript">
	$(document).ready(function(){
		
		//카테고리를 선택하면 우측에 리스트 뿌여주기
		$("#sampleRecipientInput").change(function(){
			var seVar = $("#sampleRecipientInput option:selected").val();
			alert("카테고리 선택 seVar = "+seVar);
			alert("카테고리 선택 눌렀다~!");
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

                            <h3>ADD LIST</h3>
                            <form>
                                <label for="addMaker">Categorie</label>
                                <div class="ss-custom-select">
                                    	<select class="full-width" id="sampleRecipientInput" name="kateNo">
                                         	<option value="0">Choice Categorie</option>
                                         <c:forEach items="${cateList }" var="cateDto">
                                          	<option value="${cateDto.cateNo}">${cateDto.cateName }</option>
                                         </c:forEach>
                                 	   </select>
                                </div>
                                <div>
                                    <label for="addMaker">Name</label>
                                   	 <input class="full-width" type="text" placeholder="Name" id="addName" name="hName">
                                </div>
                                <div>
                                    <label for="addName">Maker</label>
                                    <input class="full-width" type="text" placeholder="Maker" id="addMaker" name="maker">
                                </div>
                                <label for="addPrice">Get Price</label>
                                <input class="full-width" type="text" placeholder="Price" id="addPrice" name="hPrice">
                                <!-- <textarea class="full-width" placeholder="Price" id="addPrice"></textarea> -->

                                <label class="add-bottom">
                                    <input type="checkbox">
                                    <span class="label-text">Send a copy to yourself</span>
                                </label>
                            
                                <input class="btn--primary full-width" type="submit" value="Submit">
                            </form>

                        </div>

                        <div class="column large-6 tab-full">

                            <h3>Alert Boxes</h3>

                            <br>
                            
                            <div class="alert-box alert-box--error hideit">
                                <p>Error Message. Your Message Goes Here.</p>
                                <i class="fa fa-times alert-box__close" aria-hidden="true"></i>
                            </div><!-- end error -->
                                    
                            <div class="alert-box alert-box--success hideit">
                                <p>Success Message. Your Message Goes Here.</p>
                                <i class="fa fa-times alert-box__close" aria-hidden="true"></i>
                            </div><!-- end success -->
                                    
                            <div class="alert-box alert-box--info hideit">
                                <p>Info Message. Your Message Goes Here.</p>
                                <i class="fa fa-times alert-box__close" aria-hidden="true"></i>
                            </div><!-- end info -->
                                    
                            <div class="alert-box alert-box--notice hideit">
                                <p>Notice Message. Your Message Goes Here.</p>
                                <i class="fa fa-times alert-box__close" aria-hidden="true"></i>
                            </div><!-- end notice -->
                            </div>
                    </div> <!-- end row -->
 		</section>
  </main>

   </div> <!-- end s-content -->

<%@include file="/WEB-INF/views/inc/bottom.jsp"%>