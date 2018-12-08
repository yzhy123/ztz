<%--
  Created by IntelliJ IDEA.
  User: a'su's
  Date: 2018/12/7
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>注册页面</title>
    <link rel="stylesheet" href="layui/css/layui.css"/>
    <link rel="stylesheet" href="css/register.css"/>
</head>

<body>
<section class="sectionHead">
    <i class="bkgimg"></i>
    <div class="content">
        <h3 class="h31">手机注册</h3>
        <hr class="layui-bg-green">
        <div>
            <div class="layui-progress layui-progress-big prohresssize" lay-showPercent="yes" lay-filter="demo">
                <div class="layui-progress-bar layui-bg-green" lay-percent="40%"></div>
            </div>
            <div class="formsize">
                <!--
                作者：offline
                时间：2018-12-06
                描述：注册第一步
            -->
                <div class="layui-form">
                    <div id="one">
                        <div class="layui-form-item">
                            <label class="layui-form-label"><i style="color: red;">*&nbsp;</i>手机号码：</label>
                            <div class="layui-input-block">
                                <input type="text" name="phone" required lay-verify="required\phone"
                                       placeholder="请输入手机号码"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label"><i style="color: red;">*&nbsp;</i>验证码：</label>
                            <div class="layui-input-inline" style="z-index: 2;">
                                <input type="password" name="identifyCode" required lay-verify="required"
                                       placeholder="请输入验证码"
                                       autocomplete="off" class="layui-input">
                            </div>
                            <div class="layui-input-block">
                                <button class="layui-btn" lay-submit lay-filter="formDemo">获取验证码</button>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">邀请码：</label>
                            <div class="layui-input-block">
                                <input type="text" name="porm" placeholder="请输入邀请码" autocomplete="off"
                                       class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <div class="layui-input-inline" style="width:10px;">
                                    <input type="checkbox" name="agree" value="1" lay-skin="primary"
                                           class="layui-form-mid" lay-filter="checked">
                                </div>
                                <div class="layui-form-mid layui-word-aux">同意
                                    <a href="javascript:void(0)">在途中会员协议</a>和
                                    <a href="javascript:void(0)">在途中隐私协议</a>
                                </div>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button class="layui-btn" id="first">下一步</button>
                                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            </div>
                        </div>
                    </div>
                    <!--
                    作者：offline
                    时间：2018-12-06
                    描述：输入密码
                -->
                    <div id="two" style="display: none">
                        <form class="layui-form">
                            <div class="layui-form-item">
                                <label class="layui-form-label"><i style="color: red;">*&nbsp;</i>密码：</label>
                                <div class="layui-input-inline" style="width:268px;">
                                    <input type="password" name="password" required lay-verify="pass"
                                           placeholder="请输入密码"
                                           autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label"><i style="color: red;">*&nbsp;</i>确认密码：</label>
                                <div class="layui-input-inline" style="width:268px;">
                                    <input type="password" name="passwordAgain" required lay-verify="required"
                                           placeholder="请再次输入密码" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <div class="layui-input-block">
                                    <input type="button" class="layui-btn" id="regBtn" value="立即注册"/>
                                    <button class="layui-btn layui-btn-primary" id="preBtn">上一步</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!--
                        作者：offline
                        时间：2018-12-06
                        描述：注册成功
                        -->
                    <div id="three" style="display: none;">
                        <div style="margin: 0 auto;text-align: center;">
                            <i class="layui-icon layui-icon-face-smile"
                               style="font-size: 36px; color: #1E9FFF;">注册成功！</i>
                            <br><br>
                            恭喜你已经成功注册在途中，现在你可以
                            <br><br>
                            <a href="javascript:void(0)" class="layui-btn layui-btn-normal">去登录</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['form', 'layer', 'element'], function () {
        var form = layui.form;
        var layer = layui.layer;
        var element = layui.element;
            $(function () {
                var first = $("#first");
                var regBtn = $("#regBtn");
                var preBtn = $("#preBtn");
                var one = $("#one");
                var two = $("#two");
                var three = $("#three");
                var agree;
                form.on('checkbox(checked)', function(data){
                    agree = data.elem.checked;
                    console.log(data.elem.checked); //是否被选中，true或者false
                });
                first.on("click", function () {
                    if(true==agree){
                        one.hide();
                        two.show();
                        element.progress('demo', '80%');
                    }else{
                        layer.msg('请勾选同意协议！！！', {icon: 5});
                    }
                });
                regBtn.on("click", function () {
                    var phone = $("[name=phone]").val();
                    var password = $("[name=password]").val();
                    if (password.length < 6 || password.length > 12) {
                        layer.msg('密码必须在6-12位之间', {icon: 5});
                    } else if (!(/^1[34578]\d{9}$/.test(phone))) {
                        layer.msg('请填写正确的手机号', {icon: 4});
                        two.hide();
                        one.show();
                        element.progress('demo', '40%');
                    } else {
                        senAjax(phone, password);
                    }
                });
                preBtn.on("click",function () {
                    two.hide();
                    one.show();
                    element.progress('demo', '40%');
                });
            });

        function senAjax(phone, password) {
            $.ajax({
                url: "register.do"
                , type: "post"
                , data: {"password": password, "phone": phone}
                , dataType: "json"
                , success: function (result) {
                    var two = $("#two");
                    var three = $("#three");
                    if (result == true) {
                        two.hide();
                        three.show();
                        element.progress('demo', '100%');
                    } else {
                        alert("注册失败，请联系管理员或者重新注册！");
                    }
                }
            });
        }
    });
</script>
</body>

</html>
