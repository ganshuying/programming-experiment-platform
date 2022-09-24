<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
	<head>
		<base href="<%=basePath%>">

		<title>试题功能列表</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/theme.css">
		<script src="<%=basePath%>js/jquery.js" type="text/javascript"></script>
	</head>

	<body class="content1">
		<script>
    		$('#a_leader_txt', parent.document).html('试题详情');
		</script>
		<div class="container-fluid">
			<div class="row-fluid">
				

				<div class="well">
					<table class="table">
						<thead>
							<tr>
								<th>
									题目ID
								</th>
								<th>
									题目描述
								</th>
								<th>
									输入范例：
								</th>
								<th>
									输出结果：
								</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${subjects}" var="item">
								<tr>
									<td>
										${item.sid}
									</td>
									<td>
										${item.scontent}
									</td>
									<td>
										${item.sa}
									</td>
									<td>
										${item.sb}
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</body>
</html>
