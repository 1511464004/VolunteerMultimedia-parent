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
    <title>首页-欢迎来到志愿者服务系统登录</title>
<body>
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
                <a class="fly-case-active" data-type="toTopNav" href="/" style="color:red" >首页</a>
            </li>
            <li data-id="login" class="layui-nav-item layui-hide-xs layui-this">
                <a class="fly-case-active" data-type="toTopNav" <c:if test="${volunteer.id != null}">style="visibility:hidden"</c:if> href="/login.jsp" style="color:red">登入</a>
            </li>
            <li data-id="register" class="layui-nav-item layui-hide-xs ">
                <a class="fly-case-active" data-type="toTopNav" <c:if test="${volunteer.id != null}">style="visibility:hidden"</c:if> href="/register.jsp" style="color:red">注册</a>
            </li>
            <span class="layui-nav-bar" style="left: 560px; top: 55px; width: 0px; opacity: 0;"></span>
        </ul>
    </div>
</div>
<!-- 顶部end -->


<!-- 登录start -->
<div class="layui-container shopdata">
    <div class="layui-card shopdata-intro">

        <div class=" login-content">
            <!--登录 start-->
            <div class="login-bg">
                <div class="login-cont w1200">
                    <div class="form-box">
                        <form class="layui-form" action="/login" method="post">
                            <%-- 携带Token --%>
                            <security:csrfInput/>
                            <legend>志愿者登录</legend>
                            <div class="layui-form-item">
                                <div class="layui-inline iphone">
                                    <div class="layui-input-inline">
                                        <i class="layui-icon layui-icon-user iphone-icon"></i>
                                        <input type="text" name="loginName" id="loginName" lay-verify="required" placeholder="请输入登录用户名" autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-inline iphone">
                                    <div class="layui-input-inline">
                                        <i class="layui-icon layui-icon-password iphone-icon"></i>
                                        <input id="pnum" type="password" name="password" lay-verify="required" placeholder="请输入登录密码" autocomplete="off" class="layui-input">

                                    </div>
                                </div>
                            </div>
                            <div class="layui-form-item login-btn">
                                <div class="layui-input-block">
                                    <button class="layui-btn" style="background-color: #EB0012" >登录</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!--登录 end-->

        </div>
    </div>

</div>
<!-- 登录end -->

<!-- 底部 -->
<div class="fly-footer">
    <p><a href="#">志愿者服务系统(点我回到顶部)</a> 2021.11 © Java2班3组</p>

</div>


<!-- 脚本开始 -->
<script src="${pageContext.request.contextPath}/statics/layui/dist/layui.js"></script>
<script>
    layui.use(["form","element","carousel",'jquery','layer'], function () {
        var form = layui.form,
            layer = layui.layer,
            element = layui.element,
            carousel = layui.carousel,
            $ = layui.jquery;

        //渲染轮播图
        carousel.render({
            elem: '#LAY-store-banner'
            ,width: '100%' //设置容器宽度
            ,height: '460' //设置容器高度
            ,arrow: 'always' //始终显示箭头
        });


    });
</script>
<!-- 脚本结束 -->
<ul class="layui-fixbar">
    <li class="layui-icon layui-fixbar-top" lay-type="top" style=""></li>
</ul>
<div class="layui-layer-move"></div>

</body>
</html>