<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
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
    <title>ζζεθΏͺ</title>
    <script type="text/css">
        bb{ position: absolute;
            display: block;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            margin-bottom: 20px;
            max-width: 100%;
            margin: auto; }
    </script>

    <style>
        * {
            margin: 0;
            padding: 0;
        }
        a {
            text-decoration: none;
            color: #888888;
        }

        a:hover {
            color: #1385d4;
        }

        .first {
            width: 1160px;
            height: 650px;
            margin: 50px auto;
        }

        .first .left1 {
            margin-left: 15px;
            width: 800px;
            height: 650px;
            float: left;
        }

        .first .left1 .head {
            float: left;
            width: 800px;
            margin: 10px 0 0 0;
            height: 80px;
        }

        .first .left1 .head .logo {
            height: 70px;
        }

        .first .left1 .head .span {
            font-size: 40px;
            height: 70px;
            line-height: 70px;
            display: inline-block;
            vertical-align: top;
        }

        .first .left1 .headtwo {
            float: left;
            width: 800px;
            height: 50px;
            margin: 10px 0 0 0;
        }

        .first .left1 .headtwo .left2 {
            float: left;
        }

        .first .left1 .headtwo .intlogo {
            margin: 10px 10px 10px 0;
        }

        .first .left1 .headtwo .introduction {
            font-size: 23px;
            height: 50px;
            line-height: 50px;
            display: inline-block;
            vertical-align: top;
        }

        .first .left1 .headtwo .line {
            width: 520px;
            margin-right: 20px;
            float: left;
            border: 1px solid #e9e9e9;
            margin-top: 25px;
            background-color: #e9e9e9;
        }

        .first .left1 .headtwo .right .body {
            margin: 10px;
        }

        .first .left1 .headtwo .right .rightone {
            float: left;
            margin-top: 14px;
            margin-left: 20px;
        }

        .first .left1 .headtwo .right span {
            font-size: 13px;
            display: inline-block;
            vertical-align: top;
            margin-top: 4px;
        }

        .first .left1 .body {
            width: 750px;
            float: left;
            margin-left: 20px;
        }

        .first .left1 .body .top a {
            color: #1385d4;
        }

        .first .left1 .body .top p {
            line-height: 26px;
            text-indent: 2em;
            text-align: justify;
            text-justify: inter-word;
        }
        .first .left1 .body .bot {
            margin-top: 25px;
        }
        .first .left1 .body .bot .spanone {
            float: left;
            width: 120px;
            font-size: 13px;
            color: #888888;
        }

        .first .left1 .body .bot .spantwo {
            float: left;
            width: 250px;
            font-size: 13px;
            color: black;
        }

        .first .left1 .body .bot p {
            font-size: 13px;
            color: black;
        }

        .first .left1 .body .bot .aline {
            padding: 15px 0;
            margin-left: 10px;
        }

        .first .left1 .body .bot .line {
            width: 700px;
            float: left;
            border: 0.1px dashed #e9e9e9;
            margin-top: 7px;
        }
        .first .right {
            float: right;
        }
        .first .right .top {
            margin: 40px 50px 0 0;
            border: 2px dashed #e9e9e9;
        }

        .first .right .top .two {
            margin: 5px 0 8px 20px;
        }
        .first .right .bot {
            margin: 0 50px 0 0;
            border: 2px dashed #e9e9e9;
            border-top: none;
        }
        .first .right .bot .two {
            font-size: 13px;
            margin: 0 0 10px 10px;
        }
        .first .right .bot .two a {
            color: #1385d4;
        }

        .footer {
            height: 265px;
            width: 100%;
            background-color: #fff;
            margin-top: 0px;
        }

        .footer .w {
            width: 1160px;
            margin: 0 auto;
            padding-top: 00px;
            text-align: left;
        }

        .footer .w .left {
            float: left;
            width: 445px;
            margin: 15px 0 0 22px;

        }

        .footer .w .left .jw {
            padding-top: 28px;
            margin-left: 10px;
        }

        .footer .w .left .jw p {
            font-size: 12px;
            color: #666666;
            text-align: left;
        }

        .footer .w .left .xiazai {
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
            margin: 15px 32px 0 0;
            text-align: left;
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

</head>
<body>

<!-- δΈ­ι΄εΊεεΌε§ -->
<div class="shop-nav shop-index" style="width:600px;height: 400px;margin:0 auto;">

    <!-- θ½?ζ­εΎεΌε§ -->
    <div class="layui-carousel" lay-filter="LAY-store-banner" id="LAY-store-banner" lay-anim lay-indicator="inside">
        <div carousel-item>
            <div class="">
                <div>
                    <a href="javascript:;" target="_blank" class="bb">
                        <img src="${pageContext.request.contextPath}/statics/images/1.jpeg" alt="εΏζΏθζε‘η³»η»">
                    </a>
                </div>
            </div>
            <div class="">
                <div >
                    <a href="javascript:;" target="_blank">
                        <img src="${pageContext.request.contextPath}/statics/images/2.jpeg" alt="εΏζΏθζε‘η³»η»">
                    </a>
                </div>
            </div>
            <div class="layui-this">
                <div >
                    <a href="javascript:;" target="_blank">
                        <img src="${pageContext.request.contextPath}/statics/images/3.jpeg" alt="εΏζΏθζε‘η³»η»">
                    </a>
                </div>
            </div>
            <div class="">
                <div class="layui-container">
                    <a href="javascript:;" target="_blank">
                        <img src="${pageContext.request.contextPath}/statics/images/4.jpg" alt="εΏζΏθζε‘η³»η»">
                    </a>
                </div>
            </div>
            <div class="">
                <div class="layui-container">
                    <a href="javascript:;" target="_blank">
                        <img src="${pageContext.request.contextPath}/statics/images/5.png" alt="εΏζΏθζε‘η³»η»">
                    </a>
                </div>
            </div>
        </div>

        <div class="layui-carousel-ind">
            <ul>
                <li class=""></li>
                <li class=""></li>
                <li class="layui-this"></li>
                <li class=""></li>
                <li class=""></li>
            </ul>
        </div>
        <button class="layui-icon layui-carousel-arrow" lay-type="sub">ξ</button>
        <button class="layui-icon layui-carousel-arrow" lay-type="add">ξ</button>
    </div>
    <!-- θ½?ζ­εΎη»ζ -->

    </div>
</div>
<!-- δΈ­ι΄εΊεη»ζ -->
</div>
<!-- θζ¬εΌε§ -->
<script src="${pageContext.request.contextPath}/statics/layui/dist/layui.js"></script>
<script>
    layui.use(["form", "element", "carousel"], function () {
        var form = layui.form,
            layer = layui.layer,
            element = layui.element,
            carousel = layui.carousel,
            $ = layui.$;

        //ζΈ²ζθ½?ζ­εΎ
        carousel.render({
            elem: '#LAY-store-banner'
            , width: '100%' //θ?Ύη½?ε?Ήε¨ε?½εΊ¦
            , height: '100%' //θ?Ύη½?ε?Ήε¨ι«εΊ¦
            , arrow: 'always' //ε§η»ζΎη€Ίη?­ε€΄
        });
    });
</script>
<!-- θζ¬η»ζ -->
<ul class="layui-fixbar">
    <li class="layui-icon layui-fixbar-top" lay-type="top" style="">ξ</li>
</ul>
<div class="layui-layer-move"></div>

<div class="footer">
    <div class="w">
        <div class="left">
            <a href="http://www.hwadee.com/" target="_blank"> <img src="/statics/img/logo2.png" alt=""></a>
            <div class="jw">
                <p>εθΏͺεΏζΏθθ΄εδΊεΈ?ε©ζηΉζ?ε°ιΎηη€ΎδΌζεοΌη€ΎδΌδΈ»δΉη²Ύη₯ζζε»Ίθ?Ύγ
                    <br> Β© 2021εΉ΄HXYY Inc.δΏηζζζε©γ-ζICPε€88888888ε·
                </p>
            </div>
            <a href="#">
                <div class="xiazai">δΈθ½½εθΏͺAPP</div>
            </a>
        </div>
        <div class="right">
            <div class="box1">
                <dl>
                    <dt>ε³δΊεθΏͺεΏζΏ</dt>
                    <dd>ε³δΊ</dd>
                    <dd>η?‘ηε’ι</dd>
                    <dd>ε·₯δ½ζΊδΌ</dd>
                    <dd>ε?’ζ·ζε‘</dd>
                    <dd>εΈ?ε©</dd>
                </dl>
            </div>
            <div class="box2">
                <dl>
                    <dt>ζ°ζζε</dt>
                    <dd>ε¦δ½ζ³¨ε</dd>
                    <dd>ε¦δ½ζδΈΊεΏζΏθ</dd>
                    <dd>ε¦δ½ζ₯εζ΄»ε¨</dd>
                    <dd>ιε°ι?ι’ζδΉε</dd>
                </dl>
            </div>
            <div class="box3">
                <dl>
                    <dt>εδ½δΌδΌ΄</dt>
                    <dd>εδ½ζΊζ</dd>
                    <dd>εδ½ε―ΌεΈ</dd>
                </dl>
            </div>
        </div>
    </div>

</div>
</body>


</html>
