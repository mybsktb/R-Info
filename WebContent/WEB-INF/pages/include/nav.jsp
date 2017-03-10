<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div class="navbar">
	<div class="navbar-inner">
        <c:if test="${sessionScope.user != null }">
		<ul class="nav pull-right">
			<li id="fat-menu" class="dropdown"><a href="#" role="button"
				class="dropdown-toggle" data-toggle="dropdown">
				<img alt="${sessionScope.user.username }"
						src="${sessionScope.user.icon != null ? sessionScope.user.icon : '<%=basePath%>resources/images/a1.jpg' }"
						width="30px" height="30px"> <i class="icon-caret-down"></i>
			</a>
				<ul class="dropdown-menu">
					<li><a tabindex="-1" href="account/accountJsp">我的账户</a></li>
					<li class="divider"></li>
					<li><a tabindex="-1" href="logout">退出登录</a></li>
				</ul></li>
		</ul>
		</c:if>
		<a class="brand" href="mood/moodJsp"><span class="first">个人</span> <span
			class="second">中心</span></a>
	</div>
</div>