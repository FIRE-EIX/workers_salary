<%--
  Created by IntelliJ IDEA.
  User: EIX
  Date: 2020/11/29
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <meta charset="utf-8">
    <title>职工工资管理系统</title>
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
    <style type="text/css">
        .weather {
            border: 1px solid #95B8E7;
            background-color: #E0ECFF;
            height: 88px;
            padding-top: 10px;
            padding-left: 20%;
        }
    </style>
</head>
<body class="easyui-layout">


<!--上面 logo start -->
<div data-options="region:'north'" style="height:80px;width: 100%;" border=false>
    <!--<div data-options="region:'north',split:true" style="height:100px;" border=false>-->
    <img src="${pageContext.request.contextPath}/img/toplogo.png" style="height:74px;width: 400px;"/>

    <div style="padding-top:40px;float: right;width:455px">
        欢迎您!
        <c:if test="${'cw'.equals(username.substring(0,2))||'gl'.equals(username.substring(0,2))}">
            <a href="myinf.do" style="text-decoration: none;">${employeeName}</a>
        </c:if>
        <a href="logout.do" class="easyui-linkbutton"
           iconCls="icon-clear">退出登录</a>
        <a href="javascript:location.reload();" class="easyui-linkbutton" iconCls="icon-reload">刷新页面</a>
        <a id="name_add_but30" href="#" class="easyui-linkbutton" iconCls="icon-edit">修改密码</a>
        <%--        <a id="printinfo" href="#" class="easyui-linkbutton" iconCls="icon-print">打印信息</a>--%>
        <!--        <a href="#" class="easyui-linkbutton">text button</a>-->
    </div>
</div>
<!--上面 logo end -->

<!--底部 版权信息栏-->
<div data-options="region:'south',split:true" style="height:70px;text-align: center;font-size: 15px;color: gray;">
    地址：广西壮族自治区南宁市西乡塘区大学东路188号 咨询电话：18648869609
    <br/>
    Copyright 2000-2099 广西民族大学
    <br/>
    谢延炎 版权所有
</div>

<div data-options="region:'west',title:'功能导航栏',split:true" border=false style="width:200px;">
    <div id="aa" class="easyui-accordion" fit=true animate=true>
        <div title="员工管理" data-options="iconCls:'icon-tip'" style="overflow:auto;padding:10px;">
            <%--<a href="#" class="easyui-linkbutton" plain=true iconCls="icon-edit" onclick="openTabs('员工信息','${pageContext.request.contextPath}/Worker/list.do')">员工信息</a>
            <br>
            <a href="#" class="easyui-linkbutton" plain=true iconCls="icon-edit" onclick="openTabs('添加员工','${pageContext.request.contextPath}/Worker/add.do')">添加员工</a>
            <br>--%>
            <c:if test="${'cw'.equals(username.substring(0,2))||'gl'.equals(username.substring(0,2))}">
                <a href="#" class="easyui-linkbutton" plain=true iconCls="icon-edit"
                   onclick="openTabs('员工信息','list.do')">员工信息</a>
                <br>
                <a href="#" class="easyui-linkbutton" plain=true iconCls="icon-edit"
                   onclick="openTabs('添加员工','add.do')">添加员工</a>
                <br>
            </c:if>
            <a href="#" class="easyui-linkbutton" plain=true iconCls="icon-edit"
               onclick="openTabs('修改密码','toUpdatePassword.do')">修改密码</a>
            <%--<a href="list.do" class="easyui-linkbutton" plain=true iconCls="icon-edit">员工信息</a>
            <br>
            <a href="add.do" class="easyui-linkbutton" plain=true iconCls="icon-edit">添加员工</a>
            <br>--%>
        </div>
    </div>
</div>

<div data-options="region:'center'" style="padding:0px;" border=false>
    <div id="tt" class="easyui-tabs" fit=true>
        <div title="欢迎页" style="padding:20px;">
            <div class="easyui-layout" style="width:70%;height:100%;float: left;">
                <div id="content" region="center" title="公告栏" style="padding:5px;">
                    <!--添加公告按钮-->
                    <a id="btn0" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'"
                       style="float: right">添加公告</a>
                </div>
            </div>
            <div style="height: 100%;width: 28%;float: left;margin-left: 5px;">
                <div class="weather">
                    <iframe width="100%" scrolling="no" height="100%" frameborder="0" allowtransparency="true"
                            src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=1">
                    </iframe>
                </div>
                <div id="cal" class="easyui-calendar" style="width:100%;height:70%;margin-top: 5px;"></div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">

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
        var exists = $('#tt').tabs('exists', title);
        if (exists) { //如果返回true，说明选项卡存在，选中当前选项卡
            $('#tt').tabs('select', title);
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

