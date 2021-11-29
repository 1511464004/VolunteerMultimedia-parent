<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%-- 获取CSRF Token --%>
    <meta name="_csrf" content="${_csrf.token}"/>
    <%-- 获取CSRF头 默认为X-CSRF-TOKEN --%>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <meta charset="utf-8">
    <title>志愿者网视频管理页面</title>
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

        <%--    表格区域    --%>
        <table class="layui-hide" id="currentTableId" lay-filter="currentTableFilter"></table>

        <%--    行工具栏区域    --%>
        <script type="text/html" id="currentTableBar">
            <a class="layui-btn layui-btn-xs data-count-edit" lay-event="selectPhoto">
                <i class="layui-icon layui-icon-picture"></i>查看视频封面</a>
            <a class="layui-btn layui-btn-xs data-count-edit" lay-event="selectVideo">
                <i class="layui-icon layui-icon-video"></i>查看视频</a>
            <a class="layui-btn layui-btn-xs layui-btn-danger data-count-delete" lay-event="delete">
                <i class="layui-icon layui-icon-close"></i>删除</a>
        </script>


            <%--    查看视频的封面窗口区域    --%>
            <div style="display: none;padding: 5px" id="selectPhotoWindow">
                    <div class="layui-col-md3 layui-col-xs5">
                        <div class="layui-upload-list thumbBox mag0 magt3">
                            <img class="thumbImg"id="thumbImg" width="1024px" height="576px"
                                 src="">
                        </div>
                    </div>
            </div>

            <%--    查看视频的区域    --%>
            <div style="display: none;padding: 5px" id="selectVideoWindow">
                <div class="layui-col-md3 layui-col-xs5">
                    <div class="layui-upload-list thumbBox mag0 magt3">
                        <video  width="1024px" height="576px" controls>
                            <source src="" class="thumbVideo"id="thumbVideo"type="video/mp4">
                        </video>
                    </div>
                </div>
            </div>

        <%--    添加和修改的窗口区域    --%>
        <div style="display: none;padding: 5px" id="addOrUpdateWindow">
            <form class="layui-form" style="width: 90%;" id="dataFrm" lay-filter="dataFrm">
                <%--    隐藏域保存主键    --%>
                <input type="hidden" name="id" id="id">


                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">视频主题</label>
                        <div class="layui-input-block">
                            <input type="text" name="name" id="name" autocomplete="off" lay-verifty="required"
                                   placeholder="请输入视频名称" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-inline">
                        <label class="layui-form-label">视频名称</label>
                        <div class="layui-input-block">
                            <input type="text" name="src" id="src" autocomplete="off" lay-verifty="required"
                                   placeholder="请输入视频名称" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">图片名称</label>
                        <div class="layui-input-block">
                            <input type="text" name="img" id="img" autocomplete="off" lay-verifty="required"
                                   placeholder="请输入图片名称" class="layui-input">
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
    layui.use(['form', 'jquery', 'upload', 'table', 'layer'], function () {
        var upload = layui.upload,
            $ = layui.jquery,
            form = layui.form,
            table = layui.table,
            layer = layui.layer;

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
            url: '/admin/network/list',
            toolbar: '#toolbarDemo',
            cols: [[
                {field: 'id', width: 90, title: '视频编号', align: 'center'},
                {field: 'name', width: 200, title: '视频主题', align: 'center'},
                {field: 'src', width: 200, title: '视频名称', align: 'center'},
                {field: 'img', width: 200, title: '图片名称', align: 'center'},
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


        // 监听表格行工具栏事件
        table.on("tool(currentTableFilter)", function (obj) {
            switch (obj.event) {  // 监听修改操作
                case 'selectPhoto':
                    openSelectPhotoWindow(obj.data);
                    break;
                case 'selectVideo':
                    openSelectVideoWindow(obj.data);
                    break;
                case 'edit':
                    openUpdateWindow(obj.data);
                    break;
                case 'delete':
                    deleteById(obj.data);
                    break;
            }
        });

        //定义变量，分别保存提交地址和窗口索引
        var url, mainIndex,selectIndex;

        //打开视频封面窗口
        function openSelectPhotoWindow(data) {
            $("#thumbImg").attr("src", "/images/" + data.img);
            selectIndex = layer.open({
                type: 1,
                title: '查看志愿者网视频封面',
                area: ['1024px', '576px'],
                content: $("#selectPhotoWindow"),//引用的窗口内容
            });

        }

        //打开视频窗口
        function openSelectVideoWindow(data) {
            $("#thumbVideo").attr("src", "/video/" + data.src);
            selectIndex = layer.open({
                type: 1,
                title: '查看志愿者网视频',
                area: ['1024px', '576px'],
                content: $("#selectVideoWindow"),//引用的窗口内容
            });
        }

        /**
         * 删除视频
         * @param data
         */
        function deleteById(data) {
            //提示用户是否确认删除
            layer.confirm("确认要删除 [<font color='#FE784D'>" + data.name + "</font>] 视频么？", {
                icon: 3,
                title: "提示"
            }, function (index) {
                //发送删除的请求
                $.post("/admin/network/deleteById", {"id": data.id}, function (result) {
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