<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>主页</title>

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
					<jsp:param value="active" name="1" />
				</jsp:include>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1 class="page-header">欢迎您，小楼夜听雨！</h1>

				<div class="row placeholders">
					<div class="col-xs-6 col-sm-3 placeholder">
						<div class="imgBox">
							<img src="<%=basePath%>/img/nav.jpg">
							<h1 class="imgText">18</h1>
						</div>
						<h4>学生总数</h4>
						<span class="text-muted">Student</span>
					</div>

					<div class="col-xs-6 col-sm-3 placeholder">
						<div class="imgBox">
							<img src="<%=basePath%>/img/nav.jpg">
							<h1 class="imgText">18</h1>
						</div>
						<h4>课程总数</h4>
						<span class="text-muted">Class</span>
					</div>

					<div class="col-xs-6 col-sm-3 placeholder">
						<div class="imgBox">
							<img src="<%=basePath%>/img/nav.jpg">
							<h1 class="imgText">18</h1>
						</div>
						<h4>在线人数</h4>
						<span class="text-muted">Teacher</span>
					</div>

					<div class="col-xs-6 col-sm-3 placeholder">
						<div class="imgBox">
							<img src="<%=basePath%>/img/nav.jpg">
							<h1 class="imgText">18</h1>
						</div>
						<h4>运行天数</h4>
						<span class="text-muted">Days</span>
					</div>

				</div>

				<h2 class="sub-header">TOP</h2>
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>TOP</th>
								<th>学号</th>
								<th>姓名</th>
								<th>科目</th>
								<th>分数</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>123456</td>
								<td>学生1</td>
								<td>软件工程</td>
								<td>100</td>
							</tr>


							<tr>
								<td>2</td>
								<td>123457</td>
								<td>学生2</td>
								<td>软件工程</td>
								<td>99</td>
							</tr>

							<tr>
								<td>3</td>
								<td>123458</td>
								<td>学生2</td>
								<td>软件工程</td>
								<td>98</td>
							</tr>


						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>