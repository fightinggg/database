<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%
    response.setContentType("text/html;charset=utf-8");
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    List<Map<String, Object>> vipList = (List<Map<String, Object>>) request.getAttribute("vipList");


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
        <a href="vipAdd.jsp"><span></span>添加</a>
    </li>

</ul>

<form action="VipListServlet.do" method="post">
    <ul>
        <li>
            等级：
            <select name="vip_grade">
                <option<%if (request.getAttribute("vip_grade") != null && request.getAttribute("vip_grade").equals("1")) { %>selected
                ="selected"<%} %> value="1">vip1</option>
                <option<%if (request.getAttribute("vip_grade") != null && request.getAttribute("vip_grade").equals("2")) { %>selected
                ="selected"<%} %> value="2">vip2</option>
                <option<%if (request.getAttribute("vip_grade") != null && request.getAttribute("vip_grade").equals("3")) { %>selected
                ="selected"<%} %> value="3">vip3</option>
                <option<%if (request.getAttribute("vip_grade") != null && request.getAttribute("vip_grade").equals("4")) { %>selected
                ="selected"<%} %> value="4">vip4</option>
                <option<%if (request.getAttribute("vip_grade") != null && request.getAttribute("vip_grade").equals("5")) { %>selected
                ="selected"<%} %> value="5">vip5</option>
                <option<%if (request.getAttribute("vip_grade") != null && request.getAttribute("vip_grade").equals("6")) { %>selected
                ="selected"<%} %> value="6">vip6</option>
                <option<%if (request.getAttribute("vip_grade") != null && request.getAttribute("vip_grade").equals("7")) { %>selected
                ="selected"<%} %> value="7">vip7</option>
            </select>
            账号：<input value="${vip_name }" type="text" name="vip_name">
            <input type="submit" value="查询">
        </li>
    </ul>
</form>


<table>
    <thead>
    <tr>
        <th>
            <input name="" type="checkbox" value="" checked="checked"/>
        </th>
        <th>
            姓名
            <i></i>
        </th>
        <th>
            电话
        </th>
        <th>
            身份证
        </th>
        <th>
            性别
        </th>
        <th>
            地址
        </th>
        <th>
            交易金额
        </th>
        <th>
            等级
        </th>
        <th>
            操作
        </th>

    </tr>
    </thead>
    <tbody>
    <%
        if (vipList.size() > 0 && vipList != null) {
            for (Map<String, Object> vipMap : vipList) {
    %>

    <tr>
        <td>
            <input name="user_id" type="checkbox" value="<%=vipMap.get("VIP_ID") %>"/>
        </td>
        <td>
            <%=vipMap.get("VIP_NAME") %>
        </td>
        <td>
            <%=vipMap.get("VIP_TEL") %>
        </td>
        <td>
            <%=vipMap.get("VIP_CARD") %>
        </td>
        <td>
            <%if (vipMap.get("VIP_SEX").equals(1)) { %>男<%} else { %>女<%} %>
        </td>
        <td>
            <%=vipMap.get("VIP_ADDRESS") %>
        </td>
        <td>
            <%=vipMap.get("ALL_MONEY") %>
        </td>
        <td>
            <%=vipMap.get("GRADE_NAME") %>
        </td>

        <td>
            <a href="VipMdiQueryServlet.do?vip_id=<%=vipMap.get("VIP_ID") %>">修改</a>
            <a href="vipDel.jsp?vip_id=<%=vipMap.get("VIP_ID") %>"> 删除</a>
        </td>
    </tr>
    <%
        }
    } else {
    %>
    <td colspan="10" align="center">
        <font color="red">${message }</font>
    </td>
    <%} %>

    </tbody>
</table>

<jsp:include page="pages.jsp"></jsp:include>

</div>

<script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
</script>

</body>

</html>
