<%--
  Created by IntelliJ IDEA.
  User: EIX
  Date: 2020/11/23
  Time: 8:15
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8">
    <title>修改职工信息</title>
    <script src="${pageContext.request.contextPath}/easyui/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <link href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/easyui/themes/icon.css" rel="stylesheet" type="text/css">
</head>
<body>
<form:form action="update.do" method="post" class="form-control" enctype="multipart/form-data">
    <br/>
    <center>
        <div class="fitem">
            <table>
                <tr>
                    <td>工号：</td>
                    <td><input readonly="readonly" name="number" placeholder=" 请输入要新增的工号" class="textbox" style="width: 350px;height: 40px;"
                               autocomplete="off" required class="form-control" type="text"
                               value="${workersSalary.number}"><br>
                    </td>
                </tr>
                <tr>
                    <td>姓名：</td>
                    <td><input name="name" placeholder=" 请输入修改后的姓名" class="textbox" style="width: 350px;height: 40px;"
                               autocomplete="off" required type="text" value="${workersSalary.name}"><br></td>
                </tr>
                <tr>
                    <td>岗位工资：</td>
                    <td><input name="postSalary" placeholder=" 请输入修改后的岗位工资" class="textbox" style="width: 350px;height: 40px;"
                               autocomplete="off" required type="text" value="${workersSalary.postSalary}"><br></td>
                </tr>
                <tr>
                    <td>薪级工资：</td>
                    <td><input name="salarySalary" placeholder=" 请输入修改后的薪级工资" class="textbox"
                               style="width: 350px;height: 40px;"
                               autocomplete="off" required type="text" value="${workersSalary.salarySalary}"><br></td>
                </tr>
                <tr>
                    <td>职务津贴：</td>
                    <td><input name="jobAllowance" placeholder=" 请输入修改后的职务津贴" class="textbox"
                               style="width: 350px;height: 40px;"
                               autocomplete="off" required type="text" value="${workersSalary.jobAllowance}"><br></td>
                </tr>
                <tr>
                    <td>绩效工资：</td>
                    <td><input name="meritSalary" placeholder=" 请输入修改后的绩效工资" class="textbox"
                               style="width: 350px;height: 40px;"
                               autocomplete="off" required type="text" value="${workersSalary.meritSalary}"></td>
                </tr>
                <tr>
                    <td>月份：</td>
                    <td><input readonly="readonly" name="month" placeholder=" 请输入修改后的月份" class="textbox"
                               style="width: 350px;height: 40px;"
                               autocomplete="off" required type="text" value="${workersSalary.month}"></td>
                </tr>
            </table>
        </div>
    </center><br>
    <center>
        <div class="form-group">
            <input class="easyui-linkbutton c6" style="width: 150px;height: 30px;" value="修改" type="submit">
        </div>
    </center>
</form:form>
</body>
<script type="text/javascript">
    $('.form_date').datetimepicker({
        language: 'zh-CN',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0
    });
</script>
</html>
