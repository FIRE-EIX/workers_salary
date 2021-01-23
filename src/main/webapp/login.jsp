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

    <title>登录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" media="screen" type="text/css"/>
</head>
<script type="text/javascript">
    function check_login() {
        var username = document.getElementById("username");
        var password = document.getElementById("password");
        var type = document.getElementById("type");
    }
</script>
<body>
<form action="check.do" method="post" style="height: 300px">
    <center><p style="color: red">${error}</p></center>
    <center>
        <input type="text"  placeholder="请输入职工号" name="username" id="username" autocomplete="off" style="background-color: #2b65b6;color: white" required/>
        <input name="password"  placeholder="请输入密码" id="password" type="password" style="background-color: #2b65b6" required/>
        <input name="submit" class="btn" type="submit" value="提交" style="color: white"/>
    </center>
</form>
</body>
</html>