<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../inc/idxTop.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/index.css">
</head>
<body>
<div style="background-color:#F2F4F4; min-height:600px;">
		   
		  <div class="container">	    
	        <div class="text-center" style="/* border-bottom:solid coral 1px; */ margin-top:7%;">
	            <span style="font-weight:bold; color:#404040; font-family:BatangChe; font-size: 48px; /* padding-top:3%; */">함께하면</span>
	            <span style="font-weight:bold; color:#FF8C00; font-family:BatangChe; font-size: 58px; /* padding-top:3%; */">'더'</span>
	            <span style="font-weight:bold; color:#404040; font-family:BatangChe; font-size: 48px; /* padding-top:3%; */">맛있는 사이드 메뉴</span>           
	        </div>
	        <div class="row" style="">
	            <div class="col-md-8 text-center col-centered" style="float: none; margin: 0 auto; margin-bottom:5%;"> 
	                <p class="slogan" style="font-size:20px; color:#696969; margin-top:10px; line-height:1.6em;"> 
	                	지금까지 메뉴입니다.</p>	
	            </div>
	        </div>        
		</div>
		
		<!-- filter btn / menu area-->
		<div class="container" >
			<div class="col-md-8 text-center col-centered">
				<div class="btn-group" data-toggle="buttons">
				  <label class="btn side-categroy-btn active" data-sidectgry="1" >
				    <input type="radio" name="options" id="side_btn1" autocomplete="off" checked> 
				    <span id="menuprice-1">사이드 메뉴</span>
				  </label>
				  <label class="btn side-categroy-btn" data-sidectgry="2">
				    <input type="radio" name="options" id="side_btn2" autocomplete="off" >
				    <span id="menuprice-1">음료</span>
				  </label>
				</div>				
			</div>

	<!-- mdb menu add area -->
			
	<c:set var="cnt" value="0" />
		<c:forEach var="i" begin="1" end="${idxSiListSize }" >
			<c:set var="sMenuBean" value="${idxSiList[i-1]}" />
			<c:set var="cnt" value="${cnt+1 }" />
				<c:if test="${cnt > 0 }" >
				
			<!-- side menu -->		
					<div class="side-menu" data-sidemenu="${cnt-1}" data-ctgry="${sMenuBean.gdcgNo }" style="position:inline; display:block; ">
								<div class="col-sm-6" style="margin-top:20px; display: inline-block; /* float:left; */ /* margin-top:10px; margin-bottom:10px; */ border:solid red 1px;">
									<div class="media">
										 <div class="media-left">
										  	<div class="media-object">
												<div class="img-circle" id="recomenu_box"
													style="background-image:url('${pageContext.request.contextPath}/resources/divImgs/menu/${sMenuBean.gdUrl}'); 
													background-position: center center; width:100px; height:100px; background-size: 140px;
													background-repeat: no-repeat; float:left; margin-right:10px;">
												</div>
											</div>
										 </div>
										<div class="media-body" style="" >					
											<p class="media-heading" style="font-size:20px; font-weight:bold; ">
												${sMenuBean.gdName}
											</p>
											<p class="media-heading" style="color:#95A5A6;">
												${sMenuBean.gdInfo}<!-- 가가가가가가가가가가가각가 -->
											</p>
											<p class="media-heading" style="font-size:25px; color:#FF8C00;">
												<i class="fa fa-krw" aria-hidden="true"></i> 
												<fmt:formatNumber value="${sMenuBean.gdprice}" type="Number" pattern="##,###"/>&nbsp;
											</p>
										</div>
									</div>
							   </div>
					</div>
				</c:if>
		</c:forEach>

	<!-- mdb menu add area -->
		
	</div>     
</div>
</body>

<script type="text/javascript">

//check category 5 display none
	$(document).ready(function(){
		if($('#side_btn1').is(':checked')) { 
			$('[data-ctgry="5"]').css("display", "none");
		}
	});

//check category 5 display none
 $('label[data-sidectgry="1"]').on('click', function(){
	$('div[data-sidemenu]').each(function(){
		if($('[data-ctgry="4"]').css('display') == 'block'){
			$('[data-ctgry="4"]').css("display", "none");
			
		}
		if($('[data-ctgry="4"]').css('display') == 'none') {
			$('[data-ctgry="4"]').css("display", "block");
		}
	})
	$('[data-ctgry="5"]').css("display", "none");
});
//check category 4 display none
$('label[data-sidectgry="2"]').on('click', function(){
	$('div[data-sidemenu]').each(function(){
		if($('[data-ctgry="5"]').css('display') == 'block'){
			$('[data-ctgry="5"]').css("display", "none");
			
		}
		if($('[data-ctgry="5"]').css('display') == 'none') {
			$('[data-ctgry="5"]').css("display", "block");
		}
	})
	$('[data-ctgry="4"]').css("display", "none");
}); 


/* $('.side-categroy-btn').on('click', function(){
	var sbval = $(this).data("sidectgry");
	$('div[data-sidemenu]').each(function(){
		if(sbval == 1){
			if($("[id^=sideAll]").css('display') == 'block'){
				$("[id^=sideAll]").css("display", "none");
				
			}
			if($("[id^=sideAll]").css('display') == 'none') {
				$("[id^=sideAll]").css("display", "block");
			}
		}
	})
}); */


</script>

</html>