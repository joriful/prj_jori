<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/index.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mainstyle.css">
	<link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
<title>Jorimi</title>
</head>
<body style=" height: 100%; margin: 0 ">
<!--     <div id="carouselFade" class="carousel slide carousel-fade" data-ride="carousel">

        Wrapper for slides
        <div class="carousel-inner" role="listbox">
            <div class="item active">  
                <div class="carousel-caption">
                  <h3>First slide label</h3>
                  <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                </div>
            </div>
            <div class="item"> 
                <div class="carousel-caption">
                  <h3>Second slide label</h3>
                  <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                </div>
            </div>
            <div class="item"> 
                <div class="carousel-caption">
                  <h3>Third slide label</h3>
                  <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                </div>
            </div>
        </div>

        Controls
        <a class="left carousel-control" href="#carouselFade" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carouselFade" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div> -->


	<div id="vertiBox">
		<div class="joritem-1" id="vertiDiv">
			<!-- navbar -->
			<%@ include file="inc/idxTop.jsp" %>
		
			<div class="container">
				<span style="color:#ffffff; font-size:50px; font-weight:bold;">
					조리미
				</span>
				<span style="color:#FF8C00; font-size:50px; font-weight:bold;">
					味
				</span><br>
				
				<span style="color:#ffffff; font-size:50px; ">
					방문을
				</span>
						
				<span style="color:#FF8C00; font-size:50px; ">
					 환영
				</span>
					
				<span style="color:#ffffff; font-size:50px; ">
					 합니다.
				</span><br>
					
				<span style="color:#ffffff; font-size:30px;">
					빠른 시일내에 
				</span>
					
				<span style="color:#FF8C00; font-size:30px;">
					오픈
				</span>
					
				<span style="color:#ffffff; font-size:30px;">
					하겠습니다.
				</span><br>		
			</div>
		</div>
	</div>	
		
	<div id="vertiBox">	
		<div class="joritem-2" id="vertiDiv">
			<div class="container">
				<span style="color:#ffffff; font-size:50px; font-weight:bold;">
					조리미
				</span>
				<span style="color:#FF8C00; font-size:50px; font-weight:bold;">
					味
				</span><br>
					
				<span style="color:#ffffff; font-size:50px; ">
					방문을
				</span>
						
				<span style="color:#FF8C00; font-size:50px; ">
					 환영
				</span>
				
				<span style="color:#ffffff; font-size:50px; ">
					 합니다.
				</span><br>
				
				<span style="color:#ffffff; font-size:30px;">
					빠른 시일내에 
				</span>
				
				<span style="color:#FF8C00; font-size:30px;">
					오픈
				</span>
						
				<span style="color:#ffffff; font-size:30px;">
					하겠습니다.
				</span><br>
						
			</div>
		</div>
	</div>
	

	    <div id="carouselFade" class="carousel slide carousel-fade" data-ride="carousel">
			<!-- slide -->
	        <div class="carousel-inner" role="listbox">
	            <div class="item active">  
	                <div class="carousel-caption">
	                  <h3>First slide label</h3>
	                  <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
	                </div>
	            </div>
	            <div class="item"> 
	                <div class="carousel-caption">
	                  <h3>Second slide label</h3>
	                  <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
	                </div>
	            </div>
	            <div class="item"> 
	                <div class="carousel-caption">
	                  <h3>Third slide label</h3>
	                  <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
	                </div>
	            </div>
	        </div>
	
	        <!-- Controls -->
	        <a class="left carousel-control" href="#carouselFade" role="button" data-slide="prev">
	            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	            <span class="sr-only">Previous</span>
	        </a>
	        <a class="right carousel-control" href="#carouselFade" role="button" data-slide="next">
	            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	            <span class="sr-only">Next</span>
	        </a>
	        <!-- slide -->
	    </div>	
	
</body>

<script type="text/javascript">
$('#carouselFade').carousel();
</script>


</html>