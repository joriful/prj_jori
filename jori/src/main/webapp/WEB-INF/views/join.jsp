<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="inc/joritop.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/join.css">
<title>회원 가입</title>
</head>
<body style="height: 100%; margin: 0; ">
	
	<!-- chkEmail -->
	<input type="hidden" id="emlFlg" value="${emailChkValue}">
	
	<div class="jointem">
		
		<!-- navbar -->
		<%-- <%@ include file="inc/joritop.jsp" %> --%>
		
			<div class="container" id="verHoriCenter" style="" >
			
				<!-- join form -->
				<div class="loginBox" style="padding-bottom:5px;">
				
					<div class="registBoxText" style="">
						<h4>가입하기</h4>
					</div>
				
					<div class="form-group " style="">			
						<div class="col-xs-10 col-xs-offset-1">
							<input type="email" class="form-control" id="agrChkIc_off" name="email" placeholder="이메일">
						</div>
					</div> 
			
					<div class="form-group " style="">
						<div class="col-xs-10 col-xs-offset-1" style="">
							<input type="text" class="form-control" id="agrChkIc_off" name="nick" value="${cookie.ck_userid.value}" placeholder="닉네임" >
						</div>
					</div>	
			
						<div id="chkUid" style="color:blue;">
						</div>
		
					<div class="form-group " style="">			
						<div class="col-xs-10 col-xs-offset-1">
							<input type="password" class="form-control" id="agrChkIc_off" name="pwd" placeholder="비밀번호 (6자 이상)">
						</div>
					</div>
							<div id ="errors" class="form-group col-xs-10" style="float: left">
					     	</div>
			
					<div style="display:table; margin:0 auto;  margin-bottom:5px;">	
						<input type="button" class="btn btn-logi" style="" value="완료" onclick="send()">
			
					</div>
									
				</div>
				
			<!-- container -->
			</div>
			
	</div>	
</body>

<script type="text/javascript">
	
	/* email */
	$('input[name=email]').on('keyup', function(){
			var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			var mailChk = $('input[name=email]').val();

				if (mailChk.length == 0 || !re.test(mailChk)) {
					$('input[name=email]').attr('id', 'agrChkIc_off');
					return;
				}
				if (mailChk.length > 0 || re.test(mailChk)) {
					var chkMail = {"email": mailChk};		
					
 					$.ajax({
						url:"${pageContext.request.contextPath}/chkEmail",	
						type:'POST',
						data:chkMail,
						success:function(data){
							var emFlg = $(data).filter('#emlFlg').val();
							$('#emlChk').val(emFlg);
							if(emFlg == "true"){
								$('input[name=email]').attr('id', 'agrChkIc_off');
							}
							if(emFlg == "false"){
								$('input[name=email]').attr('id', 'agrChkIc_on');
							}
						}
					});
				}
	});
	
	
	/*Nick Name  */
	$('input[name=nick]').on('keyup', function(){
		var nk = this.value;
		if(nk.indexOf(' ') >=0 || nk.length <= 1 || nk.length >= 13){
			$('input[name=nick]').attr('id', 'agrChkIc_off');
			
		}else{
			$('input[name=nick]').attr('id', 'agrChkIc_on');
		};
	});
	
	$('input[name=pwd]').on('keyup', function(){
		var pw = this.value;
		if(pw.indexOf(' ') >=0 || pw.length <= 5 || pw.length >= 25){
			$('input[name=pwd]').attr('id', 'agrChkIc_off');
		}else{
			$('input[name=pwd]').attr('id', 'agrChkIc_on');
		};
	}); 
	
	
	/* $('.btn-logi').on('click', function(){
		var idCnt = $('input[id=agrChkIc_off]').length;
			//체크 비활성 아이콘이 1개이상
			if(idCnt > 0){
				if($('#emlChk').val()=="true"){
					$("#myModal_w").on("shown.bs.modal", function () {
						$(".msContent").text("이메일 주소가 존재합니다.");
					}).modal('show');
						$("#myModal_w").on('click', function(){
							$('.loginBox').find('#agrChkIc_off').focus();	
						});
				}else if($('#idChk').val()=="true"){
					$("#myModal_w").on("shown.bs.modal", function () {
						$(".msContent").text("ID가 존재합니다.");
					}).modal('show');
						$("#myModal_w").on('click', function(){
							$('.loginBox').find('#agrChkIc_off').focus();	
						});					
				}else{
					$("#myModal_w").on("shown.bs.modal", function () {
						$(".msContent").text("양식을 모두 작성해 주십시오.");
					}).modal('show');
						$("#myModal_w").on('click', function(){
							$('.loginBox').find('#agrChkIc_off').focus();
						});
				}
			};
			//체크 비활성 아이콘이 0개 : 모두체크
			if(idCnt == 0){
				$('form').submit();
			};
	}); */
	
	/* $(document).ready( function(){
		var nullurl = $('input[name="rediUrl"]').val();
		if(nullurl != null && nullurl != ""){
			chkLogForm ();
		}
	}); */
	
	/* $(window).load(function(){
		$(window).resize(function(){
			var diSize = $(window).width();
			if(diSize >= 495){
				$('.loginBox, .registBoxText').css({'width':'400px','margin-top':'120px'});
			}
			if(diSize < 495){
				$('.loginBox, .registBoxText').css({'width':'300px','margin-top':'20px'});
			}
		}).resize();
	}); */
	
</script>


</html>