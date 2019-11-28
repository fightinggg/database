<%@page import="java.util.List" %>
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
<%
    Map<String, Object> vipMap = (Map<String, Object>) request.getAttribute("vipMap");
    List<Map<String, Object>> gradeList = (List<Map<String, Object>>) request.getAttribute("gradeList");
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
<form action="VipMdiServlet.do" method="post">
    <input type="hidden" name="vip_id" value="<%=vipMap.get("VIP_ID")%>">
    <ul>
        <li><label>姓名</label><input name="vip_name" value="<%=vipMap.get("VIP_NAME") %>" type="text"/><i>请输入汉字</i></li>
        <li><label>电话</label><input name="vip_tel" value="<%=vipMap.get("VI_TEL") %>" type="text"/><i>请输入电话</i></li>
        <li><label>地址</label><input value="<%=vipMap.get("VIP_ADDRESS") %>" name="vip_address" type="text"/><i>请输入地址</i>
        </li>
        <li><label>性别</label>
            <cite>
                <input name="vip_sex" type="radio" <%if(vipMap.get("VIP_SEX").equals(1)){ %>checked="checked"<%} %>
                       value="1"/>男&nbsp;&nbsp;&nbsp;&nbsp;
                <input name="vip_sex" type="radio" <%if(vipMap.get("VIP_SEX").equals(-1)){ %>checked="checked"<%} %>
                       value="2"/>女
            </cite>
        </li>
        <li><label>身份证</label><input value="<%=vipMap.get("VIP_CARD") %>" name="vip_card" type="text"/><i>请输入身份证</i>
        </li>
        <li><label>权限</label>
            <select name="vip_grade">
                <%for (Map<String, Object> gradeMap : gradeList) {%>
                <option <%if(vipMap.get("VIP_GRADE").toString().equals(gradeMap.get("GRADE_ID").toString())){ %>selected="selected"<%} %>
                        value="<%=gradeMap.get("GRADE_ID")%>"><%=gradeMap.get("GRADE_NAME")%>
                </option>
                <%} %>
            </select>
        <li><label>&nbsp;</label><input name="" type="submit" value="确认保存"/></li>
    </ul>
</form>


</body>

</html>