<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%-- 获取CSRF Token --%>
    <meta name="_csrf" content="${_csrf.token}"/>
    <%-- 获取CSRF头 默认为X-CSRF-TOKEN --%>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <meta charset="utf-8">
    <title>志愿者用户管理页面</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/layui/lib/layui-v2.6.3/css/layui.css"
          media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/layui/css/public.css" media="all">
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">

        <%--    搜索条件区域    --%>
        <fieldset class="table-search-fieldset">

            <legend>搜索信息</legend>
            <div style="margin: 10px 10px 10px 10px">
                <form class="layui-form layui-form-pane" action="">
                    <div class="layui-form-item">
                        <div class="layui-inline">
                            <label class="layui-form-label">志愿者用户名</label>
                            <div class="layui-input-inline">
                                <input type="text" name="loginName" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">真实姓名</label>
                            <div class="layui-input-inline">
                                <input type="text" name="realName" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">用户性别</label>
                            <div class="layui-input-inline">
                                <select name="sex" autocomplete="off" class="layui-input">
                                    <option value="">请选择性别</option>
                                    <option value="0">男</option>
                                    <option value="1">女</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">开始日期</label>
                            <div class="layui-input-inline">
                                <input type="text" name="startDate" id="startTime" autocomplete="off"
                                       class="layui-input" readonly>
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">结束日期</label>
                            <div class="layui-input-inline">
                                <input type="text" name="endDate" id="endTime" autocomplete="off" class="layui-input"
                                       readonly>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block" style="text-align: center">
                                <button type="submit" class="layui-btn" lay-submit lay-filter="data-search-btn">
                                    <i class="layui-icon"></i>搜索
                                </button>
                                <button type="reset" class="layui-btn layui-btn-warm">
                                    <i class="layui-icon layui-icon-refresh-1"></i>重置
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </fieldset>

        <%--    表格工具栏区域    --%>
        <script type="text/html" id="toolbarDemo">
            <div class="layui-btn-container">
                <button class="layui-btn layui-btn-normal layui-btn-sm data-add-btn" lay-event="add">
                    <i class="layui-icon layui-icon-add-1"></i>添加
                </button>
            </div>
        </script>

        <%--    表格区域    --%>
        <table class="layui-hide" id="currentTableId" lay-filter="currentTableFilter"></table>

        <%--    行工具栏区域    --%>
        <script type="text/html" id="currentTableBar">
            <a class="layui-btn layui-btn-xs data-count-edit" lay-event="edit">
                <i class="layui-icon layui-icon-edit"></i>编辑</a>
            <a class="layui-btn layui-btn-xs layui-btn-danger data-count-delete" lay-event="delete">
                <i class="layui-icon layui-icon-close"></i>删除</a>
            <button class="layui-btn layui-btn-xs layui-btn-warm" lay-event="resetPwd">
                <i class="layui-icon layui-icon-refresh"></i>重置密码
            </button>
        </script>

        <%--    添加和修改的窗口区域    --%>
        <div style="display: none;padding: 5px" id="addOrUpdateWindow">
            <form class="layui-form" style="width: 90%;" id="dataFrm" lay-filter="dataFrm">
                <%--    隐藏域保存主键    --%>
                <input type="hidden" name="id" id="id">


                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">登录名称</label>
                        <div class="layui-input-block">
                            <input type="text" name="loginName" id="loginName" autocomplete="off" lay-verifty="required"
                                   placeholder="请输入志愿者登录名称" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-inline">
                        <label class="layui-form-label">用户姓名</label>
                        <div class="layui-input-block">
                            <input type="text" name="realName" id="realName" autocomplete="off" lay-verifty="required"
                                   placeholder="请输入志愿者真实姓名" class="layui-input">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">邮箱</label>
                        <div class="layui-input-block">
                            <input type="text" name="email" id="email" autocomplete="off" lay-verifty="required|email"
                                   placeholder="请输入电子邮箱" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-inline">
                        <label class="layui-form-label">联系方式</label>
                        <div class="layui-input-block">
                            <input type="text" name="phone" id="phone" autocomplete="off" lay-verifty="required|phone"
                                   placeholder="请输入联系方式" class="layui-input">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">用户性别</label>
                        <div class="layui-input-block">
                            <input type="radio" name="sex" value="0" title="男" checked>
                            <input type="radio" name="sex" value="1" title="女">
                        </div>
                    </div>

                    <div class="layui-inline">
                        <label class="layui-form-label">用户状态</label>
                        <div class="layui-input-block">
                            <input type="radio" name="status" value="1" title="正常" checked>
                            <input type="radio" name="status" value="2" title="异常">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item layui-row layui-col-xs12">
                    <div class="layui-input-block" style="text-align: center;">
                        <button type="button" class="layui-btn" lay-submit lay-filter="doSubmit">
                            <span class="layui-icon layui-icon-add-1"></span>提交
                        </button>
                        <button type="reset" class="layui-btn layui-btn-warm">
                            <span class="layui-icon layui-icon-refresh-1"></span>重置
                        </button>
                    </div>
                </div>

            </form>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/statics/layui/lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
<script>
    layui.use(['form', 'jquery', 'laydate', 'table', 'layer'], function () {
        var laydate = layui.laydate,
            $ = layui.jquery,
            form = layui.form,
            table = layui.table,
            layer = layui.layer;

        //渲染日期组件
        laydate.render({
            elem: '#startTime',
            type: 'datetime'
        });
        laydate.render({
            elem: '#endTime',
            type: 'datetime'
        });
        laydate.render({
            elem: '#registTime',
            type: 'datetime'
        });

        //获取<meta>标签中封装的CSRF Toekn
        var token = $("meta[name='_csrf']").attr("content");
        var header = $("meta[name='_csrf_header']").attr("content");
        //将头中的CSRF Token信息进行发送
        $(document).ajaxSend(function (e, xhr, options) {
            xhr.setRequestHeader(header, token);
        });



        //渲染表格组件
        var tableIns = table.render({
            elem: '#currentTableId',
            url: '/admin/volunteer/list',
            toolbar: '#toolbarDemo',
            cols: [[
                {field: 'id', width: 90, title: '志愿者编号', align: 'center'},
                {field: 'loginName', width: 90, title: '登录名称', align: 'center'},
                {field: 'realName', width: 100, title: '真实姓名', align: 'center'},
                {field: 'sex', width: 70, title: '性别', align: 'center',templet:function (d) {
                        return d.sex != 1 ? "<font color='#00bfff'>男</font>":"<font color='#ff4500'>女</font>";
                    }},
                {field: 'phone', width: 120, title: '联系方式', align: 'center'},
                {field: 'email', width: 120, title: '电子邮箱', align: 'center'},
                {field: 'registTime', width: 180, title: '注册日期', align: 'center'},
                {field: 'status', width: 70, title: '状态', align: 'center',templet:function (d) {
                        return d.status == 1 ? "<font color='#00bfff'>正常</font>":"<font color='#ff4500'>异常</font>";
                    }},
                {title: '操作', minWidth: 100, toolbar: '#currentTableBar', align: "center"}
            ]],
            page: true,
            done: function (res, curr, count) {
                //判断当前页码是否大于1并且当前页的数据量为0
                if (curr > 1 && res.data.left == 0) {
                    var pageValue = curr - 1;
                    //刷新数据表格的数据
                    tableIns.reload({
                        page: {curr: pageValue}
                    });
                }
            }
        });

        // 监听模糊查询
        form.on('submit(data-search-btn)', function (data) {
            //执行搜索重载
            tableIns.reload({
                where: data.field,//查询条件
                page: {
                    curr: 1
                }
            });
            return false;
        });


        // 监听表格头部工具栏事件
        table.on("toolbar(currentTableFilter)", function (obj) {
            switch (obj.event) {  // 监听添加操作
                case 'add':
                    openAddWindow();
                    break;
            }
        });

        // 监听表格行工具栏事件
        table.on("tool(currentTableFilter)", function (obj) {
            switch (obj.event) {  // 监听修改操作
                case 'edit':
                    openUpdateWindow(obj.data);
                    break;
                case 'delete':
                    deleteById(obj.data);
                    break;
                case 'resetPwd':
                    resetPwd(obj.data);
                    break;
            }
        });

        //定义变量，分别保存提交地址和窗口索引
        var url, mainIndex;

        //打开添加窗口
        function openAddWindow() {
            mainIndex = layer.open({
                type: 1,
                title: '添加用户',
                area: ['800px', '500px'],
                content: $("#addOrUpdateWindow"),//引用的窗口内容
                success: function () {
                    //提交地址
                    url = "/admin/volunteer/addVolunteer";
                    //清空表单数据
                    $("#dataFrm")[0].reset();
                }
            });
        }

        //打开修改窗口
        function openUpdateWindow(data) {
            mainIndex = layer.open({
                type: 1,
                title: '修改用户',
                area: ['800px', '500px'],
                content: $("#addOrUpdateWindow"),//引用的窗口内容
                success: function () {
                    //提交地址
                    url = "/admin/volunteer/updateVolunteer";
                    //表单数据回显
                    form.val("dataFrm", data);
                }
            });
        }

        //监听表单提交事件
        form.on("submit(doSubmit)", function (data) {
            //发送请求
            $.post(url, data.field, function (result) {
                if (result.success) {
                    //提示
                    layer.alert(result.message, {icon: 1});
                    //刷新当前表格
                    tableIns.reload();
                    //关闭当前窗口
                    layer.close(mainIndex);
                } else {
                    //提示
                    layer.alert(result.message, {icon: 2});
                }
            }, "json");
            return false;
        });

        /**
         * 删除角色
         * @param data
         */
        function deleteById(data) {
            //提示用户是否确认删除
            layer.confirm("确认要删除 [<font color='#FE784D'>" + data.realName + "</font>] 用户么？", {
                icon: 3,
                title: "提示"
            }, function (index) {
                //发送删除的请求
                $.post("/admin/volunteer/deleteById", {"id": data.id}, function (result) {
                    if (result.success) {
                        //提示
                        layer.alert(result.message, {icon: 1});
                        //刷新当前数据表格
                        tableIns.reload();
                    } else {
                        //提示
                        layer.alert(result.message, {icon: 2});
                    }
                }, "json");
                layer.close(index);
            });
        }
        /**
         * 重置密码
         * @param data
         */
        function resetPwd(data) {
            //提示用户是否确认重置密码
            layer.confirm("确认要重置 [<font color='#FE784D'>" + data.loginName + "</font>] 用户的密码么？", {
                icon: 3,
                title: "提示"
            }, function (index) {
                //发送重置密码的请求
                $.post("/admin/volunteer/resetPwd", {"id": data.id}, function (result) {
                    if (result.success) {
                        //提示
                        layer.alert(result.message, {icon: 1});
                        //刷新当前数据表格
                        tableIns.reload();
                    } else {
                        //提示
                        layer.alert(result.message, {icon: 2});
                    }
                }, "json");
                layer.close(index);
            });
        }


    });
</script>

</body>
</html>