<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}resources/css/modalMess.css">
<title>안내</title>
</head>


<% //로그인한 경우에는 로그아웃, 호원정보변경 메뉴가 보이도록 하고
   //로그인 안된 경우에는 로그인, 회원가입 메뉴가 보이게
   String tUserid=(String)session.getAttribute("userid");
   boolean tIsLogin=false;
   if(tUserid!=null && !tUserid.isEmpty()){//세션에 userid값이 있으면
	  tIsLogin=true;//로그인된 경우
   }
%>

<body>
	
	<input type="hidden" id="modalUrl" name="modalUrl" value="">
	<input type="hidden" id="redirectUrl" name="rediUrl" value="${url }">
	<input type="hidden" id="modalMsg" name="modalMsg" value="${msg }">
	<input type="hidden" id="logNum" name="logNum" value="${lgChkNum}">
	
	<div class="container">
		<!-- success -->
		 <div class="modal fade" id="myModal_s" role="dialog">
		    <div class="modal-dialog modal-sm">
		      <div class="modal-content">
		        <div class="modal-header-success" style="/* background-color:red; */">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		 	         <span class="msTitle" > 안내</span>
		        </div>
		        <div class="modal-body">
		          <p class="msContent_s"></p>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        </div>
		      </div>
		    </div>
		  </div>
		  
		<!-- warning -->	  
		  <div class="modal fade" id="myModal_w" role="dialog">
		    <div class="modal-dialog modal-sm">
		      <div class="modal-content">
		        <div class="modal-header-warning">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		         	 <span class="msTitle" style=""> 안내</span>
		        </div>
		        <div class="modal-body">
		          <p class="msContent"></p>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        </div>
		      </div>
		    </div>
		  </div>
	</div>
	
</body>
</html>