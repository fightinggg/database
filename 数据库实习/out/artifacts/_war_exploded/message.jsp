<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    pageContext.setAttribute("path", path);
    pageContext.setAttribute("basePath", basePath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="${basePath }">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
</head>


<body style="background:#edf6fa;">


<br/><br/><br/><br/><br/><br/><br/>
<p align="center"><font style="font-size: 50px;">${message }</font></p><br/><br/><br/><br/><br/><br/><br/>
<p  align="center"><a href="${url }" target="_self">返回首页</a></p>


</body>

</html>