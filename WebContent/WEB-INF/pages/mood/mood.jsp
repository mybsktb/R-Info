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
<title>个人中心</title>
<jsp:include page="../include/head.jsp"></jsp:include>
<style type="text/css">
.mood {
	width: 100%;
	border: #EEDDEE solid 1px;
}
</style>
<script type="text/javascript">
	function delMood(mid) {
		if (confirm("确定删除心情及相关评论吗？")) {
			$.ajax({
				url:'mood/deleteMood',
				type:'post',
				data:{'mid':mid},
				success:function(data){
					var result = data.result;
					if(result==1){
						alert("删除成功");
						location.href='mood/moodJsp';
					} 
				}
			})
		}
	}
</script>
</head>
<body class="">
	<jsp:include page="../include/nav.jsp"></jsp:include>
	<jsp:include page="../include/sidebar.jsp"></jsp:include>
	<div class="content">
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<div class="row-fluid">
						<div class="span9">
							<div>
								<form action="mood/publicMood" method="post">
									<br>
									<textarea rows="3" cols="" style="width: 98%; resize: none;"
										placeholder="今天心情怎么样？" name="mood.content" required></textarea>
									<div class="row-fluid">
										<div class="span12">
											<input type="radio" class="pull-left" name="mood.privacy"
												value="0" checked><span class="help">公开</span> <input
												type="radio" name="mood.privacy" value="1"><span
												class="help">仅自己可见</span> <input type="submit"
												class="btn pull-right" value="发表">
										</div>
									</div>
								</form>
							</div>
							<div>
								<div class="title">
									<h3>最新动态</h3>
								</div>
								<hr>
								<c:forEach var="mood" items="${moods }">
									<div>
										<div class="row-fluid mood" style="margin: 10px 0px;">
											<div class="span2" align="center" style="margin: 10px 0px;">
												<a><img alt="头像"
													src="${sessionScope.user.icon != null ? sessionScope.user.icon : '<%=basePath%>resources/images/a1.jpg'}"
													width="50px" height="50px"><br> <span>${sessionScope.user.nikename!=null ? sessionScope.user.nikename : sessionScope.user.username }</span></a>
											</div>
											<div class="span10" style="margin: 10px 0px;">
												<p style="color: #CCCCCC;">${mood.createtime }<a href="javascript:void(0);"
														onclick="delMood(${mood.id })" class="pull-right"
														data-toggle="modal">x</a>
												</p>
												<p>${mood.content }</p>
												<div class="row-fluid">
													<div class="span12" align="right">
														<a href="javascipt:void(0);">评论</a>(10)&nbsp;&nbsp;<a
															href="javascipt:void(0);">赞</a>(3)&nbsp;&nbsp;<br>
														<hr>
														<div class="row-fluid">
															<div class="span12" align="left">
																<c:forEach var="comment" items="${comments }">
																	<c:set var="count">1</c:set>
																	<c:if test="${comment.moodId==mood.id }">
																		<c:if test="${comment.commentType==0 }">
																			<p>
																				<a>${comment.commentCunikename != null ? comment.commentCunikename : comment.commentCuusername }</a>:
																				<span>${comment.commentContent }</span>&nbsp;<a
																					href="javscript:void(0);">回复</a>
																			</p>
																		</c:if>
																		<c:if test="${comment.commentType==1 }">
																			<p>
																				<a>${comment.commentCunikename != null ? comment.commentCunikename : comment.commentCuusername }</a>回复
																				<a>${comment.commentBunikename != null ? comment.commentBunikename : comment.commentBuusername }</a>:
																				<span>${comment.commentContent }</span>&nbsp;<a
																					href="javscript:void(0);">回复</a>
																			</p>
																		</c:if>
																	</c:if>
																</c:forEach>
															</div>
														</div>
													</div>
												</div>
												<div class="row-fluid">
													<div class="span12">
													<form>
														<input type="text" name="comment.content"
															placeholder="请在此输入评论" class="input-xlarge">
													</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="span3">
							<label>最近动态</label>
						</div>
					</div>
					<jsp:include page="../include/footer.jsp"></jsp:include>
				</div>
			</div>
		</div>
	</div>
</body>
</html>