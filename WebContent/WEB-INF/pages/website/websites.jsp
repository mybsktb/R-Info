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
<title>网站</title>
<jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body class="">
    <!--<![endif]-->
    <jsp:include page="../include/nav.jsp"></jsp:include>
    <jsp:include page="../include/sidebar.jsp"></jsp:include>
    <div class="content">

        <ul class="breadcrumb">
            <li><a href="mood/moodJsp">首页</a> <span class="divider">/</span></li>
            <li class="active">网站</li>
        </ul>

        <div class="container-fluid">
            <div class="row-fluid">

                <div class="btn-toolbar">
                    <button class="btn btn-primary">
                        <i class="icon-plus"></i> 新建记录
                    </button>
                    <button class="btn">导入</button>
                    <button class="btn">导出</button>
                    <div class="btn-group"></div>
                </div>
                <div class="well">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>网站</th>
                                <th>网址</th>
                                <th>账号</th>
                                <th>用户名</th>
                                <th>密码</th>
                                <th>邮箱</th>
                                <th>手机号</th>
                                <th>备注</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>百度</td>
                                <td>www.baidu.com</td>
                                <td>mybsktb</td>
                                <td>mybsktb</td>
                                <td>y</td>
                                <td>mybsktb@163.com</td>
                                <td>15127507726</td>
                                <td>微信登录</td>
                                <td><a href="user.html"><i class="icon-pencil"></i></a> <a
                                    href="#myModal" role="button" data-toggle="modal"><i
                                        class="icon-remove"></i></a></td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>百度</td>
                                <td>www.baidu.com</td>
                                <td>mybsktb</td>
                                <td>mybsktb</td>
                                <td>y</td>
                                <td>mybsktb@163.com</td>
                                <td>15127507726</td>
                                <td>微信登录</td>
                                <td><a href="user.html"><i class="icon-pencil"></i></a> <a
                                    href="#myModal" role="button" data-toggle="modal"><i
                                        class="icon-remove"></i></a></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>百度</td>
                                <td>www.baidu.com</td>
                                <td>mybsktb</td>
                                <td>mybsktb</td>
                                <td>y</td>
                                <td>mybsktb@163.com</td>
                                <td>15127507726</td>
                                <td>微信登录</td>
                                <td><a href="user.html"><i class="icon-pencil"></i></a> <a
                                    href="#myModal" role="button" data-toggle="modal"><i
                                        class="icon-remove"></i></a></td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>百度</td>
                                <td>www.baidu.com</td>
                                <td>mybsktb</td>
                                <td>mybsktb</td>
                                <td>y</td>
                                <td>mybsktb@163.com</td>
                                <td>15127507726</td>
                                <td>微信登录</td>
                                <td><a href="user.html"><i class="icon-pencil"></i></a> <a
                                    href="#myModal" role="button" data-toggle="modal"><i
                                        class="icon-remove"></i></a></td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>百度</td>
                                <td>www.baidu.com</td>
                                <td>mybsktb</td>
                                <td>mybsktb</td>
                                <td>y</td>
                                <td>mybsktb@163.com</td>
                                <td>15127507726</td>
                                <td>微信登录</td>
                                <td><a href="user.html"><i class="icon-pencil"></i></a> <a
                                    href="#myModal" role="button" data-toggle="modal"><i
                                        class="icon-remove"></i></a></td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>百度</td>
                                <td>www.baidu.com</td>
                                <td>mybsktb</td>
                                <td>mybsktb</td>
                                <td>y</td>
                                <td>mybsktb@163.com</td>
                                <td>15127507726</td>
                                <td>微信登录</td>
                                <td><a href="user.html"><i class="icon-pencil"></i></a> <a
                                    href="#myModal" role="button" data-toggle="modal"><i
                                        class="icon-remove"></i></a></td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>百度</td>
                                <td>www.baidu.com</td>
                                <td>mybsktb</td>
                                <td>mybsktb</td>
                                <td>y</td>
                                <td>mybsktb@163.com</td>
                                <td>15127507726</td>
                                <td>微信登录</td>
                                <td><a href="user.html"><i class="icon-pencil"></i></a> <a
                                    href="#myModal" role="button" data-toggle="modal"><i
                                        class="icon-remove"></i></a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="pagination">
                    <ul>
                        <li><a href="#">Prev</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">Next</a></li>
                    </ul>
                </div>

                <div class="modal small hide fade" id="myModal" tabindex="-1"
                    role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">×</button>
                        <h3 id="myModalLabel">Delete Confirmation</h3>
                    </div>
                    <div class="modal-body">
                        <p class="error-text">
                            <i class="icon-warning-sign modal-icon"></i>Are you sure you want
                            to delete the user?
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
                        <button class="btn btn-danger" data-dismiss="modal">Delete</button>
                    </div>
                </div>
                <jsp:include page="../include/footer.jsp"></jsp:include>

            </div>
        </div>
    </div>
</body>
</html>