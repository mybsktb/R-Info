<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>我的账户</title>
<jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body class="">
	<!--<![endif]-->
	<jsp:include page="../include/nav.jsp"></jsp:include>
	<jsp:include page="../include/sidebar.jsp"></jsp:include>
	<div class="content">

		<ul class="breadcrumb">
			<li><a href="indexJsp">首页</a> <span class="divider">/</span></li>
			<li><a href="account/accountJsp">账户管理</a> <span class="divider">/</span></li>
			<li class="active">我的账户</li>
		</ul>
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="well">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#account-info" data-toggle="tab">账户信息</a></li>
						<li><a href="#bind-email" data-toggle="tab">绑定邮箱</a></li>
						<li><a href="#bind-tel" data-toggle="tab">绑定手机</a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane active in" id="account-info">
							<div class="container-fluid">
								<div class="row-fluid">
									<div class="span6">
										<label>账号</label> <input type="text" class="input-xlarge" value="${sessionScope.user.username }" disabled="disabled">
										<label>邮箱</label> <input type="text" class="input-xlarge" value="${sessionScope.user.email }" disabled="disabled">
									</div>
									<div class="span6">
										<label>手机号</label> <input type="text" class="input-xlarge" value="${sessionScope.user.tel }" disabled="disabled">
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="bind-email">
							 <c:if test="${sessionScope.user.email==null}">
							<form id="tab2">
								<label>绑定邮箱</label> <input type="password" class="input-xlarge">
								<div>
									<button class="btn btn-primary">绑定</button>
								</div>
							</form>
							 </c:if>
							 <c:if test="${sessionScope.user.email!=null}">
								<div>
									<span>已绑定邮箱：${sessionScope.user.email}</span>&nbsp;<a href="">解绑</a>
								</div>
							 </c:if>
						</div>
						<div class="tab-pane fade" id="bind-tel">
						 <c:if test="${sessionScope.user.tel==null}">
							<form id="tab2">
								<label>绑定手机号</label> <input type="password" class="input-xlarge">
								<div>
									<button class="btn btn-primary">绑定</button>
								</div>
							</form>
						</c:if>
						<c:if test="${sessionScope.user.tel!=null}">
								<div>
								    <span>已绑定手机：${sessionScope.user.tel}</span>&nbsp;<a href="">解绑</a>
								</div>
						</c:if>
						</div>
					</div>
				</div>
				<jsp:include page="../include/footer.jsp"></jsp:include>
			</div>
		</div>
	</div>


</body>
</html>


