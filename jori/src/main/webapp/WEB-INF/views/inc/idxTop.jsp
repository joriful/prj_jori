<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<title>Jorimi</title>
</head>
<body>
	<div class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main" >
					<span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand">Jorimi</a>
			</div>
			<div class="navbar-collapse collapse" id="navbar-main">
				<form class="navbar-form navbar-right" role="search" action="">
					<div class="form-group">
						<input type="text" class="form-control" name="id" placeholder="이름">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" name="password" placeholder="비밀번호">
					</div>
					<input type="submit" class="btn btn-default" value="로그인">
				</form>
			</div>
		</div>
	</div>	
</body>
</html>