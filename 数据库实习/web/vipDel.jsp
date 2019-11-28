<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    pageContext.setAttribute("path", path);
    pageContext.setAttribute("basePath", basePath);
%>
<%
    String vip_id = request.getParameter("vip_id");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="${basePath }">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>

    <script type="text/javascript">
        function can() {
            window.location.href = "VipListServlet.do";
        }
    </script>

</head>


<body style="background:#edf6fa;">


<br/><br/><br/><br/><br/><br/><br/>
<p align="center"><font style="font-size: 50px;">确定要删除这条信息吗？</font></p><br/><br/><br/><br/><br/><br/><br/>
<form action="VipDelServlet.do">
    <input type="hidden" name="vip_id" value="<%=vip_id%>">
    <p class="reindex" align="center"><input type="submit" value="确定" class="btn">&nbsp;<input type="button"
                                                                                               onclick="can();"
                                                                                               value="取消" class="btn">
    </p>
</form>


</body>

</html>