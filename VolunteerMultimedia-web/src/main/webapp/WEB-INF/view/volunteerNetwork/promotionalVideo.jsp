<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>宣传视频</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        .body {
            margin-top: 50px;
        }

        img {
            border: none;
        }

        em,
        i {
            font-style: normal;
        }

        body,
        div,
        dl,
        dt,
        dd,
        ul,
        ol,
        li,
        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        pre,
        form,
        fieldset,
        input,
        textarea,
        p,
        blockquote,
        th,
        td,
        font {
            padding: 0;
            margin: 0;
            font-family: "微软雅黑";
        }

        table {
            border-collapse: collapse;
            border-spacing: 0;
            width: 100%;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            font-weight: normal;
            font-size: 100%;
        }

        ol,
        ul,
        li,
        dl,
        dt,
        dd {
            list-style: none;
        }

        input,
        button,
        textarea,
        checkbox,
        select,
        radio,
        form {
            vertical-align: top;
        }

        a {
            color: #000;
            text-decoration: none;
        }

        a:link,
        a:visited {
            text-decoration: none;
        }

        .public_width {
            width: 100%;
            max-width: 1200px;
            height: auto;
            overflow: hidden;
            margin: 0 auto;
        }

        /*视频*/
        .video_con {
            background: #282828;
            color: #fff;
        }

        .video_con .video_con_title {
            width: 100%;
            height: 70px;
            line-height: 70px;
            font-size: 30px;
            font-weight: bold;
            text-indent: 1em;
            color: #fff;
            background-color: #333;
        }

        .video_con .video_con_show {}

        .video_con_show {
            width: 100%;
            height: 630px;
            font-size: 0;
        }

        .video_con_show .video_bofang {
            display: inline-block;
            width: 900px;
            height: 630px;
            font-size: 24px;
            vertical-align: top;
        }

        .video_con_show .video_show_zs {
            display: inline-block;
            width: 300px;
            height: 630px;
            font-size: 24px;
            border-left: 2px solid #444;
            box-sizing: border-box;
        }

        .video_show_zs .video_show_zj {
            width: 100%;
            height: auto;
            padding: 20px 0;
            background-color: #444;
        }

        .video_show_zj .video_show_zj_img {
            display: inline-block;
            width: 66px;
            vertical-align: middle;
            margin: 0 20px;
        }

        .video_show_zj .video_show_zj_js {
            display: inline-block;
            width: 180px;
            vertical-align: middle;
            color: #fff;
        }

        .video_show_zj_js .video_show_zj_name {
            display: block;
            font-size: 15px;
        }

        .video_show_zj_js .video_show_zj_zc {
            display: block;
            margin-left: 10px;
            margin-top: 8px;
            font-size: 13px;
        }

        .video_show_zs .video_show_title {
            font-size: 14px;
            margin: 10px;
        }

        .video_show_zs .video_show_con {
            margin: 10px;
            height: 473px;
            overflow-y: auto;
        }

        .video_show_con .video_show_list {
            font-size: 14px;
            width: 100%;
            height: auto;
            overflow: hidden;
            color: #fff;
            margin-top: 20px;
        }

        .video_show_list img {
            display: inline-block;
            width: 120px;
            vertical-align: middle;
            margin-right: 10px;
        }

        .video_show_list span {
            display: inline-block;
            width: 130px;
        }

        .tab-box .video_con_show_con {
            width: 820px;
            height: 630px;
            display: none;
        }

        /* 让第一个框显示出来 */
        .tab-box div:first-Child {
            display: block;
        }

        /* 改变选项卡选中时候的样式 */
        .change {
            background: rgba(255, 255, 255, 0.6);
        }

        .video_show_con::-webkit-scrollbar {
            /*滚动条整体样式*/
            width: 10px;
            /*高宽分别对应横竖滚动条的尺寸*/
            height: 1px;
        }

        .video_show_con::-webkit-scrollbar-thumb {
            /*滚动条里面小方块*/
            border-radius: 10px;
            background-color: #555;

        }

        .video_show_con::-webkit-scrollbar-track {
            /*滚动条里面轨道*/
            -webkit-box-shadow: inset 0 0 5px rgba(0, 0, 0, 0.2);
            /*border-radius: 10px;*/
            background: #282828;
        }


        .footer {
            height: 265px;
            width: 100%;
            background-color: #fff;
        }

        .footer .w {
            width: 1260px;
            margin: 0 auto;
            margin-top: 50px;
        }

        .footer .w .left {
            float: left;
            width: 445px;
            margin: 50px 0 0 22px;
        }

        .footer .w .left .jw {
            padding-top: 28px;
            margin-left: 10px;
        }

        .footer .w .left .jw p {
            font-size: 12px;
            color: #666666;
        }

        .footer .w .left .xiazai {
            margin-top: 20px;
            margin-left: 10px;
            width: 116px;
            height: 35px;
            border: 2px solid #1385d4;
            text-align: center;
        }

        .footer .w .left a {
            font-size: 14px;
            line-height: 35px;
            color: #1385d4;
        }

        .footer .w .right {
            float: right;
            width: 538px;
            margin: 50px 32px 0 0;
        }

        .footer .w .right .box1 {
            float: left;
            padding-right: 140px;
        }

        .footer .w .right .box2 {
            float: left;
            padding-right: 140px;
        }

        .footer .w .right .box3 {
            float: left;
        }

        .footer .w .right dl dt {
            margin-bottom: 18px;
            font-size: 16px;
            color: #333333;
        }

        .footer .w .right dl dd {
            font-size: 12px;
            height: 22px;
            color: #333333;
        }

        .footer.box .left {
            float: left;
            position: relative;
            top: 230px;
            width: 183px;
            height: 425px;
            background-color: #fff;
        }

        .footer.box .left ul li {
            margin-top: 16px;
            margin-left: 25px;
        }

        .footer.box .left ul li a {
            font-size: 14px;
            color: #000000;
        }

        .footer.box .left ul li a:hover {
            color: #00a4ff;
        }
    </style>
    <script type="text/javascript" src="/statics/js/jquery-3.3.1.js">   </script>
    <script>
        $().ready(function () {
            $(".tab-menu li").click(function () {
                //通过 .index()方法获取元素下标，从0开始，赋值给某个变量
                var _index = $(this).index();
                //让内容框的第 _index 个显示出来，其他的被隐藏
                $(".tab-box>div").eq(_index).show().siblings().hide();
                //改变选中时候的选项框的样式，移除其他几个选项的样式
                $(this).addClass("change").siblings().removeClass("change");
            });
        });
    </script>
</head>

<body>
<div class="body">
    <section class="public_width">
        <dl class="video_con">
            <dt class="video_con_title">华迪志愿宣传视频</dt>
            <figure class="video_con_show tab">
                <div class="video_bofang tab-box">
                    <c:forEach var="pv" items="${networkPVList}">
                        <div class="video_con_show_con">
                            <video width="900" height="630" controls>
                                <source src="/video/${pv.src}"
                                        type="video/mp4">
                            </video>
                        </div>
                    </c:forEach>
                </div>
                <figcaption class="video_show_zs">
                    <div class="video_show_zj">
                        <img class="video_show_zj_img" src="/statics/img/sp.png">
                        <p class="video_show_zj_js">
                            <b class="video_show_zj_name">《华迪志愿者》宣传片:</b>
                            <span class="video_show_zj_zc">做一个幸福的志愿者</span>
                        </p>
                    </div>
                    <span class="video_show_title">播放列表</span>
                    <ul class="video_show_con tab-menu">
                        <c:forEach var="pv" items="${networkPVList}">
                            <li class="video_show_list">
                                <img src="/images/${pv.img}"><span>${pv.name}</span></li>
                        </c:forEach>
                    </ul>
                </figcaption>
            </figure>
        </dl>
    </section>
</div>
<div class="footer">
    <div class="w">
        <div class="left">
            <img src="/statics/img/logo2.png" alt="">
            <div class="jw">
                <p>华迪志愿者致力于帮助有特殊困难的社会成员，社会主义精神文明建设。
                    <br> © 2021年HXYY Inc.保留所有权利。-晋ICP备88888888号
                </p>
            </div>
            <a href="#">
                <div class="xiazai">下载华迪APP</div>
            </a>
        </div>
        <div class="right">
            <div class="box1">
                <dl>
                    <dt>关于华迪志愿</dt>
                    <dd>关于</dd>
                    <dd>管理团队</dd>
                    <dd>工作机会</dd>
                    <dd>客户服务</dd>
                    <dd>帮助</dd>
                </dl>
            </div>
            <div class="box2">
                <dl>
                    <dt>新手指南</dt>
                    <dd>如何注册</dd>
                    <dd>如何成为志愿者</dd>
                    <dd>如何报名活动</dd>
                    <dd>遇到问题怎么办</dd>
                </dl>
            </div>
            <div class="box3">
                <dl>
                    <dt>合作伙伴</dt>
                    <dd>合作机构</dd>
                    <dd>合作导师</dd>
                </dl>
            </div>
        </div>
    </div>

</div>
</body>

</html>