<%--
  Created by IntelliJ IDEA.
  User: EIX
  Date: 2020/12/15
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="UTF-8" contentType="text/html; ISO-8859-1; utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8">
    <title>添加职工工资记录</title>
    <script src="${pageContext.request.contextPath}/easyui/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <link href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/easyui/themes/icon.css" rel="stylesheet" type="text/css">
</head>
<body>
<br>

<form:form id="form1" name="form1" action="updatePassword.do" method="post" class="form-control" enctype="multipart/form-data">
    <center>
        <div class="fitem">
            <table>
                <tr>
                    <td>旧密码：</td>
                    <td><input id="oldPwd" name="oldPwd" placeholder=" 请输入旧密码" class="textbox" style="width: 350px;height: 40px;"
                               autocomplete="off" required class="form-control" type="password"><br>
                    </td>
                </tr>
                <tr>
                    <td>新密码：</td>
                    <td><input id="newPwd" name="newPwd" placeholder=" 请输入新密码" class="textbox" style="width: 350px;height: 40px;"
                               autocomplete="off" required class="form-control" type="password"><br>
                    </td>
                </tr>
                <tr>
                    <td>确认密码：</td>
                    <td><input id="confimPwd" name="confimPwd" placeholder=" 请确认密码" class="textbox" style="width: 350px;height: 40px;"
                               autocomplete="off" required type="password"><br></td>
                </tr>
            </table>
        </div>
    </center>
    <br/>
    <center><input id="submit0" class="easyui-linkbutton c6" style="width: 150px;height: 30px;" value="确认修改" type="submit" onclick="ValPwd()"></center>
</form:form>
<%
    HttpSession session1 = request.getSession();
    String pwd = session1.getAttribute("pwd").toString();
%>
<script type="text/javascript">
    function ValPwd(){
        var a = document.getElementById("newPwd").value;
        console.log(a);
        var b = document.getElementById("confimPwd").value;
        console.log(b);
        var c = document.getElementById("oldPwd").value;
        console.log(c);
        var d = <%= pwd%>
        console.log(d);
        if(d!=c){
            alert("旧密码有误，请重新输入！");
            document.getElementById("submit0").disabled = true;
            location.reload();
        }
        if(a!=""&&a!=b){
            alert("两次密码不一致！");
            document.getElementById("submit0").disabled = true;
            location.reload();
        }
    }
</script>
</body>
</html>