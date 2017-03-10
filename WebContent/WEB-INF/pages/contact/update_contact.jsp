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
            <li class="active">更新联系人</li>
        </ul>

        <div class="container-fluid">
            <div class="row-fluid">
                <div class="well">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#new-contact" data-toggle="tab">修改联系人信息</a></li>
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
                                action="contact/updateContact">
                                <input type="hidden" name="contacts.uid"
                                    value="${sessionScope.user.id }">
                                    <input type="hidden" name="contacts.id" value="${contact.id }">
                                     <label>姓名</label> <input
                                    type="text" name="contacts.name" class="input-xlarge"
                                    placeholder="必填" value="${contact.name }" required> <label>手机号</label> <input
                                    type="tel" name="contacts.tel" value="${contact.tel }" class="input-xlarge"> <label>邮箱</label>
                                <input type="email" name="contacts.email" value="${contact.email }" class="input-xlarge">
                                <label>地址</label> <input type="text" name="contacts.address" value="${contact.address }"
                                    class="input-xlarge"> <label>分组</label> <select
                                    name="contacts.groupid" id="contact-group" class="input-xlarge">
                                    <c:forEach var="group" items="${groups }">
                                        <c:if test="${group.id==contact.groupid }">
                                            <option selected="selected" value="${group.id }">${group.groupname }</option>
                                        </c:if>
                                        <c:if test="${group.id!=contact.groupid }">
                                            <option value="${group.id }">${group.groupname }</option>
                                        </c:if>
                                    </c:forEach>
                                </select>
                            </form>
                        </div>
                    </div>
                </div>
                <jsp:include page="../include/footer.jsp"></jsp:include>
            </div>
        </div>
    </div>
</body>
</html>