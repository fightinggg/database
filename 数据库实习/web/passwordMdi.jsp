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
        KE.show({
            id: 'content7',
            cssPath: './index.css'
        });
    </script>

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
    <script type="text/javascript">
        function f() {
            var password1 = document.getElementById("password1").value;
            var password2 = document.getElementById("password2").value;
            if (password1 == password2) {
                return true;
            }
            alert("两次密码不一致");
            return false;
        }
    </script>
</head>

<body>


<div>

    <div>
        <span>基本信息</span>
    </div>
    <form onsubmit="return f()" action="PasswordMdiServlet.do">
        <ul>
            <li><label>原密码 </label><input name="password" type="password"/></li>
            <li><label>新密码 </label><input id="password1" name="password1" type="password"/></li>
            <li><label>确认密码</label><input id="password2" name="password2" type="password"/></li>
            <li><font color="red">${message }</font></li>

            <li><label>&nbsp;</label><input name="" type="submit" value="确认保存"/></li>
        </ul>
    </form>

</div>


</body>

</html>