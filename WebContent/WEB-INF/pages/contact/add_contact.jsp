<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="com.mc.constant.RIConst"
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
<title>Bootstrap Admin</title>
<jsp:include page="../include/head.jsp"></jsp:include>
<script type="text/javascript">
	function saveContact() {
		if ($("#contactForm input:text:first").val() == "") {
			$("#msgError").text("姓名不能为空").fadeOut(3000);
			$("#contactForm input:text:first").focus();
			return;
		}
		$("#contactForm").submit();
	}

	function addGroup() {
	    $.ajax({
	    	url:'contact/addGroup',
	    	data:$("#addGroup").val(),
	    	type:'post',
	    	success:function(data){
	    		if("success"==data){
	    			$("#okMsg").text("添加成功");
	    		} else if ("warning"==data){
	    			$("#errorMsg").text("分组已存在");
	    		} else {
	    			$("#errorMsg").text("添加失败");
	    		}
	    	}
	    });
	}
</script>
</head>
<body class="">
	<!--<![endif]-->
	<jsp:include page="../include/nav.jsp"></jsp:include>
	<jsp:include page="../include/sidebar.jsp"></jsp:include>
	<div class="content">
		<ul class="breadcrumb">
			<li><a href="mood/moodJsp">首页</a> <span class="divider">/</span></li>
			<li><a href="contact/contactJsp/<%=RIConst.FIRST_PAGE %>-<%=RIConst.PAGE_SIZE%>">联系人管理</a> <span class="divider">/</span></li>
			<li class="active">新建联系人</li>
		</ul>

		<div class="container-fluid">
			<div class="row-fluid">
				<div class="well">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#new-contact" data-toggle="tab">新建联系人</a></li>
						<li><a href="#group-manage" data-toggle="tab">分组管理</a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane active in" id="new-contact">
							<p>
								<a onclick="saveContact()" class="btn btn-primary">保存</a>&nbsp;&nbsp;&nbsp;
								<span id="msgError" style="color: red; font-size: 10px;">${saveFail }</span>
								<span id="msgOk" style="color: green; font-size: 10px;">${saveOk }</span>
							</p>
							<form id="contactForm"
								style="border: #DDDDDD solid 1px; padding: 10px;"
								action="contact/saveContact">
								<input type="hidden" name="contacts.uid"
									value="${sessionScope.user.id }"> <label>姓名</label> <input
									type="text" name="contacts.name" class="input-xlarge"
									placeholder="必填" required> <label>手机号</label> <input
									type="tel" name="contacts.tel" class="input-xlarge"> <label>邮箱</label>
								<input type="email" name="contacts.email" class="input-xlarge">
								<label>地址</label> <input type="text" name="contacts.address"
									class="input-xlarge"> <label>分组</label> <select
									name="contacts.groupid" id="contact-group" class="input-xlarge">
									<option selected="selected" value="1">--请选择分组--</option>
									<c:forEach var="group" items="${groups }">
										<option value="${group.id }">${group.groupname }</option>
									</c:forEach>
								</select>
							</form>
						</div>
						<div class="tab-pane fade" id="group-manage">
							<form id="tab2" action="contact/addGroup" method="post">
								<div class="controls">
									<div class="input-append">
										<input class="span2" id="addGroup"
											name="groups.groupname" size="16" type="text" required>
										<input type="submit" class="btn btn-primary" value="添加">&nbsp;&nbsp;
										<span id="okMsg" style="color: green; font-size: 10px;">${okMsg }</span>
										<span id="errorMsg" style="color: red; font-size: 10px;">${errorMsg }</span>
									</div>
								</div>
							</form>
							<hr>
							<c:forEach var="group" items="${groups }">
								<div class="alert alert-info span2">
									<a class="close" href="#deleteGroup" data-toggle="modal">×</a>
									<input type="hidden" value="${group.id }" name="groups.id">
									<h4 class="alert-heading">${group.groupname }</h4>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>

				<div class="modal small hide fade" id="deleteGroup" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h3 id="myModalLabel">删除分组</h3>
					</div>
					<div class="modal-body">

						<p class="error-text">
							<i class="icon-warning-sign modal-icon"></i>确定删除此分组吗？
						</p>
					</div>
					<div class="modal-footer">
						<button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
						<button class="btn btn-danger" data-dismiss="modal">确定</button>
					</div>
				</div>
				<jsp:include page="../include/footer.jsp"></jsp:include>

			</div>
		</div>
	</div>
</body>
</html>