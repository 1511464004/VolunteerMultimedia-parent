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
                    <a class="fly-case-active" data-type="toTopNav"  href="toAppVEnlist.html" style="color:red">活动申请</a>
                </li>
                <li data-id="login" class="layui-nav-item layui-hide-xs layui-this">
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

<!-- 活动详情start -->
<div class="layui-container shopdata">
    <div class="layui-card shopdata-intro">
        <div class="layui-card-header">
				<span class="layui-breadcrumb layui-hide-xs" style="visibility: visible;">
				<a href="/index">首页</a><span lay-separator="">/</span>
						           <a href="JavaScript:void(0);" id="floorNumber">视频</a><span lay-separator="">/</span>
						 <a><cite>上传视频</cite></a> </span>

        </div>
        <div class="layui-card-body layui-row">

            <div class="layui-col-md6">
                <div class="intro-txt">
                    <p class="store-detail-active" id="shopEvent">
                            <a href="javascript:;" id="bookRoomBtn" data-type="memberReserveHotel" class="store-bg-orange fly-memberReserveHotel">
                                <i class="layui-icon layui-icon-video" style="color: red"></i>立即上传
                            </a>
                    </p>
                </div>
            </div>
        </div>
    </div>

</div>
<!-- 房间详情end -->


<%-- 视频上传 --%>
<div style="display: none;padding: 5px" id="orderRoomWindow">
    <form class="layui-form" style="width:90%;" id="dataFrm" lay-filter="dataFrm">
            <%-- 隐藏域，保存志愿者ID --%>
            <input type="hidden" name="v_id" value="${volunteer.id}">
            <div class="layui-form-item magt3" style="margin-top:8px;">
                <label class="layui-form-label">视频主题</label>
                <div class="layui-input-block">
                    <input type="text" name="name" id="name" autocomplete="off"
                           lay-verifty="required"
                           placeholder="请输入视频主题" class="layui-input">
                </div>
            </div>
          <div class="layui-col-md3 layui-col-xs5">
            <div class="layui-upload-list thumbBoxImage mag0 magt3">
            <input type="hidden" name="img" id="photo" value="">
            <img class="layui-upload-img thumbImg" width="480px" height="270px" style="margin-left: 150px"
                             src="/statics/images/defaultimg.jpg">
                    </div>
          </div>

           <div class="layui-col-md3 layui-col-xs5" style="margin-top: 270px; margin-left: 0px">
               <div class="layui-upload-list thumbBoxVideo mag0 magt3" >
                        <input type="hidden" name="src" id="video" value="">
                   <video  width="720px" height="405px" controls >
                       <source src="" class="layui-upload-img thumbVideo" id="thumbVideo"type="video/mp4">
                   </video>
<%--                  <video class="layui-upload-img thumbImg" width="480px" height="270px" style="margin-left: 150px"--%>
<%--                             src="/statics/images/defaultimg.jpg">--%>
<%--                  </video>--%>
                </div>
           </div>


        <div class="layui-form-item">
            <label class="layui-form-label">备注留言</label>
            <div class="layui-input-block">
                <textarea class="layui-textarea" name="remark" id="content"></textarea>
            </div>
        </div>
        <div class="layui-form-item" style="margin-left: 80px">
            <span style="color: red;font-size: 16px;">上传须知：除了备注，其余均不能为空！</span>
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
    layui.use(["form","element","carousel","layer","laydate","upload"], function () {
        var form = layui.form,
            layer = layui.layer,
            element = layui.element,
            carousel = layui.carousel,
            laydate = layui.laydate,
            upload = layui.upload,
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
                title: "视频上传",//窗口标题
                area: ["800px", "550px"],//窗口宽高
                content: $("#orderRoomWindow"),//引用的内容窗口
                success: function () {
                    //清空表单数据
                    $("#dataFrm")[0].reset();
                }
            });
        });

        //渲染文件上传组件
        upload.render({
            elem:".thumbBoxImage",//绑定元素
            url:'/volunteerNetwork/uploadFilePhoto',//文件上传地址
            acceptMime: 'image/*',//规定打开文件选择框时，筛选出的文件类型
            field:'attach',//文件上传的字段值,等同于input标签的name属性值，该值必须与控制器中的方法参数名一致
            method:"post",
            //文件上传成功后的回调函数
            done: function (res,index,upload) {
                //设置图片回显路径
                $(".thumbImg").attr("src",res.data.src);
                $('.thumbBoxImage').css("background","#fff");
                //给图片隐藏域赋值
                $("#photo").val(res.imagePath);
            }
        });

        //渲染文件上传组件
        upload.render({
            elem:".thumbBoxVideo",//绑定元素
            url:'/volunteerNetwork/uploadFileVideo',//文件上传地址
            accept: 'video',//规定打开文件选择框时，筛选出的文件类型
            field:'attach',//文件上传的字段值,等同于input标签的name属性值，该值必须与控制器中的方法参数名一致
            method:"post",
            //文件上传成功后的回调函数
            done: function (res,index,upload) {
                //设置视频回显路径
                $(".thumbVideo").attr("src",res.data.src);
                //给视频隐藏域赋值
                $("#video").val(res.videoPath);
            }
        });

        //监听表单提交事件
        form.on("submit(doSubmit)",function (data) {
            if (data.field.name == '' || data.field.name == null) {
                layer.alert(" <font color='#FF0000'>视频主题不能为空</font> ", {
                    icon: 2,
                    title: "提示"
                });
            } else
            if (data.field.img == '' || data.field.img == null) {
                layer.alert(" <font color='#FF0000'>上传封面不能为空</font> ", {
                    icon: 2,
                    title: "提示"
                });
            } else
            if (data.field.src == '' || data.field.src == null) {
                layer.alert(" <font color='#FF0000'>上传视频不能为空</font> ", {
                    icon: 2,
                    title: "提示"
                });
            } else {
                //发送请求
                $.post("/volunteerNetwork/addVCheckIn",data.field,function(result){
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
            }
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
