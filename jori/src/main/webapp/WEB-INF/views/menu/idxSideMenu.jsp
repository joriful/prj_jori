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
				    <span id="menuprice-1">주류/음료</span>
				  </label>
				</div>				
			</div>

			<!-- mdb menu add area -->
			
			<c:set var="cnt" value="0" />
				<c:forEach var="i" begin="1" end="${idxSiListSize }" >
					<c:set var="sMenuBean" value="${idxSiList[i-1]}" />
					<c:set var="cnt" value="${cnt+1 }" />
					<c:if test="${cnt > 0 }" >
					</c:if>
				</c:forEach>

			<!-- mdb menu add area -->
			
			<!-- side1-1 -->		
			<div class="side-menu" data-sidemenu="1" style="margin-top:20px; position:inline; display:block;">
				<div class="col-md-12" id="side1" >
						<div class="col-sm-6" style="margin-top:20px; display: inline-block; float:left;">
							<div class="media">
								  <div class="media-left">
								  	<div class="media-object">
										<div class="img-circle" id="recomenu_box"
											style="background-image:url('${pageContext.request.contextPath}/resources/divImgs/menu/jjbe1.jpg'); 
											background-position: center center; width:100px; height:100px; background-size: 140px;
											background-repeat: no-repeat; float:left; margin-right:10px;">
										</div>
									</div>
								 </div>
								<div class="media-body" style="" >					
									<p class="media-heading" style="font-size:20px; font-weight:bold;">
										계란말이
									</p>
									<p class="media-heading" style="color:#95A5A6;">
										가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라나다라가나다라가나다라가나다라
									</p>
									<p class="media-heading" style="font-size:25px; /* font-weight:bold; */ color:#FF8C00;">
										<i class="fa fa-krw" aria-hidden="true"></i> 
										<fmt:formatNumber value="6000" type="Number" pattern="##,###"/>&nbsp;
									</p>
								</div>
							</div>
					</div>
				<!-- side1-2 -->
						<div class="col-sm-6" style="margin-top:20px; display: inline-block; float:left;">
							<div class="media">
								  <div class="media-left">
								  	<div class="media-object">
										<div class="img-circle" id="recomenu_box"
											style="background-image:url('${pageContext.request.contextPath}/resources/divImgs/menu/jjur1.jpg'); 
											background-position: center center; width:100px; height:100px; background-size: 140px;
											background-repeat: no-repeat; float:left; margin-right:10px;">
										</div>
									</div>
								 </div>
								<div class="media-body" style="" >					
									<p class="media-heading" style="font-size:20px; font-weight:bold;">
										소세지&베이컨 양파볶음
									</p>
									<p class="media-heading" style="color:#95A5A6;">
										가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라나다라가나다라가나다라가나다라
									</p>
									<p class="media-heading" style="font-size:25px; /* font-weight:bold; */ color:#FF8C00;">
										<i class="fa fa-krw" aria-hidden="true"></i> 
										<fmt:formatNumber value="5000" type="Number" pattern="##,###"/>&nbsp;
									</p>
								</div>
							</div>
					</div>
			</div>
		</div>



		<!-- side2-1 -->
		<div class="side-menu" data-sidemenu="2" style="margin-top:20px; position:inline; display:none;">		
			<div class="col-md-12" id="side2">
						<div class="col-sm-6" style="margin-top:20px; display: inline-block; float:left;">
							<div class="media">
								  <div class="media-left">
								  	<div class="media-object">
										<div class="img-circle" id="recomenu_box"
											style="background-image:url('${pageContext.request.contextPath}/resources/divImgs/menu/segro1.PNG'); 
											background-position: center center; width:100px; height:100px; background-size: 140px;
											background-repeat: no-repeat; float:left; margin-right:10px;">
										</div>
									</div>
								 </div>
								<div class="media-body" style="" >					
									<p class="media-heading" style="font-size:20px; font-weight:bold;">
										계란말이
									</p>
									<p class="media-heading" style="color:#95A5A6;">
										가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라나다라가나다라가나다라가나다라
									</p>
									<p class="media-heading" style="font-size:25px; /* font-weight:bold; */ color:#FF8C00;">
										<i class="fa fa-krw" aria-hidden="true"></i> 
										<fmt:formatNumber value="6000" type="Number" pattern="##,###"/>&nbsp;
									</p>
								</div>
							</div>
					</div>
				<!-- side2-2 -->
						<div class="col-sm-6" style="margin-top:20px; display: inline-block; float:left;">
							<div class="media">
								  <div class="media-left">
								  	<div class="media-object">
										<div class="img-circle" id="recomenu_box"
											style="background-image:url('${pageContext.request.contextPath}/resources/divImgs/menu/sbs1.jpg'); 
											background-position: center center; width:100px; height:100px; background-size: 140px;
											background-repeat: no-repeat; float:left; margin-right:10px;">
										</div>
									</div>
								 </div>
								<div class="media-body" style="" >					
									<p class="media-heading" style="font-size:20px; font-weight:bold;">
										소세지&베이컨 양파볶음
									</p>
									<p class="media-heading" style="color:#95A5A6;">
										가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라가나다라나다라가나다라가나다라가나다라
									</p>
									<p class="media-heading" style="font-size:25px; /* font-weight:bold; */ color:#FF8C00;">
										<i class="fa fa-krw" aria-hidden="true"></i> 
										<fmt:formatNumber value="5000" type="Number" pattern="##,###"/>&nbsp;
									</p>
								</div>
							</div>
					</div>
			</div>
		</div>			

	
		
		
	</div>     
</div>
</body>

<script type="text/javascript">
$('.side-categroy-btn').on('click', function(){
	var sbval = $(this).data("sidectgry");
	$('div[data-sidemenu]').each(function(){
		if($('div[data-sidemenu="'+sbval+'"]').length > 0){
			$('div.side-menu[data-sidemenu="'+sbval+'"]').css("display", "block");
			$('div.side-menu[data-sidemenu!="'+sbval+'"]').css("display", "none");				
		}
	})
});


</script>

</html>