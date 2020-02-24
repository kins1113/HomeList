<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/inc/top.jsp"%>

  <!-- site content
        ================================================== -->
        <div class="s-content content">
            <main class="row s-styles">
 				<section id="styles" class="column large-full">
 				 <div class="row">
                        <div class="column large-6 tab-full">

                            <h3>ADD USER</h3>
                            <form>
                                <div>
                                    <label for="addMaker">Name</label>
                                   	 <input class="full-width" type="text" placeholder="Name" id="addName" name="name">
                                </div>
                                <div>
                                    <label for="addName">Birthday</label>
                                    <input class="full-width" type="text" placeholder="0000-00-00" id="birthday" name="birthday">
                                </div>
                                <label for="addPrice">Tel</label>
                                <input class="full-width" type="text" placeholder="010-0000-0000" id="tel" name="tel">
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