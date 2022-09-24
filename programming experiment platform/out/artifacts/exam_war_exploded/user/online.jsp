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
    <meta charset="utf-8">
    <title>在线编程</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/paper.css">
    <script src="<%=basePath%>js/jquery.js" type="text/javascript"></script>
    <script src="<%=basePath%>js/bootstrap.js"></script>
</head>

<body>
<nav class="navbar navbar-default" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">在线编程系统</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav">
            <li class="active"><a href="<%=basePath%>user?cmd=online">在线编程</a></li>
            <li><a href="<%=basePath%>user?cmd=paperlist">试题列表</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <c:choose>
                <c:when test="${userid!=null}">
                    <li>
                        <a>
                            <c:out value="${sessionScope.user.usertruename}" />
                        </a>
                    </li>
                    <li>
                        <a href="<%=basePath%>sys/user?cmd=logout">注销</a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li><a href="login.jsp">登录</a></li>
                </c:otherwise>
            </c:choose>

        </ul>
    </div>
    <!-- /.navbar-collapse -->
</nav>

 <main style="width:100%;height: 520px">
        <iframe src="https://www.dotcpp.com/run/" width="100%" height="100%" frameborder="0">
            您的浏览器不支持iframe，请升级
        </iframe>
</main>

</body>

</html>