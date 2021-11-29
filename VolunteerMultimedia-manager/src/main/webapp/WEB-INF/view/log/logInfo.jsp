<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%-- 获取CSRF Token --%>
    <meta name="_csrf" content="${_csrf.token}"/>
    <%-- 获取CSRF头 默认为X-CSRF-TOKEN --%>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <meta charset="utf-8">
    <title>日志管理页面</title>
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
                            <label class="layui-form-label">相关信息</label>
                            <div class="layui-input-inline">
                                <input type="text" name="log" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline">
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
                    <button class="layui-btn" lay-event="delete">
                       清空日志
                    </button>
                </div>
            </script>

        <%--    表格区域    --%>
        <table class="layui-hide" id="currentTableId" lay-filter="currentTableFilter"></table>
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

        //获取<meta>标签中封装的CSRF Toekn
        var token = $("meta[name='_csrf']").attr("content");
        var header = $("meta[name='_csrf_header']").attr("content");
        //将头中的CSRF Token信息进行发送
        $(document).ajaxSend(function (e, xhr, options) {
            xhr.setRequestHeader(header, token);
        });

        var tableIns = table.render({
            elem: '#currentTableId',
            url: '${pageContext.request.contextPath}/admin/log/list',
            toolbar: '#toolbarDemo',
            cols: [[
                {field: 'log', width: 500, title: '日志信息', align: 'center'},
                {field: 'createDate', width: 500, title: '操作时间', align: 'center'}
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
            switch (obj.event) {  // 监听清空操作
                case 'delete':
                    deleteLog();
                    break;
            }
        });

        /**
         * 清空日志
         * @param data
         */
        function deleteLog() {
            //提示用户是否确认删除
            layer.confirm("确认要清空 [<font color='#FE784D'>" + "日志" + "</font>] 么？", {
                icon: 3,
                title: "提示"
            }, function (index) {
                //发送删除的请求
                $.post("/admin/log/deleteLog", function (result) {
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