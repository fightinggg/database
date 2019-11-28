<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    pageContext.setAttribute("path", path);
    pageContext.setAttribute("basePath", basePath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="${basePath }">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>

    <script type="text/javascript">
        $(document).ready(function (e) {
            $(".select1").uedSelect({
                width: 345
            });
            $(".select2").uedSelect({
                width: 167
            });
            $(".select3").uedSelect({
                width: 100
            });
        });
    </script>
</head>

<body>

<span>基本信息</span>
<form action="VipAddServlet.do" method="post">
    <ul>
        <li><label>id</label><input name="vip_id" type="text"><i>请输入id</i></li>
        <li><label>姓名</label><input name="vip_name" type="text"><i>请输入汉字</i></li>
        <li><label>电话</label><input name="vip_tel" type="text"><i>请输入电话</i></li>
        <li><label>地址</label><input name="vip_address" type="text"><i>请输入地址</i></li>
        <li><label>性别</label><cite><input name="vip_sex" type="radio" value="1"/>男&nbsp;&nbsp;&nbsp;&nbsp;<input
                name="vip_sex" type="radio" value="2"/>女</cite></li>
        <li><label>身份证</label><input name="vip_card" type="text"><i>请输入身份证</i></li>
        <li><label>权限</label>
            <select name="vip_grade">
                <option value="1">vip1</option>
                <option value="2">vip2</option>
                <option value="3">vip3</option>
                <option value="4">vip4</option>
                <option value="5">vip5</option>
                <option value="6">vip6</option>
                <option value="7">vip7</option>
            </select>
        <li><label>&nbsp;</label><input name="" type="submit" value="确认保存"/></li>
    </ul>
</form>


</body>

</html>