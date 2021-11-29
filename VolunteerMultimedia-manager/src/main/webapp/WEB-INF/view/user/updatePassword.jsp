<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/assets/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/assets/css/view.css"/>
    <title>修改密码</title>
    <style>
        span{
            color: #ff0000;
        }
    </style>
</head>
<body class="layui-view-body">
<div class="layui-content">
    <div class="layui-row">
        <div class="layui-card">
            <div class="layui-card-header">修改密码
                <span style= "text-align:center" class="red">${msg}</span>
            </div>
            <form class="layui-form layui-card-body" action="/admin/user/updateUserPassword" method="POST">
                <%--携带token提交--%>
                <security:csrfInput/>
                <input name="id" value="${loginUser.id}" hidden>
                <div class="layui-form-item">
                    <label class="layui-form-label">新密码</label>
                    <div class="layui-input-block">
                        <input type="text" name="password" required lay-verify="required" placeholder="请输入新密码"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn layui-btn-blue" lay-submit lay-filter="formDemo">立即提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        <button type="button" class="layui-btn layui-btn-primary"><a href="/index.jsp">返回</a></button>
                    </div>

                </div>

            </form>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/statics/assets/layui.all.js"></script>

</body>
</html>