<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>我要帮扶</title>
    <meta property="wb:webmaster" content="06b8b2a5c9d26852" />
    <base target="_blank">
     <meta http-equiv="mobile-agent" content="format=xhtml; url=http://www.pubchn.com/wap/index.php?moduleid=28&catid=53">
     <meta http-equiv="mobile-agent" content="format=html5; url=http://www.pubchn.com/wap/index.php?moduleid=28&catid=53">
     <meta name="generator" content=""/>
     <link rel="shortcut icon" type="image/x-icon" href="http://www.pubchn.com/favicon.ico"/> <link rel="bookmark" type="image/x-icon" href="http://www.pubchn.com/favicon.ico"/>
     <link rel="archives" title="公益中国网_从我心做起" href="http://www.pubchn.com/archiver/"/>
     <link href="http://www.pubchn.com/skin/default/css/gystyle.css" rel="stylesheet" type="text/css" />
      <link rel="stylesheet" href="http://www.pubchn.com/skin/default/css/d_style.css" type="text/css" />
      <link rel="stylesheet" type="text/css" href="http://www.pubchn.com/skin/default/article.css"/>
    <script type="text/javascript">window.onerror=function(){return true;}</script><script type="text/javascript" src="http://www.pubchn.com/lang/zh-cn/lang.js"></script>
      <script type="text/javascript" src="http://www.pubchn.com/file/script/config.js"></script>
      <script type="text/javascript" src="http://www.pubchn.com/file/script/jquery.js"></script>
     <script type="text/javascript" src="http://www.pubchn.com/file/script/common.js"></script>
     <script type="text/javascript" src="http://www.pubchn.com/file/script/page.js"></script>
    <script type="text/javascript">
    var searchid = 28;
    </script>

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
      </head>
        <body>


      <script type="text/javascript">var sh = 'http://www.pubchn.com/community/search.php?catid=53';</script>

        <div class="d_listMain">

    <!--中间 开始-->
        <div class="d_listMainDivC fl">
            <div class="d_listMainDivCon">
                  <div class="d_listMConBt"><span class="d_splb yahei"> 我要帮扶　|</span><span class="d_splbyw c"></span></div>
                         <div class="d_listShiPin">
                           <ul>
                               <c:forEach var="assist" items="${assistList}">
                                   <li><a href="${assist.href}" target="_blank">
                                       <span class="d_sp_li_left fl">${assist.name}</span>
                                       <span class="d_sp_li_right2 fr">${assist.date}</span></a>
                                       <div class="clear"></div></li>
                               </c:forEach>
<%--                            <li><a href="https://gongyi.qq.com/succor/detail.htm?id=30652" target="_blank">--%>
<%--                                <span class="d_sp_li_left fl">一元罐爱孩子成长</span>--%>
<%--                                <span class="d_sp_li_right2 fr">2021-09-19</span></a><div class="clear"></div></li>--%>
<%--                                <li><a href="https://gongyi.qq.com/succor/detail.htm?id=15199" target="_blank">--%>
<%--                                    <span class="d_sp_li_left fl">保护长城加我一个</span>--%>
<%--                                    <span class="d_sp_li_right2 fr">2021-09-05</span></a><div class="clear"></div></li>--%>
<%--                                    <li><a href="https://love.alipay.com/donate/itemDetail.htm?name=2019080810212022418" target="_blank">--%>
<%--                                        <span class="d_sp_li_left fl">共建智能图书馆</span>--%>
<%--                                        <span class="d_sp_li_right2 fr">2021-08-09</span></a><div class="clear"></div></li>--%>
                                            </ul>
                                      </div>
    <!--分页 开始-->
        </div>
          </div>
    <!--中间 结束-->

    <!--右边 开始-->
        <div class="d_lsitMainDivR fr">
                                      </div>
    <!--右边 结束-->
        <div class="clear"></div>
                             </div>


    <div class="footer">
        <div class="w">
            <div class="left">
                <img src="${pageContext.request.contextPath}/statics/images/logo2.png" alt="">
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