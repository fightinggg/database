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
    <title>欢迎登录人事管理系统</title>
</head>
<body>

<div style="width: 400px;height: 300px;position: absolute;left: 40%;top:30%;">
    <span>欢迎登录人事管理界面平台</span>
    <form action="LoginServlet.do" method="post">
        <ul>
            <li><span>账号</span><input name="account" type="text"/></li>
            <li><span>密码</span><input name="password" type="password"/></li>
            <li>${message}</li>
            <li><input type="submit" class="loginbtn" value="登录"/><label><input name="" type="checkbox" value=""
                                                                                checked="checked"/>记住密码</label><label><a
                    href="#">忘记密码？</a></label></li>
        </ul>
    </form>
</div>
</body>


</html>