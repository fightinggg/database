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


<body style="background: lavender;">
<div style="width:300px;float: left">
    <span><font size="10">人事管理系统</font></span>
</div>


<div style="float: right;width: 100px;">
    <div style="float: right;width: 80px;">
        <br><span>  admin  </span>
        <br><span>  无消息  </span>
    </div>
</div>
<div style="float: right">
    <ul>
        <li><a href="login.jsp" target="_parent">退出 </a></li>
    </ul>
</div>
<div style="float: right">
    <ul>
        <li>关于</li>
    </ul>
</div>
<div style="float: right">
    <ul>
        <li>帮助</li>
    </ul>
</div>

</body>
</html>