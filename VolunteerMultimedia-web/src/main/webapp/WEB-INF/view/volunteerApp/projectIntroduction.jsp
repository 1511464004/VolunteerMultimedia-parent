<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>项目介绍</title>
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
        }

        .footer .w {
            width: 1160px;
            margin: 0 auto;
            margin-top: 50px;
            padding-top: 40px;
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
            margin: 15px 32px 0 0;
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
<div class="first">
    <div class="left1">
        <div class="head">

            <img src="${pageContext.request.contextPath}/statics/img/logo.png" class="logo">
            <span class="span">华迪志愿者APP</span>
        </div>
        <div class="headtwo">
            <div class="left2">
                <img src="${pageContext.request.contextPath}/statics/img/headtwo.png" class="intlogo">
                <span class="introduction">简介</span>
            </div>
            <div class="right">
                <div class="line"></div>
                <div class="rightone">
                    <a href="#">
                        <img src="${pageContext.request.contextPath}/statics/img/yy1.png" alt="语音">
                        <span>语音</span>
                    </a>
                </div>
                <div class="rightone">
                    <a href="#">
                        <img src="${pageContext.request.contextPath}/statics/img/bjj2.png" alt="语音">
                        <span>编辑</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="body">
            <div class="top">
                <p>${appPI.info1}</p>
                <p>${appPI.info2}
                </p>
                <p>${appPI.info3}>
                </p>
            </div>
<%--            <div class="top">--%>
<%--                <p>${appPI.info1}<a href="#">华迪志愿者APP</a>是一款基于<a href="#">全国志愿服务系统</a>的移动端应用，志愿者可以通过此移动端应用实现就近就便的报名参与附近的志愿项目和志愿团体等功能，志愿团体可以通过扫描--%>
<%--                    二维码进行志愿项目的记时等功能。</p>--%>
<%--                <p>${appPI.info2}<a href="#">华迪志愿服务信息系统</a>旨在解决全国志愿者实名注册、服务时间记录、服务记录转移接续、志愿服务供需对接、志愿服务组织在线管理等问题，实现各地志愿服务信息数据互通互联。--%>
<%--                </p>--%>
<%--                <p>${appPI.info3}随着技术构架和服务的不断完善，<a href="#">华迪志愿者APP</a>将逐步充实和完善包括扶贫开发、社区建设、环境保护、大型赛会、应急援救、海外服务等<a href="#">中国青年志愿者</a>各大领域，为广大志愿者和关注志愿者的朋友提供动态信息发布、资料下载、意见调查、志愿者报名（包括奥运志愿者申请的专门入口）、论坛交流等全方位的服务。--%>
<%--                </p>--%>
<%--            </div>--%>
            <div class="bot">
                <div class="aline">
                    <span class="spanone">中文名:</span>
                    <span class="spantwo">${appPI.name}</span>
                    <span class="spanone">相关活动:</span>
                    <span class="spantwo">${appPI.actives}</span>
                </div>
                <div class="line"></div>
                <div class="aline">
                    <span class="spanone">组成:</span>
                    <span class="spantwo">${appPI.compose}</span>
                    <span class="spanone">志愿者精神:</span>
                    <span class="spantwo">${appPI.spirit}</span>
                </div>
                <div class="line"></div>
                <div class="aline">
                    <span class="spanone">属性:</span>
                    <span class="spantwo">${appPI.attribute}</span>
                </div>
            </div>
        </div>
    </div>
    <div class="right">
        <div class="top">
            <div class="one">
                <img src="${pageContext.request.contextPath}/statics/img/2.png" alt="">
            </div>
            <div class="two">
                <span>华迪志愿者</span>
            </div>
        </div>
        <div class="bot">
            <div class="one">
                <img src="${pageContext.request.contextPath}/statics/img/ewm.png" alt="">
            </div>
            <div class="two">
                <span>扫描二维码或点击<a href="/register.jsp" target="_parent">注册</a> 加入我们吧</span>
            </div>
        </div>
    </div>
</div>
</div>

<div class="footer">
    <div class="w">
        <div class="left">
            <a href="http://www.hwadee.com/" target="_blank"> <img src="/statics/img/logo2.png" alt=""></a>
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