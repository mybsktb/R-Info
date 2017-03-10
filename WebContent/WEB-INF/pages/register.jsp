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
<title>用户注册</title>
<jsp:include page="include/head.jsp"></jsp:include>
</head>
<body class="">

	<jsp:include page="include/nav.jsp"></jsp:include>
	<div class="row-fluid">
		<div class="dialog">
			<div class="block">
				<p class="block-heading">注册</p>
				<div class="block-body">
					<form>
						<label>用户名</label> <input type="text" class="span12" placeholder="注册成功后不能修改" required>
						<label>邮箱</label> <input type="text" class="span12" placeholder="可用于登录和找回密码" required>
						<label>密码</label> <input type="password" class="span12" placeholder="请设置登录密码" required>
						<label>确认密码</label> <input type="password" class="span12" placeholder="请输入确认密码" required>
						<a href="indexJsp" class="btn btn-primary pull-right">注册</a> <label class="remember-me"><input type="checkbox">
							阅读并接受<a href="http://passport.baidu.com/static/passpc-account/html/protocal.html" target="_blank">用户协议</a></label>
						<div class="clearfix"></div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>


