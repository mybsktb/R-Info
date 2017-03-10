<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>重置密码</title>
<jsp:include page="include/head.jsp"></jsp:include>
</head>
<body class="">
	<jsp:include page="include/nav.jsp"></jsp:include>
	<div class="row-fluid">
		<div class="dialog">
			<div class="block">
				<p class="block-heading">重置密码</p>
				<div class="block-body">
					<form>
						<label>邮箱地址</label> <input type="text" class="span12"></input>
						<a href="#" class="btn btn-primary pull-right">发送</a>
						<div class="clearfix"></div>
					</form>
				</div>
			</div>
			<a href="loginJsp">登录</a>
		</div>
	</div>
</body>
</html>


