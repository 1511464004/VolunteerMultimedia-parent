<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>品牌活动_99公益日</title>
    <meta name="keywords" content="99公益日——慈心为人，善举济世,节日专题"/>
    <meta property="wb:webmaster" content="06b8b2a5c9d26852"/>
    <base target="_blank">
    <meta name="description" content=" 五年间，扶贫捐赠总额增长18倍，扶贫捐赠总人数激增68倍腾讯公益日前公布了99公益日近五年的详细数据，公众参与扶贫呈现出爆发"/>
    <meta name="generator" content=""/>
    <link rel="shortcut icon" type="image/x-icon" href="http://www.pubchn.com/favicon.ico"/>
    <link rel="bookmark" type="image/x-icon" href="http://www.pubchn.com/favicon.ico"/>
    <link rel="archives" title="公益中国网_从我心做起" href="http://www.pubchn.com/archiver/"/>
    <link href="http://www.pubchn.com/skin/default/css/gystyle.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="http://www.pubchn.com/skin/default/css/d_style.css" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="http://www.pubchn.com/skin/default/special.css"/>
    <script type="text/javascript" src="http://www.pubchn.com/lang/zh-cn/lang.js"></script>
    <script type="text/javascript" src="http://www.pubchn.com/file/script/config.js"></script>
    <script type="text/javascript" src="http://www.pubchn.com/file/script/jquery.js"></script>
    <script type="text/javascript" src="http://www.pubchn.com/file/script/common.js"></script>
    <script type="text/javascript" src="http://www.pubchn.com/file/script/page.js"></script>

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
<script type="text/javascript">var module_id = 11, item_id = 150;</script>
<div class="m">
    <div id="slide_5681" class="slide" style="width:1000px;height:350px;">
        <a href="" target="_blank"><img src="http://www.pubchn.com/file/upload/202009/07/10-11-24-99-135851.jpg"
                                        width="1000" height="350" alt="99公益日扶贫报告：五年扶贫捐赠人数激增68倍 超九成善款用于扶贫"/></a>
    </div>
    <script type="text/javascript" src="http://www.pubchn.com/file/script/slide.js"></script>
    <script type="text/javascript">new dslide('slide_5681');</script>
</div>
<div class="b10">&nbsp;</div>
<div class="m">
    <div class="box_head">
        <div><strong>专题介绍</strong></div>
    </div>
    <div class="box_body">
        <div class="special_intro">
            <div style="text-align: center;"><span style="font-size: 14px;">&nbsp;<span
                    style="font-family: Arial, 宋体; text-align: center;">&nbsp;</span><img
                    src="http://www.pubchn.com/file/upload/202009/04/13-59-06-89-135851.png" alt="11-45-13-33-135851"
                    width="600" height="291" data-bd-imgshare-binded="1"
                    style="font-family: Arial, 宋体; font-size: 12px; text-align: center; margin: 0px; padding: 0px; border: 0px;"/></span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px; text-align: center;">
                <span style="font-size: 14px;">&nbsp;</span></div>
            <span style="font-size: 14px;"><span style="font-family: Arial, 宋体;">&nbsp; &nbsp; &nbsp; &nbsp;五年间，扶贫捐赠总额增长18倍，扶贫捐赠总人数激增68倍&hellip;&hellip;腾讯公益日前公布了&ldquo;99公益日&rdquo;近五年的详细数据，公众参与扶贫呈现出爆发性增长的态势，可见随着国家脱贫攻坚战的不断深化，社会公众在扶贫领域的捐赠热情日益高涨。</span></span>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;数据显示，作为全球最大的互联网公益平台，腾讯公益平台发起的&ldquo;99公益日&rdquo;从2015年至2019年共吸引了超过3亿人次捐赠，总额超过76亿元，其中有约92%为扶贫类公益项目接收。扶贫相关捐赠的占比在逐年增长，去年就已经超过了95%。今年是全面建成小康社会的收官之年，也是打赢脱贫攻坚战的决胜之年。扶贫更是成为了即将到来的&ldquo;99公益日&rdquo;的关键词。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp;<strong
                    style="margin: 0px; padding: 0px; border: 0px;">&nbsp;&nbsp;92%的捐赠为扶贫类公益项目接收</strong></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;腾讯公益慈善基金会发起人兼荣誉理事长陈一丹曾表示，决胜脱贫攻坚、实现乡村振兴，是中国当前最紧迫的公益之一。纵观&ldquo;99公益日&rdquo;发起后五年间的数据，腾讯切实地践行了这一理念，&ldquo;互联网+扶贫&rdquo;在这五年中取得了跨越式的发展。&ldquo;99公益日&rdquo;公众参与扶贫呈现出爆发性增长态势，根据腾讯公益数据，2015年至2019年，&ldquo;99公益日&rdquo;期间公众扶贫捐赠总额从0.96亿上升至16.96亿元，捐赠总人次从67.89万上升至4618.33万，分别增长了18倍和68倍。同时，平均每笔捐赠额从141.37元下降至36.72元，小额捐赠的比例也保持在高位，显示公众参与的门槛不断降低，用户&ldquo;互联网+扶贫&rdquo;参与广度持续提升。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;截至2019年12月31日，腾讯公益平台累计支持1万多家慈善机构；为超过7万个募捐项目筹款；超过3亿人次用户通过腾讯公益平台捐赠，总额超过76亿元。据统计，这些捐赠有约92%为扶贫类公益项目接收。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;<strong
                    style="margin: 0px; padding: 0px; border: 0px;">所有扶贫领域捐赠人数增长均超10倍</strong></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;在2015~2019年，&ldquo;99公益日&rdquo;实现了健康、教育、助困、生态、特殊需要关怀扶贫领域的全面覆盖。过去5年中，所有类型扶贫项目的数量、捐赠总额以及捐赠总人数都取得了大幅地增长。2019年&ldquo;99公益日&rdquo;，教育、疾病、助困、生态和特殊关怀类项目捐赠总额相较2015年分别增长了21.30倍、8.45倍、20.51倍、11.53倍和25.34倍，所有领域捐赠总人次数均实现了超过10倍的增长。用户对扶贫项目投入的提升不仅仅集中在疾病、教育等热门领域，其他领域的扶贫项目也得到了更多用户的支持，实现了快速增长。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;2019年&ldquo;99公益日&rdquo;助困扶贫类项目总数较去年同期增长了2倍以上，增幅远超其他类型的项目。&ldquo;99公益日&rdquo;活动期间，助困扶贫类项目总计募集善款2.48亿元，较去年同期上升了197%，增速位居所有类型项目的首位。助困类项目直接帮扶困难地区以及困难群体，其募款额的快速增长体现了在全面建成小康社会关键之年慈善组织工作重心向扶贫倾斜，公众对扶贫工作的重视程度也在不断提升。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px; text-align: center;">
                <span style="font-size: 14px;"><img
                        src="http://www.pubchn.com/file/upload/202009/04/13-59-26-43-135851.png"
                        alt="11-46-01-41-135851" width="600" height="379" data-bd-imgshare-binded="1"
                        style="margin: 0px; padding: 0px; border: 0px;"/></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;数据显示，2019年&ldquo;99公益日&rdquo;慈善组织发起教育扶贫类项目最多，超过2200个，占项目总数的43%，募集的善款超过4.2亿元，占比25%。其中大额捐赠（&gt;500元）人数超过8.2万人次，筹得善款9000万元，为所有大类第一。项目数量大与大额捐赠多，体现出社会整体对教育的重视程度高，捐赠意愿强。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px; text-align: center;">
                <span style="font-size: 14px;"><img
                        src="http://www.pubchn.com/file/upload/202009/04/13-59-40-29-135851.png"
                        alt="11-46-26-94-135851" width="600" height="307" data-bd-imgshare-binded="1"
                        style="margin: 0px; padding: 0px; border: 0px;"/></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp;&nbsp;<strong
                    style="margin: 0px; padding: 0px; border: 0px;">&nbsp;扶贫捐赠实现全球覆盖，湖南去年位居首位</strong></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;从覆盖面来看，&ldquo;99公益日&rdquo;的扶贫捐赠覆盖全国乃至全球大部分国家及地区。以2019年&ldquo;99公益日&rdquo;的数据为例，除中国大陆以外，全球共有超过1500个城市和地区的用户参与，为历年之最。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;从扶贫捐赠总额省级排行来看，湖南省爱心用户共捐出超过2.44亿元善款，位列全国所有省、自治区、直辖市第一，北京市、广东省、重庆市、江苏省分列2~5位。扶贫捐赠金额TOP10的省份中，不仅有直辖市北京、重庆，有沿海经济大省广东、江苏、浙江，也有湖南、河南、四川等中西部人口大省。而全国范围内捐赠总人数最少的西藏自治区也有近万人参与，&ldquo;99公益日&rdquo;实现了国内省份扶贫力量的全面覆盖。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;而在国外，捐赠额最高的三个城市分别为东京、新加坡和纽约。&ldquo;99公益日&rdquo;的影响已经开始从国内向海外辐射，连接全球华人扶贫力量。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px; text-align: center;">
                <span style="font-size: 14px;"><img
                        src="http://www.pubchn.com/file/upload/202009/04/13-59-50-23-135851.png"
                        alt="11-46-51-62-135851" width="600" height="334" data-bd-imgshare-binded="1"
                        style="margin: 0px; padding: 0px; border: 0px;"/></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;除此之外，经过十多年探索，腾讯为村将自身定位为一个乡村治理的数字化平台，通过搭建平台，为村庄提供各类互联网技术和产品，解决基层党建、村务管理、村民增收、文化建设等各种乡村治理的难题。截至2020年2月29日，全国共有29个省、215个市、845个区县、2395个乡镇中的15176个村庄或社区加入腾讯为村平台，认证村民超过251万人。正如北京大学社会学系教授邱泽奇在调研后指出，腾讯为村是目前覆盖性最好的乡村数字治理平台。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;<strong
                    style="margin: 0px; padding: 0px; border: 0px;">相关数据</strong></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;"><strong style="margin: 0px; padding: 0px; border: 0px;"><br
                    style="margin: 0px; padding: 0px; border: 0px;"/>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   </strong></span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;"><strong style="margin: 0px; padding: 0px; border: 0px;">&nbsp; &nbsp; &nbsp; &nbsp;【总体数据】</strong></span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp;&nbsp;<strong
                    style="margin: 0px; padding: 0px; border: 0px;">&nbsp;筹款额五年激增13倍为万家公益组织注入超百亿</strong></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;自2015年开始，腾讯公益平台支持发起一年一度的&ldquo;99公益日&rdquo;，联合政学企研媒各界人士，携手数亿爱心公众，在线上和线下各种场景，以轻量化、多样化和社交化的方式参与公益，为数以万计的公益项目筹集资金。截至2019年底，腾讯公益平台吸引累计超过3.04亿人次网友，总计捐出超过76亿元善款，加上腾讯基金会和爱心企业的配捐资金，腾讯平台累计为1万多家公益慈善组织的6万多个项目注入了超过100亿元资金。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;在2019年，第五个99公益日在短短三天里吸引超过4800万人次捐款17.83亿元，加上超过2500家企业配捐3.07亿元、腾讯基金会配捐3.9999亿元，总计募得善款24.9亿元。全国30个地区3585家公益机构组织线下活动，共计约1万+场，覆盖全国200+城市的社区商圈。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;纵观2015年-2019年&ldquo;99公益日&rdquo;总体数据，可见筹款金额、筹款人次、配捐人次及人数、项目数和参与机构数均呈快速增长的态势。经过五年的发展，99公益日的筹款金额已经从2015年的1.2亿激增至17.83亿元，增长了13倍，而筹款人次更是激增了22倍。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px; text-align: center;">
                <span style="font-size: 14px;"><img
                        src="http://www.pubchn.com/file/upload/202009/04/13-59-59-26-135851.jpg"
                        alt="11-47-49-50-135851" width="600" height="570" data-bd-imgshare-binded="1"
                        style="margin: 0px; padding: 0px; border: 0px;"/></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp;&nbsp;<strong
                    style="margin: 0px; padding: 0px; border: 0px;">&nbsp;【数说战疫】</strong></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;<strong
                    style="margin: 0px; padding: 0px; border: 0px;">设立战疫基金超20亿元公益平台募捐超6亿</strong></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;在非常时期，腾讯更是体现了头部企业应有的社会担当。今年新冠肺炎疫情肆虐全球，腾讯一直在与时间赛跑。在1月24日除夕夜，腾讯基金会宣布设立首期3亿元应急防控基金，紧急采购口罩、防护服、防护面罩等医护物资支援武汉等地区。腾讯先后设立15亿元人民币国内战疫基金和1亿美元全球战疫基金，并不遗余力地提供科技能力支持，持续为全球战疫贡献力量。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;在资源筹集和社会动员方面，腾讯发挥了互联网平台的优势。腾讯基金会旗下的互联网募捐信息平台&ldquo;腾讯公益&rdquo;于1月23日设立抗疫筹款专题，支持100多家慈善机构发起160多个筹款项目，截至4月底募集捐款超过6亿元。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;除了输血之外，腾讯还通过互联网科技能力为疫情期间的社会和经济&ldquo;舒筋活血&rdquo;。随着疫情的发展，腾讯健康、腾讯医典、企业微信、腾讯会议、微信和QQ等产品和平台，快速推出和不断迭代远程诊疗、线上会议、健康出行、线上课堂等各类服务，助力抗击疫情、推进复工复产。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px; text-align: center;">
                <span style="font-size: 14px;"><img
                        src="http://www.pubchn.com/file/upload/202009/04/14-00-10-77-135851.jpg"
                        alt="11-48-31-55-135851" width="600" height="487" data-bd-imgshare-binded="1"
                        style="margin: 0px; padding: 0px; border: 0px;"/></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp;&nbsp;<strong
                    style="margin: 0px; padding: 0px; border: 0px;">&nbsp;【公益地图（地域维度）】</strong></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp;&nbsp;<strong
                    style="margin: 0px; padding: 0px; border: 0px;">&nbsp;捐款总额：</strong></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;"><strong style="margin: 0px; padding: 0px; border: 0px;"><br
                    style="margin: 0px; padding: 0px; border: 0px;"/>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 </strong></span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;"><strong style="margin: 0px; padding: 0px; border: 0px;">&nbsp; &nbsp; &nbsp; &nbsp;粤京连续五年稳居三甲，湖南进步最大</strong></span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;根据2015年~2019年99公益日的国内捐款数据，按省份（含直辖市）划分，捐款总额top10的省份相对比较稳定，每年上榜的省份重合度较高，主要包括广东省、北京市、湖南省、江苏省、重庆市、河北省、浙江省、山东省、河南省、四川省、上海市、福建省等12个省份（直辖市）。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;其中广东省和北京市连续5年稳居前三甲，广东省更是有4年位居全国首位。其中湖南省是进步最大的，该省在2015、2016年均位居第十位，但在2017~2019年间，已逐步跻身前三甲。而福建省则显得有点后劲不足，该省在2015、2016年分别位居第6、第8位，但从2017年开始，在top10榜中已看不到它的身影。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px; text-align: center;">
                <span style="font-size: 14px;"><img
                        src="http://www.pubchn.com/file/upload/202009/04/14-00-21-70-135851.jpg"
                        alt="11-49-21-94-135851" width="600" height="691" data-bd-imgshare-binded="1"
                        style="margin: 0px; padding: 0px; border: 0px;"/></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;<strong
                    style="margin: 0px; padding: 0px; border: 0px;">人均捐款额：</strong></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;"><strong style="margin: 0px; padding: 0px; border: 0px;"><br
                    style="margin: 0px; padding: 0px; border: 0px;"/>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         </strong></span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;"><strong style="margin: 0px; padding: 0px; border: 0px;">&nbsp; &nbsp; &nbsp; &nbsp;五年间西藏4次跻身前三，广东五年未进top10</strong></span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;在人均捐款额的各省排名中，其排序则与捐款总额的排名大相径庭。捐款总额4年均位居全国首位的广东，其人均捐款额排名在2015年-2019年间均未进入前十，在2019年更是排在第21位，人均捐款额为24.97元。而捐款总额从未进入top10的西藏自治区，却在这五年间4次跻身全国前三。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;湖南省可谓是最为进取的省份，在2015年，其人均捐款额排名仅为全国各省份的第28位，2016年晋升到25位，2017年大幅上升至13位，2018年跻身Top10，位居全国第6，2019年登顶位居全国首位，人均捐款40.62元。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;北京的捐款者则是出手最阔绰的，在五年间，有3年其人均捐款额位居全国首位，2018、2019这两年退居全国第二位。紧随其后的是上海，该市的人均捐款额在五年间有4次跻身全国前三甲。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px; text-align: center;">
                <span style="font-size: 14px;"><img
                        src="http://www.pubchn.com/file/upload/202009/04/14-00-32-23-135851.jpg"
                        alt="11-50-48-17-135851" width="600" height="1471" data-bd-imgshare-binded="1"
                        style="margin: 0px; padding: 0px; border: 0px;"/></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;<strong
                    style="margin: 0px; padding: 0px; border: 0px;">捐款额与经济实力的相关性：</strong></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;"><strong style="margin: 0px; padding: 0px; border: 0px;"><br
                    style="margin: 0px; padding: 0px; border: 0px;"/>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 </strong></span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;"><strong style="margin: 0px; padding: 0px; border: 0px;">&nbsp; &nbsp; &nbsp; &nbsp;捐款总额TOP10普遍是富省，人均捐款额高低与贫富无关</strong></span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;我们在&ldquo;99公益日&rdquo;的数据基础上，叠加了各省份的GDP排名，其中发现各省的捐款总额排名与其GDP的相关性较强。以2019年为例，捐款总额TOP10的省份有7个是GDP的TOP10阵营里的。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px; text-align: center;">
                <span style="font-size: 14px;"><img
                        src="http://www.pubchn.com/file/upload/202009/04/14-00-41-99-135851.jpg"
                        alt="11-51-17-36-135851" width="600" height="766" data-bd-imgshare-binded="1"
                        style="margin: 0px; padding: 0px; border: 0px;"/></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;而这种关联性在人均捐款额排名方面则显得较弱。以2019年的数据为例，国内各省人均捐款额的TOP10中，有5个省份的人均GDP排名在10名以外，其中更是有4个省份的人均GDP排名在20位之后。如人均GDP排名为全国28位的吉林省，人均捐款额就跻身全国前十；而人均GDP位居全国第六的广东，其人均捐款额排名却仅为第22名。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp;&nbsp;<strong
                    style="margin: 0px; padding: 0px; border: 0px;">&nbsp;城市筹款额：</strong></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;"><strong style="margin: 0px; padding: 0px; border: 0px;"><br
                    style="margin: 0px; padding: 0px; border: 0px;"/>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  </strong></span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;"><strong style="margin: 0px; padding: 0px; border: 0px;">&nbsp; &nbsp; &nbsp; &nbsp;每年TOP10的城市重合度高，与GDP排名关联度强</strong></span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;以城市为比较对象，我们整理了从2015年-2019年每年各城市在99公益日期间的筹款额，并进行排名。其中发现，每年的TOP10城市重合度较高，也就是每年的TOP10城市都基本相同，其中每年都上榜的城市包括北京、重庆、深圳、上海、广州、杭州、成都等7个城市。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px; text-align: center;">
                <span style="font-size: 14px;"><img
                        src="http://www.pubchn.com/file/upload/202009/04/14-00-51-48-135851.jpg"
                        alt="11-51-50-82-135851" width="600" height="1490" data-bd-imgshare-binded="1"
                        style="margin: 0px; padding: 0px; border: 0px;"/></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;叠加了各个城市的GDP排名数据之后，可见筹款额的多寡与GDP的高低呈较强的正向相关性，也就是筹款额TOP10的城市中，大部分是GDP排名较前的城市，而且大多是经济实力较强、文明程度较高的城市。以2019年的排名为例，筹款额的TOP10城市中，有8个城市的GDP排在全国前十。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;<strong
                    style="margin: 0px; padding: 0px; border: 0px;">【公益出海】</strong></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;<strong
                    style="margin: 0px; padding: 0px; border: 0px;">境外国家和地区TOP10捐款额五年增4倍美国激增近8倍</strong></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp;</span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;凭借着腾讯在全球的影响力，99公益日的国际化程度也在逐年提升。2015年以来，99公益日期间，在腾讯公益平台上捐款的人群几乎覆盖全球所有主要国家和地区。据统计，2015年-2019年，99公益日捐款额排在全球前十的境外国家和地区的捐赠情况如下，每年入围TOP10的国家和地区均较为稳定，其中美国、日本、香港连续四年位居前三甲。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px; text-align: center;">
                <span style="font-size: 14px;"><img
                        src="http://www.pubchn.com/file/upload/202009/04/14-01-15-92-135851.jpg"
                        alt="11-52-17-14-135851" width="600" height="2070" data-bd-imgshare-binded="1"
                        style="margin: 0px; padding: 0px; border: 0px;"/></span></div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px;"><span
                    style="font-size: 14px;">&nbsp; &nbsp; &nbsp; &nbsp;通过数据统计发现，境外TOP10的捐款总额在逐年上升，2015年为1922万元，2019年已飙升至9631万元，激增了4倍。其中美国的捐赠额在2015年为777万元，2019年则剧增至6709万元，增长了近8倍。由此可见，&ldquo;99公益日&rdquo;在全球的影响力逐年快速扩大。</span>
            </div>
            <div style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, 宋体; font-size: 12px; text-align: center;">
                <span style="font-size: 14px;"><img
                        src="http://www.pubchn.com/file/upload/202009/04/14-01-29-89-135851.jpg"
                        alt="11-52-37-28-135851" width="600" height="299" data-bd-imgshare-binded="1"
                        style="margin: 0px; padding: 0px; border: 0px;"/></span></div>
        </div>
    </div>
</div>
<div class="b10">&nbsp;</div>
<div class="m">
    <div class="m_l f_l">
        <table cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td valign="top" width="320">

                </td>
                <td width="10"></td>
                <td valign="top">
                    <div class="headline">
                        <table width="100%">
                        </table>
                    </div>
                    <div class="b5"></div>
                    <div class="subline">
                        <ul>
                        </ul>
                    </div>
                </td>
            </tr>
        </table>
    </div>
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
