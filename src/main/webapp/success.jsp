<%--
  Created by IntelliJ IDEA.
  User: a'su's
  Date: 2018/12/11
  Time: 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="csstransitions cssanimations ic_webkit ic_chrome ic_latest">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>详情</title>
    <link rel="stylesheet" type="text/css" href="css/chanel.css">
    <link rel="stylesheet" href="css/index.php2.css">
    <link rel="stylesheet" href="css/buttons.css">
    <link rel="stylesheet" href="css/orderV2.css">
    <link rel="stylesheet" href="css/dialog.css">
    <link id="ui-components" rel="stylesheet" href="css/ui-components.css">
    <link rel="stylesheet" href="css/share_popup.css">
    <link rel="stylesheet" href="css/select_share.css">
    <link rel="stylesheet" href="css/select_share2.css">
    <link rel="stylesheet" href="layui/css/layui.css"/>
    <link rel="stylesheet" href="layer/theme/default/layer.css"/>
    <link rel="stylesheet" href="css/showInfo.css"/>
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" async charset="utf-8" src="js/blade_track_cn.js"></script>
    <script type="text/javascript" async src="js/ga.js"></script>
    <script src="js/cp-v3.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/zz.js"></script>
    <script src="js/bcore.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/lvmamaUI.js"></script>
    <script type="text/javascript" src="layui/layui.js"></script>
    <script type="text/javascript" src="layer/layer.js"></script>
    <script type="text/javascript">
        $(function () {
            $('.dropdown').hover(function (e) {
                $(this).children('span').siblings('.lv_div').toggle();
                $(this).children('span').toggleClass('link_hover');
            });
            $('.lv_div').mouseover(function (e) {
                $('.lv_div').show();
            });

            $('.join-weixin .lvlink').hover(function (e) {
                $(this).siblings('.top-sub').toggle();
            });


            $('#goTopBtn').click(function (e) {
                $('body,html').animate({scrollTop: 0}, 1000);
            });

            $('.quick-menu li a').hover(function (e) {
                $(this).toggleClass('current-crumb');
                $(this).siblings('.menu-bd').toggle();
            });
            $('.ewm_box_xl').hover(function (e) {
                $(this).children('.zhiyin').toggle();
            });
            $('.search_pp_calendar_d li').hover(function (e) {
                $(this).children('.search_pp_calendar_d_box').css('border', '2px solid #abba88');
            }, function () {
                $(this).children('.search_pp_calendar_d_box').css('border', '2px solid #fff');
            });


            var divindex = 0;
            $('.search_pp_cal_nextm_icon').click(function (e) {
                divindex++;
                if (divindex > 2) {
                    divindex = 2;
                }
                $('.search_pp_calendar_box').eq(divindex).show().siblings('.search_pp_calendar_box').hide();
            });

            $('.search_pp_cal_nevm_icon').click(function (e) {
                divindex--;
                if (divindex < 0) {
                    divindex = 0;
                }
                $('.search_pp_calendar_box').eq(divindex).show().siblings('.search_pp_calendar_box').hide();
            });


            var topzhi = $('#scroll_nav').position().top
            $(window).scroll(function (e) {
                var thescrolltop = $(document).scrollTop();
                if (thescrolltop > topzhi) {
                    $('#scroll_nav').css({position: 'fixed', top: 0})
                } else {
                    $('#scroll_nav').css({position: 'static'})
                }
            });


            $('.p_join-weixin').hover(function (e) {
                $(this).children('.p_weixin').toggle();
            });

            $('.firstli').hover(function (e) {
                $(this).children('.p_lvlink').toggleClass('weixin')
            });

            $('.fu_top span').click(function (e) {
                $('.fu_top').hide();
            });

            var one = $('.qiehuana').position().top
            var two = $('.qiehuanb').position().top
            var three = $('.qiehuanc').position().top
            var four = $('.qiehuand').position().top
            var five = $('.qiehuane').position().top
            var six = $('.qiehuanf').position().top
            var seven = $('.qiehuang').position().top
            var eight = $('.qiehuanh').position().top
            $(window).scroll(function (e) {
                var htop = $(document).scrollTop()
                if (htop > 400) {
                    $('.fuchuang').show();
                } else {
                    $('.fuchuang').hide();
                }
            });


            $(window).scroll(function (e) {
                var htop = $(document).scrollTop()
                if (htop > one) {
                    $('#scroll_nav li').eq(0).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if (htop > two) {
                    $('#scroll_nav li').eq(1).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if (htop > three) {
                    $('#scroll_nav li').eq(2).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if (htop > four) {
                    $('#scroll_nav li').eq(3).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if (htop > five) {
                    $('#scroll_nav li').eq(4).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if (htop > six) {
                    $('#scroll_nav li').eq(5).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if (htop > seven) {
                    $('#scroll_nav li').eq(6).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }

                if (htop > eight) {
                    $('#scroll_nav li').eq(7).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
                }
            });


            $('#scroll_nav li').click(function (e) {
                $(this).addClass('scroll_nav_current').siblings().removeClass('scroll_nav_current');
            });


            $('.pnav-main li a').click(function (e) {
                $(this).parent().addClass('current_nav').siblings().removeClass('current_nav');
                return false;
            });

            $('.return_top').click(function (e) {

                $('body,html').animate({scrollTop: 0}, 1000);
            });

        })

    </script>

</head>
<body>

<div>
    <img src="images/newBtn_bg.gif" style="display: none;" data-bd-imgshare-binded="1">
    <!--head start-->
    <!-- 公共头部开始  -->
    <!-- topbar\\ -->
    <div class="p_lv-topbar">
        <div class="tapbar-inner p_wrap">
            <ul class="p_top-link">
                <li class="p_dropdown" id="wdlmm"><a class="p_lvlink p_lvlink1" href="#" rel="nofollow"
                                                     style="">我的小背包 </a>
                    <div class="p_top-sub p_top-sub1" style="display: none;"><a href="#" rel="nofollow">我的订单</a> <a
                            href="#" rel="nofollow">我的积分</a> <a href="#" rel="nofollow">我的优惠券</a> <a href="#"
                                                                                                     rel="nofollow"
                                                                                                     target="_blank">我的会员卡</a>
                        <a href="#" rel="nofollow" target="_blank" ，="">我的礼品卡</a></div>
                </li>
                <!--<li><a class="p_lvlink" href="http://login.lvmama.com/nsso/onlineApplyMemberCard/index.do" rel="nofollow">申请会员卡</a></li>-->
                <li><a class="p_lvlink" href="http://www.lvmama.com/points" rel="nofollow">积分商城</a></li>
                <li><a class="p_lvlink" href="#" rel="nofollow"><i class="icon-quan"></i>团购预约</a></li>
                <li><a class="p_lvlink" href="#" rel="nofollow">帮助</a></li>
                <li class="p_dropdown p_join-weixin"><a class="p_lvlink p_lvlink1" href="javascript:void(0);"
                                                        rel="nofollow"
                                                        style="position: static; z-index: 10; padding: 0px 20px 0px 9px; margin: -6px 0px; border-color: rgb(255, 255, 255); border-style: solid; border-width: 1px 0px 0px 1px; height: 18px; background: url(images/sanjiao.png) 74px 10px no-repeat;"><i
                        class="icon-weixin"></i>+微信</a>
                    <div class="p_weixin" style="display: none;"><span class="p_wechatcode"></span></div>
                </li>
                <li class="sitemap"><a class="p_lvlink" target="_self" href="javascript:bookmark()"
                                       rel="nofollow">收藏本站</a></li>
                <li><a class="p_lvlink" href="#" rel="nofollow"><i class="icon-weibo"></i>+微博</a></li>
                <li class="sitemap"><a href="#">网站地图</a></li>
                <li class="site-mobile"><a class="p_lvlink" href="#" rel="nofollow" target="_blank"><i
                        class="icon-mobile"></i>手机版</a></li>
            </ul>
            <div class="p_welcome"><span>您好，欢迎来到在途中！</span> <a class="p_login" href="#">登录</a> <a href="#">注册</a></div>
        </div>
    </div>
    <!-- //.topbar -->

    <div class="lv-header">
        <div class="header-inner wrap">
            <span id="hotline" class="lv-hotline">#019934</span>
            <a class="lv-logo" href="" hidefocus="false">旅游网</a>
            <div id="adPro" data-type="ad" class="lv-adPro"
                 data-adsrc="http://lvmamim.allyes.com/main/s?user=lvmama_2013|abroad_2013|ticket_2013_flag01&amp;db=lvmamim&amp;border=0&amp;local=yes#300px#60px">
                <iframe scrolling="no" frameborder="0" marginwidth="0" marginheight="0" style="width:300px;height:60px;"
                        src="images/s.htm"></iframe>
            </div>
        </div>
    </div>
    <section>
        <div class="layui-card orderInfo">
            <div class="layui-card-header">
                <i class="layui-icon layui-icon-rmb"></i>
                <span style="display: inline-block;">去结算&nbsp;&nbsp;</span>
                <span style="width:120px;display: inline-block;font-size: x-large; color: #F05400;">待签约付款</span>
                <span style="display: inline-block;text-align:center;width: 180px;margin-left: 666px;">总金额：
                    <span style="font-size: x-large; color: #F05400;">453486元</span>
                    <input type="hidden" name="total_amount" value="453486"/>
                </span>
            </div>
            <div class="layui-card-body">
                <div style="top: 0">
                    <span>订单编号：</span>
                    <span>1335478353</span>
                    <input type="hidden" name="out_trade_no" value="1335478353"/>
                </div>
                <div class="packageName" style="display: inline-block;">
                    <span id="subject">普吉岛三日游</span>
                    <input type="hidden" name="subject" value="普吉岛三日游"/>
                </div>
                <a style="margin-left: 840px;width: 86px;display: inline-block" href="javascript:void(0)"
                   class="layui-btn layui-btn-warm" id="aaa">去签约</a>
            </div>
        </div>
        <div class="layui-card orderInfo">
            <div class="layui-card-header">
                <i class="layui-icon layui-icon-form" style="color: #e2b917;"></i>
                订单信息
            </div>
            <div class="layui-card-body">
                <span>订单编号：</span>
                <span>1354353</span>
                <div class="packageName">
                    <span>普吉岛三日游</span>
                </div>
                <div>
                    <table class="order_table">
                        <tr>
                            <td>预定时间:</td>
                        </tr>
                        <tr>
                            <td>出发时间:</td>
                            <td>归来时间:</td>
                            <td>出发地点:</td>
                            <td>出发人数:</td>
                        </tr>
                        <tr>
                            <td>联系人:</td>
                            <td>联系人电话:</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

        <div class="layui-card" id="travelInfo">
            <div class="layui-card-header">
                <i class="layui-icon layui-icon-username"></i>
                出行人信息
            </div>
            <div class="layui-collapse">
                <div class="layui-colla-item">
                    <h2 class="layui-colla-title">第i个出行人信息</h2>
                    <div class="layui-colla-content layui-show">
                        <table id="travel_table">
                            <tr>
                                <td>姓名:</td>
                                <td>性别:</td>
                            </tr>
                            <tr>
                                <td>证件类型:</td>
                                <td>证件号:</td>
                            </tr>
                            <tr>
                                <td>联系电话:</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>

            <script>
                //注意：折叠面板 依赖 element 模块，否则无法进行功能性操作
                layui.use('element', function () {
                    var element = layui.element;

                    //…
                });
            </script>
        </div>

        <div class="layui-card orderInfo">
            <div class="layui-card-header">
                <i class="layui-icon layui-icon-release"></i>
                航班信息
            </div>
            <div class="layui-card-body">
                <span>航班号号：</span>
                <span>1354353</span>

                <div>
                    <table class="order_table">
                        <tr>
                            <td>出发地:</td>
                            <td>目的地:</td>
                        </tr>
                        <tr>
                            <td>起飞时间:</td>
                            <td>落地时间:</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

        <div class="layui-card orderInfo">
            <div class="layui-card-header">
                <i class="layui-icon layui-icon-tree"></i>
                保险信息
            </div>
            <div class="layui-card-body">

                <div>
                    <table class="order_table">
                        <tr>
                            <td>出发地:</td>
                            <td>目的地:</td>
                        </tr>
                        <tr>
                            <td>起飞时间:</td>
                            <td>落地时间:</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </section>
</div>
<div id="ht" style="display: none">
    <div style="width: 100%;text-align: center;font-size: 26px;font-weight: bold">旅 游 合 同</div>
    <div>甲方：在途中旅行社</div>
    <div>地址：南京市雨花区安德门 邮码：225500电话：3843838</div>
    <div>法定代表人：王嘉臣 职务：总裁</div>
    <div>乙方：姓名(或团体名称)卫云鹏</div>
    <div>地址：上海市陆家嘴汤臣一品 邮码：221100电话：134617263667</div>
    <br>
    <div>根据国家有关旅游事业管理的规定，甲乙双方经协商一致，签订本合同，共同信守执行。</div>
    <div>第一条 旅游的时间安排：</div>
    <div>由甲方在__年__月__日至__年__月__日为乙方提供旅游服务。</div>
    <div>第二条 旅游的地点及每个旅游景点的时间安排：</div>
    <div>甲方为乙方提供的旅游景点为 个。分别是________、________、________。</div>
    <div>每天的时间安排为上午________时至________时，下午________时至________时。</div>
    <div>第三条 旅游的生活安排：</div>
    <div>甲方为乙方提供食宿，每天伙食在________元至________元标准内。</div>
    <div>第四条 导游服务：</div>
    <div>甲方为乙方提供导游服务，服务内容：____________________。</div>
    <div>第五条 旅游的费用：</div>
    <div>本次旅游的费用总计____元(包括食宿在内)。在旅游出发前____日交清。</div>
    <div>第六条 旅游的交通工具：</div>
    <div>甲方为乙方提供交通工具。________、________、________等交通工具都由甲方联系、提供，并保证乙方的旅游安全。</div>
    <div>第七条 甲方的权利义务及违约金：</div>
    <div>1.甲方应按本合同的规定按时为乙方安排本次旅游。</div>
    <div>
        2.甲方未经乙方同意不得擅自减少或增加旅游景点和缩短旅游时间。如甲方违反约定，应向乙方赔偿____％的违约金或者乙方可以要求甲方按约定继续提供旅游服务，甲方不提供的，乙方可以自行旅游，支出的合理费用，由甲方承担；甲方增加游览景点的，增加的费用由甲方承担。
    </div>
    <div>3.甲方应按本合同规定为乙方提供优质的服务。在旅游期间，甲方应派医务人员、保安人员等随行，以保证本次旅游的顺利进行。</div>
    <div>4.甲方不得擅自变更或解除合同，否则按约定赔偿乙方损失额________元。</div>
    <div>5.由于甲方的原因导致乙方受到财产损失和人身伤害的，甲方负赔偿责任。如因第三人的过错造成损失的，甲方在赔偿后，有权向第三人追偿。</div>
    <div>第八条 乙方的权利义务及违约金：</div>
    <div>1.乙方应按时交纳旅游费用，如违反规定在旅游出发前____天内还不交清的，甲方有权不与乙方签订合同，取消乙方的旅游事项。</div>
    <div>2.乙方应遵守甲方安排在本次旅游当中的安全事项及其他合理要求，不得擅自单独行动，否则后果自负。</div>
    <div>第九条 本合同在执行前或执行期间，如有未尽事宜，甲乙双方协商同意后，另订附则附于本合同之内，所有附则在法律上均与本合同有同等效力。</div>
    <div>第十条 本合同一式____份，由甲、乙方各执________份。</div>
    　
    <div>甲方：____________________</div>
    <div>代表：____________________</div>
    <div>____年____月____日</div>
    <div>乙方：____________________</div>
    <div>代表：____________________</div>
    <div>____年____月____日</div>
</div>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script>
    //弹出一个页面层
    $('#aaa').on('click', function () {
        layer.open({
            title: '下单须知'
            , shade: 0.5
            , area: ['500px', '300px']
            , content: $("#ht")
            , offset: '130px'
            , btn: ['付款']
            , yes: function (index, layero) {
                layer.close(index);
                var out_trade_no = $("[name=out_trade_no]").val();
                var total_amount = $("[name=total_amount]").val();
                var subject = $("[name=subject]").val();
                var body = subject;
                $.ajax({
                    url: "pay.do"
                    ,
                    type: "post"
                    ,
                    data: {"out_trade_no": out_trade_no, "total_amount": total_amount, "subject": subject, "body": body}
                    ,
                    dataType: "html"
                    ,
                    success: function (result) {
                        layer.open({
                            type: 2
                            , shade: 0.5
                            , shadeClose: true
                            , anim: 1
                            , title: false
                            , area: ['203.4px', '203.4px']
                            , closeBtn: 0
                            , offset: '130px'
                            , content: result
                        });
                    }
                });
            }
        });
    });
</script>
</body>
</html>