<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" class="fly-html-layui fly-html-store">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/layui/dist/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/global.css" charset="utf-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/global(1).css" charset="utf-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/store.css" charset="utf-8">
    <link rel="icon" href="${pageContext.request.contextPath}/statics/images/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>修改个人信息</title>
    <style>
        span{
            color:red;
        }
    </style>
</head>
<body class="layui-view-body">

<!-- 顶部start -->
<div class="layui-header header header-store" style="background-color:#ffffff;">
    <div class="layui-container">
        <div style="position: absolute">
            <a class="logo" href="/index">
                <img src="${pageContext.request.contextPath}/statics/images/logo.jpg" alt="layui" style="width: 240px;height: 40px">
            </a>
        </div>
        <div class="layui-form component" lay-filter="LAY-site-header-component"></div>
        <ul class="layui-nav" id="layui-nav-userinfo">
            <li data-id="index" class="layui-nav-item layui-hide-xs">
                <a class="fly-case-active" data-type="toTopNav" href="/index.html?loginName=${volunteer.loginName}" style="color:red" >首页</a>
            </li>
            <li data-id="register" class="layui-nav-item layui-hide-xs layui-this">
                <a class="fly-case-active" data-type="toTopNav" href="/volunteer/toUpdate.html?loginName=${volunteer.loginName}" style="color:red">修改个人信息</a>
            </li>
            <li data-id="register" class="layui-nav-item layui-hide-xs ">
                <p style="color:red">${volunteer.loginName} 志愿者编号: ${volunteer.idCard}</p>
            </li>
            <li data-id="register" class="layui-nav-item layui-hide-xs ">
                <a class="fly-case-active" data-type="toTopNav"href="/logout" style="color:red">退出登录</a>
            </li>
            <span class="layui-nav-bar" style="left: 560px; top: 55px; width: 0px; opacity: 0;"></span>
        </ul>
    </div>
</div>
<!-- 顶部end -->

<div class="layui-content">
    <div class="layui-row">
        <div class="layui-card">
            <div class="layui-card-header">修改个人信息
                <span style= "text-align:center" class="red">${msg}</span>
            </div>
            <form class="layui-form layui-card-body" action="/volunteer/update" method="POST">
                <%-- 携带Token --%>
                <security:csrfInput/>
                <input name="id" value="${volunteer.id}" hidden>
                <div class="layui-form-item">
                    <label class="layui-form-label">用户名</label>
                    <div class="layui-input-inline">
                        <input type="text" name="loginName" lay-reqText="请输入用户名" required lay-verify="required" placeholder="请输入用户名"
                               value="${volunteer.loginName}" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">真实姓名</label>
                    <div class="layui-input-inline">
                        <input type="text" name="realName" required lay-verify="required" placeholder="请输入真实姓名"
                               value="${volunteer.realName}" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                     <label class="layui-form-label">用户性别</label>
                     <div class="layui-input-inline">
                         <select name="sex" title="性别" autocomplete="off" class="layui-input">
                              <option value="">请选择性别</option>
                              <option value="0" <c:if test="${volunteer.sex != 1}">selected</c:if> >男</option>
                              <option value="1" <c:if test="${volunteer.sex == 1}">selected</c:if> >女</option>
                         </select>
                     </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">手机号</label>
                    <div class="layui-input-inline">
                        <input type="text" name="phone" required lay-verify="required|phone" placeholder="请输入手机号"
                               value="${volunteer.phone}" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">电子邮箱</label>
                    <div class="layui-input-inline">
                        <input type="text" name="email" required lay-verifty="required|email" placeholder="请输入电子邮箱"
                               value="${volunteer.email}" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn layui-btn-blue" lay-submit lay-filter="formDemo">立即提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>

                </div>

            </form>

            <div class="layui-card-header">修改个人密码
                <span style= "text-align:center" class="red">${msgPassword}</span>
            </div>
            <form class="layui-form layui-card-body" action="/volunteer/updatePassword" method="POST">
                <%-- 携带Token --%>
                <security:csrfInput/>
                <input name="id" value="${volunteer.id}" hidden>
                <div class="layui-form-item">
                    <label class="layui-form-label">密码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="password" lay-reqText="请输入密码" required lay-verify="required" placeholder="请输入新密码"
                               value="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn layui-btn-blue" lay-submit lay-filter="formDemo">立即提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/statics/layui/assets/layui.all.js"></script>
<script>
    layui.use(["form", "element", "carousel",'jquery'], function () {
        var form = layui.form,
            layer = layui.layer,
            element = layui.element,
            $ = layui.jquery;
    });
</script>
</body>
</html>