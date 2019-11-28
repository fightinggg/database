<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>


</head>
<body>
<ul>
    <li>
        <a href="userAdd.jsp">添加</a>
    </li>

</ul>

<form action="UserListServlet.do" method="post">
    <ul>
        <li>
            姓名：<input value="${user_name }" type="text" name="user_name">
            账号：<input value="${account }" type="text" name="account">
            <input type="submit" value="查询">
        </li>
    </ul>
</form>


<table>
    <thead>
    <tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>姓名</th>
        <th>账号</th>
        <th>电话</th>
        <th>身份证</th>
        <th>权限</th>
        <th>年龄</th>
        <th>性别</th>
        <th>状态</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:if var="u" test="${!(empty userList)}">
        <c:forEach items="${userList}" var="user">
            <tr>
                <td><input name="user_id" type="checkbox" value="${user.user_id }"/></td>
                <td>${user.user_name }</td>
                <td>${user.account }</td>
                <td>${user.tel }</td>
                <td>${user.card }</td>
                <td>
                    <c:if test="${user.power eq 1}">总经理</c:if>
                    <c:if test="${user.power eq 2}">人事部经理</c:if>
                    <c:if test="${user.power eq 3}">客户经理</c:if>
                    <c:if test="${user.power eq 4}">前台</c:if>
                </td>
                <td>${user.age }</td>
                <td>
                    <c:if var="a" test="${user.sex eq 1}">男</c:if>
                    <c:if test="${!a}">女</c:if>
                </td>
                <td>
                    <c:if var="b" test="${user.status eq 1}">在职</c:if>
                    <c:if test="${!b}">离职</c:if>
                </td>
                <td>
                    <a href="UserMdiQueryServlet.do?user_id=${user.user_id  }">修改</a>
                    <a href="userDel.jsp?user_id=${user.user_id  }"> 删除</a>
                </td>
            </tr>
        </c:forEach>
    </c:if>
    <c:if test="${!u }">
        <td colspan="10" align="center">
            <font color="red">${message }</font>
        </td>
    </c:if>

    </tbody>
</table>

<jsp:include page="pages.jsp"></jsp:include>


</div>

<script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
</script>

</body>

</html>
