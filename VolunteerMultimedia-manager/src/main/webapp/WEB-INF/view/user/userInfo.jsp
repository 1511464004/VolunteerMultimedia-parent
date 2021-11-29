<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>基本资料</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/statics/layui/css/layui.css"  media="all">
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>你的基本资料</legend>
</fieldset>
<div>
    <table class="layui-table" id="buyerInfo" lay-even="" lay-skin="row" class="mytable">
        <colgroup>
            <col width="150">
            <col width="150">
            <col>
        </colgroup>
        <thead>
        <tr>
            <th width="80">用户名</th>
            <th width="80">${loginUser.userName}</th>
        </tr>
        </thead>
        <tbody>

        <tr>
            <td>真实姓名</td>
            <td>${loginUser.realName}</td>
        </tr>

        <tr>
            <td>手机号码</td>
            <td>${loginUser.phone}</td>
        </tr>
        <tr>
            <td>性别</td>
            <td><c:if test="${loginUser.sex == 0}">男</c:if>
                <c:if test="${loginUser.sex != 0}">女</c:if></td>
        </tr>
        <tr>
            <td>电子邮件</td>
            <td>${loginUser.email}</td>

        </tr>
        <tr>
            <td>手机号码</td>
            <td>${loginUser.phone}</td>
        </tr>
        </tbody>
    </table>
        <div style="text-align:center">
            <button type="button" class="layui-btn layui-btn-normal"><a href="/index.jsp"><font color="white">返回首页</font></a></button>
        </div>


</div>
<script src="/statics/layui/js/layui.js" charset="utf-8"></script>
<script type="text/html" id="barDemo">
</script>
</body>
</html>