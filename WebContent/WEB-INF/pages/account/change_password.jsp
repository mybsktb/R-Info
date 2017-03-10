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
<title>重置密码</title>
<jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body class="">
    <!--<![endif]-->
    <jsp:include page="../include/nav.jsp"></jsp:include>
    <jsp:include page="../include/sidebar.jsp"></jsp:include>
    <div class="content">

        <ul class="breadcrumb">
            <li><a href="mood/moodJsp">首页</a> <span class="divider">/</span></li>
            <li><a href="account/accountJsp">账户管理</a> <span class="divider">/</span></li>
            <li class="active">修改密码</li>
        </ul>

        <div class="container-fluid">
            <div class="row-fluid">
                <div class="well">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#change-pwd" data-toggle="tab">修改密码</a></li>
                        <li><a href="#reset-pwd" data-toggle="tab">重置密码</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane active in" id="change-pwd">
                            <form id="tab2">
                                <label>原密码</label> <input type="password"
                                    class="input-xlarge">
                                <label>新密码</label> <input type="password"
                                    class="input-xlarge">
                                <label>确认密码</label> <input type="password"
                                    class="input-xlarge">
                                <div>
                                    <button class="btn btn-primary">更新</button>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="reset-pwd">
                            <form id="tab2">
                                <label>绑定的邮箱</label> <input type="text"
                                    class="input-xlarge">
                                <div>
                                    <button class="btn btn-primary">更新</button>
                                </div>
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