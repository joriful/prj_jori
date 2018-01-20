<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1" charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jorinav.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mainstyle.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">	
	<title>Jorimi</title>
</head>
<!-- <body style=""> -->
	<div class="navbar navbar-default navbar-fixed-top" style="background:#000000; border:#000000; opacity: 0.7;/* background:transparent; border:transparent; box-shadow: none; */">
		<div class="container">
			<div class="navbar-header" id="jori-bi">
				<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main" >
					<span class="icon-bar"></span>
				</button>
				<a href="${pageContext.request.contextPath }" class="navbar-brand" style="font-size:35px; font-weight:bold;">味</a>
			</div>
			
			<div class="navbar-header pull-right">			
				<a href="${pageContext.request.contextPath }"><span class="navbar-brand" style="color:#ffffff; /* font-weight:bold; */" >
					소개</span></a>
				<span class="navbar-brand" style="color:#ffffff; /* font-weight:bold; */" >메뉴</span>
				<span class="navbar-brand" style="color:#ffffff; /* font-weight:bold; */" >주문배달</span>
				<span class="navbar-brand" style="color:#ffffff; /* font-weight:bold; */" >로그인</span>
				<a href="${pageContext.request.contextPath}/join">
					<span class="navbar-brand" style="color:#ffffff; /* font-weight:bold; */">가입하기</span>
				</a>
			</div>
			
			<%-- <c:choose >
				<c:when test="${sessionScope.id ne null }">
					<form>
					 	<div class="navbar-header pull-right">
					 		<span class="navbar-brand">${sessionScope.id}님 반갑습니다.</span>
					 		<a href="/login/logout" class="btn btn-default btn-logout"><span class="glyphicon-log-out"></span>로그아웃</a>					 	
					 	</div>
					</form>
				</c:when>
				<c:otherwise>
					<div class="navbar-collapse collapse" id="navbar-main">
						<form class="navbar-form navbar-right" role="search" action="<%=request.getContextPath()%>/login/loginChk" method="post">
							<div class="form-group">
								<input type="text" class="form-control" name="id" placeholder="이름">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" name="password" placeholder="비밀번호">
							</div>
							<input type="submit" class="btn btn-default" value="로그인">
						</form>
					</div>
				</c:otherwise>
			</c:choose> --%>
		</div>
	</div>
		
	<div>
		<jsp:include page="/WEB-INF/views/inc/mess.jsp" flush="true">
			<jsp:param name="msg" value="${msg }" />
		</jsp:include> 
	</div>	
<!-- </body> -->
</html>