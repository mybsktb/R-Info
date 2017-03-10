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
<title>用户登录</title>
<jsp:include page="include/head.jsp"></jsp:include>
<script type="text/javascript">
	function rememberPwd(){
		if($("input:checkbox").checked==true){
			$("input:checkbox").val("1");
		} else {
			$("input:checkbox").val("0");
		}
	}
	
	function login(){
		if($("input[name='user.username']").val()==""){
			$("#msgUn").text("用户名不能为空").fadeOut(2000);
			$("input[name='user.username']").focus();
			return;
		}
		if($("input[name='user.password']").val()==""){
			$("#msgPwd").text("密码不能为空").fadeOut(2000);
			$("input[name='user.password']").focus();
			return;
		}
		$("#loginForm").submit();
	}
</script>
</head>
<body>
	<jsp:include page="include/nav.jsp"></jsp:include>
	<div class="row-fluid">
		<div class="dialog">
			<div class="block">
				<p class="block-heading">登录</p>
				<div class="block-body">
					<form id="loginForm" action="login" method="post">
						<label>用户名&nbsp;<span id="msgUn" style="color:red;font-size:10px;">${loginMsg }</span></label> <input type="text" class="span12"
							name="user.username" required> <label>密码&nbsp;<span id="msgPwd" style="color:red;font-size:10px;"></span></label> <input
							type="password" name="user.password" class="span12" required>
						<a href="javascript:login();" class="btn btn-primary pull-right">登录</a> <label
							class="remember-me"><input name="rememberPwd" onclick="rememberPwd()"
							type="checkbox" value="0"> 记住密码</label>
						<div class="clearfix"></div>
					</form>
				</div>
			</div>
			<p class="pull-right">
				<a href="registerJsp">点击注册</a>
			</p>
			<p>
				<a href="resetPwdJsp">忘记密码?</a>
			</p>
		</div>
	</div>
</body>
</html>


