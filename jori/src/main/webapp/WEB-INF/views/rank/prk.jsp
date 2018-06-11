<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, height=device-height,  initial-scale=1" charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jorinav.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mainstyle.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/index.css">	
</head>
<body>
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
	                                        <div class="active item" data-slide-number="0">
	                                        	<div class="recomand_main" style=" background-image:url('${pageContext.request.contextPath}/resources/divImgs/menu/jjur1.jpg');">
	                                        	</div>
	                                        </div>
	
	                                        <div class="item" data-slide-number="1">
	                                        	<div class="recomand_main" style=" background-image:url('${pageContext.request.contextPath}/resources/divImgs/menu/jjbe1.jpg');">
	                                        	</div>
	                                        </div>
	
	                                        <div class="item" data-slide-number="2">
			                                  	<div class="recomand_main" style=" background-image:url('${pageContext.request.contextPath}/resources/divImgs/osam.jpg');">
	                                        	</div>
	                                        </div>
	
	                                        <div class="item" data-slide-number="3">
			                                  	<div class="recomand_main" style=" background-image:url('${pageContext.request.contextPath}/resources/divImgs/osam.jpg');">
	                                        	</div>									
	                                        </div>
	
	                                        <div class="item" data-slide-number="4">
			                                  	<div class="recomand_main" style=" background-image:url('${pageContext.request.contextPath}/resources/divImgs/osam.jpg');">
	                                        	</div>
	                                        </div>
	
	                                        <div class="item" data-slide-number="5">
			                                  	<div class="recomand_main" style=" background-image:url('${pageContext.request.contextPath}/resources/divImgs/osam.jpg');">
	                                        	</div>
	                                        </div>
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
	                                <div id="slide-content-0">
	                                    <h2>우렁 된장찌개</h2>
	                                    <p>양평에서 직거래로 받아온 신선한 우렁으로 구수하고 건강함을 맛볼 수 있습니다.</p>
	                                    
	                                    <div class="btn-group" id="pricebtn" data-toggle="buttons">
	                                    
		                                    <div class="btn-group" data-toggle="buttons">
											  <label class="btn btn-danger active">
											    <input type="radio" name="options" id="person2"> 2인
											  </label>
											  <label class="btn btn-default">
											    <input type="radio" name="options" id="person3"> 3인
											  </label>
											 </div>
											 
											  <div class="btn-group" role="group" data-toggle="tooltip" data-container="body" title="담기!">
	
												    <button type="button" class="btn btn-default" id="pricebtn1" aria-expanded="false">
												      <span id="menuprice-1">14,000</span>
												      <i class="fa fa-cart-arrow-down fa-1x" aria-hidden="true" style=""></i>
												    </button>
	
											  </div>
										</div>
	                                    
	                                    
	<!--                                <div class="btn-group" role="group" aria-label="...">
										  <button type="button" class="btn btn-default">1인</button>
										  <button type="button" class="btn btn-default">2인</button>
										
											  <div class="btn-group" role="group" data-toggle="tooltip" data-container="body" title="담기!">
	
												    <button type="button" class="btn btn-default" data-toggle="dropdown" aria-expanded="false">
												      <span id="menuprice-1">14,000</span>
												      <span class="caret"></span>
												      <i class="fa fa-cart-arrow-down fa-1x" aria-hidden="true" style=""></i>
												    </button>
	
											  </div>
										</div> -->
										
										
	                                    <!-- <p class="sub-text">2인 <i class="fa fa-krw" aria-hidden="true"></i>14,000원</p> -->
	                                    <!-- <p class="sub-text" style="/* font-size:20px; font-weight:bold; */">
		                                    <button type="button" class="btn btn-danger" data-toggle="tooltip" data-animation="true" title="담기!">
		                                    	2인 <i class="fa fa-krw" aria-hidden="true"></i>14,000원<i class="fa fa-cart-arrow-down fa-2x" aria-hidden="true" style="padding:0 5px 0 0;"></i> 
		                                    </button>
	                                    </p> -->
	                                </div>
	
	                                <div id="slide-content-1">
	                                    <h2>쇠고기 된장찌개</h2>
	                                    <p>그날 받아온 한우로 소고기의 진한 맛과 구수함을 맛볼 수 있습니다.</p>
	                                    <p class="sub-text">
	                                    <button type="button" class="btn btn-danger" data-toggle="tooltip" data-animation="true" title="담기!">
	                                    	<i class="fa fa-cart-arrow-down fa-2x" aria-hidden="true" style="padding:0 5px 0 0;"></i> 
	                                    </button>
	                                    </p>
	                                </div>
	
	                                <div id="slide-content-2">
	                                    <h2>돼지고기 김치찌개</h2>
	                                    <p>시원하고 얼큰한 국물과 돼지 앞다리살의 식감이 일품인 김치찌개를 선사합니다.</p>
	                                    <p class="sub-text">
	                                    <button type="button" class="btn btn-danger" data-toggle="tooltip" data-animation="true" title="담기!">
	                                    	<i class="fa fa-cart-arrow-down fa-2x" aria-hidden="true" style="padding:0 5px 0 0;"></i> 
	                                    </button>
	                                    </p>
	                                </div>
	
	                                <div id="slide-content-3">
	                                    <h2>고등어 조림</h2>
	                                    <p>두툼한 고등어살과 개운하고 깔끔한 묵은지의 맛으로 밥도둑입니다.</p>
	                                    <p class="sub-text">
	                                    <button type="button" class="btn btn-danger" data-toggle="tooltip" data-animation="true" title="담기!">
	                                    	<i class="fa fa-cart-arrow-down fa-2x" aria-hidden="true" style="padding:0 5px 0 0;"></i> 
	                                    </button>
	                                    </p>
	                                </div>
	
	                                <div id="slide-content-4">
	                                    <h2>Slider Five</h2>
	                                    <p>종가집 장독된장의 깊은맛과 13가지 이상의 풍부하고 신선한 재료로 구수하고 건강함을 맛볼 수 있습니다.</p>
	                                    <p class="sub-text">October 24 2014 - <a href="#">Read more</a></p>
	                                </div>
	
	                                <div id="slide-content-5">
	                                    <h2>Slider Six</h2>
	                                    <p>종가집 장독된장의 깊은맛과 13가지 이상의 풍부하고 신선한 재료로 구수하고 건강함을 맛볼 수 있습니다.</p>
	                                    <p class="sub-text">October 24 2014 - <a href="#">Read more</a></p>
	                                </div>
	                            </div>                         
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



//test
	$('.side-categroy-btn').on('click', function(){
		var sbval = $(this).data("sidectgry");
		$('div[data-sidemenu]').each(function(){
			if($('div[data-sidemenu="'+sbval+'"]').length > 0){
				$('div.side-menu[data-sidemenu="'+sbval+'"]').css("display", "block");
				$('div.side-menu[data-sidemenu!="'+sbval+'"]').css("display", "none");				
			}
		})
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
	
	
/* all menu slider */
	/* $(document).ready(function(){
    
	var clickEvent = false;
	$('#allmenuCarousel').carousel({
		interval:   4000
	}).on('click', '.list-group li', function() {
			clickEvent = true;
			$('.list-group li').removeClass('active');
			$(this).addClass('active');		
	}).on('slid.bs.carousel', function(e) {
		if(!clickEvent) {
			var count = $('.list-group').children().length -1;
			var current = $('.list-group li.active');
			current.removeClass('active').next().addClass('active');
			var id = parseInt(current.data('slide-to'));
			if(count == id) {
				$('.list-group li').first().addClass('active');	
			}
		}
		clickEvent = false;
	});
})

$(window).load(function() {
    var boxheight = $('#allmenuCarousel .carousel-inner').innerHeight();
    var itemlength = $('#allmenuCarousel .item').length;
    var triggerheight = Math.round(boxheight/itemlength+1);
	$('#allmenuCarousel .list-group-item').outerHeight(triggerheight);
}); */

</script>

</html>