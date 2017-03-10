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
<base href="<%=basePath%>>">
<meta charset="utf-8">
<title>Bootstrap Admin</title>
<jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body class="">
	<jsp:include page="../include/nav.jsp"></jsp:include>
	<jsp:include page="../include/sidebar.jsp"></jsp:include>
	<div class="content">

		<ul class="breadcrumb">
			<li><a href="mood/moodJsp">首页</a> <span class="divider">/</span></li>
			<li><a href="account/accountJsp">账户管理</a> <span class="divider">/</span></li>
			<li class="active">个人资料</li>
		</ul>

		<div class="container-fluid">
			<div class="row-fluid">
				<div class="well">
					<ul class="nav nav-tabs">
						<li class="active"><a href="" data-toggle="tab">个人资料</a></li>
						<li class="pull-right"><a href="">编辑</a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div class="container-fluid">
							<div class="row-fluid">
								<div class="span5">
									<label>昵称</label> <input type="text" class="input-xlarge"
										value="${sessionScope.user.nikename}" disabled="disabled"> <label>性别</label>
									<input type="text" class="input-xlarge" value="${sessionScope.user.sex==1 ? '男' : '女'}"
										disabled="disabled"> <label>学校</label> <input
										type="text" class="input-xlarge" value="${sessionScope.user.school}"
										disabled="disabled"> <label>个人简介</label>
									<textarea rows="3" cols="" disabled="disabled"
										style="resize: none;width: 270px;">${sessionScope.user.shortinfo}</textarea>
								</div>
								<div class="span5">
									<label>生日</label> <input type="text" class="input-xlarge"
										value="${sessionScope.user.birthday}" disabled="disabled"> <label>地址</label>
									<input type="text" class="input-xlarge" value="${sessionScope.user.address}"
										disabled="disabled"> <label>公司</label> <input
										type="text" class="input-xlarge" value="${sessionScope.user.company}"
										disabled="disabled"> <label>爱好</label> <input
										type="text" class="input-xlarge" value="${sessionScope.user.hobby}"
										disabled="disabled">
								</div>
								<div class="span2" align="center">
									<img alt="头像" src="${sessionScope.user.icon}"><br>
									<a href="account/changeIconJsp">修改头像</a>
								</div>
							</div>
						</div>
					</div>

				</div>
				<jsp:include page="../include/footer.jsp"></jsp:include>

			</div>
		</div>
	</div>


</body>
</html>