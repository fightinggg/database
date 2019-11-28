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
    <script type="text/javascript">
        function f() {
            window.top.location.href = "login.jsp";
        }
        setTimeout(f, 1);

    </script>
</head>

<body>

<div >
    <div>
        <span>基本信息</span>
    </div>
    <form onsubmit="return f()" action=PasswordMdiServlet.do">
        <ul >
            <li><font color="red">修改成功</font></li>
            <li>两秒后跳转</li>
        </ul>
    </form>
</div>


</body>

</html>