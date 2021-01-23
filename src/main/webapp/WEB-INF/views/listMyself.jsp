<%--
  Created by IntelliJ IDEA.
  User: EIX
  Date: 2020/12/15
  Time: 16:18
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
    <script type="text/javascript">

        //参数一：字符串类型的事件，多个事件之间通过空格分隔，事件名称符合jquery事件名写法
        //参数二：处理函数
        $("#btn-add").bind("click dblclick", function () {
            //将该按失效
            $("#btn-add").linkbutton("disable");
        });
    </script>
</head>
<body>
<br>
<center>
    <div>
        <form action="find.do" method="post">
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
        <th field="tax" width="100">个人所得税</th>
        <th field="month" width="100">月份</th>
        <th field="sf" width="100">实发工资</th>
        <th field="bj" width="150">编辑</th>
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
<%--    <center><a href="${pageContext.request.contextPath}/Worker/add.do">添加职工</a></center>--%>

<%--<div class="row">
    <div class="col-md-6">
        第${pageInfo.pageNum}页，共${pageInfo.pages}页，共${pageInfo.total}条记录
    </div>
    <div class="col-md-6 offset-md-4">
        <nav aria-label="Page navigation example">
            <ul class="pagination pagination-sm">
                <li class="page-item"><a class="page-link" href="list.do?page=1">首页</a></li>
                <c:if test="${pageInfo.hasPreviousPage}">
                    <li class="page-item"><a class="page-link"
                                             href="list.do?page=${pageInfo.pageNum-1}">上一页</a></li>
                </c:if>
                <c:forEach items="${pageInfo.navigatepageNums}" var="page">
                    <c:if test="${page==pageInfo.pageNum}">
                        <li class="page-item active"><a class="page-link" href="#">${page}</a></li>
                    </c:if>
                    <c:if test="${page!=pageInfo.pageNum}">
                        <li class="page-item"><a class="page-link"
                                                 href="list.do?page=${page}">${page}</a></li>
                    </c:if>
                </c:forEach>
                <c:if test="${pageInfo.hasNextPage}">
                    <li class="page-item"><a class="page-link"
                                             href="list.do?page=${pageInfo.pageNum+1}">下一页</a></li>
                </c:if>
                <li class="page-item"><a class="page-link" href="list.do?page=${pageInfo.pages}">末页</a>
                </li>
            </ul>
        </nav>
    </div>
</div>--%>
<script type="text/javascript">
    $('#name_add_but30').linkbutton({
        onClick: function () {
            addFile30();
        }
    });
    $('#printinfo').linkbutton({
        onClick: function () {
            alert("请连接打印机！");
        }
    });
    $('#view').linkbutton({
        onClick: function () {
            alert("该功能正在开发中，敬请期待！");
        }
    });
    $('#btn0').linkbutton({
        onClick: function () {
            alert("该功能正在开发中，敬请期待！");
        }
    });

    /**
     * 打开选项卡
     *         判断选项卡是否存在   exists 表明指定的面板是否存在，'which'参数可以是选项卡面板的标题或索引。
     *         不存在 新建选项卡
     *         如果存在 选中当前选项卡 select 选择一个选项卡面板，'which'参数可以是选项卡面板的标题或者索引。
     * @param {Object} title
     */
    function openTabs(title, url) {
        console.log(title);
        // 判断选项卡是否存在
        var exists = $("#tt").tabs("exists", title);
        if (exists) { //如果返回true，说明选项卡存在，选中当前选项卡
            $("#tt").tabs("select", title);
        } else { //如果返回false，说明选项卡不存在，新建选项卡
            $('#tt').tabs('add', {
                title: title,
                selected: true,
                closable: true,
                iconCls: 'icon-edit',
                href: url
            });
        }
    }

    function addFile30() {
        $('#win30').dialog({
            title: '修改密码',
            width: 450,
            height: 260,
            top: 150,
            closed: false,//显示对话框
            cache: false,
            modal: true
        });
    }

    function checkpassword() {
        var password = document.getElementById("pw").value;
        var repassword = document.getElementById("repw").value;

        if (password == repassword) {
            document.getElementById("tishi").innerHTML = "<br><font color='green'>两次密码输入一致</font>";
            document.getElementById("submit1").disabled = false;

        } else {
            document.getElementById("tishi").innerHTML = "<br><font color='red'>两次输入密码不一致!</font>";
            document.getElementById("submit1").disabled = true;
        }
    }

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

