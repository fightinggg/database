<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>

</head>


<body>

<div style="width: 400px;height: 300px;position: absolute;left: 30%;top:30%;">
    <span>您好！欢迎登陆</span><br><br>
    <span>您可以通过左边的栏目来访问此网站，并进行人事管理</span>
</div>


</body>

</html>