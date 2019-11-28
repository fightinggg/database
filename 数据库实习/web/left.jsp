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

<body style="background:#f0f9fd;">

<div><span></span>目录</div>
<hr>

<div>
    <span>〇</span>员工管理
</div>
<ul>
    <li><cite></cite><a href="UserListServlet.do" target="right">员工信息管理</a><i></i></li>
    <li><cite></cite><a href="passwordMdi.jsp" target="right">修改密码</a><i></i></li>
</ul>
<div>
    <span>〇</span>客户管理
</div>
<ul>
    <li><cite></cite><a href="VipListServlet.do" target="right">客户信息管理</a><i></i></li>
</ul>


</body>
</html>