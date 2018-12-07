<%--
  Created by IntelliJ IDEA.
  User: a'su's
  Date: 2018/12/7
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="csstransitions cssanimations ic_webkit ic_chrome ic_latest">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta charset="utf-8">
    <title>详情</title>
    <link rel="shortcut icon" href="http://www.lvmama.com/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="css/chanel.css">
    <link rel="stylesheet" href="css/index.php2.css">
    <link rel="stylesheet" href="css/buttons.css">
    <link rel="stylesheet" href="css/orderV2.css">
    <link rel="stylesheet" href="css/dialog.css">
    <link id="ui-components" rel="stylesheet" href="css/ui-components.css">
    <link rel="stylesheet" href="css/share_popup.css">
    <link rel="stylesheet" href="css/select_share.css">
    <link rel="stylesheet" href="css/select_share2.css">
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" async charset="utf-8" src="js/blade_track_cn.js"></script>
    <script type="text/javascript" async src="js/ga.js"></script>
    <script src="js/cp-v3.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/zz.js"></script>
    <script src="js/bcore.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/lvmamaUI.js" ></script>

    <script type="text/javascript">

        $(function(){
            $('.dropdown').hover(function(e) {
                $(this).children('span').siblings('.lv_div').toggle();
                $(this).children('span').toggleClass('link_hover');
            });
            $('.lv_div').mouseover(function(e) {
                $('.lv_div').show();
            });

            $('.join-weixin .lvlink').hover(function(e) {
                $(this).siblings('.top-sub').toggle();
            });


            $('#goTopBtn').click(function(e) {
                $('body,html').animate({scrollTop:0},1000);
            });

            $('.quick-menu li a').hover(function(e) {
                $(this).toggleClass('current-crumb');
                $(this).siblings('.menu-bd').toggle();
            });
            $('.ewm_box_xl').hover(function(e) {
                $(this).children('.zhiyin').toggle();
            });
            $('.search_pp_calendar_d li').hover(function(e) {
                $(this).children('.search_pp_calendar_d_box').css('border','2px solid #abba88');
            },function(){
                $(this).children('.search_pp_calendar_d_box').css('border','2px solid #fff');
            });


            var divindex=0;
            $('.search_pp_cal_nextm_icon').click(function(e) {
                divindex++;
                if(divindex>2){
                    divindex=2;
                }
                $('.search_pp_calendar_box').eq(divindex).show().siblings('.search_pp_calendar_box').hide();
            });

            $('.search_pp_cal_nevm_icon').click(function(e) {
                divindex--;
                if(divindex<0){
                    divindex=0;
                }
                $('.search_pp_calendar_box').eq(divindex).show().siblings('.search_pp_calendar_box').hide();
            });


            var topzhi=$('#scroll_nav').position().top
            $(window).scroll(function(e) {
                var thescrolltop=$(document).scrollTop();
                if(thescrolltop>topzhi){
                    $('#scroll_nav').css({position:'fixed',top:0})
                }else{
                    $('#scroll_nav').css({position:'static'})
                }
            });



            $('.p_join-weixin').hover(function(e) {
                $(this).children('.p_weixin').toggle();
            });

            $('.firstli').hover(function(e) {
                $(this).children('.p_lvlink').toggleClass('weixin')
            });

            $('.fu_top span').click(function(e) {
                $('.fu_top').hide();
            });

            var one=$('.qiehuana').position().top
            var two=$('.qiehuanb').position().top
            var three=$('.qiehuanc').position().top
            var four=$('.qiehuand').position().top
            var five=$('.qiehuane').position().top
            var six=$('.qiehuanf').position().top
            var seven=$('.qiehuang').position().top
            var eight=$('.qiehuanh').position().top
            $(window).scroll(function(e) {
                var htop=$(document).scrollTop()
                if(htop>400){
                    $('.fuchuang').show();
                }else{
                    $('.fuchuang').hide();
                }
            });


            $(window).scroll(function(e) {
                var htop=$(document).scrollTop()
                if(htop>one){
                    $('#scroll_nav li').eq(0).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if(htop>two){
                    $('#scroll_nav li').eq(1).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if(htop>three){
                    $('#scroll_nav li').eq(2).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if(htop>four){
                    $('#scroll_nav li').eq(3).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if(htop>five){
                    $('#scroll_nav li').eq(4).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if(htop>six){
                    $('#scroll_nav li').eq(5).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if(htop>seven){
                    $('#scroll_nav li').eq(6).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if(htop>eight){
                    $('#scroll_nav li').eq(7).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }
            });


            $('#scroll_nav li').click(function(e) {
                $(this).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
            });


            $('.pnav-main li a').click(function(e) {
                $(this).parent().addClass('current_nav').siblings().removeClass('current_nav');
                return false;
            });

            $('.return_top').click(function(e) {

                $('body,html').animate({scrollTop:0},1000);
            });

        })
    </script>

</head>
<body>

<div >
    <img src="images/newBtn_bg.gif" style="display: none;" data-bd-imgshare-binded="1">
    <!--head start-->
    <!-- 公共头部开始  -->
    <!-- topbar\\ -->
    <div class="p_lv-topbar">
        <div class="tapbar-inner p_wrap">
            <ul class="p_top-link">
                <li class="p_dropdown" id="wdlmm"><a class="p_lvlink p_lvlink1" href="#" rel="nofollow" style="">我的小背包 </a>
                    <div class="p_top-sub p_top-sub1" style="display: none;"> <a href="#" rel="nofollow">我的订单</a> <a href="#" rel="nofollow">我的积分</a> <a href="#" rel="nofollow">我的优惠券</a> <a href="#" rel="nofollow" target="_blank">我的会员卡</a> <a href="#" rel="nofollow" target="_blank" ，="">我的礼品卡</a> </div>
                </li>
                <!--<li><a class="p_lvlink" href="http://login.lvmama.com/nsso/onlineApplyMemberCard/index.do" rel="nofollow">申请会员卡</a></li>-->
                <li><a class="p_lvlink" href="http://www.lvmama.com/points" rel="nofollow">积分商城</a></li>
                <li><a class="p_lvlink" href="#" rel="nofollow"><i class="icon-quan"></i>团购预约</a></li>
                <li><a class="p_lvlink" href="#" rel="nofollow">帮助</a></li>
                <li class="p_dropdown p_join-weixin"><a class="p_lvlink p_lvlink1" href="javascript:void(0);" rel="nofollow" style="position: static; z-index: 10; padding: 0px 20px 0px 9px; margin: -6px 0px; border-color: rgb(255, 255, 255); border-style: solid; border-width: 1px 0px 0px 1px; height: 18px; background: url(images/sanjiao.png) 74px 10px no-repeat;"><i class="icon-weixin"></i>+微信</a>
                    <div class="p_weixin" style="display: none;"><span class="p_wechatcode"></span></div>
                </li>
                <li class="sitemap"><a class="p_lvlink" target="_self" href="javascript:bookmark()" rel="nofollow">收藏本站</a></li>
                <li><a class="p_lvlink" href="#" rel="nofollow"><i class="icon-weibo"></i>+微博</a></li>
                <li class="sitemap"><a href="#">网站地图</a></li>
                <li class="site-mobile"><a class="p_lvlink" href="#" rel="nofollow" target="_blank"><i class="icon-mobile"></i>手机版</a></li>
            </ul>
            <div class="p_welcome"> <span>您好，欢迎来到在途中！</span> <a class="p_login" href="#">登录</a> <a href="#">注册</a> </div>
        </div>
    </div>
    <!-- //.topbar -->

    <div class="lv-header">
        <div class="header-inner wrap">
            <span id="hotline" class="lv-hotline">#019934</span>
            <a class="lv-logo" href="" hidefocus="false">旅游网</a>
            <div id="adPro" data-type="ad" class="lv-adPro" data-adsrc="http://lvmamim.allyes.com/main/s?user=lvmama_2013|abroad_2013|ticket_2013_flag01&amp;db=lvmamim&amp;border=0&amp;local=yes#300px#60px">
                <iframe scrolling="no" frameborder="0" marginwidth="0" marginheight="0" style="width:300px;height:60px;" src="images/s.htm"></iframe>
            </div>
        </div>
    </div>
    <!-- //.lv-header -->
    <div id="pnav" class="p_pnav pnav clearfix" style="padding-top: 0px;">
        <div class="wrap">
            <ul class="pnav-main">
                <li id="home">
                    <a href="" rel="nofollow" hidefocus="false">首页</a>
                </li>
                <li id="ticket">
                    <a href="" hidefocus="false">景点门票</a>
                </li>
                <li id="freetour">
                    <a href="" hidefocus="false">周边游</a>
                </li>
                <li id="destroute">
                    <a href="" hidefocus="false">国内游</a>
                </li>
                <li id="abroad">
                    <a href="" hidefocus="false">出境游</a>
                </li>
                <li id="liner">
                    <a href="" hidefocus="false">邮轮</a>
                    <i class="icon-rm"></i>
                </li>
                <li id="hotel">
                    <a href="" rel="nofollow" hidefocus="false">酒店</a>
                    <i class="icon-pnavHotel"></i>
                </li>
                <li id="holiday">
                    <a href="" hidefocus="false">度假酒店</a>
                </li>
                <!--<li id="globalhotel">
			<a href="http://hotel.lvmama.com" rel="nofollow">海外酒店</a>
		</li>
		-->
                <li id="train">
                    <a href="" rel="nofollow" hidefocus="false">火车票</a>
                </li>
                <li id="flight">
                    <a href="" rel="nofollow" hidefocus="false">国际机票</a>
                </li>
                <li id="custom">
                    <a href="" rel="nofollow" hidefocus="false">定制游</a>
                </li>
                <li id="tuangou">
                    <a href="" hidefocus="false">特卖会</a>
                    <i class="icon-tg"></i>
                </li>
            </ul>
            <ul class="pnav-small">
                <li id="lvcomment">
                    <a href="" rel="nofollow" hidefocus="false">点评</a>
                </li>
                <li id="lvguide">
                    <a href="" hidefocus="false">攻略</a>
                </li>
                <li id="lvplace">
                    <a target="_blank" href="" hidefocus="false">
                        <span>专题</span>
                    </a>
                </li>
                <li id="lvinfo">
                    <a href="" hidefocus="false">资讯</a>
                </li>
                <li id="lvbbs">
                    <a href="" rel="nofollow" hidefocus="false">社区</a>
                </li>
            </ul>
        </div>
    </div>

    <!-- //div.pnav -->
    <!-- 公共头部结束  -->
    <input name="pageName" type="hidden" value="internat" id="pageName">

    <input type="hidden" id="checkDate" value="">
    <div id="warp">
        <div class="main">
            <div style="position:absolute; right:-18px;">
                <div class="fuchuang" style="display:none;">
                    <div style="width:102px; height:210px;">
                        <p class="fu_top"><img src="images/home_phone_v6.png"><span></span></p>
                    </div>
                    <ul class="second">
                        <li><a href="#">购物车</a></li>
                        <li><a href="#">最近查看</a></li>
                        <li><a href="#">在线客服</a></li>
                        <li><a href="#">提提意见</a></li>
                        <li><a href="#" class="return_top">返回顶部</a></li>
                    </ul>
                </div>

            </div>

            <!--上部(产品经理推荐以上部分)-->
            <div id="s2-site-nav">
                <span>您当前所处的位置：</span>
                <ul class="quick-menu">
                    <li>
                        <a class="menu-hd" href="" target="_top" hidefocus="false">
                            亚洲 <b></b>
                        </a>
                        <div class="menu-bd">
                            <a href="" target="_top" hidefocus="false">欧洲</a>
                            <a href="" target="_top" hidefocus="false">亚洲</a>
                            <a href="" target="_top" hidefocus="false">非洲</a>
                            <a href="" target="_top" hidefocus="false">北美洲</a>
                            <a href="" target="_top" hidefocus="false">大洋洲</a>
                        </div>
                    </li>
                    <li>
                        <a class="menu-hd" href="" target="_top" hidefocus="false">
                            马尔代夫 <b></b>
                        </a>
                        <div class="menu-bd">

                            <a href="" target="_top" hidefocus="false">泰国</a>

                            <a href="" target="_top" hidefocus="false">日本</a>

                            <a href="" target="_top" hidefocus="false">韩国</a>

                            <a href="" target="_top" hidefocus="false">
                                <span class="current-pla">马尔代夫</span>
                            </a>

                            <a href="" target="_top" hidefocus="false">塞班岛</a>

                            <a href="" target="_top" hidefocus="false">中国</a>

                            <a href="" target="_top" hidefocus="false">新加坡</a>

                            <a href="" target="_top" hidefocus="false">马来西亚</a>

                            <a href="" target="_top" hidefocus="false">土耳其</a>

                            <a href="" target="_top" hidefocus="false">阿联酋</a>

                            <a href="" target="_top" hidefocus="false">菲律宾</a>

                            <a href="" target="_top" hidefocus="false">文莱</a>

                            <a href="" target="_top" hidefocus="false">印度尼西亚</a>

                            <a href="" target="_top" hidefocus="false">柬埔寨</a>

                            <a href="" target="_top" hidefocus="false">越南</a>

                            <a href="" target="_top" hidefocus="false">尼泊尔</a>

                            <a href="" target="_top" hidefocus="false">印度</a>

                            <a href="" target="_top" hidefocus="false">以色列</a>

                            <a href="" target="_top" hidefocus="false">朝鲜</a>

                            <a href="" target="_top" hidefocus="false">斯里兰卡</a>

                            <a href="" target="_top" hidefocus="false">老挝</a>

                            <a href="" target="_top" hidefocus="false">日韩邮轮</a>

                            <a href="" target="_top" hidefocus="false">印尼</a>

                            <a href="" target="_top" hidefocus="false">缅甸</a>

                            <a href="" target="_top" hidefocus="false">约旦</a>

                            <a  href="" target="_top" hidefocus="false">东南亚邮轮</a>

                            <a href="" target="_top" hidefocus="false">伊朗</a>

                        </div>
                    </li>
                    <li class="last">【出境暑假狂欢季】马尔代夫哈库...</li>
                </ul>
                <span class="pro_number">
			产品编号: <strong>60971</strong>
		</span>

            </div>
            <div class="dtl_infobox clearfix">

                <!--主页右上角图标-->
                <div id="dtl_zyx" class="dtl_zyx_icon_cj"></div>
                <p class="bookNotes">本产品由在途中旅游网指定上海在途中兴旅国际旅行社有限公司及具有相关资质的合作旅行社提供相关资讯及服务</p>

                <div class="dtl_tit">
                    <h1 class="dtl_tit_txt">【出境暑假狂欢季】马尔代夫哈库拉CHAAYA LAGOON岛4晚6日自由行*5M航空直飞 一价全包</h1>
                    <!-- Baidu Button BEGIN -->
                    <div class="bdsharebuttonbox bdshare-button-style0-16" data-bd-bind="1402195481033">
                        <a href="" class="bds_more" data-cmd="more" hidefocus="false"></a>
                        <a href="" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间" hidefocus="false"></a>
                        <a href="" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博" hidefocus="false"></a>
                        <a href="" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博" hidefocus="false"></a>
                        <a href="" class="bds_renren" data-cmd="renren" title="分享到人人网" hidefocus="false"></a>
                        <a href="" class="bds_weixin" data-cmd="weixin" title="分享到微信" hidefocus="false"></a>
                    </div>
                    <script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{},"image":{"viewList":["qzone","tsina","tqq","renren","weixin"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
                    </script>
                    <!-- Baidu Button END -->
                </div>
                <!--infobox-tit-->
                <script type="text/javascript">
                    $(function(){
                        $('.dtl_focuslist li').hover(function(e) {
                            var this_index=$(this).index();
                            $(this).children('span').removeClass('zz_panel');
                            $(this).siblings().children('span').addClass('zz_panel');
                            $(this).addClass('dtl_focuslist').siblings().removeClass('dtl_focuslist');
                            $('.dtl_crtimg li').eq(this_index).stop().fadeIn(500).siblings().hide();
                            li_num=this_index;
                        });

                        var timer2=setInterval(banner_autoplay,3000)
                        var li_num=0;
                        function banner_autoplay(){
                            li_num++;
                            if(li_num>3){
                                li_num=0;
                            }
                            $('.dtl_focuslist li').eq(li_num).children('span').removeClass('zz_panel');
                            $('.dtl_focuslist li').eq(li_num).siblings().children('span').addClass('zz_panel');
                            $('.dtl_focuslist li').eq(li_num).addClass('dtl_focuslist').siblings().removeClass('dtl_focuslist');
                            $('.dtl_crtimg li').eq(li_num).stop().fadeIn(500).siblings().hide();
                        }

                        $('.dtl_focusbox').hover(function(e) {
                            clearInterval(timer2)
                        },function(){
                            timer2=setInterval(banner_autoplay,3000)
                        });


                    })
                </script>
                <div class="dtl_boxinner">
                    <div class="dtl_box_left">
                        <div class="dtl_focusbox">
                            <ul class="dtl_crtimg">
                                <li style="display: none;">
                                    <img src="images/HWM3C.jpg" width="440px" height="220px" data-bd-imgshare-binded="1"></li>
                                <li style="display: list-item;">
                                    <img src="images/7HDMC.jpg" width="440px" height="220px" data-bd-imgshare-binded="1"></li>
                                <li style="display: none;">
                                    <img src="images/27WCT.jpg" width="440px" height="220px" data-bd-imgshare-binded="1"></li>
                                <li style="display: none;">
                                    <img src="images/DDX6H.jpg" width="440px" height="220px" data-bd-imgshare-binded="1"></li>
                            </ul>
                            <ul class="dtl_focuslist">
                                <li class="">
                                    <img src="images/HWM3C(1).jpg" width="97" height="71" alt="哈库拉岛CHAAYA LAGOON岛4晚6天游*4晚水屋Water Bungalow*一价全包*5M航空(BJ)" rev="http://s1.lvjs.com.cn/580x290/pics/super/2012/04/HWM3C.jpg" data-bd-imgshare-binded="1">
                                    <span class="zz_panel"></span>
                                </li>
                                <li class="dtl_focuslist">
                                    <img src="images/7HDMC(1).jpg" width="97" height="71" alt="哈库拉岛CHAAYA LAGOON岛4晚6天游*4晚水屋Water Bungalow*一价全包*5M航空(BJ)" rev="http://s3.lvjs.com.cn/580x290/pics/super/2012/04/7HDMC.jpg" data-bd-imgshare-binded="1">
                                    <span class="zz_panel"></span>
                                </li>
                                <li class="">
                                    <img src="images/27WCT.jpg" width="97" height="71" alt="哈库拉岛CHAAYA LAGOON岛4晚6天游*4晚水屋Water Bungalow*一价全包*5M航空(BJ)" rev="http://s2.lvjs.com.cn/580x290/pics/super/2012/04/27WCT.jpg" data-bd-imgshare-binded="1">
                                    <span class="zz_panel"></span>
                                </li>
                                <li class="">
                                    <img src="images/DDX6H(1).jpg" width="97" height="71" alt="哈库拉岛CHAAYA LAGOON岛4晚6天游*4晚水屋Water Bungalow*一价全包*5M航空(BJ)" rev="http://s1.lvjs.com.cn/580x290/pics/super/2012/04/DDX6H.jpg" data-bd-imgshare-binded="1">
                                    <span class="zz_panel"></span>
                                </li>
                            </ul>
                        </div>
                        <!--focus-->
                        <!--不定期产品不显示时间价格表 -->
                        <div class="time-price-one" data-pid="60971" data-bid="60971">
                            <div class="calendar_free" data-super-free="false" data-product-type="ROUTE" data-sub-product-type="FREENESS_FOREIGN">
                                <div class="search_pp_calendar_box">
                                    <h2 class="search_pp_calendar_tit">出行日价格表</h2>
                                    <div class="search_pp_calendar_m">
                                        <div class="search_pp_cal_nevm">
                                            <span class="search_pp_cal_nevm_no_icon"></span>
                                            <span class="search_pp_cal_nevm_text">6月</span>
                                        </div>
                                        <div class="search_pp_cal_nextm">
                                            <span class="search_pp_cal_nextm_text">7月</span>
                                            <span class="search_pp_cal_nextm_icon"></span>
                                        </div>
                                    </div>
                                    <!--mounth-->

                                    <ul class="search_pp_calendar_t">
                                        <li>星期日</li>
                                        <li>星期一</li>
                                        <li>星期二</li>
                                        <li>星期三</li>
                                        <li>星期四</li>
                                        <li>星期五</li>
                                        <li>星期六</li>
                                    </ul>
                                    <ul class="search_pp_calendar_d">

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">01</span>

                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-01</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">02</span>

                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-02</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">03</span>

                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-03</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">04</span>

                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-04</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">05</span>

                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-05</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">06</span>

                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-06</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">07</span>

                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-07</span>
                                            </div>
                                        </li>
                                    </ul>
                                    <ul class="search_pp_calendar_d">

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">08</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-08</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">09</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-09</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">10</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-10</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">11</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-11</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">12</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-12</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">13</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-13</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_1">
                                                <span class="search_pp_calendar_day">14</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13280起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-14</span>
                                            </div>
                                        </li>
                                    </ul>
                                    <ul class="search_pp_calendar_d">

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_1">
                                                <span class="search_pp_calendar_day">15</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13280起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-15</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">16</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-16</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">17</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-17</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_1">
                                                <span class="search_pp_calendar_day">18</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13280起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-18</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_1">
                                                <span class="search_pp_calendar_day">19</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13280起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-19</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">20</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-20</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_1">
                                                <span class="search_pp_calendar_day">21</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13280起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-21</span>
                                            </div>
                                        </li>
                                    </ul>
                                    <ul class="search_pp_calendar_d">

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_1">
                                                <span class="search_pp_calendar_day">22</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13280起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-22</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">23</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-23</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">24</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-24</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_1">
                                                <span class="search_pp_calendar_day">25</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13280起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-25</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_1">
                                                <span class="search_pp_calendar_day">26</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13280起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-26</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">27</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-27</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_1">
                                                <span class="search_pp_calendar_day">28</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13280起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-28</span>
                                            </div>
                                        </li>
                                    </ul>
                                    <ul class="search_pp_calendar_d">

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_1">
                                                <span class="search_pp_calendar_day">29</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13280起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-29</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">30</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-30</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">01</span>

                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-01</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">02</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-02</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">03</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-03</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">04</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-04</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">05</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-05</span>
                                            </div>
                                        </li>
                                    </ul>
                                    <ul class="search_pp_calendar_d">

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">06</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-06</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">07</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-07</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">08</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-08</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">09</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-09</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">10</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-10</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">11</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-11</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">12</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-12</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="search_pp_calendar_box" style="display:none;">
                                    <h2 class="search_pp_calendar_tit">出行日价格表</h2>
                                    <div class="search_pp_calendar_m">
                                        <div class="search_pp_cal_nevm">
                                            <span class="search_pp_cal_nevm_icon"></span>
                                            <span class="search_pp_cal_nevm_text">7月</span>
                                        </div>
                                        <div class="search_pp_cal_nextm">
                                            <span class="search_pp_cal_nextm_text">8月</span>
                                            <span class="search_pp_cal_nextm_icon"></span>
                                        </div>
                                    </div>
                                    <!--mounth-->

                                    <ul class="search_pp_calendar_t">
                                        <li>星期日</li>
                                        <li>星期一</li>
                                        <li>星期二</li>
                                        <li>星期三</li>
                                        <li>星期四</li>
                                        <li>星期五</li>
                                        <li>星期六</li>
                                    </ul>
                                    <ul class="search_pp_calendar_d">

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_1">
                                                <span class="search_pp_calendar_day">29</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13280起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-29</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">30</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-06-30</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">01</span>

                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-01</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">02</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-02</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">03</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-03</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">04</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-04</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">05</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-05</span>
                                            </div>
                                        </li>
                                    </ul>
                                    <ul class="search_pp_calendar_d">

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">06</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-06</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">07</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-07</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">08</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-08</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">09</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-09</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">10</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-10</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">11</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-11</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">12</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-12</span>
                                            </div>
                                        </li>
                                    </ul>
                                    <ul class="search_pp_calendar_d">

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">13</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-13</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">14</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-14</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">15</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-15</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">16</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-16</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">17</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-17</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">18</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-18</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">19</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-19</span>
                                            </div>
                                        </li>
                                    </ul>
                                    <ul class="search_pp_calendar_d">

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">20</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-20</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">21</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-21</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">22</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-22</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">23</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-23</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">24</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-24</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">25</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-25</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">26</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-26</span>
                                            </div>
                                        </li>
                                    </ul>
                                    <ul class="search_pp_calendar_d">

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">27</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-27</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">28</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-28</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">29</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-29</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">30</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13950起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-30</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">31</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14400起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-31</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_3">
                                                <span class="search_pp_calendar_day">01</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-01</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_3">
                                                <span class="search_pp_calendar_day">02</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14850起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-02</span>
                                            </div>
                                        </li>
                                    </ul>
                                    <ul class="search_pp_calendar_d">

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_3">
                                                <span class="search_pp_calendar_day">03</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14850起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-03</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_3">
                                                <span class="search_pp_calendar_day">04</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-04</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_3">
                                                <span class="search_pp_calendar_day">05</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-05</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_3">
                                                <span class="search_pp_calendar_day">06</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14850起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-06</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_3">
                                                <span class="search_pp_calendar_day">07</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14850起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-07</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_3">
                                                <span class="search_pp_calendar_day">08</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-08</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_3">
                                                <span class="search_pp_calendar_day">09</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14850起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-09</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="search_pp_calendar_box" style="display:none;">
                                    <h2 class="search_pp_calendar_tit">出行日价格表</h2>
                                    <div class="search_pp_calendar_m">
                                        <div class="search_pp_cal_nevm">
                                            <span class="search_pp_cal_nevm_icon"></span>
                                            <span class="search_pp_cal_nevm_text">8月</span>
                                        </div>
                                        <div class="search_pp_cal_nextm">
                                            <span class="search_pp_cal_nextm_text">9月</span>
                                            <span class="search_pp_cal_nextm_no_icon"></span>
                                        </div>
                                    </div>
                                    <!--mounth-->

                                    <ul class="search_pp_calendar_t">
                                        <li>星期日</li>
                                        <li>星期一</li>
                                        <li>星期二</li>
                                        <li>星期三</li>
                                        <li>星期四</li>
                                        <li>星期五</li>
                                        <li>星期六</li>
                                    </ul>
                                    <ul class="search_pp_calendar_d">

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_1">
                                                <span class="search_pp_calendar_day">27</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13580起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-27</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">28</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-28</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_1">
                                                <span class="search_pp_calendar_day">29</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-29</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_1">
                                                <span class="search_pp_calendar_day">30</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13950起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-30</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_1">
                                                <span class="search_pp_calendar_day">31</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14400起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-07-31</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">01</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-01</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">02</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14850起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-02</span>
                                            </div>
                                        </li>
                                    </ul>
                                    <ul class="search_pp_calendar_d">

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">03</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14850起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-03</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">04</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-04</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">05</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-05</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">06</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14850起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-06</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">07</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14850起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-07</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">08</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-08</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">09</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14850起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-09</span>
                                            </div>
                                        </li>
                                    </ul>
                                    <ul class="search_pp_calendar_d">

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">10</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14850起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-10</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">11</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-11</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">12</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-12</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">13</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14850起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-13</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">14</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14850起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-14</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">15</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-15</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">16</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14850起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-16</span>
                                            </div>
                                        </li>
                                    </ul>
                                    <ul class="search_pp_calendar_d">

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">17</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14150起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-17</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">18</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-18</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">19</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-19</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">20</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14150起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-20</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">21</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14150起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-21</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">22</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-22</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">23</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14150起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-23</span>
                                            </div>
                                        </li>
                                    </ul>
                                    <ul class="search_pp_calendar_d">

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">24</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥14150起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-24</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">25</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-25</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">26</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-26</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">27</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13350起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-27</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">28</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13350起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-28</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_2">
                                                <span class="search_pp_calendar_day">29</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-29</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">30</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥13050起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-30</span>
                                            </div>
                                        </li>
                                    </ul>
                                    <ul class="search_pp_calendar_d">

                                        <li>
                                            <div data-sellbale="true" class="search_pp_calendar_d_box month_2">
                                                <span class="search_pp_calendar_day">31</span>

                                                <span class="search_pp_calendar_price1"></span>
                                                <span class="calendar_active">促</span>
                                                <span class="search_pp_calendar_price">¥12800起</span>

                                                <!--日历上展示的优惠信息参数-->
                                                <input type="hidden" value="[{&quot;index&quot;:&quot;7&quot;}]" name="tipData">
                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-08-31</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_3">
                                                <span class="search_pp_calendar_day">01</span>

                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-09-01</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_3">
                                                <span class="search_pp_calendar_day">02</span>

                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-09-02</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_3">
                                                <span class="search_pp_calendar_day">03</span>

                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-09-03</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_3">
                                                <span class="search_pp_calendar_day">04</span>

                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-09-04</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_3">
                                                <span class="search_pp_calendar_day">05</span>

                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-09-05</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="search_pp_calendar_d_box_no_hover month_3">
                                                <span class="search_pp_calendar_day">06</span>

                                                <span style="display:none;" class="search_pp_calendar_day_date">2014-09-06</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <select id="selectTimePrice" style="display:none;">
                                <option value="2014-06-14">
                                    06-14（星期六）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-06-15">
                                    06-15（星期日）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-06-18">
                                    06-18（星期三）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-06-19">
                                    06-19（星期四）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-06-21">
                                    06-21（星期六）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-06-22">
                                    06-22（星期日）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-06-25">
                                    06-25（星期三）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-06-26">
                                    06-26（星期四）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-06-28">
                                    06-28（星期六）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-06-29">
                                    06-29（星期日）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-07-02">
                                    07-02（星期三）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-03">
                                    07-03（星期四）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-05">
                                    07-05（星期六）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-06">
                                    07-06（星期日）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-09">
                                    07-09（星期三）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-10">
                                    07-10（星期四）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-12">
                                    07-12（星期六）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-13">
                                    07-13（星期日）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-16">
                                    07-16（星期三）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-17">
                                    07-17（星期四）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-19">
                                    07-19（星期六）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-20">
                                    07-20（星期日）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-23">
                                    07-23（星期三）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-24">
                                    07-24（星期四）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-26">
                                    07-26（星期六）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-27">
                                    07-27（星期日）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-30">
                                    07-30（星期三）
                                    2沙beach ...￥13950
                                </option>
                                <option value="2014-07-31">
                                    07-31（星期四）
                                    2沙beach ...￥14400
                                </option>
                                <option value="2014-08-02">
                                    08-02（星期六）
                                    2沙beach ...￥14850
                                </option>
                                <option value="2014-08-03">
                                    08-03（星期日）
                                    2沙beach ...￥14850
                                </option>
                                <option value="2014-08-06">
                                    08-06（星期三）
                                    2沙beach ...￥14850
                                </option>
                                <option value="2014-08-07">
                                    08-07（星期四）
                                    2沙beach ...￥14850
                                </option>
                                <option value="2014-08-09">
                                    08-09（星期六）
                                    2沙beach ...￥14850
                                </option>
                                <option value="2014-08-10">
                                    08-10（星期日）
                                    2沙beach ...￥14850
                                </option>
                                <option value="2014-08-13">
                                    08-13（星期三）
                                    2沙beach ...￥14850
                                </option>
                                <option value="2014-08-14">
                                    08-14（星期四）
                                    2沙beach ...￥14850
                                </option>
                                <option value="2014-08-16">
                                    08-16（星期六）
                                    2沙beach ...￥14850
                                </option>
                                <option value="2014-08-17">
                                    08-17（星期日）
                                    2沙beach ...￥14150
                                </option>
                                <option value="2014-08-20">
                                    08-20（星期三）
                                    2沙beach ...￥14150
                                </option>
                                <option value="2014-08-21">
                                    08-21（星期四）
                                    2沙beach ...￥14150
                                </option>
                                <option value="2014-08-23">
                                    08-23（星期六）
                                    2沙beach ...￥14150
                                </option>
                                <option value="2014-08-24">
                                    08-24（星期日）
                                    2沙beach ...￥14150
                                </option>
                                <option value="2014-08-27">
                                    08-27（星期三）
                                    2沙beach ...￥13350
                                </option>
                                <option value="2014-08-28">
                                    08-28（星期四）
                                    2沙beach ...￥13350
                                </option>
                                <option value="2014-08-30">
                                    08-30（星期六）
                                    2沙beach ...￥13050
                                </option>
                                <option value="2014-08-31">
                                    08-31（星期日）
                                    2沙beach ...￥12800
                                </option>
                            </select>

                            <!--日历上展示的优惠信息模板-->
                            <input type="hidden" value="{1}， 立减&lt;i class=&#39;orange&#39;&gt;{2}&lt;/i&gt;元/份。" id="tipTemplete1">
                            <input type="hidden" value="{1}，{2}份立减&lt;i class=&#39;orange&#39;&gt;{3}&lt;/i&gt;元，{4}份立减&lt;i class=&#39;orange&#39;&gt;{5}&lt;/i&gt;元，以此类推。" id="tipTemplete2">
                            <input type="hidden" value="{1}，{2}份起订，每份立减&lt;i class=&#39;orange&#39;&gt;{3}&lt;/i&gt;元。" id="tipTemplete3">
                            <input type="hidden" value="{1}，{2}份起订，再订{3}份立减&lt;i class=&#39;orange&#39;&gt;{4}&lt;/i&gt;元，再订{5}份立减&lt;i class=&#39;orange&#39;&gt;{6}&lt;/i&gt;元，以此类推。" id="tipTemplete4">
                            <input type="hidden" value="&lt;b&gt;预订{1}日产品，可享以下优惠&lt;/b&gt;" id="tipTemplete5">
                            <input type="hidden" value="&lt;b&gt;同时多买可享优惠&lt;/b&gt;&lt;/br&gt;(预订同种产品以最实惠规则让利)" id="tipTemplete6">
                            <input type="hidden" value="&lt;b&gt;当前日期的价格为促销价&lt;/b&gt;" id="tipTemplete7"></div>

                    </div>
                    <!--boxleft-->
                    <div class="dtl_box_right clearfix">
                        <div class="dtl_box_r_topbox">
                            <div class="dtl_boxr_txt1">
                                <p>
                                    <label>市 场 价：</label>
                                    <span class="dtl_linetxt">¥14600</span>
                                    <br>
                                    <label>在途中价：</label> <strong>¥ <em>12800</em></strong>
                                    <span class="qijia">起 &nbsp; <em  class="qijiashuoming" tip-content='本起价是指未包含附加服务（如单人房差、保险费等）的基本价格。您最终确认的价格将会随所选出行日期、人数及服务项目而相应变化。 '>起价说明</em></span>
                                </p>
                                <div class="xh-youhui">
                                    <label>优惠活动：</label>

                                    <div style="overflow:hidden;">
                                        <span class="tags101">促销</span>
                                        <span class="tags101" tip-content="1.&lt;b&gt;该产品支持奖金抵扣&lt;/b&gt;&lt;br&gt; 在线支付用户可使用奖金抵扣，订单支付步骤可见奖金抵用金额。&lt;br&gt;2.&lt;b&gt;如何获得奖金&lt;/b&gt;&lt;br&gt; 如所购产品有奖金，游玩后发表体验点评，即可获得返奖金。">奖金抵扣</span>
                                        <span class="tags101" tip-content="1.该产品支持通过使用在途中积分兑换优惠券获得支付抵扣 &lt;br&gt;2.该优惠不能与其它优惠券以及优惠活动同时使用 ">积分抵用</span>
                                        <ul class="youhui_tab" style="color:#f60;padding-left:4px;"></ul>
                                    </div>
                                </div>

                                <p class="c_m">
                                    <label>总体评价：</label>

                                    <span class="icon-type3">豪华</span>
                                    <small class="b_star">
								<span class="c_star star5">
									<i></i>
								</span>
                                    </small>
                                    <a rel="nofollow" href="http://www.lvmama.com/product/60971#row_5" hidefocus="false">点评数：1</a>
                                </p>

                                <p>
                                    <label>互动有奖：</label>
                                    <span class="gray" style="float: left; max-width: 66%;">
								购买成功并点评，
								<i class="orange xtiptext" tip-content="1.&lt;b&gt;写体验点评返奖金&lt;/b&gt;&lt;br&gt;预订此产品，游玩归来发表体验点评，即可获得此点评奖金。&lt;br&gt;2.&lt;b&gt;如何发表体验点评&lt;/b&gt;&lt;br&gt;登录我的在途中—我的点评—待点评，即可发表点评。">返60元奖金（手机预订返78元哦！）</i>
							</span>
                                    <br></p>
                                <div style="clear:both;"></div>
                                <label>出发/目的地：</label>
                                北京
                                <img width="32" height="5" align="absmiddle" class="dtl_goto_icon" alt=" " src="images/arrow.gif" data-bd-imgshare-binded="1">
                                <span id="toId" style="display:none;">3546</span>
                                马尔代夫
                                <br>
                                <label>支付方式：</label>
                                在线支付、电话支付、
                                <b title="银行转账金额至少不低于￥5000">银行转账</b>
                                、
                                <b title="分期支付金额至少不低于￥1000">分期支付</b>
                                <p></p>

                            </div>
                            <!--txt1-->
                            <div class="play_date">
                                <form method="post" action="http://www.lvmama.com/buy/fill.do" onsubmit="return beforeSubmit(this);">
                                    <input type="hidden" name="buyInfo.productId" value="60971">
                                    <input type="hidden" name="buyInfo.prodBranchId" value="60971">
                                    <input type="hidden" name="buyInfo.productType" value="ROUTE">
                                    <input type="hidden" id="subProductType" name="buyInfo.subProductType" value="FREENESS_FOREIGN">
                                    <input type="hidden" id="selfPack" value="">
                                    <dl class="clearfix">
                                        <!--非不定期产品才显示游玩日期-->
                                        <dt id="date_type">
                                            <em>*</em>
                                            游玩日期：
                                        </dt>
                                        <dd class="quick-wrap">
                                            <p>
                                                <select name="buyInfo.visitTime" id="quickBooker_select_1" class="quickBooker_select">
                                                    <option value="0">请选择游玩日期</option>
                                                    <option value="2014-06-14">
                                                        06-14（星期六）
                                                        2沙beach ...￥13280
                                                    </option>
                                                    <option value="2014-06-15">
                                                        06-15（星期日）
                                                        2沙beach ...￥13280
                                                    </option>
                                                    <option value="2014-06-18">
                                                        06-18（星期三）
                                                        2沙beach ...￥13280
                                                    </option>
                                                    <option value="2014-06-19">
                                                        06-19（星期四）
                                                        2沙beach ...￥13280
                                                    </option>
                                                    <option value="2014-06-21">
                                                        06-21（星期六）
                                                        2沙beach ...￥13280
                                                    </option>
                                                    <option value="2014-06-22">
                                                        06-22（星期日）
                                                        2沙beach ...￥13280
                                                    </option>
                                                    <option value="2014-06-25">
                                                        06-25（星期三）
                                                        2沙beach ...￥13280
                                                    </option>
                                                    <option value="2014-06-26">
                                                        06-26（星期四）
                                                        2沙beach ...￥13280
                                                    </option>
                                                    <option value="2014-06-28">
                                                        06-28（星期六）
                                                        2沙beach ...￥13280
                                                    </option>
                                                    <option value="2014-06-29">
                                                        06-29（星期日）
                                                        2沙beach ...￥13280
                                                    </option>
                                                    <option value="2014-07-02">
                                                        07-02（星期三）
                                                        2沙beach ...￥13580
                                                    </option>
                                                    <option value="2014-07-03">
                                                        07-03（星期四）
                                                        2沙beach ...￥13580
                                                    </option>
                                                    <option value="2014-07-05">
                                                        07-05（星期六）
                                                        2沙beach ...￥13580
                                                    </option>
                                                    <option value="2014-07-06">
                                                        07-06（星期日）
                                                        2沙beach ...￥13580
                                                    </option>
                                                    <option value="2014-07-09">
                                                        07-09（星期三）
                                                        2沙beach ...￥13580
                                                    </option>
                                                    <option value="2014-07-10">
                                                        07-10（星期四）
                                                        2沙beach ...￥13580
                                                    </option>
                                                    <option value="2014-07-12">
                                                        07-12（星期六）
                                                        2沙beach ...￥13580
                                                    </option>
                                                    <option value="2014-07-13">
                                                        07-13（星期日）
                                                        2沙beach ...￥13580
                                                    </option>
                                                    <option value="2014-07-16">
                                                        07-16（星期三）
                                                        2沙beach ...￥13580
                                                    </option>
                                                    <option value="2014-07-17">
                                                        07-17（星期四）
                                                        2沙beach ...￥13580
                                                    </option>
                                                    <option value="2014-07-19">
                                                        07-19（星期六）
                                                        2沙beach ...￥13580
                                                    </option>
                                                    <option value="2014-07-20">
                                                        07-20（星期日）
                                                        2沙beach ...￥13580
                                                    </option>
                                                    <option value="2014-07-23">
                                                        07-23（星期三）
                                                        2沙beach ...￥13580
                                                    </option>
                                                    <option value="2014-07-24">
                                                        07-24（星期四）
                                                        2沙beach ...￥13580
                                                    </option>
                                                    <option value="2014-07-26">
                                                        07-26（星期六）
                                                        2沙beach ...￥13580
                                                    </option>
                                                    <option value="2014-07-27">
                                                        07-27（星期日）
                                                        2沙beach ...￥13580
                                                    </option>
                                                    <option value="2014-07-30">
                                                        07-30（星期三）
                                                        2沙beach ...￥13950
                                                    </option>
                                                    <option value="2014-07-31">
                                                        07-31（星期四）
                                                        2沙beach ...￥14400
                                                    </option>
                                                    <option value="2014-08-02">
                                                        08-02（星期六）
                                                        2沙beach ...￥14850
                                                    </option>
                                                    <option value="2014-08-03">
                                                        08-03（星期日）
                                                        2沙beach ...￥14850
                                                    </option>
                                                    <option value="2014-08-06">
                                                        08-06（星期三）
                                                        2沙beach ...￥14850
                                                    </option>
                                                    <option value="2014-08-07">
                                                        08-07（星期四）
                                                        2沙beach ...￥14850
                                                    </option>
                                                    <option value="2014-08-09">
                                                        08-09（星期六）
                                                        2沙beach ...￥14850
                                                    </option>
                                                    <option value="2014-08-10">
                                                        08-10（星期日）
                                                        2沙beach ...￥14850
                                                    </option>
                                                    <option value="2014-08-13">
                                                        08-13（星期三）
                                                        2沙beach ...￥14850
                                                    </option>
                                                    <option value="2014-08-14">
                                                        08-14（星期四）
                                                        2沙beach ...￥14850
                                                    </option>
                                                    <option value="2014-08-16">
                                                        08-16（星期六）
                                                        2沙beach ...￥14850
                                                    </option>
                                                    <option value="2014-08-17">
                                                        08-17（星期日）
                                                        2沙beach ...￥14150
                                                    </option>
                                                    <option value="2014-08-20">
                                                        08-20（星期三）
                                                        2沙beach ...￥14150
                                                    </option>
                                                    <option value="2014-08-21">
                                                        08-21（星期四）
                                                        2沙beach ...￥14150
                                                    </option>
                                                    <option value="2014-08-23">
                                                        08-23（星期六）
                                                        2沙beach ...￥14150
                                                    </option>
                                                    <option value="2014-08-24">
                                                        08-24（星期日）
                                                        2沙beach ...￥14150
                                                    </option>
                                                    <option value="2014-08-27">
                                                        08-27（星期三）
                                                        2沙beach ...￥13350
                                                    </option>
                                                    <option value="2014-08-28">
                                                        08-28（星期四）
                                                        2沙beach ...￥13350
                                                    </option>
                                                    <option value="2014-08-30">
                                                        08-30（星期六）
                                                        2沙beach ...￥13050
                                                    </option>
                                                    <option value="2014-08-31">
                                                        08-31（星期日）
                                                        2沙beach ...￥12800
                                                    </option>
                                                </select>
                                            </p>
                                            <div class="zxerror quick-error">
										<span class="zxerror-text">
											<div class="error-arrow">
												<em>◆</em>
												<i>◆</i>
											</div>
											<p>请选择游玩日期</p>
										</span>
                                            </div>
                                        </dd>
                                    </dl>
                                    <dl class="clearfix">
                                        <dt>
                                            <em>*</em>
                                            预订数量：
                                        </dt>
                                        <dd style="position: relative;">
                                            <div id="quickBooker1_tab2">
                                                <table class="free_dtl_pro_tab">
                                                    <!-- 默认类别-->
                                                    <!-- 不定期-->
                                                    <!-- 非不定期-->
                                                    <tbody>
                                                    <tr class="p_60971">
                                                        <td>
                                                            <span title="2沙beach bungalow+2水 water bungalow">2沙beach ...</span>

                                                        </td>
                                                        <td>
														<span class="price-wrap">
															<em class="minus price-disable" onclick="">-</em>
															<input seq="1" name="buyInfo.buyNum.product_60971"  type="text" size="2" class="number prod-num" value="0" ordnum="ordNum" onchange="" minamt="0" maxamt="100" textnum="textNum60971" people="1" branchid="60971">
															<em class="plus" onclick="">+</em>
														</span>
                                                        </td>
                                                        <td>
														<span>
															(单价 <dfn>¥ <font class="product_60971_price">12800</font></dfn>
															)
														</span>
                                                        </td>
                                                    </tr>

                                                    <!-- 期票产品，如果主类别不可售，取第一个可售类别为主类别，在此过滤 -->
                                                    <!-- 期票产品，如果主类别不可售，取第一个可售类别为主类别，在此过滤 -->
                                                    <!-- 不定期页面-->
                                                    <!-- 非不定期页面-->
                                                    <tr class="p_100232">
                                                        <td>
                                                            <span title="4晚水屋water Bungalow">4晚水屋wate...</span>

                                                        </td>
                                                        <td>
														<span class="price-wrap">
															<em class="minus price-disable" onclick="">-</em>
															<input seq="1" name="buyInfo.buyNum.product_100232" type="text" size="2" class="number prod-num" value="0" ordnum="ordNum" onchange="updateOperator(&#39;100232&#39;,&#39;input&#39;,this)" minamt="0" maxamt="100" textnum="textNum100232" people="1" branchid="100232">
															<em class="plus" onclick="">+</em>
														</span>
                                                        </td>
                                                        <td>
														<span>
															(单价 <dfn>¥ <font class="product_100232_price">12900</font></dfn>
															)
														</span>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <!--  end-->
                                            <!--按钮-->
                                            <!-- 非超级自由行-->
                                            <!-- 可售-->
                                            <span class="bookerBtn">
										<input type="submit" class="immediateB" value="" style="cursor:pointer"></span>
                                            <a class="dtl_savebtn" style="display:none" href="javascript:addBookmark();" hidefocus="false">收藏该商品</a>
                                            <br>
                                            <a class="dtl_savebtn detail-recomment" style="display:none" href="javascript:void(0)" hidefocus="false">推荐给好友</a>
                                        </dd>

                                    </dl>
                                </form>
                                <div class="ewm_box ewm_box_xl">
                                    <img src="images/60971.png" width="75" height="75" alt="手机订购二维码" data-bd-imgshare-binded="1">
                                    <p>
                                        用在途中app扫描此二维码
                                        <span>手机订购更优惠</span>
                                    </p>
                                    <span class="zhiyin"></span>
                                </div>
                                <p class="dtl_r_hint"></p>
                                <div class="recomment_wra">
                                    <i class="arrow-bg"></i>
                                    <div class="recomment_wra_mid">
                                        <h3 class="recomment_tit">
                                            <i class="close" data-hide="recomment_wra"></i>
                                            推荐给好友
                                        </h3>
                                        <ul class="recomment_input">
                                            <li>
                                                <label>您的推荐：</label>
                                                <i>【出境暑假狂欢季】马尔代夫哈库拉CHAAYA LAGOO....</i>
                                            </li>
                                            <li>
                                                <label>
                                                    <i>*</i>
                                                    您的姓名：
                                                </label>
                                                <input id="referrerName" name="username" class="email-input01" type="text" value="请输入姓名">
                                                <strong><b id="referrerNameWarn"></b></strong>
                                            </li>
                                            <li>
                                                <label>
                                                    <i>*</i>
                                                    发送到：
                                                </label>
                                                <input id="firstEmail" name="firstEmail" class="email-input01" type="text" value="例：xiaoming@163.com">
                                                <strong>
                                                    <b id="firstEmailWarn"></b>
                                                </strong>
                                            </li>
                                            <li class="recomment_margin">
                                                <input id="secondEmail" name="secondEmail" class="email-input01" type="text" value="@">
                                                <strong>
                                                    <b id="secondEmailWarn"></b>
                                                </strong>
                                            </li>
                                            <li class="recomment_margin">
                                                <input id="thirdEmail" name="thirdEmail" class="email-input01" type="text" value="@">
                                                <strong>
                                                    <b id="thirdEmailWarn"></b>
                                                </strong>
                                            </li>
                                            <li class="recomment_margin">
                                                <input id="fourthEmail" name="fourthEmail" class="email-input01" type="text" value="@">
                                                <strong>
                                                    <b id="fourthEmailWarn"></b>
                                                </strong>
                                            </li>
                                            <li class="recomment_margin">
                                                <i class="send_recomment" id="send-email"></i>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="recom-succeed" style="font-size:14px;color:#333;display:none;">
                                        <h3 class="recomment_tit">
                                            <i class="close" data-hide="recomment_wra"></i>
                                            推荐给好友
                                        </h3>
                                        <p class="frist-p">发送成功</p>
                                        <p>您的好友将会在邮箱中看到您推荐的产品信息。</p>
                                    </div>
                                </div>
                                <!--recomment_wra end-->
                                <input type="hidden" id="productId" name="productId" value="60971">
                                <input type="hidden" id="productName" name="productName" value="【出境暑假狂欢季】马尔代夫哈库拉CHAAYA LAGOON岛4晚6日自由行*5M航空直飞 一价全包"></div>

                        </div>
                        <!--topbox-->
                        <div class="dtl_cfd_gonggao">
                            <h3>
                                <b>公告</b>
                            </h3>
                            <ol class="dtl_gonggao_list">
                                <li>12岁以下儿童、外籍、单房差价格请来电咨询客服</li>
                            </ol>
                        </div>
                        <!--gonggao-->

                    </div>
                    <!--boxright-->
                </div>
                <!--boxinner-->
            </div>
            <!--infobox-->
            <div class="dtl_tj">
                <h3 class="dtl_tj_tit">产品经理推荐</h3>
                <ul class="dtl_tj_list">
                    <li>★马尔代夫哈库拉岛距离首都马列130公里处</li>
                    <li>★性价比很高的一价全含，包括了三餐以及下午的点心和夜宵</li>
                    <li>★免费浮潜设备租用</li>
                    <li>★现代装修风格，舒适住宿环境</li>
                </ul>
            </div>
            <!--下部(产品经理推荐以下部分)-->
            <b  style="display:inline-block; width:10px; height:10px; margin-bottom:10px;"><a name="tese"></a></b>
            <!--若是自主打包产品，显示“可选行程”标签-->
            <!--标签头部-->
            <ul class="scroll_nav_ul" id="scroll_nav" selfpack="false">
                <li class="row_1">
                    <a href="#tese" >产品特色</a>
                </li>

                <li class="row_3">
                    <a href="#xingcheng" >行程说明</a>
                </li>

                <li class="row_4">
                    <a href="#feiyong" >费用说明</a>
                </li>

                <li class="row_5">
                    <a href="#tijian" >体验点评</a>
                </li>

                <li class="row_6">
                    <a href="#tishi" >重要提示</a>
                </li>

                <li class="row_7">
                    <a href="#jiaotong" >交通信息</a>
                </li>

                <li class="row_8">
                    <a href="#qianzheng" >签证/签注</a>
                </li>

                <li class="row_9 scroll_nav_current">
                    <a href="#qingbao">目的地情报</a>
                </li>

            </ul>
            <!--scroll_nav end-->
            <!--产品特色-->
            <i id="row_1" class="pkg-maodian">&nbsp;</i>
            <h3 class="h3_tit qiehuana" >
                <span><a style="color:#fff;">产品特色</a></span>
            </h3>
            <div class="row pro_special" style="position:relative;">
                <div class="pro_special_mid">
                    <p>
				<span style="font-family:Microsoft YaHei;font-size:16px;">
					<span style="color:#000000;">
						<strong>
							<span style="color:#000000;">
								马尔代夫哈库拉岛意思是它位于水上面，位于美慕环礁,是环礁内建立的度假村,距离首都马列130公里处，周围无污染的环境,与清澈的海水和翁郁的树林,加上邻近珊瑚礁潜点多,可从事潜水与水上活动很多。珊瑚岛本身是一个长形的岛屿，是一个极其清澈的湖泊，长有茂盛的植物，是一个度假的天堂，给人留下美好的回忆
							</span>
						</strong>
					</span>
				</span>
                        <span style="font-family:Microsoft YaHei;font-size:16px;">
					<span style="color:#000000;">
						<strong>
							<span style="color:#000000;">。</span>
						</strong>
					</span>
				</span>
                    </p>
                    <p>
				<span style="font-family:Microsoft YaHei;font-size:16px;">
					<span style="color:#000000;">
						<img border="0" alt="" src="images/UVUQH.jpg" data-bd-imgshare-binded="1">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<img border="0" alt="" src="images/C9PO5.jpg" data-bd-imgshare-binded="1"></span>
				</span>
                    </p>
                    <p>
                        <strong>
                            <span style="font-family:Microsoft YaHei;color:#000000;font-size:16px;">房间类别</span>
                            <span style="font-family:Microsoft YaHei;color:#000000;font-size:16px;"></span>
                        </strong>
                    </p>
                    <p>
				<span style="font-family:Microsoft YaHei;font-size:16px;">
					<span style="color:#000000;">
						<strong>
							<span style="color:#000000;">★70栋 - Beach Bungalow 海景豪华别墅</span>
						</strong>
					</span>
				</span>
                    </p>
                    <div></div>
                    <span style="font-family:Microsoft YaHei;font-size:16px;">
				<span style="color:#000000;">
					<strong>
						<span style="color:#000000;">★10栋 - Water Bungalow 海上豪华别墅-˙水上屋</span>
					</strong>
				</span>
			</span>
                    <div></div>
                    <span style="font-family:Microsoft YaHei;font-size:16px;">
				<span style="color:#000000;">
					<strong>
						<span style="color:#000000;">别墅设施及配备分别有：</span>
					</strong>
				</span>
			</span>
                    <div></div>
                    <p>
				<span style="font-family:Microsoft YaHei;font-size:16px;">
					<span style="color:#000000;">
						<strong>
							<span style="color:#000000;">
								空调、电视、电话、冷热水、澡盆、迷你冰箱、煮茶与咖啡容器、吹风机…等。除此之外，在豪华水上别墅可以透过玻璃落地窗与辽阔又美丽的海洋有直接面对面的接触。
							</span>
						</strong>
					</span>
				</span>
                    </p>
                    <p>
				<span style="font-family:Microsoft YaHei;font-size:16px;">
					<span style="color:#000000;">
						<img border="0" alt="" src="images/DD98B.jpg" data-bd-imgshare-binded="1">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<img border="0" alt="" src="images/ANOXT.jpg" data-bd-imgshare-binded="1"></span>
				</span>
                    </p>
                    <p>
				<span style="font-family:Microsoft YaHei;font-size:16px;">
					<span style="color:#000000;">
						<strong>
							<span style="color:#000000;">餐饮介绍</span>
						</strong>
					</span>
				</span>
                    </p>
                    <p>
				<span style="font-family:Microsoft YaHei;font-size:16px;">
					<span style="color:#000000;">
						<strong>
							<span style="color:#000000;">提供中国，以及异国情调的东方菜，餐厅光明而且舒适。当地自制的新鲜面包和热带水果，有各种各样的自助早</span>
						</strong>
					</span>
				</span>
                    </p>
                    <p>
				<span style="font-family:Microsoft YaHei;font-size:16px;">
					<span style="color:#000000;">
						<strong>
							<span style="color:#000000;">
								餐。午餐和晚餐服务都是自助餐，有充足的精心准备的美食。可以举办海滩烧烤或私人海滩晚宴。酒吧中有各种的鸡尾酒，酒吧在日落时分，是理想的好玩地点。供有早餐，午餐，晚餐（排除特殊的膳食如龙虾，大虾，烘烤和菜谱以外的）；酒店小吃（菜单规定）只在早上或者下午一个小时（除用餐时间）和午夜提供，下午茶配有蛋糕。
							</span>
						</strong>
					</span>
				</span>
                    </p>
                    <p>
				<span style="font-family:Microsoft YaHei;font-size:16px;">
					<span style="color:#000000;">
						<img border="0" alt="" src="images/BDAPT.jpg" data-bd-imgshare-binded="1">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<img border="0" alt="" src="images/7GON4.jpg" data-bd-imgshare-binded="1"></span>
				</span>
                    </p>
                    <p>
                        <strong>
                            <span style="font-family:Microsoft YaHei;color:#000000;font-size:16px;">娱乐休闲</span>
                            <span style="font-family:Microsoft YaHei;color:#000000;font-size:16px;"></span>
                        </strong>
                    </p>
                    <p>
				<span style="font-family:Microsoft YaHei;font-size:16px;">
					<span style="color:#000000;">
						<strong>
							<span style="color:#000000;">
								哈库拉岛提供充足的娱乐设施，包括生活乐队，文化演出，游戏，烧火，螃蟹竞赛，各种夜间歌舞会。还有潜水，划艇，帆板运动，双体船航行，划独木船。
							</span>
						</strong>
					</span>
				</span>
                    </p>
                    <div></div>
                    <p>
				<span style="font-family:Microsoft YaHei;font-size:16px;">
					<span style="color:#000000;">
						<strong>
							<span style="color:#000000;">
								设施：小屋、咖啡/小酒吧、甲板桌、直通沙滩、礼堂/休息室入口、花园或停车场、客栈酒店、洗衣店、可利用的安静小屋、餐厅、阳台或者露台、防晒伞、超市/亭子、露天台、健身区/水疗、免费羽毛球、航行(需付款)、帆船运动(需付款)、免费排球/海滩排球
							</span>
						</strong>
					</span>
				</span>
                    </p>
                    <p>
				<span style="font-family:Microsoft YaHei;font-size:16px;">
					<span style="color:#000000;">
						<img border="0" alt="" src="images/OIKHJ.jpg" data-bd-imgshare-binded="1">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<img border="0" alt="" src="images/SFUAJ.jpg" data-bd-imgshare-binded="1"></span>
				</span>
                    </p>
                </div>

                <b  style="display:inline-block; width:10px; height:10px; position:absolute; left:0; bottom:0; "><a name="xingcheng"></a></b>
                <!--pro_special_mid end-->
            </div>
            <!--pro_special end-->

            <!--若是自由行，显示“行程说明”标签-->
            <i id="row_3" class="pkg-maodian">&nbsp;</i>
            <h3 class="h3_tit qiehuanb">
                <span><a style="color:#fff;">行程说明</a></span>
            </h3>
            <div class="row recommend_travel" style="position:relative;">
                <b>行程提示:</b>
                <a target="_blank" href="http://www.lvmama.com/product/getTravelTips/18" hidefocus="false">亚洲马尔代夫旅游须知</a>
                &nbsp;
                <!-- 多行程 -->
                <div class="day day_rights_none">
                    <div class="day_rights"></div>
                    <!--day_rights end-->
                    <div class="day_left">
                        <div class="day_tit">
                            <b><strong>第1天</strong>
                                <span>北京—马累 参考航班：LV189（05：50/11：20）</span></b>
                        </div>
                        <!--day_tit end-->
                        <div class="day_introduction">首都机场集合搭乘5M航空公司飞机飞往马尔代夫首都-马累，抵达后在机场等候水上飞机上岛。</div>
                        <div class="day_img">

                            <img class="day_img_left" width="320" height="240" src="images/0XPAM.jpg" title="北京" data-bd-imgshare-binded="1">

                            <img class="day_img_right" width="320" height="240" src="images/2E3RZ.jpg" title="马尔代夫" data-bd-imgshare-binded="1"></div>

                        <ul>
                            <li>
                                <b>用餐</b>
                                早餐：敬请自理 午餐：敬请自理 晚餐：酒店餐厅
                            </li>
                            <li>
                                <b>住宿</b>
                                CHAAYA LAGOON
                            </li>
                        </ul>
                    </div>
                    <!--day_left end-->
                </div>
                <!--day end-->
                <div class="day day_rights_none">
                    <div class="day_rights"></div>
                    <!--day_rights end-->
                    <div class="day_left">
                        <div class="day_tit">
                            <b><strong>第2天</strong>
                                <span>马尔代夫度假岛上自由活动</span></b>
                        </div>
                        <!--day_tit end-->
                        <div class="day_introduction">
                            乘水上飞机到住宿岛屿，抵达后入住酒店。后自由享受岛上各种设施，马乐代夫由一千一百九十二个珊瑚组成。每个小岛不但海边优美、水清沙幼，珊瑚礁更是彩色缤纷，加上各种的珊瑚鱼，令人陶醉于大自然当中，团友可即时展开多姿多彩之水上活动或有随团领队代安排各式各样自费活动等。
                        </div>
                        <div class="day_img">

                            <img class="day_img_left" width="320" height="240" src="images/4GG3C.jpg" title="马尔代夫" data-bd-imgshare-binded="1">

                            <img class="day_img_right" width="320" height="240" src="images/LYXG4.jpg" title="马尔代夫" data-bd-imgshare-binded="1"></div>

                        <ul>
                            <li>
                                <b>用餐</b>
                                早餐：酒店餐厅 午餐：酒店餐厅 晚餐：酒店餐厅
                            </li>
                            <li>
                                <b>住宿</b>
                                CHAAYA LAGOON
                            </li>
                        </ul>
                    </div>
                    <!--day_left end-->
                </div>
                <!--day end-->
                <div class="day day_rights_none">
                    <div class="day_rights"></div>
                    <!--day_rights end-->
                    <div class="day_left">
                        <div class="day_tit">
                            <b>
                                <strong>第3天</strong>
                                <span>马尔代夫度假岛上自由活动</span>
                            </b>
                        </div>
                        <!--day_tit end-->
                        <div class="day_introduction">早餐后，自由享受岛上各种设施。</div>
                        <div class="day_img">

                            <img class="day_img_left" width="320" height="240" src="images/N0N8U.jpg" title="马尔代夫" data-bd-imgshare-binded="1">

                            <img class="day_img_right" width="320" height="240" src="images/F0YA6.jpg" title="马尔代夫" data-bd-imgshare-binded="1"></div>

                        <ul>
                            <li>
                                <b>用餐</b>
                                早餐：酒店餐厅 午餐：酒店餐厅 晚餐：酒店餐厅
                            </li>
                            <li>
                                <b>住宿</b>
                                CHAAYA LAGOON
                            </li>
                        </ul>
                    </div>
                    <!--day_left end-->
                </div>
                <!--day end-->
                <div class="day day_rights_none">
                    <div class="day_rights"></div>
                    <!--day_rights end-->
                    <div class="day_left">
                        <div class="day_tit">
                            <b>
                                <strong>第4天</strong>
                                <span>马尔代夫度假岛上自由活动</span>
                            </b>
                        </div>
                        <!--day_tit end-->
                        <div class="day_introduction">早餐后，自由享受岛上各种设施</div>
                        <div class="day_img">

                            <img class="day_img_left" width="320" height="240" src="images/2IZFE.jpg" title="马尔代夫" data-bd-imgshare-binded="1">

                            <img class="day_img_right" width="320" height="240" src="images/4HG1V.jpg" title="马尔代夫" data-bd-imgshare-binded="1"></div>

                        <ul>
                            <li>
                                <b>用餐</b>
                                早餐：酒店餐厅 午餐：酒店餐厅 晚餐：酒店餐厅
                            </li>
                            <li>
                                <b>住宿</b>
                                CHAAYA LAGOON
                            </li>
                        </ul>
                    </div>
                    <!--day_left end-->
                </div>
                <!--day end-->
                <div class="day day_rights_none">
                    <div class="day_rights"></div>
                    <!--day_rights end-->
                    <div class="day_left">
                        <div class="day_tit">
                            <b>
                                <strong>第5天</strong>
                                <span>马累—北京 参考航班：LV188（17：35/04：10+1）</span>
                            </b>
                        </div>
                        <!--day_tit end-->
                        <div class="day_introduction">早餐后，自由享受岛上各种设施,中午12点钟退房，之后继续享受岛上各种设施，而后前往马累机场。</div>
                        <div class="day_img">

                            <img class="day_img_left" width="320" height="240" src="images/EOV7K.jpg" title="马尔代夫" data-bd-imgshare-binded="1">

                            <img class="day_img_right" width="320" height="240" src="images/Z90HR.jpg" title="马尔代夫" data-bd-imgshare-binded="1"></div>

                        <ul>
                            <li>
                                <b>用餐</b>
                                早餐：酒店餐厅 午餐：酒店餐厅  晚餐：敬请自理
                            </li>
                            <li>
                                <b>住宿</b>
                                飞机上
                            </li>
                        </ul>
                    </div>
                    <!--day_left end-->
                </div>
                <!--day end-->
                <div class="day day_rights_none">
                    <div class="day_rights"></div>
                    <!--day_rights end-->
                    <div class="day_left">
                        <div class="day_tit">
                            <b>
                                <strong>第6天</strong>
                                <span>北京</span>
                                <i class="icon_aircraft"></i>
                            </b>
                        </div>
                        <!--day_tit end-->
                        <div class="day_introduction">抵达首都机场后散团，结束愉快旅程！欢迎大家再次参加我社的团队。</div>
                        <div class="day_img">

                            <img class="day_img_left" width="320" height="240" src="images/MGF1X.jpg" title="北京" data-bd-imgshare-binded="1">

                            <img class="day_img_right" width="320" height="240" src="images/064JL.jpg" title="马尔代夫" data-bd-imgshare-binded="1"></div>

                        <ul>
                            <li>
                                <b>用餐</b>
                                早餐：敬请自理 午餐：敬请自理 晚餐：敬请自理
                            </li>
                            <li>
                                <b>住宿</b>
                                温馨的家
                            </li>
                        </ul>
                    </div>
                    <!--day_left end-->
                </div>
                <!--day end-->

                <b  style="display:inline-block; width:10px; height:10px; position:absolute; left:0; bottom:0; "><a  name="feiyong"></a></b>
            </div>
            <!--recommend_travel end-->

            <!--费用说明-->
            <i id="row_4" class="pkg-maodian">&nbsp;</i>
            <h3 class="h3_tit qiehuanc">
                <span><a style=" color:#fff;">费用说明</a></span>
            </h3>
            <div class="row statement_cost" style="position:relative;">
                <dl>
                    <dt>费用包含</dt>
                    <dd>1.机票：包含北京到马累往返段机票含税；</dd>
                    <dd>2.住宿：2晚沙屋+2晚水屋 或者 4晚水屋（任选其一）</dd>
                    <dd>3.上岛交通：水上飞机往返；</dd>
                    <dd>4.用餐：一价全包；</dd>
                </dl>

                <dl>
                    <dt>费用不包含</dt>
                    <dd>1.个人护照办理；</dd>
                    <dd>2.酒店个人消费；</dd>
                    <dd>3.航空保险以及行李超重费用及海关课税；</dd>
                    <dd>4.台风、飞机延误或航班取消或更改时间，交通延阻等不可抗力因素及其它不在本公司控制范围内情况所导致的额外费用；</dd>
                    <dd>5.单人出行时需要补交单房差。</dd>
                    <dd>6.马累机场离境税USD25/人（境外现金收取）；</dd>
                    <dd>7.本产品不含旅游人身意外险，我们强烈建议游客购买。游客可在填写订单时勾选附件产品中的相关保险购买</dd>
                </dl>
                <dl>
                    <dt>推荐项目</dt>
                    <dd>无</dd>
                </dl>

                <dl>
                    <dt>购物说明</dt>
                    <dd>无</dd>
                </dl>
                <b style="display:inline-block; width:10px; height:10px; position:absolute; left:0; bottom:0; "><a name="tijian" ></a></b>
            </div>
            <!--statement_cost end-->

            <!--产品点评-->
            <i id="row_5" class="pkg-maodian">&nbsp;</i>
            <h3 class="h3_tit qiehuand">
                <span><a style="color:#fff;">体验点评</a></span>
            </h3>
            <div class="row important_prompt c_padd">
                <h4 class="c_line_tit">【出境暑假狂欢季】马尔代夫哈库拉CHAAYA LAGOON岛4晚6日自由行*5M航空直飞 一价全包</h4>
                <div class="c_line_pro" id="c_line_pro">
                    <div class="big_box">
                        <!--线路点评开始>
				>-->
                        <div class="c_line_ct">
                            <h5 class="c_line_num">
                                <strong>
                                    体验点评(
                                    <span>
								1

               	条
							</span>
                                    )
                                </strong>
                            </h5>
                            <div class="c_w_score">
                                <p class="c_p_link">
							<span class="com_StarValueCon total_val_posi">
								<font><em>5.0</em>
									分</font>
								<s class="star_bg cur_def">
									<i class="ct_Star5"></i>
								</s>
							</span>
                                    <a target="_blank"  href="" hidefocus="false">1封点评</a>
                                </p>
                                <ul class="comments">
                                    <li>
                                        <strong class="com_des">景点:</strong>
                                        <span class="progressBar">
									<i class="achiveBar" style="width:100%"><s></s></i>
									<small></small>
								</span>
                                        5.0分
                                    </li>
                                    <li>
                                        <strong class="com_des">酒店:</strong>
                                        <span class="progressBar">
									<i class="achiveBar" style="width:100%"><s></s></i>
									<small></small>
								</span>
                                        5.0分
                                    </li>
                                    <li>
                                        <strong class="com_des">服务:</strong>
                                        <span class="progressBar">
									<i class="achiveBar" style="width:100%">
										<s></s>
									</i>
									<small></small>
								</span>
                                        5.0分
                                    </li>
                                    <li>
                                        <strong class="com_des">交通:</strong>
                                        <span class="progressBar">
									<i class="achiveBar" style="width:100%">
										<s></s>
									</i>
									<small></small>
								</span>
                                        5.0分
                                    </li>
                                </ul>
                                <div style="width:500px;" class="c_love_tips fl">
                                    <p>
                                        游玩后发表点评，
                                        返
                                        <b class="orange">￥60</b>
                                        奖金，
                                        赠100积分，精华点评追加150积分！
                                        <a  href="" target="_blank" hidefocus="false">规则详情&gt;&gt;</a>
                                    </p>
                                    <p>
                                        我购买过该产品，
                                        <a href="" class="btn btn-small btn-pink white" style="background-image:none; background:#3aa501" hidefocus="false">发点评返奖金</a>
                                    </p>
                                </div>
                            </div>
                            <!--c_w_score end-->
                            <div class="u_comment">
                                <dl class="last">
                                    <dt>
                                        <img src="images/default-photo.gif" width="76" height="76" data-bd-imgshare-binded="1">
                                        <span>lv1381174****</span>
                                    </dt>
                                    <dd>

                                        <strong class="yan">验</strong>
                                        <span class="com_StarValueCon">
									<b>总体评价：</b>
									<s class="star_bg cur_def">
										<i class="ct_Star5"></i>
									</s>
								</span>
                                        <span class="re_jifen">
									返：奖金
									<em>612元</em>
									积分
									<em>100分</em>
								</span>
                                    </dd>
                                    <dd class="c_score">
								<span style="background:none;padding:0">
									景点：
									<i>5分</i>
								</span>
                                        <span style="background:none;padding:0">
									酒店：
									<i>5分</i>
								</span>
                                        <span style="background:none;padding:0">
									服务：
									<i>5分</i>
								</span>
                                        <span style="background:none;padding:0">
									交通：
									<i>5分</i>
								</span>
                                    </dd>
                                    <dd class="c_comctext">
                                        马尔代夫的蓝天，白云，碧水，沙滩美的有些不真实，1314到达，鉴证我们的爱情
                                        <a href="" target="_blank" class="c_w_more" hidefocus="false">查看全文&gt;&gt;</a>
                                    </dd>
                                    <dd class="c_reply">
                                        <a title="点击加心" class="h_xing" onclick="javascript:return addUsefulCount(6,1089180,this);" hidefocus="false">
                                            <i>
                                                （
                                                <big>6</big>
                                                ）
                                            </i>
                                        </a>
                                        <a  href="" target="_blank" class="h_fu" hidefocus="false">
                                            网友回复
                                            <i>
                                                （
                                                <big>0</big>
                                                ）
                                            </i>
                                        </a>
                                        <a href="" target="_blank" class="c_canyu" hidefocus="false">
                                            在途中官方回复
                                            <i>
                                                （
                                                <big>0</big>
                                                ）
                                            </i>
                                        </a>
                                        <small>2014-01-06 21:32</small>
                                    </dd>
                                </dl>
                            </div>
                            <p class="c_seemore">
                                <a target="_blank" href="" hidefocus="false">查看全部点评&gt;&gt;</a>
                            </p>

                        </div>
                        <!--c_line_ct end-->
                        <!--线路点评结束>
				>-->
                        <!--相关线路点评开始>
				>-->
                        <!--
              	<div class="c_line_ct c_reline_ct" id="c_reline_ct"></div>
			-->
                        <!--相关线路点评结束>
			>-->
                        <!--遮罩层>
			>-->
                        <!--
				<div class="c_shade" id="c_shade">
			<div class="c_shadebg" id="c_shadebg">
				<s class="c_left"></s>
				<s class="c_right"></s>
				<a class="c_jtleft" id="c_jtleft"></a>
				<a class="c_jtright" id="c_jtright"></a>
			</div>
		</div>
		-->
                    </div>
                    <!--big_box end-->
                </div>
                <!--c_line_pro end-->

            </div>
            <!--important_prompt end-->

            <!--快速预订-->

            <div class="scroll_pro scroll_mar" >
                <form method="post" action="http://www.lvmama.com/buy/fill.do" onsubmit="return beforeSubmit(this);">
                    <input type="hidden" id="productIdHidden" name="buyInfo.productId" value="60971">
                    <input type="hidden" id="productBranchIdHidden" name="buyInfo.prodBranchId" value="60971">
                    <input type="hidden" name="buyInfo.productType" value="ROUTE">
                    <input type="hidden" name="buyInfo.subProductType" value="FREENESS_FOREIGN">
                    <ul class="quick-book-ul">
                        <li class="quick-book-ul_li1">游玩日期：</li>
                        <li class="quick-book-ul_li2">
                            <select name="buyInfo.visitTime" onchange="" id="quickBooker_select_2" class="quickBooker_select">
                                <option value="0">请选择游玩日期</option>
                                <option value="2014-06-14">
                                    06-14（星期六）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-06-15">
                                    06-15（星期日）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-06-18">
                                    06-18（星期三）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-06-19">
                                    06-19（星期四）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-06-21">
                                    06-21（星期六）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-06-22">
                                    06-22（星期日）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-06-25">
                                    06-25（星期三）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-06-26">
                                    06-26（星期四）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-06-28">
                                    06-28（星期六）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-06-29">
                                    06-29（星期日）
                                    2沙beach ...￥13280
                                </option>
                                <option value="2014-07-02">
                                    07-02（星期三）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-03">
                                    07-03（星期四）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-05">
                                    07-05（星期六）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-06">
                                    07-06（星期日）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-09">
                                    07-09（星期三）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-10">
                                    07-10（星期四）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-12">
                                    07-12（星期六）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-13">
                                    07-13（星期日）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-16">
                                    07-16（星期三）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-17">
                                    07-17（星期四）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-19">
                                    07-19（星期六）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-20">
                                    07-20（星期日）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-23">
                                    07-23（星期三）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-24">
                                    07-24（星期四）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-26">
                                    07-26（星期六）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-27">
                                    07-27（星期日）
                                    2沙beach ...￥13580
                                </option>
                                <option value="2014-07-30">
                                    07-30（星期三）
                                    2沙beach ...￥13950
                                </option>
                                <option value="2014-07-31">
                                    07-31（星期四）
                                    2沙beach ...￥14400
                                </option>
                                <option value="2014-08-02">
                                    08-02（星期六）
                                    2沙beach ...￥14850
                                </option>
                                <option value="2014-08-03">
                                    08-03（星期日）
                                    2沙beach ...￥14850
                                </option>
                                <option value="2014-08-06">
                                    08-06（星期三）
                                    2沙beach ...￥14850
                                </option>
                                <option value="2014-08-07">
                                    08-07（星期四）
                                    2沙beach ...￥14850
                                </option>
                                <option value="2014-08-09">
                                    08-09（星期六）
                                    2沙beach ...￥14850
                                </option>
                                <option value="2014-08-10">
                                    08-10（星期日）
                                    2沙beach ...￥14850
                                </option>
                                <option value="2014-08-13">
                                    08-13（星期三）
                                    2沙beach ...￥14850
                                </option>
                                <option value="2014-08-14">
                                    08-14（星期四）
                                    2沙beach ...￥14850
                                </option>
                                <option value="2014-08-16">
                                    08-16（星期六）
                                    2沙beach ...￥14850
                                </option>
                                <option value="2014-08-17">
                                    08-17（星期日）
                                    2沙beach ...￥14150
                                </option>
                                <option value="2014-08-20">
                                    08-20（星期三）
                                    2沙beach ...￥14150
                                </option>
                                <option value="2014-08-21">
                                    08-21（星期四）
                                    2沙beach ...￥14150
                                </option>
                                <option value="2014-08-23">
                                    08-23（星期六）
                                    2沙beach ...￥14150
                                </option>
                                <option value="2014-08-24">
                                    08-24（星期日）
                                    2沙beach ...￥14150
                                </option>
                                <option value="2014-08-27">
                                    08-27（星期三）
                                    2沙beach ...￥13350
                                </option>
                                <option value="2014-08-28">
                                    08-28（星期四）
                                    2沙beach ...￥13350
                                </option>
                                <option value="2014-08-30">
                                    08-30（星期六）
                                    2沙beach ...￥13050
                                </option>
                                <option value="2014-08-31">
                                    08-31（星期日）
                                    2沙beach ...￥12800
                                </option>
                            </select>
                            <div class="zxerror quick-error" style="top: 13px; left: 293px;">
				<span class="zxerror-text">
					<div class="error-arrow">
						<em>◆</em>
						<i>◆</i>
					</div>
					<p>请选择游玩日期</p>
				</span>
                            </div>
                        </li>
                        <li id="quickBooker2_tab2" class="quick-book-ul_li3">
                            <table class="free_dtl_pro_tab">
                                <!-- 默认类别-->
                                <!-- 不定期-->
                                <!-- 非不定期-->
                                <tbody>
                                <tr class="p_60971">
                                    <td>
                                        <span title="2沙beach bungalow+2水 water bungalow">2沙beach ...</span>

                                    </td>
                                    <td>
							<span class="price-wrap">
								<em class="minus price-disable" onclick="">-</em>
								<input seq="1" name="buyInfo.buyNum.product_60971" id="param60971" type="text" size="2" class="number prod-num" value="0" ordnum="ordNum" onchange="" minamt="0" maxamt="100" textnum="textNum60971" people="1" branchid="60971">
								<em class="plus" onclick="">+</em>
							</span>
                                    </td>
                                    <td>
							<span>
								(单价
								<dfn>
									¥
									<font class="product_60971_price" id="product_60971_price">12800</font>
								</dfn>
								)
							</span>
                                    </td>
                                </tr>

                                <!-- 期票产品，如果主类别不可售，取第一个可售类别为主类别，在此过滤 -->
                                <!-- 期票产品，如果主类别不可售，取第一个可售类别为主类别，在此过滤 -->
                                <!-- 不定期页面-->
                                <!-- 非不定期页面-->
                                <tr class="p_100232">
                                    <td>
                                        <span title="4晚水屋water Bungalow">4晚水屋wate...</span>

                                    </td>
                                    <td>
							<span class="price-wrap">
								<em class="minus price-disable" onclick="">-</em>
								<input seq="1" name="buyInfo.buyNum.product_100232" id="param100232" type="text" size="2" class="number prod-num" value="0" ordnum="ordNum" onchange="" minamt="0" maxamt="100" textnum="textNum100232" people="1" branchid="100232">
								<em class="plus" onclick="">+</em>
							</span>
                                    </td>
                                    <td>
							<span>
								(单价
								<dfn>
									¥
									<font class="product_100232_price" id="product_100232_price">12900</font>
								</dfn>
								)
							</span>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </li>
                        <li class="quick-book-ul_li4">
                            <span class="current_balance">当前价格：</span>
                            <strong>
                                <span>¥</span>
                                <b id="SUM">0</b>
                            </strong>
                        </li>
                        <li class="quick-book-ul_li5">
                            <input class="immediateB" type="submit" style="cursor:pointer" value=""></li>
                    </ul>
                </form>

            </div>
            <div style="position:relative;">
                <a rel="nofollow" href=" " target="_blank" class="product-banner" hidefocus="false" >
                    <img src="images/productBanner2.jpg" width="1000" height="80" data-bd-imgshare-binded="1">
                </a>

                <b style="display:inline-block; width:10px; height:10px; position:absolute; left:0; bottom:7px; "><a name="tishi"  ></a></b>
            </div>
            <!--重要提示-->
            <i id="row_6" class="pkg-maodian">&nbsp;</i>
            <h3 class="h3_tit qiehuane">
                <span><a style="color:#fff;">重要提示</a></span>
            </h3>
            <div class="row important_prompt" style="position:relative;">

                <dl>
                    <dt>行前须知</dt>
                    <dd>1、为了不耽误您的行程，请您严格按照《出团通知书》要求，在航班起飞前规定时间到达机场集合并办理登机＆出入境相关手续。</dd>
                    <dd>
                        2、马尔代夫签证：您可以凭护照和马尔代夫登机牌直接出境，抵达马尔代夫后办理落地签证。中国公民在马尔代夫均可获取30天有效停留的免费落地签。马尔代夫政府规定整个旅行活动期间距离护照有效期不足半年者，将禁止其入境，请注意您的护照有效期。 有效护照复印件请务必于出行前10个工作日内交抵我司。
                    </dd>
                    <dd>3、12岁以下儿童、单房差价格请来电详询客服！</dd>
                    <dd>4、预定成功后，酒店不接受任何形式的更改或退订要求！</dd>
                </dl>

                <dl>
                    <dt>预订须知</dt>
                    <dd>
                        1、旅游者如是65岁以上（含65岁）人员出游的，本人需充分考虑自身健康状况能够完成本次旅游活动，谨慎出游，建议要有亲友陪同出游，如因旅游者自身身体原因引发疾病或其他损害由旅游者本人承担相关责任。未满18周岁的旅游者请由家属陪同参团。因服务能力所限，不接受18周岁以下旅游者单独报名出游，敬请谅解。本产品网上报价适用持有大陆居民身份证的游客。如您持有其他国家或地区的护照，请电话现询价格，给您造成的不便，敬请谅解。
                    </dd>
                    <dd>2、单房差：报价是按照2人入住1间房计算的价格，如您的订单产生单房差，在途中将向您收取相应的费用，具体请来电咨询客服。</dd>
                    <dd>
                        3、出团通知最晚于出团前3个工作日发送；电子客票行程单最晚将于出发前1个工作日发送或机场送机人协助办理登机手续并发电子行程单。若能提前确定，我们将会第一时间通知。
                    </dd>
                    <dd>
                        4、护照及签证为旅游者个人证件。如签证是旅游者自行办理，因个人证件问题造成旅游者无法正常出入境的，由旅游者本人承担全部责任；凡持非中国护照的旅游者或自备签证的旅游者，应自行办理本次旅游签证和再次回中国内地大陆的签证，如因签证问题造成出入境受阻，由旅游者承担全部责任。
                    </dd>
                    <dd>5、关于蜜月：如需申请蜜月，请在预订时告知客服并提供有效期为6个月以内结婚证证明。（蜜月赠送内容以酒店前台确认为准）</dd>
                    <dd>
                        6、由于马尔代夫旅游目的地的特殊性，在您预定支付全款后的三个工作日之内（特殊时期，部分酒店确认时间会更长）告知您订单是否预定成功。如预定成功，我方会在规定日期内给到您确认的出团通知书，一旦签订《预付款协议》，如您取消此订单，会产生相应的损失费用，具体金额按照实际损失收取；如预定不成功您可以选择是否接受其他推荐酒店或者退还全部款项。
                    </dd>
                    <dd>
                        7、马代线路产品内容随淡旺季变化调整较为频繁，网页中的产品介绍、行程安排、价格构成等相关信息仅供参考所用，具体请以签约当时提供的文件为准；
                    </dd>
                    <dd>为保障本线路产品的顺利成团，本产品在您预订成交后，不可更改，取消，敬请谅解！</dd>
                    <dd>8、为确保游客的游程顺利，在途中旅游网建议游客自行选择购买旅游意外保险；</dd>
                    <dd>
                        9、根据国家相关法规，若因人力不可抗拒的因素而造成对行程的影响，旅行社将协助游客进行解决，但不承担相应损失，若因此而增加的费用，敬请游客自己承担；
                    </dd>
                    <dd>
                        10、建议您保持良好的出游心态，互相理解，互相尊重，凡事友好协商，祝您拥有愉快而难忘的旅程。请您订购前详细阅读《在途中旅游网线路产品预订协议》，于并订购后尽早确认《旅游合同》。而出游即代表您已认可以上的重要条款。
                    </dd>
                    <dd>
                        ★如遇支付问题，游客可到在途中北京分公司支付现金：北京市朝阳区左家庄曙光西里甲6号院时间国际大厦1号楼907-908室 电话：010-59762904
                    </dd>
                    <br>
                    <dd>
                        游泳、漂流、潜水等水上运动，均存在危险。参与前请根据自身条件，并充分参考当地海事部门及其它专业机构相关公告及建议后量力而行。
                    </dd>
                    <br>
                    <dd>
                        如需开具旅游发票(仅限支付给在途中的订单用户)，请与客服专员确定发票内容与抬头及准确的发票邮寄地址，我司在收到邮寄地址信息后向您寄送发票；为避免因发生不可抗力或意外事项致实际消费额与发票开具的相应数额不符，建议您在游玩归来后两个月内索领取发票。
                    </dd>
                </dl>

                <dl>
                    <dt>退款说明</dt>
                    <dd>订单支付成功后，如需进行修改或取消订单，我们将收取订单的总金额作为违约金</dd>
                </dl>

                <dl>
                    <dt>旅游服务保障</dt>
                    <dd>自组团：在途中自行开发的线路产品，与景区、酒店、车队等供应商直接进行各项采购，确保价格优惠合理，品质优良可控。</dd>
                    <dd>
                        联合组团：在途中联合旅行社供应商共同开发的线路产品，所选用的旅游批发供应商均经过严格筛选，其在市场中拥有较高美誉度并在同行业中长期占有稳定的市场份额。在产品开发中关注控制产品价格同时更注重提升产品品质，让您以更低价格体验更好服务。
                    </dd>
                    <dd>上述行程次序、景点、航班及住宿地点可能临时变动、修改或更换，最终行程以出发前我司确认的行程为准。</dd>
                    <dd>我公司保留因航空公司、签证、政府、天气等因素而更改行程和追加差价的权利</dd>
                </dl>

                <dl>
                    <dt>游玩提示</dt>
                    <dd>
                        ◎ 目的地概况 马尔代夫位于印度洋宽广的蓝色海域中，它的国土由上千个小岛组成，好似上帝抖落的一串珍珠。独特的地理环境，赋予马尔代夫宛若天堂的美。热情的阳光、缤纷的海洋、梦幻般的沙滩，将世界各地的游客吸引至此。
                    </dd>
                    <dd>
                        ◇ 在马尔代夫1190个岛屿中，有87个以“一岛一饭店”的模式开发成度假酒店，另有201个岛屿由当地人居住，其中就包括面积仅有2平方公里的“首都马累岛”，以及国际机场所在的“HUHULE岛”。岛屿间往来的交通工具，主要是船只和水上飞机。
                    </dd>
                    <dd>
                        ◎ 气候 马尔代夫邻近赤道，属于海洋性热带气候。这里年平均气温约28摄氏度，全年高温，日照强烈，无明显的四季之分，但由于受印度洋季风影响，每年的5-10月为雨季，11-4月为干季，雨季期间常有阴雨天气。◇ 全球气候变暖导致的温室效应将对马代的自然环境产生严重影响，珊瑚礁加速消亡，海平面逐年上升。
                    </dd>
                    <dd>
                        ◎ 风俗禁忌 马尔代夫以伊斯兰教为国教，居民岛上不食猪肉，不饮酒，严禁偶像崇拜，妇女出行必须穿遮体长裙，男士不能穿短裤。外国游客在度假酒店内不用遵守此规定，但到了马累等当地居民岛，就必须入乡随俗了。马尔代夫居民大多是虔诚的穆斯林，讲礼貌、重礼节、淳朴好客，每天会进行五次祷告。而星期五的伊斯兰教安息日则是他们每周的星期假日，商店、学校和公共场所都会在这一天关门歇业。
                    </dd>
                    <dd>
                        ◎ 货币和语言 马代居民岛通用蒂威利语，而在度假岛和机场，英语是通用语言。马代当地货币是卢非亚Rufiyaa，1美元约等于12卢非亚。但是在度假酒店和机场，美元是流通最广的货币，VISA、万事达等信用卡和运通旅行支票也被广泛接受。
                    </dd>
                    <dd>
                        ◎ 目的地特产 因地理环境所限，马尔代夫的特产不多，精美的贝壳工艺品、芦苇工艺品和纱笼（当地特色纺织品）值得一看，您可以前往机场或马累首都岛上的纪念品店选购。特别要提醒您的是，马尔代夫严禁出口任何种类的珊瑚，游客不可擅自收集沙滩上的珊瑚碎屑或贝壳，贝壳工艺品亦需前往当地正规的商店购买。
                    </dd>
                    <dd>
                        ◎ 关于护照和签证 出国旅游，准备护照和签证自然是第一要务。马尔代夫对世界上大多数国家实行免费的落地签政策，中国公民只需持有效期在半年以上的护照，即可在马累国际机场办理免费落地签。
                    </dd>
                    <dd>
                        ◇ 请您在离开中国前，务必在护照“注意事项”页（封底）持照人签名处签署本人姓名。否则中国及各国家边防机关有权拒绝您出境或入境。
                    </dd>
                    <dd>◇ 如果您持外国护照前往马累，并在行程结束后直接返回国内，请务必保证持有中国签发的多次往返签证或居留证（居留许可）。</dd>
                    <dd>
                        ◎ 关于您的钱包 在马代度假期间，我们建议您使用美元现金和信用卡作为主要支付手段。请您在出行前，携带身份证前往银行兑换美金，同时办理双币信用卡（美元）。
                    </dd>
                    <dd>◇ 建议您在国内准备好充足的美元零钱和信用卡额度，以应付度假期间的开支。</dd>
                    <dd>◇ 按我国现行规定，每位中国公民一次最多可兑换2000美元现金（或等值外币），每年最多累计兑换5万美元（或等值外币）。</dd>
                    <dd>
                        ◎ 关于当地通讯 开通国际漫游业务的中国移动手机可在马代当地使用，拨打当地电话（4.99元/分钟)，拨打国内电话需拨0086+号码（12.99元/分钟）。
                    </dd>
                    <dd>
                        ◇ 您可以选择中国移动推出的**139优惠业务拨打国内电话，通话费用每分钟可节省7元。使用方法：拨国内手机请输入“**139*8手机号＃”，拨固定电话请输入“**139*86区号用户号＃”，成功呼出后手机上会显示“Ok.Please wait”字样，此时可挂机等待约半分钟，移动会为您接通电话回拨过来。若被叫电话未接听则无需支付费用。
                    </dd>
                    <dd>◇ 马代向国内用户发短信1.99/元条，接收短信免费。</dd>
                    <dd>
                        ◎ 关于饮用水 是否需要提前准备饮用水，主要根据您所预定的酒店决定。如果您预定的酒店不提供免费饮用水，您可以使用房间内的电热水壶/咖啡壶烧水饮用，也可以直接向酒店购买（2-10美金/1.5升）。如果您对饮用水水质的要求较高，或希望节省当地买水的费用，也可在国内提前购买，随行托运到马代。
                    </dd>
                    <dd>
                        ◎ 关于食品 马代酒店的餐厅主要提供欧美和南亚风味的美食。如果您是百分之百的“中国胃”，不如在国内提前准备好方便面、榨菜等食品，以便调节胃口。
                    </dd>
                    <dd>
                        ◎ 从机场出发 国际航班登机的正常步骤：抵达机场---领取登机牌并办理行李托运---通过海关---安全检查---检验检疫---抵达候机闸口---开始登机
                    </dd>
                    <dd>
                        ◇ 何时抵达机场：依照航空公司规定，国际航班应提早3个小时办理登机手续，请您于出发当日，携本人护照原件并根据出行通知中建议的时间，前往机场办理登机手续。
                    </dd>
                    <dd>
                        ◇ 去哪个航站楼：搭乘新加坡航空SQ前往马代的客人请到首都机场3号航站楼；搭乘马来西亚航空MH、斯里兰卡航空UL前往马尔代夫的客人，请到首都机场2号航站楼办理乘机手续。
                    </dd>
                    <dd>
                        ◇ 行李托运：依照航空公司规定，超过规定尺寸或重量的行李不能由旅客随身带上飞机，必须在航空公司柜台办理托运。正常情况下，经济舱乘客可免费托运20公斤的行李，公务舱乘客免费托运30公斤的行李，超大、超重的行李要自己付费。托运和随身手提行李的限制各航空公司有所不同，建议您在出发前向选乘的航空公司具体咨询。
                    </dd>
                    <dd>
                        ◇ 座位选择：依照航空公司规定，团队机票、特价舱机票和包机航班不能提前办理网上值机并选定座位，此种情况下，我们建议您尽早抵达机场，在换领登机牌时，向柜台的值机人员说明您对座位的特殊要求。
                    </dd>
                    <dd>
                        ◎ 从机场出发 国际航班登机的正常步骤：抵达机场---领取登机牌并办理行李托运---通过海关---安全检查---检验检疫---抵达候机闸口---开始登机
                    </dd>
                    <dd>
                        ◇ 何时抵达机场：依照航空公司规定，国际航班应提早3个小时办理登机手续，请您于出发当日，携本人护照原件并根据出行通知中建议的时间，前往机场办理登机手续。
                    </dd>
                    <dd>
                        ◇ 去哪个航站楼：搭乘新加坡航空SQ前往马代的客人请到首都机场3号航站楼；搭乘马来西亚航空MH、斯里兰卡航空UL前往马尔代夫的客人，请到首都机场2号航站楼办理乘机手续。
                    </dd>
                    <dd>
                        ◇ 行李托运：依照航空公司规定，超过规定尺寸或重量的行李不能由旅客随身带上飞机，必须在航空公司柜台办理托运。正常情况下，经济舱乘客可免费托运20公斤的行李，公务舱乘客免费托运30公斤的行李，超大、超重的行李要自己付费。托运和随身手提行李的限制各航空公司有所不同，建议您在出发前向选乘的航空公司具体咨询。
                    </dd>
                    <dd>
                        ◇ 座位选择：依照航空公司规定，团队机票、特价舱机票和包机航班不能提前办理网上值机并选定座位，此种情况下，我们建议您尽早抵达机场，在换领登机牌时，向柜台的值机人员说明您对座位的特殊要求。
                    </dd>
                    <dd>
                        ◇ 携带液体：旅客随身携带登机的液体不可超出100毫升，而且要放在透明的塑料袋中通过安检（右图），如果液体超出100毫升，则需放在行李中托运。
                    </dd>
                    <dd>
                        ◇ 物品申报：出境时，高级相机，摄像机等贵重物品要申报，填好申报单后，请在出关时走红色通道，并请保管好申报单的底单，以备回程入境时检查。
                    </dd>
                    <dd>
                        ◇ 禁止出境的物品：内容涉及国家秘密的手稿、印刷品、胶卷、照片、唱片、录音带、录像带、激光视盘、激光唱盘、计算机存储介质及其他物品；珍贵文物；濒危的珍贵
                    </dd>
                    <dd>动、植物（均含标本）及其种子繁殖材料。</dd>
                    <dd>
                        ◇ 免税商品寄存：您可利用候机时间前往免税店购物，首都机场2/3号航站楼可提供免税商品购买后一个月内寄存服务，寄存的商品请您于回程时到行李提取处旁领取。
                    </dd>
                    <dd>
                        ◇ 最晚抵达时间：我们建议您在出发前登陆国际机场的网站查询不同航空公司值机柜台台和登机闸口的关闭时间。首都机场网站：http://www.bcia.com.cn
                    </dd>
                    <dd>◎ 前往马代途中 乘机和转机期间的注意事项</dd>
                    <dd>◇ 飞机上严禁吸烟，飞机起降过程中请不要使用手机、手提电脑等电子设备。</dd>
                    <dd>◇ 乘坐转机航班的客人，请注意不同的航班会有不同的转机地点，我们的出行通知将根据航班的不同，为您的转机安排做具体提示。</dd>
                    <dd>
                        ◇ 乘坐新加坡航空、马来西亚航空、斯里兰卡航空航班前往马代的客人，请您在新加坡、吉隆坡、科伦坡转机的时候随时关注下一程航班的起飞时间，切勿因专心购物而误机。
                    </dd>
                    <dd>◇ 当您乘坐的航班将要抵达马累机场时，客舱服务员会向您发放马尔代夫出入境卡和</dd>
                    <dd>健康证明，请您按照我们在出行前发送的模板，如实填写并妥善保存。</dd>
                    <dd>◇ 由于马尔代夫或其他转机地与北京有较大温差，请您在飞机降落前，根据机上通报的目的地天气状况，适当增减衣物。</dd>
                    <dd>
                        ◎ 抵达马尔代夫 飞机降落在马累机场后，请您下飞机前往入境大厅，排队办理免费落地签，持在飞机上填写的入境卡、机票和护照通过海关，之后前往行李提取处领取托运行李。忙碌之余，不要忘记将手表从北京时间拨回3个小时，变成马累当地时间。
                    </dd>
                    <dd>◇ 马尔代夫海关的通关效率较低，请您拿好随身行李耐心排队等候。</dd>
                    <dd>
                        ◇ 马尔代夫当地时间比北京时间晚3个小时，比新加坡时间晚3个小时，比科伦坡时间晚1个小时，比迪拜当地时间早1个小时。如果您抵达马累的时候，手表上还是北京时间，那么请将指针拨回3个小时。
                    </dd>
                    <dd>◇ 马尔代夫机场室内外温差较大，请您及时增减衣物，以免着凉。</dd>
                    <dd>◎ 关于接机方式</dd>
                    <dd>
                        当您领取完托运行李，进入接待大厅后，请按照出行通知上的具体提示，寻找接机人员或酒店接待柜台。并在相关工作人员的安排下，乘海上交通工具前往酒店。
                    </dd>
                    <dd>◎ 前往度假酒店 前往马累度假酒店的交通工具主要是船和水上飞机。</dd>
                    <dd>◇ 船：如果您入住的度假岛位于较近的北马累或南马累环礁，酒店将安排快艇或多尼船（一种当地特色船只）接机。</dd>
                    <dd>赶上风急浪大的天气，快艇和多尼船会左右摇摆，轻微颠簸，建议晕船的客人提前准备好晕车药。</dd>
                    <dd>
                        ◇ 水上飞机：如果您入住的度假岛位于距马累较远的环礁，酒店将安排水上飞机接送。但是水上飞机只能在白天飞行，乘新航/斯航/马航于晚上抵达马累的 客人，需要于抵达当晚由机场乘船前往马累首都岛上的酒店入住，并于第二日早晨乘船返回机场，搭乘酒店安排的水上飞机前往度假岛。具体的换乘方法，请您参考出行通知。由于水上飞机的飞行高度有限，您可以通过窗口直接俯视马尔代夫的珊瑚礁群，那大珠小珠落玉盘的壮观美景，一定会让您终生难忘。
                    </dd>
                    <dd>
                        ◇ 快艇和水上飞机的等候时间：马代酒店接送机通常采取多人拼船/拼机的形式，因此在登船/登机前，为等待同行客人到来，您有可能在码头等候一定时间，敬请理解！
                    </dd>
                    <dd>
                        ◇ 相关安全事项：当您乘船/水上飞机前往度假岛时，请一定看管好随身的行李，不要让行李离开自己的视线；当酒店的工作人员协助搬运行李时，请您在一旁仔细看护；当您抵达度假岛码头后，请及时清点行李数量，以免丢失。
                    </dd>
                    <dd>◎ 办理入住手续 抵达酒店后，请您在工作人员的指引下，到前台办理入住手续。</dd>
                    <dd>◇ 如果您对房间有任何特殊要求，请在前台办理入住时，提前告知酒店工作人员。</dd>
                    <dd>
                        ◇ 在办理入住手续时，部分酒店会要求您支付押金（支付400-600美元现金/刷信用卡预授权）。这部分押金，酒店将在您办理离店手续，查房无问题后退还。
                    </dd>
                    <dd>
                        ◇ 马尔代夫绝大部分酒店只有大床间，没有双床间。如果您申请入住双床间，酒店将有可能在大床间内加床，作为临时的双床间使用，请您理解。
                    </dd>
                    <dd>
                        ◇ 在办理入住手续时，酒店可能会要求您填写登记表。如果您在行前申请了蜜月套餐， 请务必在表格中注明“新婚情侣HONEYMOONER”。通常情况下，酒店为验证蜜月的真实性，将要求您出示半年内结婚证的原件。
                    </dd>
                    <dd>◎ 酒店的入住和退房时间</dd>
                    <dd>
                        ◇ 入住时间：马代酒店的入住时间通常为中午12:00至下午14:00。如果您在入住时间之前抵达酒店，则需要在大堂等候。如果提前入住，酒店可能会酌情加收一定费用。
                    </dd>
                    <dd>
                        ◇ 退房时间：马代度假酒店的退房时间通常为上午10:00至中午12:00，请您在入住时提前与酒店确认。如果您在此规定时间后退房，酒店将会收取您延迟退房的费用。
                    </dd>
                    <dd>◇ 针对少数酒店和特殊假期，此规定将有变更可能。</dd>
                    <dd>◎ 酒店的客房服务</dd>
                    <dd>
                        ◇ 在您入住期间，酒店服务生每天都会对房间进行打扫，如果您外出不在房间，请一定将钱包或其他贵重物品存放在保险箱内，同时封闭好门窗。如果您的房间无需打扫，请将请勿打扰的牌子挂出，或提前告知客房服务生。
                    </dd>
                    <dd>
                        ◇ 客房的迷你吧或冰箱内通常会放置多种饮料和小食品，请您在饮用/食用前确认其是否收费。酒店的电视常会有收费节目，请您在使用前提前了解收费标准。
                    </dd>
                    <dd>◇ 马代开敞式的房间蚊虫较多，请您入住时做好防蚊工作，提前准备花露水/蚊香。</dd>
                    <dd>◇ 如果您在入住期间需要吸烟，请提前了解酒店的相关规定，不要在禁烟地点吸烟。</dd>
                    <dd>◎ 酒店内的餐饮服务 马代的度假酒店会提供4种餐食包价方式：</dd>
                    <dd>① 早餐BB 只含您入住期间每日的早餐；午餐和晚餐需要您上岛后自行预订</dd>
                    <dd>② 半餐HB 包含您入住期间每日的早餐和晚餐，午餐需要您上岛后自行预订</dd>
                    <dd>③ 全餐FB 包含您入住期间每日三餐</dd>
                    <dd>
                        ◇ 岛上餐厅分类：马代度假酒店内，大多有1-2家主餐厅，以及数目不等的特色餐厅、水吧和酒吧。选择半餐或者全餐的客人，已付费的午餐/晚餐将被安排在主餐厅用餐；特色餐厅需要您在上岛后，提前向酒店预订；水吧和酒吧随时欢迎客人光临。我们建议您在上岛的第一天，根据酒店提供的信息制定好用餐计划，提前预订每日用餐。
                    </dd>
                    <dd>
                        ◇ 用餐方式：度假酒店的餐厅会提供自助、零点和套餐等不同的用餐方式。多数自助餐厅会在不同日期提供不同的美食主题，但内容多以西餐和南亚餐为主。
                    </dd>
                    <dd>◇ 部分酒店的餐厅不向客人提供免费饮水，酒水单上的饮料需要另行付费。</dd>
                    <dd>◇ 部分酒店的餐厅会在您正常点餐所计费用的基础上，加收5%-15%的服务费。</dd>
                    <dd>◎ 酒店的观光项目 马代的度假酒店会为您提供丰富多彩的自费观光项目，请您</dd>
                    <dd>在谨慎评估其安全性及自身的身体状况之后，根据个人喜好报名参加。</dd>
                    <dd>
                        ◇ 如何报名：请您提前向酒店索取观光项目的介绍和价格单（服务费另行计算）。正常情况下，酒店的观光项目需要提前到前台预订，部分项目要达到一定的报名人数才可成行。当您报名时，请查看好集合时间，并于报名后主动向前台询问成行情况。如果报名人数不足或受到天气等不可抗力影响，观光活动将有可能取消。
                    </dd>
                    <dd>
                        ◇ 观光活动参考项目：马累首都岛观光（半日/一日）、跳岛游（到其它居民岛/度假岛观光）、深潜之旅（水肺潜水）、海豚巡游、海钓之旅、玻璃底船观光、水飞机体验
                    </dd>
                    <dd>◇ 部分观光活动可能会包含一次用餐，请您提前与酒店确认，以免重复订餐。</dd>
                    <dd>◎ 关于潜水 马尔代夫是世界级潜水圣地，只有菲律宾和大堡礁能与之媲美。</dd>
                    <dd>
                        ◇ 什么是浮潜：在马代，潜水可分为浮潜和深潜两种类型。浮潜相对简单，潜水者只需经过简单指导，戴上浮潜三宝（面镜、呼吸管和脚蹼）漂在水面，即可通过面镜欣赏水下景观。在马代度假岛上，浮潜与游泳一样，都是免费的。至于浮潜装备，多数酒店都可租用（5-10美金/天）或免费借用，如果您对装备质量有较高要求，或者希望节省费用，也可以在国内提前购买。
                    </dd>
                    <dd>
                        ◇ 如何进行深潜：深潜即水肺潜水，是指潜水者携带压缩气瓶，利用呼吸器在水下呼吸，真正潜入海中欣赏水下景观的活动。正常情况下，参与深潜的潜水者需要具备一定资质。马代所有度假岛都设有专门的潜水中心，可以为您提供经由国际专业潜水教练协会PADI认证的潜水学习课程，通过这些课程的学习，您将有能力离开浅滩，前往更深的海域，发现更美丽的水下世界。
                    </dd>
                    <dd>
                        ◇ 游泳及潜水时的注意事项：出于安全考虑，请您务必在有人陪同的情况下游泳或进行潜水活动。在下水前，您需要提前了解周围水域的地形情况，辨识常见海洋生物的特征、安全标示及救生人员的设置地点，并在岸上做足准备活动，携带好必要的装备。同时，应主动向酒店确认防波堤/深海区的位置，由于深水区水流情况复杂，即使您的水性很好，也务必在专业人员指导下前往。TIPs：夜晚、酒后、上飞机前请勿下水。
                    </dd>
                    <dd>◇ 关于儿童：我们建议低龄儿童应在监护人陪同下，前往专门设置的儿童泳池游泳。</dd>
                    <dd>
                        ◇ 特别提示：出于环保和安全考虑，在潜水及游泳过程中，请您不要触碰、踩踏海洋生物及珊瑚礁，以免破坏脆弱的海洋生态，同时避免对自身造成伤害。
                    </dd>
                    <dd>◎ 关于水上屋 水上屋是马代最具特色的房型，也是蜜月旅行中最完美的居停。</dd>
                    <dd>◇ 水上屋入住提示：在与大海亲密接触的同时，您也要注意其中的风险。马代酒店的</dd>
                    <dd>
                        水上屋通过海面上的栈桥相连，这些栈桥大多没有围栏，当您通过的时候，尤其是在浪高风急的夜晚，一定要加以小心。水上屋外部的平台经常设有直接入海的扶梯，当您第一次利用此扶梯下水时，请务必保证有会游泳的同伴陪同。
                    </dd>
                    <dd>
                        ◇ 儿童入住水上屋：出于安全考虑，马代部分酒店禁止儿童入住水上屋，但也有相当多的酒店，允许儿童在父母同意的前提下入住水上屋。当儿童在前台登记，准备入住水上屋时，酒店会将一份安全保证协议书交给儿童监护人（大致内容是请监护人保证儿童入住期间的安全，不要让儿童单独玩耍，或前往危险区域活动）。只有监护人签字同意后，酒店才会允许客人入住水上屋。
                    </dd>
                    <dd>◎ 关于小费 马代是小费国家，我们建议您在享受服务后，主动向服务生支付小费</dd>
                    <dd>◇ 什么情况下，可以付小费：服务生帮您搬运行李；用餐后留在未打扫的餐桌上；</dd>
                    <dd>在服务生打扫房间前，放在枕头边；参加完观光活动，付给导游或陪同；</dd>
                    <dd>◇ 如果您不想支付小费也没有关系，马代的酒店和服务生不会向您强行索取。</dd>
                    <dd>◇ 少数酒店禁止服务生接受客人小费，此种情况下，您无需再行支付。</dd>
                    <dd>◇ 支付小费的数额：每次付1-2美元就足够了。</dd>
                    <dd>
                        ◎ 消费和结账 马代酒店大多实行签单制，您在岛上的消费（饮食、观光活动、潜水、迷你吧、水上活动）将在离店退房前统一结算（现金/信用卡皆可）。
                    </dd>
                    <dd>◇ 建议您在度假期间，根据自身财务状况合理消费，切忌超出支付能力大笔花钱。</dd>
                    <dd>◇ 结账的时候，请使用美元现金和信用卡中的美元账户，人民币是不被接受的。</dd>
                    <dd>◇ 建议您在离岛前一天晚上到前台查看账单并结算，以便发现问题后有时间解决。</dd>
                    <dd>◎ 更多注意事项</dd>
                    <dd>◇ 酒店的上网条件参差不齐，请在出行前具体了解，并根据实际需求携带上网设备。</dd>
                    <dd>◇ 户外活动时，尽量避免光脚走路，以免被贝壳碎片等坚硬物体划伤。</dd>
                    <dd>◇ 户外活动时，一定做好防晒工作，以免发生晒伤。</dd>
                    <dd>◇ 严禁在岛上私自钓鱼、采摘或践踏珊瑚，严禁在房间内杀鱼、煮食。</dd>
                    <dd>◇ 切勿在岛上喧哗、吵闹，切勿随地扔垃圾，确保这方天堂的优美、宁静。</dd>
                    <dd>◎ 离开度假酒店 与人间天堂依依惜别....除了美好的回忆，什么都不要留下</dd>
                    <dd>
                        ◇ 办理退房手续：请您于酒店规定的退房时间之前，整理好行李，携带证件和房卡到前台办理退房手续。如果您在此规定时间后退房，酒店将收取您延迟退房的费用。等到查房完毕后，酒店会将您入住时支付的押金退还。
                    </dd>
                    <dd>
                        ◇ 退房之后：由于时间尚早，您可以行李存放在酒店大堂，之后在岛上继续用餐、游玩，部分高端酒店还会为已退房的客人免费提供淋浴间和休息室服务。
                    </dd>
                    <dd>
                        ◇ 快艇/水飞机的离岛时间：酒店的前台通常会设置一块“离岛信息板”，上面有当天退房客人的航班信息，以及相对应的快艇/水上飞机离岛时间。请您先在信息板上找到自己搭乘的航班，并根据上面对应的离岛时间，返回大堂集合，离开酒店前往机场。
                    </dd>
                    <dd>◇ 检查再检查：请您在离开前，务必清点好随身的行李和重要证件！</dd>
                    <dd>
                        ◇ 提前去马累：如果您觉得退房后在岛上的时光过于漫长，也可联系酒店，搭乘早班的快艇/水上飞机前往机场岛，将行李放在机场的寄存处，之后乘多尼船到邻近的马累首都岛游览。不过游览的时候千万要注意时间（请于航班起飞前2.5小时返回机场岛），避免发生误机的悲剧。
                    </dd>
                    <dd>◎ 返回温馨的家</dd>
                    <dd>◇ 从马累离开：从马尔代夫离境不需支付任何离境税，出境流程简单顺畅</dd>
                    <dd>
                        ◇ 关于托运行李：如果从马累返回北京的途中，您会在第三地短暂停留过夜，那么请您在马累机场办理托运行李的时候，务必向工作人员说明，将行李托运至需要停留的第三地（如科伦坡、新加坡、吉隆坡），而非最终的目的地北京。
                    </dd>
                    <dd>
                        ◇ 禁止携带离境的物品：海水、失事船只残骸碎片、岛上的贝壳（从正规授权商店购买的工艺品除外）、珊瑚及珊瑚制品、海龟及海龟制品、濒危保护动物。
                    </dd>
                    <dd>◎ 马代度假常用电话</dd>
                    <dd>当地紧急联系人的电话请参考出行通知；</dd>
                    <dd>◇ 马代当地紧急呼叫112；火警118；匪警119；救护电话102；</dd>
                    <dd>◇ 中国驻马尔代夫大使馆（常驻科伦坡）0094-1-694491</dd>
                    <dd>◇ 马累国际机场 对外咨询电话 0096-033-22211</dd>
                    <dd>马代自由行 常用英语词汇</dd>
                    <dd>
                        ◇ 马尔代夫 Maldives 马累 Male 新加坡 Singapore 科伦坡 Colombo 吉隆坡 Kuala Lumpur
                    </dd>
                    <dd>
                        新加坡航空 Singapore Airlines 斯里兰卡航空 Sri Lankan Air 马来西亚航空 Malaysia Airlines
                    </dd>
                    <dd>
                        ◇ 航班 Flight 航站楼 Terminal柜台 Counter 值机 Check in 随身登机的行李 Carry-ons
                    </dd>
                    <dd>
                        登机牌 Boarding Pass 登机闸口 Gate 座位号 Seat Number 行李托运签 Baggage Tag
                    </dd>
                    <dd>
                        海关申报 Customer Declare 安检 Security Check 登机口 Gate 护照 Passport 签证 Visa
                    </dd>
                    <dd>出发时间 Departure Time 起飞 Take off 降落 Landing 到达时间 Arrival Time</dd>
                    <dd>
                        入境表 Disembarkation Card / Arrival Card 出境卡 Embarkation Card / Departure Card
                    </dd>
                    <dd>
                        入境手续 Customs Procedure 健康证明 Health Certificate 行李提取 Baggage Claim
                    </dd>
                    <dd>
                        转机 Transfer 免税店 Duty Free 航班延误 Flight Delayed 航班取消 Flight Canceled
                    </dd>
                    <dd>◇ 我需要一个靠窗的座位 I’d like to have a seat by the window.</dd>
                    <dd>你是否有物品需要申报 Do you have anything to declare？</dd>
                    <dd>
                        问：你此行的目的是？ What’s your purpose of visit？ 答：旅游/度假 Tour / Vacation
                    </dd>
                    <dd>问：你在马尔代夫的暂住地是？ Where are you stay in Maldives？ 答：酒店 Hotel</dd>
                    <dd>
                        问：请出示护照/机票行程单/酒店确认单 Please show me your passport / air ticket / voucher.
                    </dd>
                    <dd>
                        ◇ 接待台 Reception 码头 Jetty 快艇 Speed boat 水上飞机 Seaplane 多尼船 Dhoni Boat
                    </dd>
                    <dd>
                        接送机 Transfer 入住 Check in 蜜月套餐 Honeymoon offer 结婚证 Marriage Certificate
                    </dd>
                    <dd>
                        大床 Double bed 双床 Twin bed 加床 Extra bed 半餐 Half board 全餐 Full Board
                    </dd>
                    <dd>◇ 自助餐 Buffet 套餐 Set menu 下午茶/夜宵 Snack 服务员 Waiter / Waitress</dd>
                    <dd>
                        ◇ 浮潜 Snorkeling 深潜 Scuba diving 泻湖 Lagoon 救生员 Lifeguard 珊瑚礁 Coral reef
                    </dd>
                    <dd>
                        水上运动 Water sports 冲浪 Surfing 皮划艇 Canoe 观光项目 Excursion 乘船巡游 Cruise
                    </dd>
                    <dd>
                        海豚 Dolphin 跳岛游 Island Exploration 大堂 Lobby 商务中心 Business Center水疗 SPA
                    </dd>
                    <dd>
                        儿童俱乐部 Kids club 日落吧 Sunset bar 医务室 Infirmary 纪念品店 Souvenir Shop
                    </dd>
                    <dd>
                        ◇ 空调 Air-condition 咖啡壶 Coffeepot 转换插头 Plug adaptor 遥控器 Controller
                    </dd>
                    <dd>
                        浴缸 Bathtub 淋浴 Shower 香波 Shampoo 手纸 Toilet paper 吹风机 Hair drier
                    </dd>
                    <dd>
                        梳子 Comb 网口 Internet Access 打扫客房 Housekeeping / Turn-down service
                    </dd>
                    <dd>
                        ◇ 价目表 Rate Sheet 免费的 Free / Complimentary 收费的 Chargeable 小费 Tip / Gratuity
                    </dd>
                    <dd>
                        账单 Bill 收据 Receipt 美元 USD 卢非亚 Rufiyaa 信用卡 Credit card 记账 Charge up
                    </dd>
                    <dd>结账 Settle accounts 行李寄存 Baggage deposit</dd>
                </dl>
                <b style="display:inline-block; width:10px; height:10px; position:absolute; left:0; bottom:0; "><a name="jiaotong"  ></a></b>

            </div>
            <!--important_prompt end-->

            <!--交通信息-->
            <i id="row_7" class="pkg-maodian">&nbsp;</i>
            <h3 class="h3_tit qiehuanf">
                <span><a style="color:#fff;">交通信息</a></span>
            </h3>
            <div class="row statement_cost">
                <dl>

                    <dd>参考航班：5M航空</dd>
                    <dd>周一、四、日出发的航班</dd>
                    <dd>北京—马累 LV189（05：50/11：20）</dd>
                    <dd>马累—北京 LV188（17：35/04：10+1）</dd>
                    <dd>周三、六出发航班：</dd>
                    <dd>北京—马累 LV189（01：00/08：10）</dd>
                    <dd>马累—北京 LV188（17：35/04：10+1）</dd>
                </dl>
            </div>
            <!--statement_cost end-->

            <!--订购流程-->
            <h3 class="h3_tit">
                <span>订购流程</span>
            </h3>
            <div class="row how_order" style="position:relative;">
                <p class="booking_process">
                    网上/电话预订
                    <span></span>
                    资源确认
                    <span></span>
                    签约/付款
                    <span></span>
                    收到短信凭证
                    <span></span>
                    开心出游
                    <span></span>
                    归来回访
                    <span></span>
                    获得点评奖金
                </p>
                <dl>
                    <dt>签约方式</dt>
                    <dd>在线签约：在您确认合同范本以后，我们将盖章的电子档合同发送到您邮箱。</dd>
                    <dd>传真签约：双方在合同上签字盖章后，通过传真进行签约。如涉及签证材料需要快递，请在快件中注明订单号。</dd>
                    <dd>
                        门市签约：上海圣诺亚门市（总部）地址：金沙江路1759号圣诺亚大厦B座7F 电话：021-62628162、62628200
                        <br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        人民广场旗舰店   地址：上海黄浦区西藏中路94号  电话：021-53086863 53086859 53086857  营业时间：9：00-21：00（全年无休）
                        <br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        浦东南泉北路店 地址：上海浦东新区南泉北路528号北楼一层N1-08，N1-09   电话：021-50623220 50623221 营业时间：9：00-20：00（全年无休）
                        <br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        北京分社门市  地址：北京市朝阳区左家庄曙光西里甲6号院时间国际大厦1号楼907-08室 电话：010-59762904转801（18：00之后请拨打：1010 6060 ）
                        <br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        成都分社门市 地址：成都市一环路西一段2号高升大厦506室   电话：1010 6060。
                        <br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        广州分社门市 地址：广州市越秀区小北路185-189号广州鹏源发展大厦1804/1805室 电话：1010 6060。
                    </dd>
                </dl>
                <dl class="bank_img">
                    <dt>在线支付</dt>
                    <dd class="bank-total bank-b"></dd>
                </dl>
                <dl class="zhifubao">
                    <dt>支付平台支付</dt>
                    <dd class="bank-zhifu"></dd>
                </dl>
                <dl class="bank bankinfo">
                    <dt>信用卡电话支付</dt>
                    <dd>
                        请致电 1010-6060，告知客服您的订单号，由客服人员帮您转入语音系统进行电话支付。一个电话就可以完成支付，安全、快捷。
                    </dd>
                    <dd>
                        以下银行的借记卡，无需开通网银也能支付（建行单笔及日累计均为额度3500元，其他银行单笔额度为1万，日累计额度为5万）：
                        <br>招商银行、中国建设银行、中国银行、中国农业银行、中国邮政储蓄银行、交通银行、中国光大银行、浦发银行、中信银行、华夏银行</dd>
                    <dd>
                        以下银行的信用卡，无需开通网银也能支付（可支付额度根据银行不同而有所差异）：
                        <br>中国建设银行、中国工商银行、浦发银行、中国民生银行、上海银行、平安银行、中国银行、中国农业银行、广发银行</dd>
                </dl>
                <dl class="line_payment">
                    <dt>线下支付</dt>
                    <dd class="bank-total bank-l">
                        <span>拉卡拉：不用网银也能支付</span>
                    </dd>
                </dl>
                <b style="display:inline-block; width:10px; height:10px; position:absolute; left:0; bottom:0; "><a name="qianzheng"></a></b>

            </div>
            <!--how_order end-->

            <!--签证/签注-->
            <!--签证/签注-->
            <i id="row_8" class="pkg-maodian">&nbsp;</i>

            <h3 class="h3_tit qiehuang">
                <span><a style="color:#fff;">签证/签注</a></span>
            </h3>
            <div class="l_row row" style="margin-bottom: 10px; position:relative;">
                <div class="visa_info_xh">
                    <!-- <h5>签证须知</h5>
<p>1. 如需我司为您代办签证，请在后续页面选择相应的可选项；如您自备签证，请确保签证的有效性，以免耽误行程。</p>
<p>
	2. 本产品行程中涉及普吉岛与槟城，所需证件：有效护照＋新加坡2次或多次签证＋泰国签证，中国籍乘客在马来西亚可享受72小时免签过境，非中国籍乘客还需自理马来西亚签证。
</p>
<dl>

	<dd>
		签证信息：您可以凭护照和马尔代夫登机牌直接出境，马尔代夫对中国公民实行免签政策。中国公民在马尔代夫均可获取15天免费停留期。马尔代夫政府规定整个旅行活动期间距离护照有效期不足半年者，将禁止其入境，请注意您的护照有效期。
	</dd>
</dl>
-->

                    <ul class="visa_nav_a clearfix">
                        <li class="selected">
                            马尔代夫签证
                            <input type="hidden" id="visa_Email_cnVisaType" value="马尔代夫签证"></li>
                    </ul>
                    <div class="visa_content">
                        <div class="tabcon" style="display:block">
                            <ul class="visa_subnav_a J_tab_subnav clearfix">
                                <li class="selected">
                                    所有人员
                                    <input type="hidden" value="所有人员" id="ssrq_0">
                                    <i></i>
                                    <style>
                                        .visa_mail{
                                            width:16px;
                                            height:15px;
                                            background:url("http://s1.lvjs.com.cn/img/v3/combo.png") no-repeat -24px -71px;
                                            margin-left:5px;
                                            display:inline-block;
                                        }
                                    </style>
                                    <a class="visa_mail" href="javascript:;" id="btn_0" onclick="visaEmailSend(0);" hidefocus="false"></a>
                                    <br></li>
                            </ul>
                            <div class="J_tab_subswitch">
                                <div class="tabcon" style="display:block">
                                    <div class="visa_info_box">
                                        <input type="hidden" value="639" id="visa_Email_documentId_0">
                                        <div class="visa_info_item">
                                            <b>★护照首页扫描件</b>
                                            <div class="text">
                                                您可以凭护照和马尔代夫登机牌直接出境，马尔代夫对中国公民实行免签政策。中国公民在马尔代夫均可获取15天免费停留期。马尔代夫政府规定整个旅行活动期间距离护照有效期不足半年者，将禁止其入境，请注意您的护照有效期。
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- //div J_tab_switch -->

                        </div>
                    </div>
                    <!-- //div J_tab_switch -->
                </div>
                <b style="display:inline-block; position:absolute; left:0; bottom:5px; width:10px; height:10px;"><a  name="qingbao"></a></b>
            </div>

            <!--弹出层-->
            <div id="visaDialog" style="display:none;">
<span>
将签证信息发至信箱：
<input type="text" size="30" id="visaEmail" value="" style="background:transparent;border:1px solid #CDC28D;"></span>

            </div>

            <!--目的地情报-->
            <i id="row_9" class="pkg-maodian">&nbsp;</i>
            <h3 class="h3_tit qiehuanh">
                <span><a href="#" style="color:#fff;">目的地情报</a></span>
            </h3>
            <div class="row dest_intelligence">
                <dl>
                    <dt>马尔代夫</dt>
                    <dd>
                        <img src="images/img_90_90.jpg" height="60" width="120" data-bd-imgshare-binded="1">
                        <p>
                            这些珊瑚岛中只有约200座有人居住，其中不少隶属于世界知名的酒店集团。一个小岛就是一座度假酒店，设计师们在方寸土地上发挥无尽想象，设计出美轮美奂的花园和梦幻般的水上屋。几乎与世隔绝的环境和舒适的酒店设施、众多的娱乐项目、无微不至的服务。
                            <a rel="nofollow" href="http://www.lvmama.com/dest/yazhou_maerdaifu" target="_blank" hidefocus="false">详细介绍 &gt;&gt;</a>
                        </p>
                    </dd>
                </dl>
                <dl class="raiders">
                    <dd>
                        <!--  国内目的地  -->
                        <!--  境外目的地  -->
                        <a target="_blank" href="" hidefocus="false">马尔代夫旅游</a>
                        <a target="_blank" href="" hidefocus="false">马尔代夫景点门票</a>
                        <a target="_blank" href="" hidefocus="false">马尔代夫自由行</a>
                        <a target="_blank" href="" hidefocus="false">马尔代夫酒店预订</a>
                        <a target="_blank" href="" hidefocus="false">马尔代夫跟团游</a>
                        <a target="_blank" href="" hidefocus="false">马尔代夫旅游攻略</a>
                        <a target="_blank" href="" hidefocus="false">马尔代夫点评</a>
                        <a target="_blank" href="" hidefocus="false">马尔代夫旅游景点</a>
                        <a target="_blank" href="" hidefocus="false">马尔代夫美食</a>
                        <a target="_blank" href="" hidefocus="false">马尔代夫住宿</a>
                        <a target="_blank" href="" hidefocus="false">马尔代夫交通</a>
                        <a target="_blank" href="" hidefocus="false">马尔代夫娱乐</a>
                        <a target="_blank" href="" hidefocus="false">马尔代夫购物</a>
                        <a target="_blank" href="" hidefocus="false">马尔代夫行程</a>
                        <a target="_blank" href="" hidefocus="false">马尔代夫摄影</a>
                        <a target="_blank" href="" hidefocus="false">马尔代夫地图</a>
                        <a target="_blank" href="" hidefocus="false">马尔代夫天气</a>

                        <!--  景点   -->

                        <!--  酒店   -->

                    </dd>
                </dl>

                <ul>
                    <li class="comment">
                        <p>
                            【出境暑假狂欢季】马尔代夫哈库拉CHAA…  共有点评
                            <b>45</b>
                            个
                        </p>
                        <dl>
                            <dt>
                                <strong>总体评价：</strong>
                                <i class="commentsStar45"></i>
                                &nbsp;&nbsp;4.3&nbsp;分
                            </dt>
                            <dd>
                                <i class="commentsStar5"></i>
                                <span class="progressBar">
				<i class="achiveBar" style="width:42.22%"></i>
			</span>
                                &nbsp;
                                19&nbsp;条
                            </dd>

                            <dd>
                                <i class="commentsStar4"></i>
                                <span class="progressBar">
				<i class="achiveBar" style="width:48.89%"></i>
			</span>
                                &nbsp;
                                22&nbsp;条
                            </dd>

                            <dd>
                                <i class="commentsStar3"></i>
                                <span class="progressBar">
				<i class="achiveBar" style="width:6.67%"></i>
			</span>
                                &nbsp;
                                3&nbsp;条
                            </dd>

                            <dd>
                                <i class="commentsStar2"></i>
                                <span class="progressBar">
				<i class="achiveBar" style="width:2.22%"></i>
			</span>
                                &nbsp;
                                1&nbsp;条
                            </dd>

                            <dd>
                                <i class="commentsStar1"></i>
                                <span class="progressBar">
				<i class="achiveBar" style="width:0%"></i>
			</span>
                                &nbsp;
                                0&nbsp;条
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <table width="595" border="0" cellspacing="0" cellpadding="0" class="users_comment">
                            <tbody>
                            <tr>
                                <td colspan="3">
                                    <a rel="nofollow" href="" target="_blank" class="more" hidefocus="false">查看更多点评&gt;&gt;</a>
                                    网友点评
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a rel="nofollow" href="" target="_blank" hidefocus="false">马尔代夫卡尼岛是我的蜜月之旅，总体感觉超棒，不会英语也没…</a>
                                </td>
                                <td>user5443…</td>
                                <td>2014-04-18</td>
                            </tr>
                            <tr>
                                <td>
                                    <a rel="nofollow" href="" target="_blank" hidefocus="false">听朋友说这个马尔代夫去了就不想回来了呢，我和老公也马上就…</a>
                                </td>
                                <td>angelxil…</td>
                                <td>2014-04-17</td>
                            </tr>
                            <tr>
                                <td>
                                    <a rel="nofollow" href="" target="_blank" hidefocus="false">2015年准备去马尔代夫度蜜月，过一下二人世界，感受远离…</a>
                                </td>
                                <td>囘忆。擱 淺78…</td>
                                <td>2014-03-27</td>
                            </tr>
                            <tr>
                                <td>
                                    <a rel="nofollow" href="" target="_blank" hidefocus="false">马尔代夫游玩，与其说是找岛屿，不如说是找酒店，找个喜欢的…</a>
                                </td>
                                <td>user6914…</td>
                                <td>2014-01-24</td>
                            </tr>
                            <tr>
                                <td>
                                    <a rel="nofollow" href="" target="_blank" hidefocus="false">我也很想去啊，啥时候有些划算的套餐出来。想去很久了。那时…</a>
                                </td>
                                <td>angel123…</td>
                                <td>2014-01-16</td>
                            </tr>
                            <tr>
                                <td>
                                    <a rel="nofollow" href="" target="_blank" hidefocus="false">阿斯顿萨顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶</a>
                                </td>
                                <td>q1898379…</td>
                                <td>2013-11-16</td>
                            </tr>
                            </tbody>
                        </table>
                    </li>
                </ul>

            </div>
            <!--dest_intelligence end-->

            <!--相关产品推荐-->
        </div>
        <!--main end-->
    </div>
    <!--warp end-->

    <!--===== 底部文件区域 S ======-->
    <div class="hh_cooperate">
        <p>
            <b>热门精选：</b>
            <span>
<a target="_blank" href="" hidefocus="false">庐山旅游</a>
<a target="_blank" href="" hidefocus="false">内蒙古旅游</a>
<a target="_blank" href="" hidefocus="false">香港旅游</a>
<a target="_blank" href="" hidefocus="false">美国旅游</a>
<a target="_blank" href="" hidefocus="false">毛里求斯旅游</a>
<a target="_blank" href="" hidefocus="false">葡萄牙旅游</a>
<a target="_blank" href="" hidefocus="false">马尔代夫旅游</a>
<a target="_blank" href="" hidefocus="false">济州岛旅游</a>
<a target="_blank" href="" hidefocus="false">首尔旅游</a>
<a target="_blank" href="" hidefocus="false">长滩岛旅游</a>
<a target="_blank" href="" hidefocus="false">土耳其旅游</a>
<a target="_blank" href="" hidefocus="false">安徽旅游</a>
<a target="_blank" href="" hidefocus="false">黄山旅游</a>
<a target="_blank" href="" hidefocus="false">深圳旅游</a>
<a target="_blank" href="" hidefocus="false">广州旅游</a>
<a target="_blank" href="" hidefocus="false">海南旅游</a>
<a target="_blank" href="" hidefocus="false">南京旅游</a>
<a target="_blank" href="" hidefocus="false">连云港旅游</a>
<a target="_blank" href="" hidefocus="false">苏州旅游</a>
<a target="_blank" href="" hidefocus="false">无锡旅游</a>
<a target="_blank" href="" hidefocus="false">山西旅游</a>
<a target="_blank" href="" hidefocus="false">浙江旅游</a>
<a target="_blank" href="" hidefocus="false">舟山旅游</a>
<a target="_blank" href="" hidefocus="false">天目湖旅游</a>
<a target="_blank" href="" hidefocus="false">横店旅游</a>
<a target="_blank" href="" hidefocus="false">仙居旅游</a>
<a target="_blank" href="" hidefocus="false">大溪地旅游</a>
<a target="_blank" href="" hidefocus="false">斐济旅游</a>
<a target="_blank" href="" hidefocus="false">新西兰旅游</a>
<a target="_blank" href="" hidefocus="false">迪拜旅游</a>
<a target="_blank" href="" hidefocus="false">新加坡旅游</a>
<a target="_blank" href="" hidefocus="false">斯里兰卡旅游</a>
<a target="_blank" href="" hidefocus="false">尼泊尔旅游</a>
<a target="_blank" href="" hidefocus="false">黄山旅游攻略</a>
<a target="_blank" href="" hidefocus="false">澳门旅游攻略</a>
<a target="_blank" href="" hidefocus="false">北京旅游攻略</a>
<a target="_blank" href="" hidefocus="false">桂林旅游攻略</a>
<a target="_blank" href="" hidefocus="false">西安旅游攻略</a>
<a target="_blank" href="" hidefocus="false">九寨沟旅游攻略</a>
</span>
        </p>
    </div>
    <script src="js/copyright.js"></script>
    <!-- 公共底部  -->
    <!-- footer\ -->
    <!-- copyright\ -->
    <!-- //footer -->
    <!-- 公共底部结束  -->
    <!--===== 底部文件区域 E ======-->
    <script>
        document.getElementById("adPro").setAttribute("data-adsrc","http://lvmamim.allyes.com/main/s?user=lvmama_2013|abroad_2013|ticket_2013_flag01&db=lvmamim&border=0&local=yes#300px#60px");

        $(function(){
            $("script[type='text/templete']").each(function(){
                $(this).replaceWith($(this).html());
            });
            $("textarea[type='text/templete']").each(function(){
                $(this).replaceWith($(this).html().replace(/\&lt;/g,"<").replace(/\&gt;/g,">").replace(/\&amp;/g,"&"));
            });
        });
    </script>

    <!-- <script src="http://www.lvmama.com/js/prodDetail/quickBooker.js" type="text/javascript"></script>
//代码转移到89行-->
    <script>
        //签证发邮件
        function visaEmailSend(data){

            pandora.dialog({
                title:"邮件发送",
                skin: "dialog-pink",
                content: $("#visaDialog"),
                okValue: "确定发送",
                okClassName:"pbtn-pink",
                ok: function () {
                    var that =this;
                    var emailToAddress = $("#visaEmail").val();
                    if(checkVisaEmail(emailToAddress)){
                        $.ajax({
                            url: "/visa/visaDetails.do",
                            type:"post",
                            data: {
                                "emailToAddress":emailToAddress,//收件人邮箱
                                "documentId":$("#visa_Email_documentId_"+data).val(),//文档Id
                                "cnVisaType":$("#visa_Email_cnVisaType").val(),//签证类型
                                "occupation":$("#ssrq_"+data).val(),//所属人群
                            },
                            contentType: "application/x-www-form-urlencoded; charset=utf-8",
                            dataType:"json",
                            success: function(result) {
                                if (result.success) {
                                    $.msg('邮件已发送！',1000);
                                } else {
                                    $.msg('邮件发送失败,请尝试再次发送！',2000);
                                }
                            }
                        });

                    }else{
                        pandora.dialog({
                            skin: "dialog-pink",
                            wrapClass: "dialog-mini",
                            content:"<font color='red' size='4'>邮箱格式不正确！</font>",
                            cancelValue: "返回",
                            cancel: true
                        });
                        //$.msg('邮箱格式不正确','800');
                    }



                },
                cancelValue: "返回",
                cancelClassName:"pbtn-pink",
                cancel: true
            })
        }

        //验证邮箱格式的正确性
        function checkVisaEmail(email){
            var EMAIL_REGX = /^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]+$/;
            if(""!= email&&EMAIL_REGX.test(email)){
                return true;
            }else {
                return false;
            }

        }

        $(function(){
            $(".qijiashuoming").ui('lvtip',{
                hovershow: 200
            });
        })

    </script>
    <script type="text/javascript" async src="js/trace.js"></script>
    <script type="text/javascript" async charset="utf-8" src="js/lvmama.js"></script>
    <script>
        cmCreatePageviewTag("产品详情页-"+"【出境暑假狂欢季】马尔代夫哈库拉CHAAYA LAGOON岛4晚6日自由行*5M航空直飞 一价全包（可预订商品1）", "FREENESS_FOREIGN", null, null);
        cmCreateProductviewTag("60971", "【出境暑假狂欢季】马尔代夫哈库拉CHAAYA LAGOON岛4晚6日自由行*5M航空直飞 一价全包", "FREENESS_FOREIGN", "FREENESS_FOREIGN");
    </script>


    <div class="sj_pop" style="background:url(http://pic.lvmama.com/img/temp/float_left.png) no-repeat;">
        <a  href="" class="shoujiQRlink" target="_blank"></a>
        <a href="javascript:;" class="shoujiQRclose"></a>
    </div>
    <div id="rapidLoginDialog" class="pop_loginner" style="display:none;">
        <div class="contLogin" style="padding:0px 10px">
            <div class="contLeft">
                <div class="titleUser">非会员快速预订</div>
                <p class="quick-area">
                    <span class="inputName">手机号：</span>
                    <span class="inputValue">
<input name="mobileLoginText" type="text" id="mobileLoginText" onblur="">
<span id="mobileLoinTextSuccessTip"></span>
</span>
                    <span id="mobileLoinTextErrorTip"></span>
                </p>
                <p>
                    <span class="inputName">&nbsp;</span>
                    <span class="inputValue">
<a class="quickBuy" onclick="rapidRegister()" href="javascript:void(0)">
	<img src="images/quickBuy.gif" alt="快速预订" style="cursor:pointer;" data-bd-imgshare-binded="1"></a>
</span>
                </p>
                <p>
<span class="inputValue">
<em class="contTsInfo">我们会将您注册为在途中会员，手机号为您的用户名，密码将通过免费短信发送到您手机。</em>
</span>
                </p>
            </div>
            <div class="contRight">
                <div class="titleUser">会员登录后预订</div>
                <p class="mb-10">
                    <span class="inputName">账户：</span>
                    <span class="inputValue">
<input type="text" name="mobileOrEMail" id="sso_mobileAndEmail" value=""></span>
                </p>
                <p class="mb-10">
                    <span class="inputName">密码：</span>
                    <span class="inputValue">
<input name="password" id="sso_password" type="password"></span>
                </p>
                <p>
                    <span class="inputName">验证码：</span>
                    <span class="inputValue">
<input style="width:80px;margin-right:5px;" type="text" name="verifycode" id="xhsso_verifycode1">
<img id="image" src="images/checkcode.htm" data-bd-imgshare-binded="1">
<a href="http://www.lvmama.com/product/60971#" class="link_blue" onclick="">换一张</a>
</span>
                </p>
                <p id="loinTextErrorTip"></p>
                <p>
                    <span class="inputName">&nbsp;</span>
                    <span class="inputValue">
<a class="quickBuy" href="javascript:void(0)" onclick="login()">
	<img src="images/LoginAndBuy.gif" alt="登录，继续订购" onclick="login()" style="cursor:pointer;" data-bd-imgshare-binded="1"></a>
<a class="findPass" href="" target="_blank">忘记密码？</a>
</span>
                </p>
                <div class="weiboLogin">
                    <div class="weiboH1">
                        还不是在途中会员？
                        <a class="freeUser" href="" target="_blank">免费注册</a>
                    </div>
                    <div class="weiboBtn">
                        <p>
                            <label class="login_lbl">使用合作网站帐号登录</label>
                            <a class="weiboBtnA login_conQQ" href="" target="_unionlogin" onclick="">QQ</a>
                            <a class="weiboBtnA login_conBD" href="" target="_unionlogin" onclick="">百度</a>
                        </p>
                        <a class="weiboBtnA login_conSN" href="" target="_unionlogin" onclick="">新浪微博</a>
                        <a class="weiboBtnA login_conALP"  href="" target="_unionlogin" onclick="">支付宝</a>
                        <a class="weiboBtnA login_conKX" href="" target="_blank" style="padding-left:22px;">开心网</a>
                        <a class="weiboBtnA login_conSD" href="" target="_unionlogin" onclick="">盛大</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--inner-->
    <style>/*弹出提示层*/#tipsWindow_n {display: none;}#tipsWindow_n img {vertical-align: middle;margin-top: -3px;}#tipsWindow_n h3 {font-size: 14px;font-weight: bold;line-height: 30px;border-bottom: 1px solid #D8DFEA;}#tipsWindow_n strong {font-weight: bold;display: block;}#tipsWindow_n p {color: #666;line-height: 20px;padding: 0;ertical-align: middle;}#tipsWindow_n .tbtn {text-align: center;padding: 10px 0 10px;}#tipsWindow_n span {position: absolute;right: 20px;top: 20px;cursor: pointer;ertical-align: middle;}#tipsWindow_n input {cursor: pointer;margin: 0 15px;}#mobileLoinTextErrorTip font {margin-left: 0;}</style>
    <div id="tipsWindow_n">
        <p>
            <img src="images/warning.gif" data-bd-imgshare-binded="1">&nbsp;请在联合登录前不要关闭此窗口。完成登录后根据您好的情况点击下面的按钮：</p>
        <strong>请在新开网页上完成登录后再选择。</strong>
        <div class="tbtn">
            <input name="completePayBtn" type="button" value="已完成登录" id="completePayBtn" onclick="completeLogin()">
            <input type="button" value="登录遇到问题" onclick=""></div>
        <a href="javascript:void(0);" onclick="closeMsg();">返回重新选择登录方式</a>
    </div>
    <div class="tooltip tooltip1 bottom" style="left: 851px; top: 354px; display: none;" id="lvtip1">
        <div class="tooltip-arrow"></div>
        <div class="tooltip-outer">
            <div class="tooltip-shadow"></div>
            <div class="tooltip-inner">
                <h5 class="tooltip-title" style="display: none;"></h5>
                <div class="tooltip-content">
                    <p>
                        本起价是指未包含附加服务（如单人房差、保险费等）的基本价格。您最终确认的价格将会随所选出行日期、人数及服务项目而相应变化。
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="tooltip tooltip2" style="display:none;" id="lvtip2">
        <div class="tooltip2-arrow">
            <em></em>
            <i></i>
        </div>
        <div class="tooltip-outer">
            <h5 class="tooltip-title"></h5>
            <div class="tooltip-content">
                <p></p>
            </div>
        </div>
    </div>
    <iframe frameborder="0" id="bdSharePopup_selectshare1402195481007bg" class="bdselect_share_bg" style="display: none;"></iframe>
    <div id="bdSharePopup_selectshare1402195481007box" style="display: none;" share-type="selectshare" class="bdselect_share_box" data-bd-bind="1402195481006">
        <div class="selectshare-mod-triangle">
            <div class="triangle-border"></div>
            <div class="triangle-inset"></div>
        </div>
        <div class="bdselect_share_head">
            <span>分享到</span>
            <a class="bdselect_share_dialog_close"></a>
        </div>
        <div class="bdselect_share_content">
            <ul class="bdselect_share_list bdshare-button-style0-16">
                <div class="bdselect_share_partners">
                    <a href="" class="bds_qzone" data-cmd="qzone"></a>
                    <a href="" class="bds_tsina" data-cmd="tsina"></a>
                    <a href="" class="bds_tqq" data-cmd="tqq"></a>
                    <a href="" class="bds_renren" data-cmd="renren"></a>
                    <a href="" class="bds_weixin" data-cmd="weixin"></a>
                </div>
                <a href="" class="bds_more" data-cmd="more"></a>
            </ul>
        </div>
    </div>
    <div id="bdimgshare_1402195481024" class="sr-bdimgshare sr-bdimgshare-list sr-bdimgshare-16 sr-bdimgshare-black" style="height: 36px; line-height: 26px; font-size: 12px; position: absolute; top: 289px; left: 179.5px; width: 444px; display: none;" data-bd-bind="1402195481023">
        <div class="bdimgshare-bg"></div>
        <div class="bdimgshare-content bdsharebuttonbox bdshare-button-style0-16" data-bd-bind="1402195481033">
            <label class="bdimgshare-lbl">分享到：</label>
            <a href="" onclick="return false;" class="bds_qzone" title="分享到QQ空间"></a>
            <a href="" onclick="return false;" class="bds_tsina" title="分享到新浪微博"></a>
            <a href="" onclick="return false;" class="bds_tqq" title="分享到腾讯微博"></a>
            <a href="" onclick="return false;" class="bds_renren" title="分享到人人网"></a>
            <a href="" onclick="return false;" class="bds_weixin" title="分享到微信"></a>
            <a href="" onclick="return false;" class="bds_more" ></a>
        </div>
    </div>
    <iframe allowtransparency="true" id="add_speed_bfd" frameborder="0" scrolling="no" style="height: 0px; width: 0px; float: none; position: absolute; overflow: hidden; z-index: 333333; margin: 0px; padding: 0px; border: 0px none; background-image: none; background-position: initial initial; background-repeat: initial initial;"></iframe>
    <iframe src="images/cm.htm" scrolling="no" width="1" height="1" style="display: none;"></iframe>
    <iframe frameborder="0" id="bdSharePopup_1402195520467bg" class="bdshare_popup_bg" style="height: 326px; width: 228px; top: 1306px; left: 473.5px; display: none;"></iframe>
    <div class="bdshare_popup_box" id="bdSharePopup_1402195520467box" style="width: 226px; top: 1306px; left: 473.5px; display: none;">
        <div class="bdshare_popup_top">分享到</div>
        <ul class="bdshare_popup_list">
            <li>
                <a href="" onclick="return false;" class="popup_mshare" >一键分享</a>
            </li>
            <li>
                <a href="" onclick="return false;" class="popup_qzone" >QQ空间</a>
            </li>
            <li>
                <a href="" onclick="return false;" class="popup_tsina" >新浪微博</a>
            </li>
            <li>
                <a href="" onclick="return false;" class="popup_bdysc" >百度云收藏</a>
            </li>
            <li>
                <a href="" onclick="return false;" class="popup_weixin" >微信</a>
            </li>
            <li>
                <a href="" onclick="return false;" class="popup_renren" >人人网</a>
            </li>
            <li>
                <a href="" onclick="return false;" class="popup_tqq" >腾讯微博</a>
            </li>
            <li>
                <a href="" onclick="return false;" class="popup_bdxc" >百度相册</a>
            </li>
            <li>
                <a href="" onclick="return false;" class="popup_kaixin001">开心网</a>
            </li>
            <li>
                <a href="" onclick="return false;" class="popup_tqf" >腾讯朋友</a>
            </li>
            <li>
                <a href="" onclick="return false;" class="popup_tieba" >百度贴吧</a>
            </li>
            <li>
                <a href="" onclick="return false;" class="popup_douban ">豆瓣网</a>
            </li>
            <li>
                <a href="" onclick="return false;" class="popup_tsohu" >搜狐微博</a>
            </li>
            <li>
                <a href="" onclick="return false;" class="popup_bdhome" >百度新首页</a>
            </li>
            <li>
                <a href="" onclick="return false;" class="popup_sqq" >QQ好友</a>
            </li>
            <li>
                <a href="" onclick="return false;" class="popup_thx" >和讯微博</a>
            </li>
        </ul>
        <div class="bdshare_popup_bottom">
            <a href="" onclick="return false;" class="popup_more" target="_blank;">更多...</a>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(function(){
        /*我的lv妈妈*/
        $("#wdlmm").hover(function(){
            $(this).find(".p_top-sub1").show();
            $(this).find(".p_lvlink1").css({
                position: "relative",
                zIndex: "10",
                paddingLeft: "10px",
                marginLeft: "-1px",
                marginRight: "-1px",
                borderColor: "#ddd",
                borderStyle: "solid",
                borderWidth: "1px 1px 0 1px",
                height: "24px",
                background:"url(images/sanjiao2.png) #fff no-repeat 74px 10px"
            });

        },function(){
            $(this).find(".p_top-sub1").hide();
            $(this).find(".p_lvlink1").css({
                backgroundColor: "#fff",
                position: "static",
                zIndex: "10",
                paddingLeft: "10px",
                margin: "-6px 0",
                padding: "0 20px 0 9px",
                borderColor: "#fff",
                borderStyle: "solid",
                borderWidth: "1px 0 0 1px",
                height: "18px" ,
                background:"url(images/sanjiao.png) no-repeat 74px 10px"

            })
        })

    })
</script>
</body>
</html>
