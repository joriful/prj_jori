<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<title>Jorimi</title>
</head>
<body style="background-color:black;">
	<div class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main" >
					<span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand">Jorimi</a>
			</div>
			
			<c:choose >
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
			</c:choose>
		</div>
	</div>	
</body>
</html>