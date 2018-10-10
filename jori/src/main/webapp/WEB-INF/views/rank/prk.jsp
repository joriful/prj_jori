<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, height=device-height,  initial-scale=1" charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/prk.css">
</head>
<body style=" height: 100%; margin: 0;">
<div class="widd">
</div>

<!-- 추천메뉴 문구 -->
    <div class="container" style="">	    
        <div class="text-center" style=" margin-top:7%; 추천메뉴">
            <span style="font-weight:bold; color:#404040; font-family:BatangChe; font-size: 48px; ">조리미味</span>
            <span style="font-weight:bold; color:#FF8C00; font-family:BatangChe; font-size: 58px; ">'추천'</span>
            <span style="font-weight:bold; color:#404040; font-family:BatangChe; font-size: 48px; ">메뉴</span>
        </div>
        <div class="row" style="">
            <div class="col-md-8 text-center col-centered" style=" margin-bottom:5%;">                
                <p class="slogan" style="font-size:20px; color:#696969; margin-top:10px; line-height:1.6em;"> 
                	지금까지 가장 많이 주문되고 만족해주신 메뉴입니다.</p>	
            </div>
        </div>        
	</div>	

<!-- //추천메뉴 문구 -->

	<div class="container" style="">
        <div id="main_area" style="margin-bottom:7%;">
                <!-- Slider -->
                <div class="row">
                    <div class="col-xs-12" id="slider">
                        <!-- Top part of the slider -->
                        <div class="row">
                            <div class="col-sm-6" id="carousel-bounding-box">
                                <div class="carousel slide" id="myCarousel">
                                    <!-- Carousel items -->
	                              <div class="carousel-inner">            
		                           	<!-- db for -->
		                            <c:set var="cnt" value="0" />
		                            	<c:forEach var="i" begin="1" end="${prkSize}">
		                                	<c:set var="prodBean" value="${prkList[i-1] }" />
		                                    <c:set var="cnt" value="${cnt + 1}" />
		                                    <c:if test="${cnt > 0 }">
			                                	<div class="item" data-slide-number="${cnt-1 }" style="/* height:60vh; */">
			 	                                	<div class="recomand_main" style="background-image:url('${pageContext.request.contextPath}/resources/divImgs/menu/${prodBean.gdUrl }');">
			                                       	</div>
			                                    </div>
		                                   	</c:if>
		                               	</c:forEach> 
		                           </div><!-- Carousel nav -->
                                    
                                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left" ></span>                                       
                                    </a>
                                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right" ></span>                                       
                                    </a>                                
                                    </div>
                            </div>
							

                            <div class="col-sm-6" id="carousel-text" style="/* border:solid red 1px; */"></div>
                            
                            <div id="slide-content" style="display:none;">
                            	<!-- dbclone -->
		                    	<c:set var="cnt" value="0" />
		                      	 	<c:forEach var="i" begin="1" end="${prkSize}">
		                      	 		<c:set var="prodBean" value="${prkList[i-1] }" />
		                                <c:set var="cnt" value="${cnt + 1}" />
		                       		        <c:if test="${cnt > 0 }">
                                                <div id="slide-content-${cnt-1 }" data-pdescrpt="${cnt-1 }">
				                                    <h2>${prodBean.gdName}</h2>
				                                    <p>${prodBean.gdInfo}</p>
				                                </div>
		                                   	</c:if>
		                           </c:forEach>                          
                   
                        	</div>
                   		 </div>
                   </div>
                </div><!--/Slider-->

                <div class="row hidden-xs" id="slider-thumbs">
                        <!-- Bottom switcher of slider -->
                        <ul class="hide-bullets">

                        	<c:set var="cnt" value="0" />
                        		<c:forEach var="i" begin="1" end="${prkSize}">
                        			<c:set var="prodBean" value="${prkList[i-1] }" />
                        			<c:set var="cnt" value="${cnt+1}" />
                        				<c:if test="${cnt>0 }">
                        					<li class="col-sm-2" style="">
                                				<a class="thumbnail" id="carousel-selector-${cnt-1 }">
                                					<img class="transSz" src="${pageContext.request.contextPath}/resources/divImgs/menu/${prodBean.gdUrl }" style="width:170px; object-fit: cover; ">                                				
                                				</a>
                            				</li>
                        				</c:if>
                        		</c:forEach>
                        </ul>                 
                </div>
        </div>
</div>

</body>

<script type="text/javascript">

/* slider */
jQuery(document).ready(function($) {
	 
    $('#myCarousel').carousel({
            interval: 5000
    });

    $('#carousel-text').html($('#slide-content-0').html());

    //Handles the carousel thumbnails
   $('[id^=carousel-selector-]').click( function(){
        var id = this.id.substr(this.id.lastIndexOf("-") + 1);
        var id = parseInt(id);
        $('#myCarousel').carousel(id);
    });


    // When the carousel slides, auto update the text
    $('#myCarousel').on('slid.bs.carousel', function (e) {
             var id = $('.item.active').data('slide-number');
            $('#carousel-text').html($('#slide-content-'+id).html());
    });
});

/* resize 메뉴 */
	/* $(window).on('resize', function(){
		var lheight = $('#leftmain').height();
		$('.carousel-inner .item').height(lheight);				
	});
	$(document).ready(function(){
	    $(window).trigger('resize');		
	}); */
	
/* slider data selector */
	
	$(document).ready(function(){
		$('div[data-slide-number="0"]').attr('class','active item');
		
	});
	
/* 추천메뉴 height */
	/* $(document).ready(function(){
		var oriHeight = $('div[data-slide-number="0"]').height();
		$(".recomand_main").css({"height":oriHeight+"px"});
	}); */
	
/* products data array */
	$('div[data-slide-number]').each(function(){
		var arrRkData = $(this).data('slide-number');
	});

/* rankImageHeight resize */
	$(window).on('resize', function(){
		var rkWidth = $(window).width();
		$('.transSz').height(97);
		
		if(rkWidth < 1183){
			$('.transSz').height(76);		
		}
		if(rkWidth < 992 ){
			$('.transSz').height(53);	
		}
	});
	$(document).ready(function(){
	    $(window).trigger('resize');		
	});

</script>

</html>