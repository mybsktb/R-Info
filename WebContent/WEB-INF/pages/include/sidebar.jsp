<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="com.mc.constant.RIConst"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div class="sidebar-nav">
	<a href="#dashboard-menu" class="nav-header" data-toggle="collapse"><i
		class="icon-dashboard"></i>个人中心</a>
	<ul id="dashboard-menu" class="nav nav-list collapse in">
		<li><a href="mood/moodJsp">我的心情</a></li>
		<li><a href="contact/contactJsp/<%=RIConst.FIRST_PAGE %>-<%=RIConst.PAGE_SIZE%>">联系人</a></li>
		<li><a href="website/websiteJsp">网站</a></li>
	</ul>

	<a href="#accounts-menu" class="nav-header" data-toggle="collapse"><i
		class="icon-briefcase"></i>账户管理</a>
	<ul id="accounts-menu" class="nav nav-list collapse in">
		<li><a href="account/accountJsp">我的账户</a></li>
		<li><a href="account/personalInfoJsp">个人资料</a></li>
		<li><a href="account/changePwdJsp">修改密码</a></li>
	</ul>
</div>