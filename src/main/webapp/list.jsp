<%--
  Created by IntelliJ IDEA.
  User: a'su's
  Date: 2018/12/7
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="mobile-agent" content="format=html5; url=http://m.lvmama.com/channel/around/">

    <title>列表页</title>
    <link rel="stylesheet" type="text/css" href="css/chanel.css">
    <link rel="stylesheet" href="css/css.css">
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>

    <meta name="keywords" content="自由行,自助游,自由自在"/>
    <meta name="description" content=""/>
    <!--统一频道样式表（新频道通用） -->
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/pindao1.js"></script>

    <!--[if IE 6]>
    <script src="js/iepng.js"></script>
    <script type="text/javascript">
        EvPNG.fix('.icon-quan, .icon-weixin, .icon-weibo, .p_city i');
    </script>
    <![endif]-->
</head>
<body class="pindao">
<!--头文件-->
<!-- 公共头部开始  -->
<!-- topbar\\ -->
<div class="p_lv-topbar">
    <div class="tapbar-inner p_wrap">
        <ul class="p_top-link">
            <li class="p_dropdown" id="wdlmm"><a class="p_lvlink p_lvlink1" href="javascript:void(0)" rel="nofollow">我的在途中 </a>
                <div class="p_top-sub p_top-sub1"> <a href="javascript:void(0)" rel="nofollow">我的订单</a> <a href="javascript:void(0)" rel="nofollow">我的积分</a> <a href="javascript:void(0)" rel="nofollow">我的优惠券</a> <a href="javascript:void(0)" rel="nofollow" target="_blank">我的会员卡</a> <a href="javascript:void(0)" rel="nofollow" target="_blank"，>我的礼品卡</a> </div>
            </li>
            <!--<li><a class="p_lvlink" href="http://login.lvmama.com/nsso/onlineApplyMemberCard/index.do" rel="nofollow">申请会员卡</a></li>-->
            <li><a class="p_lvlink" href="http://www.lvmama.com/points" rel="nofollow">积分商城</a></li>
            <li><a class="p_lvlink" href="javascript:void(0)" rel="nofollow"><i class="icon-quan"></i>团购预约</a></li>
            <li><a class="p_lvlink" href="javascript:void(0)" rel="nofollow">帮助</a></li>
            <li class="p_dropdown p_join-weixin"><a class="p_lvlink p_lvlink1" href="javascript:void(0);" rel="nofollow"><i class="icon-weixin"></i>+微信</a>
                <div class="p_weixin"><span class="p_wechatcode"></span></div>
            </li>
            <li class="sitemap"><a class="p_lvlink" target="_self" href="javascript:bookmark()" rel="nofollow">收藏本站</a></li>
            <li><a class="p_lvlink"  href="javascript:void(0)" rel="nofollow"><i class="icon-weibo"></i>+微博</a></li>
            <li class="sitemap"><a href="javascript:void(0)">网站地图</a></li>
            <li class="site-mobile"><a class="p_lvlink" href="javascript:void(0)" rel="nofollow" target="_blank"><i class="icon-mobile"></i>手机版</a></li>
        </ul>
        <div class="p_welcome"> <span>您好，欢迎来到在途中！</span> <a class="p_login" href="javascript:void(0)">登录</a> <a href="javascript:void(0)">注册</a> </div>
    </div>
</div>
<!-- //.topbar -->

<div class="p_header">
    <div class="header-inner p_wrap"> <span id="p_hotline" class="p_lv-hotline">1010-6060</span> <a class="p_lv-logo" href="javascript:void(0)">旅游网</a>
        <div id="p_adPro" data-type="ad" class="p_lv-adPro"></div>
    </div>
</div>
<!-- //.lv-header -->

<div id="pnav" class="p_pnav pnav clearfix">
    <div class="p_wrap">
        <ul class="pnav-main">
            <li id="home">
                <a href="javascript:;"  hidefocus="false">首页</a>
            </li>
            <li id="ticket">
                <a href="javascript:;" hidefocus="false">景点门票</a>
            </li>
            <li id="freetour">
                <a href="javascript:;" hidefocus="false">周边游</a>
            </li>
            <li id="destroute" class="current_nav">
                <a href="javascript:;" hidefocus="false">国内游</a>
            </li>
            <li id="abroad" class="">
                <a href="javascript:;" hidefocus="false">出境游</a>
            </li>
            <li id="liner" class="">
                <a href="javascript:;" hidefocus="false">邮轮</a>
                <i class="icon-rm"></i>
            </li>
            <li id="hotel">
                <a href="javascript:;" rel="nofollow" hidefocus="false">酒店</a>
                <i class="icon-pnavHotel"></i>
            </li>
            <li id="holiday" class="">
                <a href="javascript:;" hidefocus="false">度假酒店</a>
            </li>
            <!--<li id="globalhotel">
            <a href="http://hotel.lvmama.com" rel="nofollow">海外酒店</a>
        </li>
        -->
            <li id="train">
                <a href="javascript:void(0)" rel="nofollow" hidefocus="false">火车票</a>
            </li>
            <li id="flight">
                <a href="javascript:void(0)" rel="nofollow" hidefocus="false">国际机票</a>
            </li>
            <li id="custom">
                <a href="javascript:void(0)" rel="nofollow" hidefocus="false">定制游</a>
            </li>
            <li id="tuangou">
                <a href="javascript:void(0)" hidefocus="false">特卖会</a>
                <i class="icon-tg"></i>
            </li>
        </ul>
        <ul class="pnav-small">
            <li id="lvcomment">
                <a href="javascript:void(0)" rel="nofollow" hidefocus="false">点评</a>
            </li>
            <li id="lvguide">
                <a href="javascript:void(0)" hidefocus="false">攻略</a>
            </li>
            <li id="lvplace">
                <a target="_blank" href="javascript:void(0)" hidefocus="false">
                    <span>专题</span>
                </a>
            </li>
            <li id="lvinfo">
                <a href="javascript:void(0)" hidefocus="false">资讯</a>
            </li>
            <li id="lvbbs">
                <a href="javascript:void(0)" rel="nofollow" hidefocus="false">社区</a>
            </li>
        </ul>
    </div>
</div>
<!-- //div.pnav -->
<!-- 公共头部结束  -->

<!-- 搜索框区域\\ -->
<div class="p_search-box p_wrap">
    <div class="p_switch-city">
        <div class="p_citylist">
            <div class="p_line"></div>
            <dl>
                <dt>华北</dt>
                <dd> <a cityid="110000" provinceid="110000" href="javascript:void(0)">北京</a> <a cityid="120000" provinceid="120000" href="javascript:void(0)">天津</a> <a cityid="140100" provinceid="140000" href="javascript:void(0)">太原</a> <a cityid="130200" provinceid="130000" href="javascript:void(0)">唐山</a> <a cityid="150100" provinceid="150000" href="javascript:void(0)">呼和浩特</a> <a cityid="150200" provinceid="150000" href="javascript:void(0)">包头</a> <a cityid="130100" provinceid="130000" href="javascript:void(0)">石家庄</a> </dd>
            </dl>
            <dl>
                <dt>华东</dt>
                <dd> <a cityid="310000" provinceid="310000" href="javascript:void(0)">上海</a> <a cityid="320100" provinceid="320000" href="javascript:void(0)">南京</a> <a cityid="330100" provinceid="330000" href="javascript:void(0)">杭州</a> <a cityid="340100" provinceid="340000" href="javascript:void(0)">合肥</a> <a cityid="350200" provinceid="350000" href="javascript:void(0)">厦门</a> <a cityid="370100" provinceid="370000" href="javascript:void(0)">济南</a> <a cityid="360100" provinceid="360000" href="javascript:void(0)">南昌</a> <a cityid="320500" provinceid="320000" href="javascript:void(0)">苏州</a> <a cityid="320200" provinceid="320000" href="javascript:void(0)">无锡</a> <a cityid="330200" provinceid="330000" href="javascript:void(0)">宁波</a> <a cityid="320400" provinceid="320000" href="javascript:void(0)">常州</a> <a cityid="330400" provinceid="330000" href="javascript:void(0)">嘉兴</a> <a cityid="320600" provinceid="320000" href="javascript:void(0)">南通</a> <a cityid="321000" provinceid="320000" href="javascript:void(0)">扬州</a> <a cityid="321100" provinceid="320000" href="javascript:void(0)">镇江</a> <a cityid="330600" provinceid="330000" href="javascript:void(0)">绍兴</a> <a cityid="330300" provinceid="330000" href="javascript:void(0)">温州</a> <a cityid="330700" provinceid="330000" href="javascript:void(0)">金华</a> <a cityid="331000" provinceid="330000" href="javascript:void(0)">台州</a> <a cityid="320900" provinceid="320000" href="javascript:void(0)">盐城</a> </dd>
            </dl>
            <dl>
                <dl>
                    <dt>东北</dt>
                    <dd> <a cityid="210100" provinceid="210000" href="javascript:void(0)">沈阳</a> <a cityid="210200" provinceid="210000" href="javascript:void(0)">大连</a> <a cityid="230100" provinceid="230000" href="javascript:void(0)">哈尔滨</a> <a cityid="220100" provinceid="220000" href="javascript:void(0)">长春</a> </dd>
                </dl>
                <dt>中南</dt>
                <dd> <a cityid="410100" provinceid="410000" href="javascript:void(0)">郑州</a> <a cityid="420100" provinceid="420000" href="javascript:void(0)">武汉</a> <a cityid="430100" provinceid="430000" href="javascript:void(0)">长沙</a> <a cityid="440100" provinceid="440000" href="javascript:void(0)">广州</a> <a cityid="440300" provinceid="440000" href="javascript:void(0)">深圳</a> <a cityid="450500" provinceid="450000" href="javascript:void(0)">北海</a> <a cityid="450100" provinceid="450000" href="javascript:void(0)">南宁</a> <a cityid="450300" provinceid="450000" href="javascript:void(0)">桂林</a> <a cityid="460100" provinceid="460000" href="javascript:void(0)">海口</a> <a cityid="F20001" provinceid="F20000" href="javascript:void(0)">澳门</a> <a cityid="F10001" provinceid="F10000" href="javascript:void(0)">香港</a> </dd>
            </dl>
            <dl>
                <dt>西南</dt>
                <dd> <a cityid="500108" provinceid="500000" href="javascript:void(0)">重庆</a> <a cityid="510100" provinceid="510000" href="javascript:void(0)">成都</a> <a cityid="520100" provinceid="520000" href="javascript:void(0)">贵阳</a> <a cityid="540100" provinceid="540000" href="javascript:void(0)">拉萨</a> </dd>
            </dl>
            <dl>
                <dt>西北</dt>
                <dd> <a cityid="610100" provinceid="610000" href="javascript:void(0)">西安</a> <a cityid="640100" provinceid="640000" href="javascript:void(0)">银川</a> <a cityid="630100" provinceid="630000" href="javascript:void(0)">西宁</a> <a cityid="650100" provinceid="650000" href="javascript:void(0)">乌鲁木齐</a> </dd>
            </dl>
        </div>
        <div class="p_city"> <i></i> <a class="p_switch-info">切换城市</a> <span>您现在 <b>深圳</b> </span> </div>
    </div>
    <div class="p_from">
        <div class="p_city1" style="border-bottom-color: rgb(70, 140, 0);  100px 12px no-repeat;">深圳
            <div class="p_city1list" style="display: none;">
                <dl>
                    <dt>热门出发城市</dt>
                    <dd> <a href="javascript:void(0)">北京</a> <a href="javascript:void(0)">北京</a> <a href="javascript:void(0)">北京</a> <a href="javascript:void(0)">北京</a> <a href="javascript:void(0)">北京</a> <a href="javascript:void(0)">北京</a> <a href="javascript:void(0)">北京</a> </dd>
                </dl>
                <dl>
                    <dt>其他出发城市</dt>
                    <dd class="p_noborderb"> <a href="javascript:void(0)">北京</a> <a href="javascript:void(0)">北京</a> <a href="javascript:void(0)">北京</a> <a href="javascript:void(0)">北京</a> <a href="javascript:void(0)">北京</a> <a href="javascript:void(0)">北京</a> <a href="javascript:void(0)">北京</a> <a href="javascript:void(0)">北京</a> <a href="javascript:void(0)">北京</a> <a href="javascript:void(0)">北京</a> <a href="javascript:void(0)">北京</a> <a href="javascript:void(0)">北京</a> <a href="javascript:void(0)">北京</a> <a href="javascript:void(0)">北京</a> </dd>
                </dl>
            </div>
        </div>
        <form class="p_form-search">
            <input type="" class="p_search_in" value="世界杯">
            <input id="search" type="button" value="搜索" style="height: 29.97px;"/>
            <i class="p_recor"></i>
        </form>
    </div>
    <span class="p_hot-travel"> <a target="_blank" href="http://www.lvmama.com/zt/lvyou/hqc" hidefocus="false">华侨城</a> <a target="_blank" href="http://www.lvmama.com/dest/shenzhenhuanlegu" hidefocus="false">欢乐谷</a> <a target="_blank" href="http://www.lvmama.com/dest/gulongxiaguojipiaoliujidi" hidefocus="false">漂流</a> <a target="_blank" href="http://www.lvmama.com/zt/lvyou/fjd" hidefocus="false">沙滩</a> <a target="_blank" href="http://www.lvmama.com/search/freetour/229-231.html" hidefocus="false">深圳</a> <a target="_blank" href="http://www.lvmama.com/product/74580" hidefocus="false">长隆圣诞节</a> </span> </div>
<!-- 搜索框区域\\ -->

<!-- //搜索框区域 -->
<!--主要内容开始-->
<!-- 小导航开始  -->
<div class="l_lv-crumbs l_wrap">
    <p>
        <b>您当前所处的位置：</b>
        <a href="javascript:void(0)">首页</a> &gt; <a href="javascript:void(0)">成都出发</a> &gt; 马尔代夫
    </p>
</div>
<!-- 小导航结束  -->
<div class="l_ui-content l_wrap">

    <div class="search-aside">
        <!-- 本期团购\\ -->
        <div class="aside-box lv-bd side-stuan clearfix">
            <h3 class="side-title"><strong>本期团购</strong><small>进行中</small></h3>
            <ul class="stuan-list">
                <li class="stuan-item">
                    <p class="img">
                        <a target="_blank" href="javascript:void(0)" ><img src="images/9O0MF.jpg" width="178" height="89"></a>
                        <span class="tran-bg"></span><span class="stuan-time">190天0时35分57秒</span>                       </p>
                    <p class="tuan-title"><a rel="nofollow" target="_blank" href="javascript:void(0)" >【5.25出发】马尔代夫7日游*【出境游团购】享Kihaad吉哈德度假酒店+回程赠送香港酒店一晚+国泰航空+蜜月特别赠送套餐+酒店餐饮一价全包……度假天堂，怎容错过？</a></p>
                    <p><a rel="nofollow" target="_blank" href="javascript:void(0)" class="abtn abtn-block" >立即抢购</a>
                        <span>¥<i>14600</i></span>
                        <dfn>¥<i>13179</i></dfn>
                    </p>
                </li>
            </ul>
            <p><a rel="nofollow" class="link-more" target="_blank" href="javascript:void(0)" >更多团购产品&gt;&gt;</a></p>
        </div>
        <!-- //本期团购 -->
        <!-- 旅游推荐\\ -->
        <div class="aside-box lv-bd travel-index">

            <h3 class="side-title">
                <a target="_blank" href="javascript:void(0)" >马尔代夫旅游首页</a>
            </h3>

            <a target="_blank" href="javascript:void(0)" >
                <img src="images/1288335977153_small.jpg" width="178" height="89">
            </a>
            <p>
                这些珊瑚岛中只有约200座有人居住，其中不少隶属于世界知名的酒店集团。一个小岛就是一座度假酒店，设计师们在方寸土地上发挥无尽想象，设计出美轮美奂的花园和梦幻般的水上屋。几乎与世隔绝的环境和舒适的酒店设施、众多的娱乐项目、无微不至的服务。
                <a rel="nofollow" class="link-more" target="_blank" href="javascript:void(0)" >更多&gt;&gt;</a>
            </p>
        </div>
        <!-- //旅游推荐 -->

        <!-- 点评\\ -->
        <div class="aside-box lv-bd side-reviews">

            <h3 class="side-title">
                <a target="_blank" href="javascript:void(0)" >马尔代夫点评</a>
            </h3>

            <div id="cmt_data_div" class="score-reviews" placeid="3546"><p class="score-total">
                <dfn><i>4.31</i>分</dfn>
                <span class="re-star"><span class="starbg"><i style="width:86.2%"></i></span></span>
                <a rel="nofollow" class="comment-num" href="javascript:void(0)" target="_blank">45条评论</a>
            </p>
                <p class="score-item">
                    人气：4.55分<br>
                    规模：4.40分<br>
                    观光：4.58分<br>
                    服务：4.48分<br>
                </p>
            </div>
        </div>
        <!-- //点评 -->
        <!-- 攻略\\ -->
        <div id="guide_data_div" class="aside-box lv-bd side-guide" placeid="3546">
            <h3 class="side-title">
                <a id="guide_title_a" target="_blank" href="javascript:void(0)" >马尔代夫旅游攻略</a>
            </h3>
            <div class="imgtext clearfix">
                <p class="img">
                    <a target="_blank" href="javascript:void(0)">
                        <img src="images/20140327044937977.jpg" width="89" height="124"></a>
                </p>
                <p>攻略版本：<br>第六版<br><br>更新时间：<br>2014-03-27<br>
                    <a target="_blank" class="abtn abtn-gray" href="javascript:void(0)">去下载</a>
                </p>
            </div>
            <ul class="guide-list">
                <li class="guide-item">
                    <a target="_blank" href="javascript:void(0)">马尔代夫海龟岛浪漫之旅</a>
                    <span class="guide-item-info">2014-06-01&nbsp;&nbsp;&nbsp;&nbsp;浏览39次</span>
                </li>
                <li class="guide-item">
                    <a target="_blank" href="javascript:void(0)">归来 我的马尔代夫香格里拉岛之圆梦之旅</a>
                    <span class="guide-item-info">2014-05-23&nbsp;&nbsp;&nbsp;&nbsp;浏览57次</span>
                </li>
                <li class="guide-item">
                    <a target="_blank" href="javascript:void(0)">肥肥安游遍全世界——Maldives</a>
                    <span class="guide-item-info">2014-02-06&nbsp;&nbsp;&nbsp;&nbsp;浏览2365次</span>
                </li>
            </ul>
        </div>
        <!-- //攻略 -->

        <!-- //推荐-->

    </div>
    <!-- // div .search-aside 右边结束-->

    <div class="search-main search-line">
        <div class="search-result-nav">
            <ul class="search-nav hor clearfix">
                <li class="item-all search-nav-item qbgl search-nav-item-selected ">
                    <a href="javascript:void(0)" ><b>全部线路</b></a>
                </li>
                <li class="search-nav-item zyx">
                    <a href="javascript:void(0)" ><b>自由行</b>[机票+酒店]<small>(19)</small></a>
                </li>

            </ul>
        </div>
        <div class="l_cl"></div>


        <!-- 搜素筛选开始\\ -->
        <div class="search-filter">
            <div class="filter-info clearfix"><span class="result-info">共找到<i>35</i>条结果。</span>
                <dl id="your-choices" class="your-choices">
                </dl>
            </div>


            <ul class="filter-tags u-zyx">
                <li>
                    <a href="javascript:void(0);" class="view-more" >更多<i class="arrow"></i></a>
                    <span>酒店类型：</span>
                    <p>
                        <a rel="nofollow" class="s-tag selected" href="javascript:void(0)" >全部</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >沙屋(28)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >水屋(27)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >海边酒店(3)</a>
                    </p>
                </li>
                <li>
                    <a href="javascript:void(0);" class="view-more"  style="display: inline;">更多<i class="arrow"></i></a>
                    <span>酒店位置：</span>
                    <p>
                        <a rel="nofollow" class="s-tag selected" href="javascript:void(0)" >全部</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >哈库拉岛(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >圣塔拉富士(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >中央格兰德岛(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >悦椿庄海龟岛(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >希尔顿伊露岛(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >美露丽芙岛(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >LUX度假酒店(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >第六感拉姆岛(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >月桂岛(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >四季库塔岛(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >悦榕庄酒店(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >莉莉岛(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >幸福岛(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >萨芙莉(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >双鱼岛(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >白金岛(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >卡尼岛(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >梦幻岛(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >康杜玛岛(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >假日酒店(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >吉哈德岛(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >瓦度岛(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >天堂岛(1)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >绚丽岛(1)</a>
                    </p>
                </li>

                <li>
                    <a href="javascript:void(0);" class="view-more" >更多<i class="arrow"></i></a>
                    <span>上岛交通：</span>
                    <p>
                        <a class="s-tag selected" href="javascript:void(0)" >全部</a>
                        <a class="s-tag " href="Z1131" >水上飞机(8)</a>
                        <a class="s-tag " href="Z1020" >快艇(7)</a>
                        <a class="s-tag " href="Z929" >内陆飞机+快艇(6)</a>
                    </p>
                </li>
                <li>
                    <a href="javascript:void(0);" class="view-more" >更多<i class="arrow"></i></a>
                    <span>岛屿特色：</span>
                    <p>
                        <a class="s-tag selected" href="javascript:void(0)" >全部</a>
                        <a class="s-tag " href="javascript:void(0)" >浪漫尊享(17)</a>
                        <a class="s-tag " href="javascript:void(0)" >甜蜜蜜月(14)</a>
                        <a class="s-tag " href="javascript:void(0)" >超值特惠(10)</a>
                        <a class="s-tag " href="javascript:void(0)" >一价全包(6)</a>
                    </p>
                </li>
                <li>
                    <a href="javascript:void(0);" class="view-more" >更多<i class="arrow"></i></a>
                    <span>游玩天数：</span>
                    <p>
                        <a rel="nofollow" class="s-tag selected" href="javascript:void(0)" >全部</a>
                        <a rel="nofollow" class="s-tag " href="I6" >6天(34)</a>
                        <a rel="nofollow" class="s-tag " href="I7" >7天(1)</a>
                    </p>
                </li>
                <li>
                    <a href="javascript:void(0);" class="view-more" >更多<i class="arrow"></i></a>
                    <span>往返交通：</span>
                    <p>
                        <a rel="nofollow" class="s-tag selected" href="javascript:void(0)" >全部</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >直飞(16)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >飞机(10)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >直飞往返(5)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >美佳航空(3)</a>
                    </p>
                </li>
                <li>
                    <a href="javascript:void(0);" class="view-more" >更多<i class="arrow"></i></a>
                    <span>特色品牌：</span>
                    <p>
                        <a class="s-tag selected" href="javascript:void(0)" >全部</a>
                        <a class="s-tag " href="javascript:void(0)" >超级自由行(31)</a>
                        <a class="s-tag " href="javascript:void(0)" >自由行套餐(2)</a>
                    </p>
                </li>
            </ul>
            <ul class="filter-tags u-qb" style="display:none;">
                <li>
                    <a href="javascript:void(0);" class="view-more" >更多<i class="arrow"></i></a>
                    <span>包含地区：</span>
                    <p>
                        <a rel="nofollow" class="s-tag selected" href="javascript:void(0)" >全部</a>
                        <a class="s-tag " href="javascript:void(0)" >钻石岛(1)</a>
                    </p>
                </li>
                <li>
                    <a href="javascript:void(0);" class="view-more" >更多<i class="arrow"></i></a>
                    <span>主　　题：</span>
                    <p>
                        <a rel="nofollow" class="s-tag selected" href="javascript:void(0)" >全部</a>
                        <a rel="nofollow" class="s-tag " href="-C416" >海滨岛屿(19)</a>
                        <a rel="nofollow" class="s-tag " href="-C430" >潜水(17)</a>
                        <a rel="nofollow" class="s-tag " href="-C530" >蜜月(1)</a>
                        <a rel="nofollow" class="s-tag " href="-C431" >摄影(1)</a>
                    </p>
                </li>
                <li>
                    <a href="javascript:void(0);" class="view-more" >更多<i class="arrow"></i></a>
                    <span>游玩天数：</span>
                    <p>
                        <a rel="nofollow" class="s-tag selected" href="javascript:void(0)" >全部</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >6天(2)</a>
                        <a rel="nofollow" class="s-tag " href="javascript:void(0)" >7天(17)</a>
                    </p>
                </li>
            </ul>
        </div>

        <!-- //搜素筛选结束 -->

        <!-- 线路搜索列表开始\\ -->
        <div class="search-result-box search-line-list">

            <!-- 筛选排序\\  .filter-order filter-commont filter-commont-desc -->

            <div class="filter-order">
                <div class="pageoper">
                    <span>1/2</span>
                    <a class="page-prev" href="javascript:void(0)" title="上一页" rel="nofollow" >
                        上一页<span class="page-arrow page-arrow-left"></span>
                    </a>
                    <a class="page-next" href="javascript:void(0)" title="下一页" rel="nofollow" >
                        下一页<span class="page-arrow page-arrow-right"></span>
                    </a>
                </div>
                <span class="lv-order current-order">在途中推荐</span>
                <a rel="nofollow" href="javascript:void(0)" class="price-order" >价格<i class="ico-order"></i></a>
                <a rel="nofollow" href="javascript:void(0)" class="price-order order-asc" >价格<i class="ico-order"></i></a>
                <span class="priceform">
        <form class="J_price" action="#">
            <input type="text" val="" value="最低价" class="input-text zdj"> -
            <input type="text" val="" value="最高价" class="input-text zgj">
            <input type="button" class="button" value="确定">
        </form>
    </span>
                <span class="checkbox"><a rel="nofollow" href="javascript:void(0)" >促销活动</a></span>
                <div class="result-search">
                    <input type="text" class="input-text input-result-search" val="" value="">
                    <input url="-Q1#list" type="button" class="button" value="搜索">
                </div>
            </div>
            <!-- //筛选排序结束 -->

            <!-- //列表开始 -->
            <div class="slist-item" id="list">
            </div>
            <!-- //列表结束 -->

            <!-- //分页开始 -->
            <div class="mb10">
                <div class="pages rosestyle">
                    <%-- <span class="PageSel">1</span>--%>
                    <a href="javascript:void(0)" onclick="toSendAjax(1)" class="PageSel" title="第 1 页" rel="nofollow" >1</a>
                    <a href="javascript:void(0)" onclick="toSendAjax(2)" class="PageSel" title="第 2 页" rel="nofollow" >2</a>
                    <a href="javascript:void(0)" onclick="toSendAjax(3)" class="PageSel" title="第 3 页" rel="nofollow" >3</a>
                    <a href="javascript:void(0)" onclick="toSendAjax(4)" class="PageSel" title="第 4 页" rel="nofollow" >4</a>
                    <a href="javascript:void(0)" onclick="toSendAjax(5)" class="PageSel" title="第 5 页" rel="nofollow" >5</a>
                    <a href="javascript:void(0)" onclick="toSendAjax(6)" class="PageSel" title="第 6 页" rel="nofollow" >6</a>
                    <a href="javascript:void(0)" onclick="toSendAjax(7)" class="PageSel" title="第 7 页" rel="nofollow" >7</a>
                    <a href="javascript:void(0)" onclick="toSendAjax(8)" class="PageSel" title="第 8 页" rel="nofollow" >8</a>
                    <a href="javascript:void(0)" onclick="toSendAjax(9)" class="PageSel" title="第 9 页" rel="nofollow" >9</a>
                    <a href="javascript:void(0)" onclick="toSendAjax(10)"class="PageSel" title="第 10 页" rel="nofollow" >10</a>
                    <span id="page">
                   </span>

                </div>
                <!-- //分页结束 -->

            </div>
        </div>
        <!-- //线路搜索列表 -->
    </div><!-- // div .search-main -->
    <div class="l_cl"></div>
</div>
<!-- // 订购指南等开始 -->
<!-- // 订购指南等结束 -->
<!--主要内容结束-->
<div class="p_ad3 p_wrap"> <img src="images/ad3.png" alt=""> </div>
<!-- //页面底部 -->
<div class="p_footer p_wrap">
    <p class="p_footer-link"> <a href="javascript:void(0)" rel="nofollow">关于我们</a> | <a href="javascript:void(0)" hidefocus="false">网站地图</a> | <a href="javascript:void(0)" >酒店品牌</a> | <a href="javascript:void(0)">酒店查询</a> | <a href="javascript:void(0)" >帮助中心</a> | <a href="javascript:void(0)">友情链接</a> | <a href="javascript:void(0)">诚聘英才</a> | <a href="javascript:void(0)">旅游度假资质</a> | <a href="javascript:void(0)">意见反馈</a> | <a rel="nofollow" href="javascript:void(0)">广告业务</a> | <a rel="nofollow" href="javascript:void(0)" >用户体验平台</a> </p>
    <p class="p_copyright"> Copyright © 2014<a href="javascript:void(0)"> www.lvmama.com.</a> 上海景域文化传播有限公司版权所有　沪ICP备13011172号-3　增值电信业务经营许可证编号：沪B2-20100030 </p>
    <p class="p_safe"> <a rel="nofollow" href="javascript:void(0)" class="p_safe1"></a> <a rel="nofollow" href="javascript:void(0)" class="p_safe2"></a> <a rel="nofollow" href="javascript:void(0)" class="p_safe3"></a> <a rel="nofollow" href="javascript:void(0)" class="p_safe4"></a> <a rel="nofollow" href="javascript:void(0)" class="p_safe5"></a> <a rel="nofollow" href="javascript:void(0)" class="p_safe6"></a> <a rel="nofollow" href="javascript:void(0)" class="p_safe7"></a> <a rel="nofollow" href="javascript:void(0)" class="p_safe8"></a> <a rel="nofollow" href="javascript:void(0)" class="p_safe9"></a> </p>
</div>
<div class="p_links p_wrap">
    <dl class="p_friendlink">
        <dt><strong>友情链接:</strong></dt>
        <dd> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> </dd>
    </dl>
    <dl class="p_friendlink">
        <dt><strong>友情链接:</strong></dt>
        <dd> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> </dd>
    </dl>
    <dl class="p_friendlink">
        <dt><strong>友情链接:</strong></dt>
        <dd> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> <a href="javascript:void(0)">澳门自由行</a> <a href="javascript:void(0)">北京自由行</a> <a href="javascript:void(0)">上海自由行</a> </dd>
    </dl>
</div>

<!-- E bottom -->
<div class="p_ad4">
    <div class="p_jumei">
        <a href="javascript:void(0)" class="p_close"></a>

    </div>
    <div class="p_tools">
        <input type="text" name="cName" value="${cName}">
        <input type="text" name="vId" value="${vId}">
        <a class="gouwu" href="javascript:void(0)">购物车</a>
        <a class="history" href="javascript:void(0)">最近查看</a>
        <a class="kefu" href="javascript:void(0)">在线客服</a>
        <a  class="yijian" href="javascript:void(0)">提提意见</a>
        <a class="top" href="javascript:void(0)">返回顶部</a>
    </div>
</div>

<!-- 公用js-->
<script type="text/javascript" src="js/my.js"></script>
<script type="text/javascript">
    var cName=$("[name=cName]").val();
    var vId=$("[name=vId]").val();
    $(function () {
        sendAjax(cName,vId,1);
        /*window.location.href="list.do?cId="+cId+"&vid="+vid+"&pageNum="+1;*/
        <%-- 不行放在分页ajax里跳转 取到list.jsp的其他数据--%>
    });
    function toDetail(packageid) {
        window.location="detail.do?packageId="+packageid
    }
    function toSendAjax(num) {
        var pages = $("[name = pages]").val();
        if (num<=pages){
            sendAjax(cName,vId,num);
        }else {
            alert("没有数据了");
            return false;
        }

    }
    function sendAjax(cName,vId,pageNum) {
        $.ajax({
            url:"page.do",
            type:"post",
            data:{"pageNum":pageNum,"cName":cName,"vId":vId},
            dataType:"json",
            success:function (obj) {
                var list = $("#list");
                list.empty();
                var prePage =obj.pageInfo.prePage;
                var nextPage=obj.pageInfo.nextPage;
                var pages =obj.pageInfo.pages;
                var pageNum =obj.pageInfo.pageNum;
                $.each(obj.packageList,function (i,pack) {
                    list.prepend("<dl class='search-result-item line-info'> "
                        + "<dt class='img'> <a rel='nofollow' href='detail.do?packageId='"+pack.id+">"
                        +"<img src='"+pack.img_url+"' width='168' height='86'></a>"+
                        "<%--images/IWF73.jpg--%> <span class='s-type'>自由行套餐 (机票+酒店)</span>"   +
                        "</dt> <dd class='info'> <dfn class='s-price'>¥<i>"+pack.price+"</i>起</dfn>" +
                        "<span class='tagsback' tip-title='写体验点评返奖金' tip-content='预订此产品，游玩后发表体验点评，内容通过审核，即可获得&lt;span&gt;50&lt;/span&gt;元点评奖金返现。'>" +
                        "<em>返</em><i>50元</i></span><br> <span class='tags101'><img src='images/zs.jpg' width='64' height='19'></span> " +
                        "<a rel='nofollow' href='#/comment'  class='comment-num comment-num01' >"+pack.p_paySum+"人付款</a>" +
                        "<a rel='nofollow' href='#/comment'  class='comment-num' >"+pack.p_commentSum+"条点评</a></dd> <%-- 361--%>"+
                        "<dd class='intro'> <h5> <a rel='nofollow'  href='#' onclick='toDetail("+pack.id+")'>"+pack.title+"</a> </h5>"+
                        "<%--马尔代夫阿雅达（Ayady）4晚6日或5晚7日自由行*成都直飞 内飞上岛--%> <p class='promotions'>"+pack.tip+"</p>Ayada是如今少有的一座具有独特天然景致的度假村"+
                        "<p class='route'> <span>往返飞机</span><span>无星酒店</span><span>含早晚餐</span><span>自&nbsp;助&nbsp;游</span><br>"+pack.package_dec+
                        "<%--马尔代夫是一个非常美丽的地方，很多人都愿意去那里旅游……--%> <a rel='nofollow' class='link-more'  href='javascript:void(0)' >更多</a> </p> </dd> </dl>"
                    );
                });
                var $page = $("#page");
                $page.empty();
                $page.append("<a href=\"#\" onclick=\"first(1)\" title=\"首页\" class=\"NextPage PageLink PageLink_page\" rel=\"nofollow\" >首页</a>\n"+
                    "                    <a href=\"#\" onclick=\"prev("+prePage+")\" title=\"上一页\" class=\"NextPage PageLink PageLink_page\" rel=\"nofollow\" >上一页</a>\n"+
                    "\n"+
                    "                    <a href=\"#\" onclick=\"next("+nextPage+")\" title=\"下一页\" class=\"NextPage PageLink PageLink_page\" rel=\"nofollow\" >下一页</a>\n"+
                    "                    <a href=\"#\" onclick=\"last("+pages+")\" title=\"下一页\" class=\"NextPage PageLink PageLink_page\" rel=\"nofollow\" >末页</a>\n"+
                    "                    第"+pageNum+"页/共"+pages+"页"+"<input type='hidden' name='pageNum' value='"+pageNum+"'/>\n" +
                    "                    <input type='hidden' name='pages' value='"+pages+"'/>")
            },
            error:function () {
            }
        });
    }

    //点击首页
    function first(num) {
        sendAjax(cName,vId,num);
    }
    //点击下一页
    function next(num) {
        var pageNum = $("[name=pageNum]").val();
        var pages = $("[name=pages]").val();
        if (pageNum>=pages){
            alert("已是最后一页");
            return false;
        } else{
            sendAjax(cName,vId,num);
        }
    }
    //点击上一页
    function prev(num) {
        var pageNum = $("[name=pageNum]").val();
        if (pageNum<=1){
            alert("已是第一页");
            return false;
        } else{
            sendAjax(cName,vId,num);
        }
    }
    //点击最后一页
    function last(num) {
        sendAjax(cName,vId,num);
    }

</script>
</body>
</html>


