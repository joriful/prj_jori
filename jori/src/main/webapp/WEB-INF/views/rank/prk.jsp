<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ include file="../inc/idxTop.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, height=device-height,  initial-scale=1" charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/prk.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.min.css">
		<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
</head>
<body style=" height: 100%; margin: 0; border:solid red 1px;">

<!-- 추천메뉴 문구 -->
    <div class="container" style="">	    
        <div class="text-center" style=" /* margin-top:7%; 추천메뉴 위공간 */">
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

	<div class="container">
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
			 	                                		<input type="text" name="pdName" value="${prodBean.gdName}">
			 	                                		<input type="text" name="pdInfo" value="${prodBean.gdInfo}">
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
                            
                            
		                    	<c:set var="cnt" value="0" />
		                      	 	<c:forEach var="i" begin="1" end="${prkSize}">
		                       	    	<c:set var="prodBean" value="${prkList[i-1] }" />
		                                <c:set var="cnt" value="${cnt + 1}" />
		                       		        <c:if test="${cnt > 0 }">
			                                	<div class="item" data-slide-number="${cnt-1 }" style="/* height:60vh; */">
			 	                                	<div class="recomand_main" style="background-image:url('${pageContext.request.contextPath}/resources/divImgs/menu/${prodBean.gdUrl }');">
			 	                                		<input type="text" name="pdName" value="${prodBean.gdName}">
			 	                                		<input type="text" name="pdInfo" value="${prodBean.gdInfo}">
			                                       	</div>
			                                    </div>
		                                   	</c:if>
		                           </c:forEach>                             
                            
 <!--                            <div id="slide-content" style="display:none;">
                                <div id="slide-content-0" data-pdescrpt="0">
                                    <h2 class="rkProdName"></h2>
                                    <p class="rkProdIfno"></p>
                                  
                                </div>

                                <div id="slide-content-1" data-pdescrpt="1">
                                    <h2 class="rkProdName"></h2>
                                    <p class="rkProdIfno"></p>
                                </div>

                                <div id="slide-content-2" data-pdescrpt="2">
                                    <h2>돼지고기 김치찌개</h2>
                                    <p>시원하고 얼큰한 국물과 돼지 앞다리살의 식감이 일품인 김치찌개를 선사합니다.</p>
                                </div>

                                <div id="slide-content-3" data-pdescrpt="3">
                                    <h2>고등어 조림</h2>
                                    <p>두툼한 고등어살과 개운하고 깔끔한 묵은지의 맛으로 밥도둑입니다.</p>
                                </div>

                                <div id="slide-content-4" data-pdescrpt="4">
                                    <h2>Slider Five</h2>
                                    <p>종가집 장독된장의 깊은맛과 13가지 이상의 풍부하고 신선한 재료로 구수하고 건강함을 맛볼 수 있습니다.</p>
                                    <p class="sub-text">October 24 2014 - <a href="#">Read more</a></p>
                                </div>

                                <div id="slide-content-5" data-pdescrpt="5">
                                    <h2>Slider Six</h2>
                                    <p>종가집 장독된장의 깊은맛과 13가지 이상의 풍부하고 신선한 재료로 구수하고 건강함을 맛볼 수 있습니다.</p>
                                    <p class="sub-text">October 24 2014 - <a href="#">Read more</a></p>
                                </div>
                                
								<div id="slide-content-6" data-pdescrpt="6">
                                    <h2>Slider Six</h2>
                                    <p>종가집 장독된장의 깊은맛과 13가지 이상의 풍부하고 신선한 재료로 구수하고 건강함을 맛볼 수 있습니다.</p>
                                    <p class="sub-text">October 24 2014 - <a href="#">Read more</a></p>
                                </div>                                
                            </div>   -->                       
                        </div>
                    </div>
                </div><!--/Slider-->

                <div class="row hidden-xs" id="slider-thumbs">
                        <!-- Bottom switcher of slider -->
                        <ul class="hide-bullets">
                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-0"><img src="http://placehold.it/170x100&text=one"></a>
                            </li>

                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-1"><img src="http://placehold.it/170x100&text=two"></a>
                            </li>

                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-2"><img src="http://placehold.it/170x100&text=three"></a>
                            </li>

                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-3"><img src="http://placehold.it/170x100&text=four"></a>
                            </li>

                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-4"><img src="http://placehold.it/170x100&text=five"></a>
                            </li>

                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-5"><img src="http://placehold.it/170x100&text=six"></a>
                            </li>
                        </ul>                 
                </div>
        </div>
</div>
</body>

<script type="text/javascript">

/* default button  */
/* $(document).ready(function(){
	$(".side-categroy-btn").focus();
}); */


$('#pricebtn').children('click',function(){
	$(this).children().css( "background-color", "red" );
});

$(document).ready(function() {
	$("body").tooltip({ selector: '[data-toggle=tooltip]', placement:'right'});
});


/* slider */
jQuery(document).ready(function($) {
	 
    /* $('#myCarousel').carousel({
            interval: 5000
    }); */

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
	$(window).on('resize', function(){
		var lheight = $('#leftmain').height();
		$('.carousel-inner .item').height(lheight);				
	});
	$(document).ready(function(){
	    $(window).trigger('resize');		
	});
	
/* 사이드메뉴 카테고리 show */

	$(document).ready(function(){
		
		$('#side1').click(0)
		
	});
	
/* slider data selector */
	
	$(document).ready(function(){
		$('div[data-slide-number="0"]').attr('class','active item');
		
	});
	
/* 추천메뉴 height */
	$(document).ready(function(){
		var oriHeight = $('div[data-slide-number="0"]').height();
		$(".recomand_main").css({"height":oriHeight+"px"});
	});
	
/* products data array */
	
	$('div[data-slide-number]').each(function(){
		var arrRkData = $(this).data('slide-number');
		/* console.log($(this).data('slide-number')); */
	});
	
	/* 메뉴 설명 Bean */
	$('input[name=pdName], input[name=pdInfo]').each(function(){
		var arrpdN = $(this).val();
		console.log(arrpdN);
	});


</script>

</html>