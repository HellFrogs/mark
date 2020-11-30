<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>成绩管理</title>
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
					<jsp:param value="active" name="5" />
				</jsp:include>

			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<div class="row">

					<div class="col-sm-7">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Search for..."> <span
								class="input-group-btn">
								<button class="btn btn-primary" type="button">搜索</button>
							</span>
						</div>
					</div>

					<div class="col-sm-5">
						<!-- <button class="btn addBtn">添加学生</button> -->
						<button type="button" class="btn btn-primary" data-toggle="modal"
							data-target="#addScore">成绩录入</button>
					</div>
				</div>


				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>#</th>
								<th>课程号</th>
								<th>课程名</th>
								<th>学号</th>
								<th>姓名</th>
								<th>分数</th>
								<th>编辑</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>0</th>
								<th>10000001</th>
								<th>高等数学</th>
								<th>123456</th>
								<th>小明</th>
								<th>100</th>

								<th>
									<button class="btn btn-default" data-course-no="123456"
										data-toggle="modal" data-target="#updateScore">编辑</button>
									<button class="btn btn-danger" data-course-no="123456"
										data-toggle="modal" data-target="#deleteScore">删除</button>
								</th>
							</tr>
						</tbody>
					</table>
				</div>


				<div>
					<nav aria-label="...">
						<ul class="pager hidden">
							<li class="previous"><a href="#"><span
									aria-hidden="true">&larr;</span> 上一页</a></li>
							<li class="next"><a href="#">下一页 <span
									aria-hidden="true">&rarr;</span></a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>

	<!-- add student -->
	<div class="modal fade" id="addScore" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<form action="http://www.baidu.com">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">录入学生成绩</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="course-no" class="control-label">课程:</label> <input
								type="text" class="form-control" id="course-no">
						</div>

						<div class="form-group">
							<label for="student-no" class="control-label">学生:</label> <input
								type="text" class="form-control" id="student-no">
						</div>

						<div class="form-group">
							<label for="score" class="control-label">分数:</label> <input
								type="text" class="form-control" id="score">
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
						<button type="button submit" class="btn btn-primary">提交</button>
					</div>
				</form>
			</div>


		</div>
	</div>

	<!-- update score -->
	<div class="modal fade" id="updateScore" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<form action="http://www.baidu.com">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">更新课程信息</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="update-course-no" class="control-label">课程号:</label>
							<input type="text" class="form-control" id="update-course-no">
						</div>

						<div class="form-group">
							<label for="update-student-no" class="control-label">学号:</label>
							<input type="text" class="form-control" id="update-student-no">
						</div>

						<div class="form-group">
							<label for="update-score" class="control-label">分数:</label> <input
								type="text" class="form-control" id="update-score">
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
						<button type="button submit" class="btn btn-primary">保存</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- delete Score -->
	<div class="modal fade" id="deleteScore" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<form action="http://www.baidu.com">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="udpate-myModalLabel">删除成绩</h4>
					</div>
					<div class="modal-body">
						确认要删除该条成绩的所有信息吗（该操作不可逆）？
						<div class="form-group hidden">
							<label for="delete-student-no" class="control-label">学号:</label>
							<input type="text" class="form-control" id="delete-student-no">
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
						<button type="button submit" class="btn btn-danger">删除</button>
					</div>
				</form>
			</div>
		</div>
	</div>


	<script src="../js/jquery-3.5.1.js"></script>
	<script src="../js/bootstrap.js"></script>

	<script>
		$('#updateCourse').on('show.bs.modal', function(event) {
			var button = $(event.relatedTarget)
			var studentId = button.data('course-no')
			var modal = $(this)
			modal.find('#update-student-no').val(studentId)
		})

		$('#deleteCourse').on('show.bs.modal', function(event) {
			console.log("hello")
			var button = $(event.relatedTarget)
			var studentId = button.data('course-no')
		})
	</script>
</body>

</html>