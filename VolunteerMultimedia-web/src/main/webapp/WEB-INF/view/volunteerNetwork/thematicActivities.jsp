<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>专题活动</title>
    <script type="text/javascript" src="https://cdn.staticfile.org/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.staticfile.org/jquery-migrate/3.3.2/jquery-migrate.min.js"></script>
    <script type="text/javascript" src="https://css.zhiyuanyun.com/lib/common.js"></script>
    <script type="text/javascript" src="https://css.zhiyuanyun.com/lib/datepicker.js"></script>
    <script type="text/javascript" src="https://css.zhiyuanyun.com/common/login.js"></script>
    <!--[if lte IE 6]>
    <script language="javascript" type="text/javascript" src="https://css.zhiyuanyun.com/lib/png.js" ></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, li, input , a, a:hover, h2, b');
    </script>
    <![endif]-->
    <script type="text/javascript" src="https://css.zhiyuanyun.com/common/front.js"></script>
    <link href="https://css.zhiyuanyun.com/default/style.css" rel="stylesheet" type="text/css">
    <link href="https://css.zhiyuanyun.com/chinavol/style.css" rel="stylesheet" type="text/css">
    <meta name="renderer" content="webkit|ie-stand">
    <style>
        * {
            text-align: left;
            margin: 0;
            padding: 0;
        }
        .footer {
            height: 280px;
            width: 100%;
            background-color: #fff;
        }

        .footer .w {
            width: 1100px;
            margin: 0 auto;
            margin-top: 50px;
        }

        .footer .w .left {
            float: left;
            width: 445px;
            margin: 15px 0 0 50px;

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
            margin: 15px 15px 0 0;
        }

        .footer .w .right .box1 {
            float: left;
            padding-right: 130px;
        }

        .footer .w .right .box2 {
            float: left;
            padding-right: 130px;
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
<div class="main">
    <div class="wrap clearfix m10">

        <div class="conl">
            <div id="search_div">
                <form name="search_form" id="sform" action="" method="get">
                    <div class="m10 search_form vform" id="search_form">

                        <input type="hidden" name="tag" value=""><input type="hidden" name="area" value="0"><input
                            type="hidden" name="area2" value="0"><input type="hidden" name="state" value="2"><input
                            type="hidden" name="scope" value=""><input type="hidden" name="obj" value=""><input
                            type="hidden" name="members" value=""><input type="hidden" name="mode" value="list">
                        <ul class="list_search">
                            <li>
                                <span class="pretit">项目区域</span>
                                <span>四川省成都市</span>
                            </li>
                            <li>
                                <span class="pretit">服务类别</span>
                                <span>全部</span><a
                                    href="?tag=社区服务&area=0&area2=0&state=2&scope=&obj=&time_start=&time_end=&name=&members=&mode=list">社区服务</a>
                            </li>
                            <li>
                                <span class="pretit">项目状态</span>
                                <a
                                        href="?tag=&area=0&area2=0&state=&scope=&obj=&time_start=&time_end=&name=&members=&mode=list">全部</a><a
                                    href="?tag=&area=0&area2=0&state=1&scope=&obj=&time_start=&time_end=&name=&members=&mode=list">招募待启动</a><span>招募中</span><a
                                    href="?tag=&area=0&area2=0&state=3&scope=&obj=&time_start=&time_end=&name=&members=&mode=list">招募已结束</a><a
                                    href="?tag=&area=0&area2=0&state=4&scope=&obj=&time_start=&time_end=&name=&members=&mode=list">已结项</a>
                            </li>
                            <li>
                                <span class="pretit">报名范围</span>
                                <span>全部</span><a
                                    href="?tag=&area=0&area2=0&state=2&scope=0&obj=&time_start=&time_end=&name=&members=&mode=list">公开招募</a><a
                                    href="?tag=&area=0&area2=0&state=2&scope=1&obj=&time_start=&time_end=&name=&members=&mode=list">仅招募实名志愿者</a><a
                                    href="?tag=&area=0&area2=0&state=2&scope=2&obj=&time_start=&time_end=&name=&members=&mode=list">指定志愿团体招募</a><a
                                    href="?tag=&area=0&area2=0&state=2&scope=3&obj=&time_start=&time_end=&name=&members=&mode=list">设定免审密码招募</a>
                            </li>
                            <li>
                                <span class="pretit">服务对象</span>
                                <span>全部</span><a
                                    href="?tag=&area=0&area2=0&state=2&scope=&obj=儿童&time_start=&time_end=&name=&members=&mode=list">儿童</a><a
                                    href="?tag=&area=0&area2=0&state=2&scope=&obj=青少年&time_start=&time_end=&name=&members=&mode=list">青少年</a><a
                                    href="?tag=&area=0&area2=0&state=2&scope=&obj=孤寡老人&time_start=&time_end=&name=&members=&mode=list">孤寡老人</a><a
                                    href="?tag=&area=0&area2=0&state=2&scope=&obj=残障人士&time_start=&time_end=&name=&members=&mode=list">残障人士</a><a
                                    href="?tag=&area=0&area2=0&state=2&scope=&obj=优抚对象&time_start=&time_end=&name=&members=&mode=list">优抚对象</a><a
                                    href="?tag=&area=0&area2=0&state=2&scope=&obj=特困群体&time_start=&time_end=&name=&members=&mode=list">特困群体</a><a
                                    href="?tag=&area=0&area2=0&state=2&scope=&obj=其他&time_start=&time_end=&name=&members=&mode=list">其他</a>
                            </li>
                            <li>
                                <span class="pretit">项目人数</span>
                                <span>全部</span><a
                                    href="?tag=&area=0&area2=0&state=2&scope=&obj=&time_start=&time_end=&name=&members=1&mode=list">0</a><a
                                    href="?tag=&area=0&area2=0&state=2&scope=&obj=&time_start=&time_end=&name=&members=2&mode=list">1-100</a><a
                                    href="?tag=&area=0&area2=0&state=2&scope=&obj=&time_start=&time_end=&name=&members=3&mode=list">101-200</a><a
                                    href="?tag=&area=0&area2=0&state=2&scope=&obj=&time_start=&time_end=&name=&members=4&mode=list">201-500</a><a
                                    href="?tag=&area=0&area2=0&state=2&scope=&obj=&time_start=&time_end=&name=&members=5&mode=list">501-1000</a><a
                                    href="?tag=&area=0&area2=0&state=2&scope=&obj=&time_start=&time_end=&name=&members=6&mode=list">1000以上</a>
                            </li>
                        </ul>
                    </div>
                    <div id="explode_div"><a href="javascript:void(0);">更多筛选条件</a></div>
                    <div class="list_top clearfix">
                        <div class="l"><form action="/web/toThematicActivities.html">&nbsp;
                            项目名称&nbsp;<input name="name" type="text" class="ipt1" style="width:140px;"
                                             value="">&nbsp;
                            <a href="" class="but2"><button type="submit">搜索</button></a>
                        </form>
                        </div>

                        <div class="r">
                            <a class="atxt" href="" title="列表模式"></a>
                            <a class="amap" href="" title="地图模式"></a>&nbsp;&nbsp;
                        </div>
                    </div>
                </form>
            </div>
            <div class="m10">
                <ul class="list1 clearfix ptitle2">
                    <c:forEach var="va" items="${vActivityList}">
                        <li class="clearfix">
                            <div class="listimg listimg_opp">
                                <div style="background:#BEBEBE;color:#fff;;">2021-11-23</div>
                                <a href="${va.map}" title="${va.name}" target="_blank"
                                > <img src="/statics/images/${va.img}"></a>
                            </div>
                            <div class="listtxt">
                                <p class="ptitle"><a href="" title="${va.name}"
                                                     target="_blank">${va.name}</a></p>
                                <p class="popp clearfix"><span class="l">目标：${va.target} 岗位 ${va.job} 人</span>
                                    <c:if test="${va.day != 0}">
                                        <span class="r opp_time_state" style="background:green">招募中</span>
                                    </c:if>
                                    <c:if test="${va.day == 0}">
                                        <span class="r opp_time_state" style="background:red">招募结束</span></c:if>
                                </p>

                            </div>
                            <div class="percent1">
                                <div class="percent2" style="width:${va.plan*2.3}px;"></div>
                            </div>
                            <p class="prank clearfix" style="margin-top:0;border-top:0;">
                                <span class="l">项目进度<br>${va.plan}%</span>
                                <span class="l">报名人数<br>${va.number}</span>
                                <span class="l">
                                    <c:if test="${va.day != 0}">
                                        <font color="#c30">离招募结束</font><br>${va.day} 天</c:if>
                                    <c:if test="${va.day == 0}">
                                        <font color="orange">项目已结束</font>0 天</c:if>
                                </span>
                            </p>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="pagebar" style="margin:10px;"><span class="now_class">1</span><a
                    href="/app/opp/list.php?p=2">2</a><a href="/app/opp/list.php?p=3">3</a><a
                    href="/app/opp/list.php?p=4">4</a><a href="/app/opp/list.php?p=5">5</a><a
                    href="/app/opp/list.php?p=6">6</a></span>
                <span class="ptpage"> 1 页 / 9 记录</span>&nbsp;&nbsp;跳转&nbsp;<input type="text" class="ipt1"
                                                                                  onkeypress="jump_page(this);" style="width:40px;" value="1">&nbsp;页
                <script>function jump_page(obj) { if (event.keyCode == 13) { var npage = $(obj).val(); var nurl = "/app/opp/list.php?p=1"; nurl = nurl.replace(/p=1/, "p=" + npage); window.location.href = nurl; } }</script>
            </div>
            <div style="clear:both;height:10px;"></div>
        </div>
        <div class="conr">
            <div class="tit">推荐项目</div>
            <div class="boxcon">
                <ul>
                </ul>
            </div>
            <div class="tit">推荐团体</div>
            <div class="boxcon">
                <ul>
                </ul>
            </div>
        </div>
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
</body>

</html>