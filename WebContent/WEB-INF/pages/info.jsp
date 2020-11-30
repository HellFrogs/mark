<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>档案查询</title>

<%@ include file="/WEB-INF/pages/css_template.jsp"%>
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">学生管理系统</span> <span class="icon-bar"></span>
					<span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/StudentManage/">学生管理系统</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<!-- 导航条菜单 -->
				<%@ include file="/WEB-INF/pages/header_nav_template.jsp"%>

			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">

				<!-- 侧边栏 -->
				<jsp:include page="/WEB-INF/pages/side_nav_template.jsp">
					<jsp:param value="active" name="3" />
				</jsp:include>

			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1 class="page-header">欢迎您，小楼夜听雨！</h1>


				<div>
					<div class="panel panel-default">
						<!-- Default panel contents -->
						<div class="panel-heading">个性签名</div>
						<div class="panel-body">
							<textarea class="form-control" rows="3"></textarea>
						</div>

						<!-- List group -->
						<ul class="list-group">

							<li class="list-group-item"><span
								class="label label-primary">学&#12288号</span> 16135463210</li>

							<li class="list-group-item"><span
								class="label label-primary">姓&#12288名</span> 小明</li>

							<li class="list-group-item"><span
								class="label label-primary">身份证</span> 1234569874563217896</li>

							<li class="list-group-item"><span
								class="label label-primary">电&#12288话</span> 151896348964</li>


							<li class="list-group-item"><span
								class="label label-primary">邮&#12288箱</span> 1376034301@qq.com</li>

							<li class="list-group-item"><span
								class="label label-primary">地&#12288址</span> 江苏南京</li>

						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>