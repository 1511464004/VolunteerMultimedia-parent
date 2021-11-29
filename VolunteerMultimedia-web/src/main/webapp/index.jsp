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
    <title>首页-欢迎来到志愿者服务系统</title>
    <style type="text/css">
        .layui-bod{
            float:right;
            width:1920px;
            border:0px solid #999;
            margin: 0px;
        }
    </style>
</head>
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
            <li data-id="index" class="layui-nav-item layui-hide-xs layui-this">
                <a class="fly-case-active" data-type="toTopNav" href="/" style="color:red" >首页</a>
            </li>
            <c:if test="${volunteer.id == null}">
<%--                style="visibility:hidden"--%>
            <li data-id="login" class="layui-nav-item layui-hide-xs ">
                <a class="fly-case-active" data-type="toTopNav"  href="/login.jsp" style="color:red">登入</a>
            </li>
            <li data-id="register" class="layui-nav-item layui-hide-xs ">
                <a class="fly-case-active" data-type="toTopNav" href="/register.jsp" style="color:red">注册</a>
            </li>
            </c:if>

            <c:if test="${volunteer.id != null}">
            <li data-id="login" class="layui-nav-item layui-hide-xs">
                    <a class="fly-case-active" data-type="toTopNav"  href="/web/toUploadVideo.html" style="color:red">上传视频</a>
            </li>
            <li data-id="register" class="layui-nav-item layui-hide-xs ">
                <a class="fly-case-active" data-type="toTopNav" href="/volunteer/toUpdate.html?loginName=${volunteer.loginName}" style="color:red">修改个人信息</a>
            </li>
            <li data-id="register" class="layui-nav-item layui-hide-xs ">
                <p style="color:red">${volunteer.loginName} 志愿者编号: ${volunteer.idCard}</p>
            </li>
            <li data-id="register" class="layui-nav-item layui-hide-xs ">
                <a class="fly-case-active" data-type="toTopNav"  href="/logout" style="color:red">退出登录</a>
            </li>
            </c:if>

            <span class="layui-nav-bar" style="left: 560px; top: 55px; width: 0px; opacity: 0;"></span>
        </ul>
    </div>
</div>
<!-- 顶部end -->
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
<ul class="layui-nav" style="justify-content: center; background-color: white">
    <li  class="layui-nav-item layui-this" style="margin-left: 450px;">
        <a class="fly-case-active" data-type="toTopNav" href="civilizationHuaDi.jsp" target="volunteerBody" style="color:red" >文明华迪</a>
    </li>
    <li  class="layui-nav-item">
        <a href="javascript:;" data-type="toTopNav" style="color:red" target="volunteerBody">华迪志愿者APP</a>
            <dl class="layui-nav-child" name="volunteerApp">
<%--                <dd><a href="/web/toProjectIntroduction.html" target="volunteerBody" style="color:red">项目介绍</a></dd>--%>
<%--                <dd><a href="/web/toNewsColumn.html" target="volunteerBody" style="color:red">新闻专栏</a></dd>--%>
<%--                <dd><a href="/web/toVolunteerEnlist.html" target="volunteerBody" style="color:red">志愿招募</a></dd>--%>
<%--                <dd><a href="/web/toActiveMap.html" target="volunteerBody" style="color:red">活动地图</a></dd>--%>
            </dl>
    </li>

    <li  class="layui-nav-item">
        <a class="fly-case-active" data-type="toTopNav" href="javascript:;" target="volunteerBody" style="color:red">华迪志愿者网</a>
        <dl class="layui-nav-child" name="volunteerNetwork">
<%--            <dd><a href="/web/toProjectIntroduction.html" target="volunteerBody" style="color:red">项目介绍</a></dd>--%>
<%--            <dd><a href="/web/toNewsColumn.html" target="volunteerBody" style="color:red">新闻专栏</a></dd>--%>
<%--            <dd><a href="/web/toPromotionalVideo.html" target="volunteerBody" style="color:red">宣传视频</a></dd>--%>
<%--            <dd><a href="/web/toThematicActivities.html" target="volunteerBody" style="color:red">专题活动</a></dd>--%>
        </dl>
    </li>
    <li  class="layui-nav-item">
        <a class="fly-case-active" data-type="toTopNav" href="javascript:;" target="volunteerBody" style="color:red">雷锋热线</a>
        <dl class="layui-nav-child" name="leiFengHotline">
<%--            <dd><a href="/web/toProjectIntroduction.html" target="volunteerBody" style="color:red">项目介绍</a></dd>--%>
<%--            <dd><a href="/web/toNewsColumn.html" target="volunteerBody" style="color:red">新闻专栏</a></dd>--%>
<%--            <dd><a href="/web/toSeekHelp.html" target="volunteerBody" style="color:red">我要求助</a></dd>--%>
<%--            <dd><a href="/web/toAssist.html" target="volunteerBody" style="color:red">我要帮扶</a></dd>--%>
<%--            <dd><a href="/web/toBrandActivity.html" target="volunteerBody" style="color:red">品牌活动</a></dd>--%>
<%--            <dd><a href="/web/toPromotionalVideo.html" target="volunteerBody" style="color:red">宣传视频</a></dd>--%>
        </dl>
    </li>
    <li  class="layui-nav-item">
        <a class="fly-case-active" data-type="toTopNav" href="javascript:;" target="volunteerBody" style="color:red">公益活动</a>
        <dl class="layui-nav-child" name="publicBenefitActivities">
<%--            <dd><a href="/web/toWheelchairFly.html" target="volunteerBody" style="color:red">让轮椅飞</a></dd>--%>
<%--            <dd><a href="/web/toMasterLesson.html" target="volunteerBody" style="color:red">名师一堂课</a></dd>--%>
<%--            <dd><a href="/web/toBedtimeStories.html" target="volunteerBody" style="color:red">睡前讲故事</a></dd>--%>
        </dl>
    </li>
    <li  class="layui-nav-item">
        <a class="fly-case-active" data-type="toTopNav" href="javascript:;" target="volunteerBody" style="color:red">公益广告</a>
        <dl class="layui-nav-child" name="publicServiceAd">
<%--            <dd><a href="/web/toOurValues.html" target="volunteerBody" style="color:red">图说我们的价值观</a></dd>--%>
<%--            <dd><a href="/web/toNewTrends.html" target="volunteerBody" style="color:red">“讲文明 树新风”公益广告</a></dd>--%>
        </dl>
    </li>

<%--    <span class="layui-nav-bar" style="left: 560px; top: 55px; width: 0px; opacity: 0;"></span>--%>
</ul>
</div>
<!-- 主体内容 -->
<div class="layui-bod" id="LAY_app_body">
    <div class="layadmin-tabsbody-item layui-show">
        <iframe frameborder="0" name="volunteerBody" class="laybuyer-iframe" src="civilizationHuaDi.jsp" style="width: 100%;height: 1080px; margin-left: 200px"></iframe>
    </div>


</div>

<!-- 底部 -->
<div class="fly-footer">
    <p><a href="#">志愿者服务系统(点我回到顶部)</a> 2021.11 © Java2班3组</p>
</div>



    <!-- 脚本开始 -->
    <script src="${pageContext.request.contextPath}/statics/layui/dist/layui.js"></script>
    <script>
        layui.use(["form", "element", "carousel"], function () {
            var form = layui.form,
                layer = layui.layer,
                element = layui.element,
                carousel = layui.carousel,
                $ = layui.$;

            //发送请求查询志愿者APP列表(将数据追加到志愿者APP菜单列表中)
            $.get("/volunteerApp/findVolunteerAppList",function (result) {
                var html = "";
                for (let i = 0; i < result.length; i++) {
                    html += "<dd><a href='"+result[i].href+"' target='volunteerBody' style='color:red'>"+result[i].name+"</a></dd>";
                }
                //将网页代码追加到菜单列表中
                $("[name='volunteerApp']").append(html);
                //重新渲染dl列表
                form.render("dl")
            },"json");

            //发送请求查询志愿者网列表(将数据追加到志愿者网菜单列表中)
            $.get("/volunteerNetwork/findVolunteerNetworkList",function (result) {
                var html = "";
                for (let i = 0; i < result.length; i++) {
                    html += "<dd><a href='"+result[i].href+"' target='volunteerBody' style='color:red'>"+result[i].name+"</a></dd>";
                }
                //将网页代码追加到菜单列表中
                $("[name='volunteerNetwork']").append(html);
                //重新渲染dl列表
                form.render("dl")
            },"json");

            //发送请求查询雷锋热线列表(将数据追加到雷锋热线列表中)
            $.get("/leiFengHotline/findLeiFengHotlineList",function (result) {
                var html = "";
                for (let i = 0; i < result.length; i++) {
                    html += "<dd><a href='"+result[i].href+"' target='volunteerBody' style='color:red'>"+result[i].name+"</a></dd>";
                }
                //将网页代码追加到菜单列表中
                $("[name='leiFengHotline']").append(html);
                //重新渲染dl列表
                form.render("dl")
            },"json");

            //发送请求查询公益活动列表(将数据追加到公益活动列表中)
            $.get("/publicBenefitActivities/findPublicBenefitActivitiesList",function (result) {
                var html = "";
                for (let i = 0; i < result.length; i++) {
                    html += "<dd><a href='"+result[i].href+"' target='volunteerBody' style='color:red'>"+result[i].name+"</a></dd>";
                }
                //将网页代码追加到菜单列表中
                $("[name='publicBenefitActivities']").append(html);
                //重新渲染dl列表
                form.render("dl")
            },"json");

            //发送请求查询公益广告列表(将数据追加到公益广告列表中)
            $.get("/publicServiceAd/findPublicServiceAdList",function (result) {
                var html = "";
                for (let i = 0; i < result.length; i++) {
                    html += "<dd><a href='"+result[i].href+"' target='volunteerBody' style='color:red'>"+result[i].name+"</a></dd>";
                }
                //将网页代码追加到菜单列表中
                $("[name='publicServiceAd']").append(html);
                //重新渲染dl列表
                form.render("dl")
            },"json");


        });
    </script>

    <!-- 脚本结束 -->
    <ul class="layui-fixbar">
        <li class="layui-icon layui-fixbar-top" lay-type="top" style=""></li>
    </ul>
    <div class="layui-layer-move"></div>

</body>
</html>
