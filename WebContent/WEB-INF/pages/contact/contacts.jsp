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
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>联系人</title>
<jsp:include page="../include/head.jsp"></jsp:include>
<script type="text/javascript">
function delSelect(){
	
}
function selectAll(){
	
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
            <li class="active">联系人</li>
        </ul>

        <div class="container-fluid">
            <div class="row-fluid">

                <div class="btn-toolbar">
                    <a class="btn btn-primary" href="contact/addContactJsp">
                        <i class="icon-plus"></i> 新建联系人
                    </a>
                    <button class="btn">导入</button>
                    <button class="btn">导出</button>
                    <div class="btn-group"></div>
                </div>
                <div class="well">
                    <table class="table">
                        <thead>
                            <tr>
                                <th><input type="checkbox">全选</th>
                                <th>姓名</th>
                                <th>手机号</th>
                                <th>邮箱</th>
                                <th>地址</th>
                                <th>分组</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="contact" items="${contacts }">
                            <tr>
                                <td><input type="checkbox" value="${contact.id }"></td>
                                <td>${contact.name }</td>
                                <td>${contact.tel }</td>
                                <td>${contact.email }</td>
                                <td>${contact.address }</td>
                                <td>
                                <c:forEach var="group" items="${groups }">
                                    <c:if test="${contact.groupid==group.id }">
                                    ${group.groupname }
                                    </c:if>
                                    <c:if test="${contact.groupid==1 }">
                                                                        未分组
                                    </c:if>
                                </c:forEach>
                                </td>
                                <td><a href="contact/updateContactJsp/${contact.id }"><i class="icon-pencil"></i></a> <a
                                    href="contact/delContact/${contact.id }" role="button" data-toggle="modal"><i
                                        class="icon-remove"></i></a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <input type="button" class="btn btn-primary" value="删除所选" onclick="delSelect()">
                </div>
                <div class="pagination">
                    <ul>
                        <li><a href="contact/contactJsp/1-${size }"><<</a></li>
                        <li><a href="contact/contactJsp/${currPage-1>1 ? currPage-1 : 1 }-${size }"><</a></li>
                        <li><a>第${currPage }页&nbsp;/&nbsp;共${total }页</a></li>
                        <li><a href="contact/contactJsp/${currPage+1<total ? currPage+1 : total }-${size }">></a></li>
                        <li><a href="contact/contactJsp/${total }-${size }">>></a></li>
                    </ul>
                </div>
                <jsp:include page="../include/footer.jsp"></jsp:include>
            </div>
        </div>
    </div>
</body>
</html>