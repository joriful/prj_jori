<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/join.css">
<title>회원 가입</title>
</head>
<body style="height: 100%; margin: 0; ">
	<div class="jointem">
		
		<!-- navbar -->
		<%@ include file="inc/joritop.jsp" %>
		
			<div class="container" id="verHoriCenter" style="" >
				<!-- join form -->
				<div class="loginBox" style="padding-bottom:5px;">
				
					<div class="registBoxText" style="">
						<h4>가입하기</h4>
					</div>
				
					<div class="form-group " style="">			
						<div class="col-xs-10 col-xs-offset-1">
							<input type="email" class="form-control" name="email" placeholder="이메일">
						</div>
					</div> 
			
					<div class="form-group " style="">
						<div class="col-xs-10 col-xs-offset-1">
							<input type="text" class="form-control" name="userid" value="${cookie.ck_userid.value}" placeholder="닉네임" >
						</div>
					</div>	
			
						<div id="chkUid" style="color:blue;">
						</div>
			
					<!-- <div class="form-group " style="">
						<div class="col-xs-10 col-xs-offset-1">
							<input type="text" class="form-control" name="fName" placeholder="성">
						</div>
					</div>
		
					<div class="form-group " style="">	
						<div class="col-xs-10 col-xs-offset-1">
							<input type="text" class="form-control" name="lName" placeholder="이름">
						</div>
					</div> -->
					
					<div class="form-group " style="">			
						<div class="col-xs-10 col-xs-offset-1">
							<input type="password" class="form-control" name="pwd" onkeydown="enterProc()" placeholder="비밀번호 (6자 이상)">
						</div>
					</div>
							<div id ="errors" class="form-group col-xs-10" style="float: left">
					     	</div>
			
					<div style="display:table; margin:0 auto;  margin-bottom:5px;">	
						<input type="button" class="btn btn-logi" style="/* color:#ffffff; */" value="완료" onclick="send()">
			
					</div>
									
				</div>
			<!-- container -->
			</div>
			
	</div>	
</body>
</html>