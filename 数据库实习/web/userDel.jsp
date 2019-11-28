<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    pageContext.setAttribute("path", path);
    pageContext.setAttribute("basePath", basePath);
%>
<%
    String user_id = request.getParameter("user_id");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="${basePath }">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <script type="text/javascript">
        function can() {
            window.location.href = "UserListServlet.do";
        }
    </script>

</head>


<body style="background:#edf6fa;">

<br/><br/><br/><br/><br/><br/><br/>
<p align="center"><font style="font-size: 50px;">需要把这位员工设为离职吗？</font></p><br/><br/><br/><br/><br/><br/><br/>
<form action="UserDelServlet.do">
    <input type="hidden" name="user_id" value="<%=user_id%>">
    <p align="center">
        <input type="submit" value="确定">
        <input type="button" onclick="can();" value="取消"></p>
</form>


</body>

</html>