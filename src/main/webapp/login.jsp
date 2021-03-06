<%--
  Created by IntelliJ IDEA.
  User: a'su's
  Date: 2018/12/7
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/load.css">
    <link rel="stylesheet" href="layui/css/layui.css"/>
</head>
<body>
<header id="headNav">
    <div class="innerNav clear">
        <a class="fl" href="#"><img src="images/logo2.png" alt="" /></a>
        <div class="headFont fr">
            <span>您好，欢迎光临在途中！</span>
            <a class="helpLink" href="#"><i class="runbun"></i>帮助中心<i class="turnb"></i></a>
        </div>
        <div class="outHelp">
            <ul class="helpYou" style="display: none;">
                <li>
                    <a href="#">包裹跟踪</a>
                </li>
                <li>
                    <a href="#">常见问题</a>
                </li>
                <li>
                    <a href="#">在线退换货</a>
                </li>
                <li>
                    <a href="#">在线投诉</a>
                </li>
                <li>
                    <a href="#">配送范围</a>
                </li>
            </ul>
        </div>
    </div>
</header>
<section id="secBody">
    <div class="innerBody clear">
        <div class="tableWrap fr">
            <div class="t_div">
                <form action="login.do" method="post">
                    <!--============================================-->
                    <input type="hidden" name="msg" value="${msg}"/>
                    <!--============================================-->
                    <div class="tableTap clear">
                        <h3 class="fl">在途中用户登录</h3>
                        <a class="fr" href="#">注册账号</a>
                    </div>
                    <div class="tableItem">
                        <i class="userHead"></i>
                        <input type="text" placeholder="邮箱/手机/用户名" required name="phone"/>
                    </div>
                    <div class="tableItem">
                        <i class="userLock"></i>
                        <input type="password" placeholder="密码" required name="password"/>
                    </div>
                    <div class="tableAuto clear">
                        <a class="autoMatic fl" href="#">
                            <input class="loadGiet" type="checkbox" />自动登录</a>
                        <a class="fr" href="#">忘记密码？</a>
                    </div>
                    <button class="tableBtn" id="btn">登录</button>
                </form>
                <h2 class="moreWeb">更多合作网站账号登录</h2>
                <div class="outType clear">
                    <ul class="loadType clear">
                        <li class="fl">
                            <a href="#"></a>
                        </li>
                        <li class="fl">
                            <a href="#"></a>
                        </li>
                        <li class="fl">
                            <a href="#"></a>
                        </li>
                        <li class="fl">
                            <a href="#"></a>
                        </li>
                        <li class="loadMore fr">更多合作网站<i></i></li>
                    </ul>
                </div>
                <ul class="typeWeb clear">
                    <li class="fl"><i></i>
                        <a href="#">百度</a>
                    </li>
                    <li class="fl"><i></i>
                        <a href="#">百度</a>
                    </li>
                    <li class="fl"><i></i>
                        <a href="#">百度</a>
                    </li>
                    <li class="fl"><i></i>
                        <a href="#">百度</a>
                    </li>
                    <li class="fl"><i></i>
                        <a href="#">百度</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>
<footer id="footNav">
    <p>
        <a href="#">沪ICP备13044278号</a>|&nbsp;&nbsp;合字B1.B2-20130004&nbsp;&nbsp;|
        <a href="#">营业执照</a>
    </p>
    <p>Copyright © 在途中旅游网 2007-2016，All Rights Reserved</p>
</footer>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['form', 'layer', 'element'], function () {
        var form = layui.form;
        var layer = layui.layer;
        $(function () {
            var msg = $("[name=msg]").val();
            if("" != msg){
                layer.msg('用户名或密码错误', {icon: 5});
                msg.empty();
            }else{
                $("form").submit(function () {
                    var phone = $("[name=phone]").val();
                    if(!(/^1[34578]\d{9}$/.test(phone))) {
                        layer.msg('请填写正确格式的手机号', {icon: 4});
                        return false;
                    }
                });
            }
        });
    });

</script>
</body>

</html>
