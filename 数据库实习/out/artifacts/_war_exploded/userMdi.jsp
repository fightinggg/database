<%@page import="java.util.Map" %>
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

<span>位置：</span>
<ul>
    <li>
        <a href="#">首页</a>
    </li>
    <li>
        <a href="#">添加用户</a>
    </li>
</ul>

<span>基本信息</span>
<form action="UserMdiServlet.do" method="post">
    <input type="hidden" name="user_id" value="${userMap.user_id}">
    <ul>
        <li>
            <label>
                姓名
            </label>
            <input value="${userMap.user_name}" name="user_name" type="text"/>
            <i>请输入汉字</i>
        </li>
        <li>
            <label>
                账号
            </label>
            <input value="${userMap.account}" name="account" type="text"/>
            <i>请输入账号</i>
        </li>
        <li>
            <label>
                年龄
            </label>
            <input value="${userMap.age}" name="age" type="text"/>
            <i>请输入数字</i>
        </li>
        <li>
            <label>
                性别
            </label>

            <cite><input
                    <c:if var="s" test="${userMap.sex eq 1}">checked="checked"</c:if> name="sex" type="radio"
                    value="1"/>男&nbsp;&nbsp;&nbsp;&nbsp;
                <input name="sex"
                       <c:if test="${!s}">checked="checked"</c:if> type="radio" value="-1"/>女</cite>
        </li>
        <li>
            <label>
                身份证
            </label>
            <input name="card" type="text" value="${userMap.card}"/>
            <i>请输入身份证</i>
        </li>
        <li>
            <label>
                电话
            </label>
            <input value="${userMap.tel}" name="tel" type="text"/>
            <i>请输入电话号</i>
        </li>
        <li>
            <label>
                权限
            </label>
            <select name="power">

                <option<c:if test="${userMap.power eq 1}"> selected="selected" </c:if> value="1">
                    总经理
                </option>
                <option<c:if test="${userMap.power eq 2}"> selected="selected" </c:if> value="2">
                    人事部经理
                </option>
                <option <c:if test="${userMap.power eq 3}"> selected="selected" </c:if> value="3">
                    客户经理
                </option>
                <option <c:if test="${userMap.power eq 4}"> selected="selected" </c:if> value="4">
                    前台
                </option>
            </select>
        <li>
            <label>
                &nbsp;
            </label>
            <input name="" type="submit" value="确认保存"/>
        </li>
    </ul>
</form>


</body>

</html>