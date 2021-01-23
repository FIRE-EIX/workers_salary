<%--
  Created by IntelliJ IDEA.
  User: EIX
  Date: 2020/11/17
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="UTF-8" contentType="text/html; ISO-8859-1; utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <meta charset="utf-8">
    <title>显示职工</title>
    <script src="${pageContext.request.contextPath}/easyui/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <link href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/easyui/themes/icon.css" rel="stylesheet" type="text/css">
</head>
<body>
<br>
<center>
    <div>
        <form action="find.do" method="post" autocomplete="off">
            <select class="easyui-combobox" name="searchCol" id="searchCol" style="width: 100px">
                <option value="number">工号</option>
                <option value="name">姓名</option>
                <option value="month">月份</option>
            </select>
            <input type="text" class="textbox" name="searchValue"
                   style="width:500px;height: 30px;" id="searchValue"
                   placeholder="请输入对应的搜索关键词">
            <button type="submit" class="easyui-linkbutton c6">查询</button>
            <a href="add.do">
                <button type="button" class="easyui-linkbutton c6">添加</button>
            </a>
        </form>
    </div>
</center>
<table class="easyui-datagrid" fitColumns="true">
    <thead>
    <tr>
        <th field="num" width="100">工号</th>
        <th field="name" width="100">姓名</th>
        <th field="gw" width="100">岗位工资</th>
        <th field="xj" width="100">薪级工资</th>
        <th field="jt" width="100">职务津贴</th>
        <th field="jx" width="100">绩效工资</th>
        <th field="yf" width="100">应发工资</th>
        <th field="tax" width="120">个人所得税</th>
        <th field="month" width="100">月份</th>
        <th field="sf" width="100">实发工资</th>
        <th field="bj" width="180">编辑</th>
    </tr>
    <c:forEach items="${workers}" var="workers">
        <tr>
            <th field="num" width="100">${workers.number}</th>
            <th field="name" width="100">${workers.name}</th>
            <th field="gw" width="100">${workers.postSalary}</th>
            <th field="xj" width="100">${workers.salarySalary}</th>
            <th field="jt" width="100">${workers.jobAllowance}</th>
            <th field="jx" width="100">${workers.meritSalary}</th>
            <th field="yf" width="100">${workers.wagesPayable}</th>
            <th field="tax" width="100">${workers.individualTax}</th>
            <th field="tax" width="100">${workers.month}</th>
            <th field="sf" width="100">${workers.netSalary}</th>
            <th field="bj" width="150">
                <a href="${pageContext.request.contextPath}/Worker/delete.do?number=${workers.number}&month=${workers.month}"
                   class="easyui-linkbutton" iconCls="icon-cancel" onclick=" return del()">删除</a>
                <a href="${pageContext.request.contextPath}/Worker/toUpdate.do?number=${workers.number}&month=${workers.month}"
                   class="easyui-linkbutton" iconCls="icon-edit">修改</a>
            </th>
        </tr>
    </c:forEach>
    </thead>
</table>
<script type="text/javascript">
    function del() {
        var fdel = window.confirm("是否确定删除？ ");
        if (fdel) {
            return true;
        } else {
            return false;
        }
    }
</script>
</body>
</html>
