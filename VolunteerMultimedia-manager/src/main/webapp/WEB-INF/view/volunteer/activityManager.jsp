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
                            <label class="layui-form-label">招募活动名称</label>
                            <div class="layui-input-inline">
                                <input type="text" name="name" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">剩余时间</label>
                            <div class="layui-input-inline">
                                <input type="text" name="day" autocomplete="off" class="layui-input">
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
        </script>

        <%--    添加和修改的窗口区域    --%>
        <div style="display: none;padding: 5px" id="addOrUpdateWindow">
            <form class="layui-form" style="width: 90%;" id="dataFrm" lay-filter="dataFrm">
                <%--    隐藏域保存主键    --%>
                <input type="hidden" name="id" id="id">


                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">招募活动名称</label>
                        <div class="layui-input-block">
                            <input type="text" name="name" id="loginName" autocomplete="off" lay-verifty="required"
                                   placeholder="招募活动名称" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-inline">
                        <label class="layui-form-label">图片</label>
                        <div class="layui-input-block">
                            <input type="text" name="img" id="img" autocomplete="off" lay-verifty="required"
                                   placeholder="请输入图片" class="layui-input">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">目标</label>
                        <div class="layui-input-block">
                            <input type="text" name="email" id="target" autocomplete="off" lay-verifty="required"
                                   placeholder="请输入目标" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">岗位</label>
                        <div class="layui-input-block">
                            <input type="text" name="job" id="job" autocomplete="off" lay-verifty="required"
                                   placeholder="请输入岗位" class="layui-input">
                        </div>
                    </div>

                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">进度</label>
                        <div class="layui-input-block">
                            <input type="text" name="plan" id="plan" autocomplete="off" lay-verifty="required"
                                   placeholder="请输入进度" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">剩余结束时间</label>
                        <div class="layui-input-block">
                            <input type="text" name="day" id="day" autocomplete="off" lay-verifty="required"
                                   placeholder="请输入剩余结束时间" class="layui-input">
                        </div>
                    </div>

                </div>

                    <div class="layui-form-item">
                        <div class="layui-inline">
                            <label class="layui-form-label">页面地址</label>
                            <div class="layui-input-block">
                                <input type="text" name="href" id="href" autocomplete="off" lay-verifty="required"
                                       placeholder="请输入页面地址" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">百度地图位置</label>
                            <div class="layui-input-block">
                                <input type="text" name="map" id="map" autocomplete="off" lay-verifty="required"
                                       placeholder="请输入百度地图位置" class="layui-input">
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
            type: 'date'
        });
        laydate.render({
            elem: '#endTime',
            type: 'date'
        });
        laydate.render({
            elem: '#date',
            type: 'date'
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
            url: '/admin/vApp/list',
            toolbar: '#toolbarDemo',
            cols: [[
                {field: 'id', width: 90, title: '活动编号', align: 'center'},
                {field: 'name', width: 360, title: '活动名称', align: 'center'},
                {field: 'img', width: 90, title: '图片名称', align: 'center'},
                {field: 'target', width: 90, title: '目标', align: 'center'},
                {field: 'job', width: 90, title: '岗位', align: 'center'},
                {field: 'plan', width: 90, title: '进度', align: 'center'},
                {field: 'number', width: 90, title: '报名人数', align: 'center'},
                {field: 'day', width: 90, title: '剩余时间', align: 'center'},
                {field: 'date', width: 180, title: '开始日期', align: 'center'},
                {field: 'href', width: 180, title: '页面地址', align: 'center'},
                {field: 'map', width: 180, title: '百度地图位置', align: 'center'},
                {title: '操作', minWidth: 200, toolbar: '#currentTableBar', align: "center"}
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
                title: '添加活动',
                area: ['800px', '500px'],
                content: $("#addOrUpdateWindow"),//引用的窗口内容
                success: function () {
                    //提交地址
                    url = "/admin/vApp/addVApp";
                    //清空表单数据
                    $("#dataFrm")[0].reset();
                }
            });
        }

        //打开修改窗口
        function openUpdateWindow(data) {
            mainIndex = layer.open({
                type: 1,
                title: '修改活动',
                area: ['800px', '500px'],
                content: $("#addOrUpdateWindow"),//引用的窗口内容
                success: function () {
                    //提交地址
                    url = "/admin/vApp/updateVApp";
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
         * 删除活动
         * @param data
         */
        function deleteById(data) {
            //提示用户是否确认删除
            layer.confirm("确认要删除 [<font color='#FE784D'>" + data.name + "</font>] 活动么？", {
                icon: 3,
                title: "提示"
            }, function (index) {
                //发送删除的请求
                $.post("/admin/vApp/deleteById", {"id": data.id}, function (result) {
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