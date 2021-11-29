<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en" class="fly-html-layui fly-html-store">
<head>
    <!-- 获取CSRF Token -->
    <meta name="_csrf" content="${_csrf.token}"/>
    <!-- 获取CSRF头，默认为X-CSRF-TOKEN -->
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/layui/dist/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/global.css" charset="utf-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/global(1).css" charset="utf-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/store.css" charset="utf-8">
    <link rel="icon" href="${pageContext.request.contextPath}/statics/images/favicon.ico">
    <title>申请活动</title>
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
            <li data-id="index" class="layui-nav-item layui-hide-xs">
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
                <li data-id="login" class="layui-nav-item layui-hide-xs layui-this">
                    <a class="fly-case-active" data-type="toTopNav"  href="/volunteerApp/toAdda/toAdda.html?a_id=${vActivity.id}&v_id=${volunteer.id}" style="color:red">活动申请</a>
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

<!-- 活动详情start -->
<div class="layui-container shopdata">
    <div class="layui-card shopdata-intro">
        <div class="layui-card-header">
				<span class="layui-breadcrumb layui-hide-xs" style="visibility: visible;">
				<a href="/index">首页</a><span lay-separator="">/</span>
						           <a href="JavaScript:void(0);" id="floorNumber">活动</a><span lay-separator="">/</span>
						 <a><cite>活动申请详情</cite></a> </span>

        </div>
        <div class="layui-card-body layui-row">
            <div class="layui-col-md6">
                <div class="intro-img photos"> <img id="coverImg" src="/statics/images/${vActivity.img}" alt="活动封面" layer-index="0"> </div>
            </div>
            <div class="layui-col-md6">
                <div class="intro-txt">
                    <h1 class="title" id="name">${vActivity.name}</h1>
                    <input type="hidden" id="id" name="id" value="1">
                    <div class="store-attrs">
                        <div class="summary">
                            <p class="reference"><span>活动名称</span> <span >${vActivity.name}</span></p>
                            <p class="reference"><span><a href="${vActivity.href}">活动页面</a></span></p>
                            <p class="reference"><span><a href="${vActivity.map}">活动地址</a></span></p>
                            <p class="activity"><span>状&#12288;态</span>
                                <strong class="status">
                                    <c:if test="${aCheckIn.status == null}"><span>可报名</span></c:if>
                                    <c:if test="${aCheckIn.status == 1}"><span>已报名</span></c:if>
                                    <c:if test="${aCheckIn.status == 2}"><span>已通过</span></c:if>
                                </strong>
                            </p>
                        </div>
                    </div>
                    <p class="store-detail-active" id="shopEvent">
                        <c:if test="${aCheckIn.status == null}">
                            <a href="javascript:;" id="bookRoomBtn" data-type="memberReserveHotel" class="store-bg-orange fly-memberReserveHotel">
                                <i class="layui-icon layui-icon-tips" style="color: red"></i>立即报名
                            </a>
                        </c:if>
                        <c:if test="${aCheckIn.status != null}">
                            <a href="javascript:;"  data-type="memberReserveHotel" class="fly-memberReserveHotel"
                               style="background-color: #d3d3d3;cursor: not-allowed;">
                                <i class="layui-icon layui-icon-tips" style="color: red"></i>立即报名
                            </a>
                        </c:if>
                    </p>
                </div>
            </div>
        </div>
    </div>

</div>
<!-- 房间详情end -->


<%-- 活动报名 --%>
<div style="display: none;padding: 5px" id="orderRoomWindow">
    <form class="layui-form" style="width:90%;" id="dataFrm" lay-filter="dataFrm">
        <%-- 隐藏域，保存活动ID --%>
        <input type="hidden" name="a_id" value="${vActivity.id}">
            <%-- 隐藏域，保存志愿者ID --%>
            <input type="hidden" name="v_id" value="${volunteer.id}">

        <div class="layui-form-item">
            <label class="layui-form-label">备注留言</label>
            <div class="layui-input-block">
                <textarea class="layui-textarea" name="remark" id="content"></textarea>
            </div>
        </div>
        <div class="layui-form-item" style="margin-left: 80px">
            <span style="color: red;font-size: 16px;">报名须知：活动申请后不可退出，请慎重选择！</span>
        </div>
        <div class="layui-form-item layui-row layui-col-xs12">
            <div class="layui-input-block" style="text-align: center;">
                <button type="button" class="layui-btn" lay-submit lay-filter="doSubmit"><span
                        class="layui-icon layui-icon-add-1"></span>提交
                </button>
                <button type="reset" class="layui-btn layui-btn-warm"><span
                        class="layui-icon layui-icon-refresh-1"></span>重置
                </button>
            </div>
        </div>
    </form>
</div>


<!-- 底部 -->
<div class="fly-footer">
    <p><a href="#">志愿者服务系统(点我回到顶部)</a> 2021.11 © Java2班3组</p>
</div>



<!-- 脚本开始 -->
<script src="${pageContext.request.contextPath}/statics/layui/dist/layui.js"></script>
<script>
    layui.use(["form","element","carousel","layer","laydate"], function () {
        var form = layui.form,
            layer = layui.layer,
            element = layui.element,
            carousel = layui.carousel,
            laydate = layui.laydate,
            $ = layui.$;

        //获取<meta>标签中封装的CSRF Token
        var token = $("meta[name='_csrf']").attr("content");
        var header = $("meta[name='_csrf_header']").attr("content");
        //将头中的CSRF Token信息进行发送
        $(document).ajaxSend(function (e,xhr,options) {
            xhr.setRequestHeader(header,token);
        });


        var mainIndex;
        //点击事件
        $("#bookRoomBtn").click(function () {
            //打开申请活动窗口
            mainIndex = layer.open({
                type: 1,//打开类型
                title: "活动报名",//窗口标题
                area: ["800px", "550px"],//窗口宽高
                content: $("#orderRoomWindow"),//引用的内容窗口
                success: function () {
                    //清空表单数据
                    $("#dataFrm")[0].reset();
                }
            });
        });

        //监听表单提交事件
        form.on("submit(doSubmit)",function (data) {
            //发送请求
            $.post("/volunteerApp/addACheckIn",data.field,function(result){
                if(result.success){
                    layer.alert(result.message,{icon:1},function (index) {
                        layer.close(index);
                    });

                }else{
                    layer.alert(result.message,{icon:2});
                }
                layer.close(mainIndex);
            },"json");
            return false;
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
