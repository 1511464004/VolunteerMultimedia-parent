<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=1000">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>新闻资讯</title>
    <script type="text/javascript" src="https://cdn.staticfile.org/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.staticfile.org/jquery-migrate/3.3.2/jquery-migrate.min.js"></script>
    <script type="text/javascript" src="https://css.zhiyuanyun.com/lib/common.js"></script>
    <!--[if lte IE 6]>
    <script language="javascript" type="text/javascript" src="https://css.zhiyuanyun.com/lib/png.js" ></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, li, input , a, a:hover, h2, b');
    </script>
    <![endif]-->
    <script type="text/javascript" src="https://css.zhiyuanyun.com/common/front.js"></script>
    <link href="https://css.zhiyuanyun.com/default/style.css" rel="stylesheet" type="text/css">
    <link href="https://css.zhiyuanyun.com/chinavol/style.css" rel="stylesheet" type="text/css">
    <style>
        * {
            margin: 0;
            padding: 0;
            text-align: left;
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
    <meta name="renderer" content="webkit|ie-stand">
</head>

<body>
<style>
    #reg_province_vol ul,
    #reg_province_org ul,
    #reg_province_login ul,
    #map_org ul,
    #map_opp ul {
        width: 100%;
        margin: 10px;
    }

    #reg_province_vol ul li,
    #reg_province_org ul li,
    #reg_province_login ul li,
    #map_org ul li,
    #map_opp ul li {
        float: left;
        width: 20%;
        text-align: center;
        line-height: 200%;
    }
</style>
<div class="main m10">
    <div class="wrap clearfix">
        <div class="conl">
            <div class="tbox" style="width:100%;">
                <div class="tit clearfix"><span class="l" style="border-left:0;">新闻资讯</span><span class="r"><a
                        href="//www.zhiyuanyun.com/cate/zyzg_xxdt/">更多></a> &nbsp;&nbsp;</span></div>
                <div class="tcon" style="border-left:0;">
                    <ul>
                        <c:forEach var="news" items="${newsCList}">
                        <li><a class="l"
                               href="${news.href}" target="_blank">${news.name}</a><span
                                class="r date">${news.date}</span></li>
                        </c:forEach>
<%--                        <li><a class="l"--%>
<%--                               href="//www.zhiyuanyun.com/show/1073062.html" target="_blank">贵州从江：打造特色志愿服务体系擦亮“志愿红”</a><span--%>
<%--                                class="r date">2021-11-23</span></li>--%>
<%--                        <li><a class="l"--%>
<%--                               href="//www.zhiyuanyun.com/show/1072937.html">北京：到2025年，全市应急志愿者数量力争达到常住人口的1%</a><span--%>
<%--                                class="r date">2021-11-11</span></li>--%>
<%--                        <li><a class="l"--%>
<%--                               href="//www.zhiyuanyun.com/show/1072865.html">内蒙古：华夏人寿为抗疫志愿者免费提供9000余万元保险保障捐赠50万元物资</a><span--%>
<%--                                class="r date">2021-11-08</span></li>--%>
<%--                        <li><a class="l"--%>
<%--                               href="//www.zhiyuanyun.com/show/1072685.html">甘肃：4.86万志愿者参与疫情防控志愿服务</a><span--%>
<%--                                class="r date">2021-10-28</span></li>--%>
<%--                        <li><a class="l"--%>
<%--                               href="//www.zhiyuanyun.com/show/1072616.html">北京海淀：星级志愿者及家庭成员开展沉浸式团建党建活动</a><span--%>
<%--                                class="r date">2021-10-21</span></li>--%>
<%--                        <li><a class="l"--%>
<%--                               href="//www.zhiyuanyun.com/show/1072547.html">安徽：首个志愿服务省级地方标准即将正式实施</a><span--%>
<%--                                class="r date">2021-10-19</span></li>--%>
<%--                        <li><a class="l"--%>
<%--                               href="//www.zhiyuanyun.com/show/1072549.html">湖北：将举办新时代巾帼志愿服务暖心故事征集展播活动</a><span--%>
<%--                                class="r date">2021-10-19</span></li>--%>
<%--                        <li><a class="l" href="//www.zhiyuanyun.com/show/1072552.html">安徽天长：志愿服务充电重实效 文明实践提档再加速</a><span class="r date">2021-10-18</span></li>--%>
<%--                        <li><a class="l"--%>
<%--                               href="//www.zhiyuanyun.com/show/1072550.html">河南郑州：2021年全国双创活动周郑州主会场志愿者宣誓出征</a><span--%>
<%--                                class="r date">2021-10-18</span></li>--%>
<%--                        <li><a class="l" href="//www.zhiyuanyun.com/show/1072379.html">山东：首个社区电商青年志愿服务站成立</a><span--%>
<%--                                class="r date">2021-09-30</span></li>--%>
<%--                        <li><a class="l" href="//www.zhiyuanyun.com/show/1072298.html">山东：拟立法规定 公务员考录、事业单位招聘可将志愿服务情况纳入考察内容</a>--%>
<%--                            <span class="r date">2021-09-27</span></li>--%>
<%--                        <li><a class="l"--%>
<%--                               href="//www.zhiyuanyun.com/show/1072297.html">甘肃兰州：举办2021年志愿服务项目展示交流会</a><span--%>
<%--                                class="r date">2021-09-27</span></li>--%>
<%--                        <li><a class="l" href="//www.zhiyuanyun.com/show/1072163.html">福建福州：疫情防控不松懈志愿服务不下线</a><span--%>
<%--                                class="r date">2021-09-21</span></li>--%>
<%--                        <li><a class="l"--%>
<%--                               href="//www.zhiyuanyun.com/show/1072146.html">广西南宁：第五届志愿服务项目交流洽谈会举行</a><span--%>
<%--                                class="r date">2021-09-18</span></li>--%>
<%--                        <li><a class="l" href="//www.zhiyuanyun.com/show/1072083.html">深入实施全民科学素质行动 广泛开展科技志愿服务</a>--%>
<%--                            <span class="r date">2021-09-14</span></li>--%>
<%--                        <li><a class="l"--%>
<%--                               href="//www.zhiyuanyun.com/show/1072046.html">中央文明办、民政部、退役军人事务部联合印发《关于加强退役军人志愿服务工作的指导意见》</a><span--%>
<%--                                class="r date">2021-09-08</span></li>--%>
<%--                        <li><a class="l" href="//www.zhiyuanyun.com/show/1071983.html">北京：服贸会上的服务者</a><span--%>
<%--                                class="r date">2021-09-07</span></li>--%>
<%--                        <li><a class="l"--%>
<%--                               href="//www.zhiyuanyun.com/show/1071967.html">山西忻州：五寨县新时代文明实践中心举办志愿服务平台操作及志愿项目设计管理培训交流</a><span--%>
<%--                                class="r date">2021-09-05</span></li>--%>
<%--                        <li><a class="l" href="//www.zhiyuanyun.com/show/1071961.html">北京：1500名志愿者服务服贸会</a><span--%>
<%--                                class="r date">2021-09-04</span></li>--%>
<%--                        <li><a class="l" href="//www.zhiyuanyun.com/show/1071775.html">河南开封：汴地“志愿红”闪耀在“疫”线 10万余名志愿者走向一线</a>--%>
<%--                            <span class="r date">2021-08-25</span></li>--%>
<%--                        <li><a class="l"--%>
<%--                               href="//www.zhiyuanyun.com/show/1071727.html">安徽蚌埠：“七个一”文明实践志愿服务助推文明城市建设</a><span--%>
<%--                                class="r date">2021-08-24</span></li>--%>
<%--                        <li><a class="l" href="//www.zhiyuanyun.com/show/1071696.html">江苏南京：两万余名教育系统志愿者投身抗疫一线—— “我的南京，我来守护”</a>--%>
<%--                            <span class="r date">2021-08-23</span></li>--%>
<%--                        <li><a class="l"--%>
<%--                               href="//www.zhiyuanyun.com/show/1071702.html">云南昆明：大观街道“三项举措”推进志愿服务常态长效</a><span--%>
<%--                                class="r date">2021-08-22</span></li>--%>
<%--                        <li><a class="l" href="//www.zhiyuanyun.com/show/1071506.html">湖南：130余万志愿者投身疫情防控 汇聚战“疫”力量</a>--%>
<%--                            <span class="r date">2021-08-12</span></li>--%>
<%--                        <li><a class="l" href="//www.zhiyuanyun.com/show/1071507.html">厦门集美：汇聚强大志愿力量 共筑坚实防疫长城</a>--%>
<%--                            <span class="r date">2021-08-11</span></li>--%>
<%--                        <li><a class="l" href="//www.zhiyuanyun.com/show/1071503.html">江苏南京：社区疫情防控一线 红色志愿者们在行动</a>--%>
<%--                            <span class="r date">2021-08-11</span></li>--%>
<%--                        <li><a class="l" href="//www.zhiyuanyun.com/show/1071390.html">湖北：61.7万志愿者投身疫情防控一线</a><span--%>
<%--                                class="r date">2021-08-09</span></li>--%>
<%--                        <li><a class="l" href="//www.zhiyuanyun.com/show/1071389.html">山东：132万余志愿者投身疫情防控一线</a><span--%>
<%--                                class="r date">2021-08-09</span></li>--%>
<%--                        <li><a class="l" href="//www.zhiyuanyun.com/show/1070893.html">浙江：出台志愿者激励办法</a><span--%>
<%--                                class="r date">2021-07-20</span></li>--%>
<%--                        <li><a class="l"--%>
<%--                               href="//www.zhiyuanyun.com/show/1070888.html">中国志愿者在东京：我们为奥运会上的中国健儿们送去祝福！</a><span--%>
<%--                                class="r date">2021-07-20</span></li>--%>
<%--                        <li><a class="l" href="//www.zhiyuanyun.com/show/1070834.html">湖北江夏：市民可在网上预约志愿服务</a><span--%>
<%--                                class="r date">2021-07-18</span></li>--%>
<%--                        <li><a class="l" href="//www.zhiyuanyun.com/show/1070835.html">山西平遥：汇聚志愿服务力量 释放文明实践活力</a>--%>
<%--                            <span class="r date">2021-07-18</span></li>--%>
<%--                        <li><a class="l"--%>
<%--                               href="//www.zhiyuanyun.com/show/1070737.html">河北衡水：推广“教师+志愿者”课后服务新模式</a><span--%>
<%--                                class="r date">2021-07-13</span></li>--%>
<%--                        <li><a class="l"--%>
<%--                               href="//www.zhiyuanyun.com/show/1070600.html">[中国青年志愿者]请党放心，强国有我！青年志愿者向党报到！</a><span--%>
<%--                                class="r date">2021-07-05</span></li>--%>
                    </ul>
                </div>
            </div>
            <div style="margin:10px;height:30px;">
                <div class="pagebar"><span class="now_class">1</span><a href="/cate/zyzg_xxdt/?p=2">2</a><a
                        href="/cate/zyzg_xxdt/?p=3">3</a><a href="/cate/zyzg_xxdt/?p=4">4</a></span><span
                        class="ptpage"> 4 页 / 224
                            记录</span>&nbsp;&nbsp;跳转&nbsp;<input type="text" class="ipt1" onkeypress="jump_page(this);"
                                                                style="width:40px;" value="1">&nbsp;页
                    <script>function jump_page(obj) { if (event.keyCode == 13) { var npage = $(obj).val(); var nurl = "/cate/zyzg_xxdt/?p=1"; nurl = nurl.replace(/p=1/, "p=" + npage); window.location.href = nurl; } }</script>
                </div>
            </div>
        </div>
        <div class="conr">
            <div class="tit">热点新闻</div>
            <div class="boxcon" style="width:250px;">
                <ul>
                    <c:forEach var="hotNews" items="${hotNewsList}">
                        <li><a href="${hotNews.href}" target="_blank">${hotNews.name}</a></li>
                    </c:forEach>
<%--                    <li><a href="//www.zhiyuanyun.com/show/1052462.html" target="_blank">关于确保顺利接收系统邮件的操作说明</a></li>--%>
<%--                    <li><a href="//www.zhiyuanyun.com/show/1032305.html">系统操作视频在线观看</a></li>--%>
<%--                    <li><a href="//www.zhiyuanyun.com/show/1032293.html">志愿云小程序介绍</a></li>--%>
<%--                    <li><a href="//www.zhiyuanyun.com/show/1032871.html">志愿云系统使用常见问题</a></li>--%>
<%--                    <li><a href="//www.zhiyuanyun.com/show/1033803.html">关于征集完善和改进“志愿云系统”建议的通知</a></li>--%>
                </ul>
            </div>

            <div class="tit">热点图片</div>
            <div class="boxcon boxcon_img" style="width:250px;">
                <ul class="clearfix">
                    <c:forEach var="hotPhoto" items="${hotPhotoList}">
                        <li>
                            <div class="rimg"><img
                                    src="${hotPhoto.img}">
                            </div><a href="${hotPhoto.href}" target="_blank">${hotPhoto.name}</a>
                        </li>
                    </c:forEach>
<%--                    <li>--%>
<%--                        <div class="rimg"><img--%>
<%--                                src="https://s.zhiyuanyun.com/www.chinavolunteer.cn/cms/202003/03/5e5e0cf2f11bf.jpg">--%>
<%--                        </div><a href="//www.zhiyuanyun.com/show/1058881.html" target="_blank">广西北流：志愿红逆行奋战在抗疫一线</a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <div class="rimg"><img--%>
<%--                                src="https://s.zhiyuanyun.com/www.chinavolunteer.cn/cms/202001/03/5e0efacd7b87e.jpg">--%>
<%--                        </div><a href="//www.zhiyuanyun.com/show/1055865.html">四川：绵阳市志愿服务联合会第一次会员代表大会暨成立大会召开</a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <div class="rimg"><img--%>
<%--                                src="https://s.zhiyuanyun.com/www.chinavolunteer.cn/cms/201912/19/5dfb3ec4bfdd3.png">--%>
<%--                        </div><a href="//www.zhiyuanyun.com/show/1055616.html">河南郑州：《郑州市关于加快推进志愿服务发展促进社会治理创新的意见》</a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <div class="rimg"><img--%>
<%--                                src="https://s.zhiyuanyun.com/www.chinavolunteer.cn/cms/201910/02/5d9412d9c3a72.jpg">--%>
<%--                        </div><a href="//www.zhiyuanyun.com/show/1054369.html">广西北流：开展“不忘初心 牢记使命”新时代文明实践志愿服务活动</a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <div class="rimg"><img--%>
<%--                                src="http://s.zhiyuanyun.com/www.chinavolunteer.cn/cms/201908/05/5d47fffce4e1e.JPG">--%>
<%--                        </div><a href="//www.zhiyuanyun.com/show/1053295.html">雨水无情人有情，雪中送炭情更深</a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <div class="rimg"><img--%>
<%--                                src="https://s.zhiyuanyun.com/www.chinavolunteer.cn/cms/201907/23/5d3641b9d6085.jpg">--%>
<%--                        </div><a href="//www.zhiyuanyun.com/show/1052927.html">《尊老敬老好少年》社会实践活动</a>--%>
<%--                    </li>--%>
                </ul>
            </div>

            <div class="tit">最新项目</div>
            <div class="boxcon">
                <ul>
                </ul>
            </div>
            <div style="clear:both;height:10px;"></div>
        </div>
    </div>
</div>
<link href="https://css.zhiyuanyun.com/default/kf.css" rel="stylesheet" type="text/css">
<style type="text/css">
    .kf_menu .kf-btn-mz {
        background: url(http://css.zhiyuanyun.com/default/img/r_mz1.png) 0px 0px no-repeat;
        background-color: #c54033;
        color: #fff;
    }

    .kf_menu .kf-btn-mz:hover {
        background: url(http://css.zhiyuanyun.com/default/img/r_mz.png) 0px 0px no-repeat;
        background-color: #f1f1f1 !important;
        color: #c54033;
    }

    .kf_menu a.kf-btn-mz,
    a.kf-btn-cz:visited {
        background: url(http://css.zhiyuanyun.com/default/img/r_mz1.png) 0px 0px no-repeat;
        background-color: #c54033;
        text-decoration: none;
        display: block;
    }
</style>
<script type="text/javascript" src="https://css.zhiyuanyun.com/default/kf.js"></script>
<script type="text/javascript">
    var kftophtml;
    kftophtml = "<div id=\"kf_menu\" class=\"kf_menu\">";
    kftophtml = kftophtml + "<div class=\"kf-btn kf-btn-wx\"><img class=\"wx_pic\" src=\"http://css.zhiyuanyun.com/default/img/zyyzj_wx.gif\"><div class=\"txt\">微信咨询</div></div>";
    kftophtml = kftophtml + "<div class=\"kf-btn kf-btn-xcx\"><img class=\"xcx_pic\" src=\"http://css.zhiyuanyun.com/default/img/zyy_xcx.png\"><div class=\"txt\">小程序</div></div>";
    kftophtml = kftophtml + "<div class=\"kf-btn kf-btn-top\"><div class=\"txt\">回到顶部</div></div>";
    kftophtml = kftophtml + "</div>";
</script>
<div id="kf_top"></div>
<!--baidu tongji-->
<script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?96c55a3847063dc0f3d6d32b55654297";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
<div class="footer">
    <div class="w">
        <div class="left">
            <img src="../img/logo2.png" alt="">
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
                    <dt>新手指南</dt>    <div class="footer">
                    <div class="w">
                        <div class="left">
                            <img src="../img/logo2.png" alt="">
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