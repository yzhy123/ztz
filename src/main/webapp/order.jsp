<%--
  Created by IntelliJ IDEA.
  User: a'su's
  Date: 2018/12/8
  Time: 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单页面</title>
    <link rel="stylesheet" href="css/common.css"/>
    <link rel="stylesheet" href="css/order.css"/>
    <link rel="stylesheet" href="layui/css/layui.css"/>
</head>
<body>
<div class="head_nav">
    <a id="nav_logo" href="index.do"></a>
    <span>01|填写订单，02|在线支付，03|预定完成</span>
</div>
<section class="content" style="position:relative;">
    <form class="layui-form" action="">
        <div style="padding: 20px 100px; background-color: #F2F2F2;">
            <div class="layui-row layui-col-space15" style="position:relative;">
                <div class="layui-col-md8">
                    <div class="layui-card">
                        <div class="layui-card-header">
                            <h3><strong><i class="layui-icon"
                                           style="font-size: 17px; color: rgb(12,161,241);">&#xe623;</i>三亚冬帽洲岛2人4日豪华游</strong>
                            </h3>
                        </div>
                        <div class="layui-card-body">
                            <div class="content2"><span class="content2_style">出发城市：</span><span>广州</span></div>
                            <div class="content2"><span class="content2_style">出发日期：</span><input class="layui-input"
                                                                                                  type="text" readonly
                                                                                                  value="2018-09-01出发，2018-09-06返回，共6天"
                                                                                                  style="display: inline-block;width:300px;height:28px;line-height: 28px;"/>
                            </div>
                            <div class="content2"><span class="content2_style">出游人数：</span>
                                <span class="addAnddel"><input type="button" name="person_num" value="-"
                                                               class="person_num"/></span>
                                <span class="addAnddel2"><input type="text" name="person_num" value="4"
                                                                class="person_num"/></span>
                                <span class="addAnddel"><input type="button" name="person_num" value="+"
                                                               class="person_num"/></span>
                                成人&nbsp;&nbsp;
                                <span class="addAnddel"><input type="button" name="person_num" value="-"
                                                               class="person_num"/></span>
                                <span class="addAnddel2"><input type="text" name="person_num" value="0"
                                                                class="person_num"/></span>
                                <span class="addAnddel"><input type="button" name="person_num" value="+"
                                                               class="person_num"/></span>
                                儿童(含火车票儿童)<i class="layui-icon"
                                             style="font-size: 17px; color: rgb(18,166,241);">&#xe702;</i> &nbsp;&nbsp;
                                <span class="addAnddel"><input type="button" name="person_num" value="-"
                                                               class="person_num"/></span>
                                <span class="addAnddel2"><input type="text" name="person_num" value="0"
                                                                class="person_num"/></span>
                                <span class="addAnddel"><input type="button" name="person_num" value="+"
                                                               class="person_num"/></span>
                                儿童(免火车票儿童)<i class="layui-icon"
                                             style="font-size: 17px; color: rgb(18,166,241);">&#xe702;</i>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="fly" style="position:fixed; margin-left: 820px;margin-top: 16%;">
                    <div class="layui-card">
                        <hr class="layui-bg-black" style="height: 3px; margin:0">
                        <div class="layui-card-header"
                             style="text-align: center;color: rgba(130,130,130,0.86);font-size: 18px;">
                            -----------------------<strong>结算信息</strong>-------------------------
                        </div>
                        <div class="layui-card-body">
                            <span style="display: inline-block;color: rgba(91,91,91,0.9);font-size: 18px;">出游团费</span>
                            <span style="display: inline-block;margin-left: 150px;width: 134px;text-align: right;color: #f06500;font-size: 20px;">
                            ￥1840
                        </span><br>
                            <div style="text-align: right;color: rgba(130,130,130,0.86);">成人￥920x2</div>
                            <hr class="layui-bg-gray" style="margin:0">
                        </div>
                        <div class="layui-card-body">
                            <span style="display: inline-block;color: rgba(91,91,91,0.9);font-size: 18px;">保险费用</span>
                            <span style="display: inline-block;margin-left: 150px;width: 134px;text-align: right;color: #f06500;font-size: 20px;">
                            ￥70
                        </span>
                            <div>
                                <div style=" width:250px;display:inline-block;text-align: left;color: rgba(130,130,130,0.86);">
                                    新华周边旅游意外险升级方案（3天）
                                </div>
                                <div style=" width:106px;display:inline-block;text-align: right;color: rgba(130,130,130,0.86);">
                                    ￥20x2
                                </div>
                            </div>
                            <div>
                                <div style=" width:250px;display:inline-block;text-align: left;color: rgba(130,130,130,0.86);">
                                    太平洋旅程取消险方案2
                                </div>
                                <div style=" width:106px;display:inline-block;text-align: right;color: rgba(130,130,130,0.86);">
                                    ￥15x2
                                </div>
                            </div>
                        </div>
                        <div class="layui-card-body" style="background: rgba(255,212,22,0.11)">
                            <div style="display: inline-block;font-size: 20px;color: #6e6e6e">
                                <strong>总价</strong>
                                <i class="layui-icon" style="font-size: 17px; color: rgb(18,166,241);">&#xe702;</i>
                            </div>
                            <span style="display: inline-block;margin-left: 160px;width: 134px;text-align: right;color: #f06500;font-size: 26px;">
                            ￥1840
                        </span>
                        </div>
                    </div>
                </div>
                <div class="layui-col-md4">
                    <div class="layui-card">
                        <div class="layui-card-header">套餐图片</div>
                        <div class="layui-card-body">
                            套餐图片<br>
                            套餐图片
                        </div>
                    </div>
                </div>
                <div class="layui-col-md8">
                    <div class="layui-card">
                        <div class="layui-card-header">
                            <h3><i class="layui-icon" style="font-size: 17px; color: rgb(12,161,241);">&#xe609;</i>&nbsp;飞机票信息
                                <a href="javascript:void(0)" style="margin-left:550px;color: rgb(16,198,0);">
                                    更改飞机票<i class="layui-icon"
                                            style="font-size: 17px; color: rgb(16,198,0);">&#xe602;</i>
                                </a>
                            </h3>
                        </div>
                        <div class="layui-card-body">
                            <table class="layui-table" lay-skin="nob">
                                <colgroup>
                                    <col width="100">
                                    <col width="70">
                                    <col>
                                </colgroup>
                                <tbody>
                                <tr style="text-align: center">
                                    <td>
                                        广州-三亚</br>
                                        <span style="color: #c0c0c0">2019-1-12</span>
                                    </td>
                                    <td>D3333</td>
                                    <td>
                                        <strong>
                                            广州南<br>
                                            06:56
                                        </strong>
                                    </td>
                                    <td style="color: #c0c0c0">
                                        <div>历时</div>
                                        <div style="height: 16px;line-height: 8px;">………………</div>
                                        <div>1小时36分钟</div>
                                    </td>
                                    <td>
                                        <strong>
                                            厦门北<br>
                                            08:32
                                        </strong>
                                    </td>
                                    <td>经济舱</td>
                                    <td>有票</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <hr class="layui-bg-gray" style="width: 90%;margin: 0 auto;">
                        <div class="layui-card-body">
                            <table class="layui-table" lay-skin="nob">
                                <colgroup>
                                    <col width="100">
                                    <col width="70">
                                    <col>
                                </colgroup>
                                <tbody>
                                <tr style="text-align: center">
                                    <td>
                                        广州-三亚</br>
                                        <span style="color: #c0c0c0">2019-1-12</span>
                                    </td>
                                    <td>D3333</td>
                                    <td>
                                        <strong>
                                            广州南<br>
                                            06:56
                                        </strong>
                                    </td>
                                    <td style="color: #c0c0c0">
                                        <div>历时</div>
                                        <div style="height: 16px;line-height: 8px;">………………</div>
                                        <div>1小时36分钟</div>
                                    </td>
                                    <td>
                                        <strong>
                                            厦门北<br>
                                            08:32
                                        </strong>
                                    </td>
                                    <td>经济舱</td>
                                    <td>有票</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="layui-col-md8">
                    <div class="layui-card">
                        <div class="layui-card-header">
                            <i class="layui-icon" style="color: #009688;">&#xe62e;</i>
                            保险方案
                        </div>
                        <div class="layui-card-body">
                            <table class="layui-table" lay-skin="nob">
                                <colgroup>
                                    <col width="150">
                                    <col width="450">
                                    <col>
                                </colgroup>
                                <thead>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>意外险</td>
                                    <td><a href="javascript:void(0)" style="text-decoration:underline;">新华周边旅游意外险升级方案（3天）</a>
                                    </td>
                                    <td>￥20/人</td>
                                    <td><input type="checkbox" name="xinhua" lay-skin="primary" checked></td>
                                </tr>
                                <tr>
                                    <td>取消险</td>
                                    <td><a href="javascript:void(0)" style="text-decoration:underline;">太平洋旅程取消险方案</a>
                                    </td>
                                    <td>￥15/人</td>
                                    <td><input type="checkbox" name="xinhua" lay-skin="primary" checked></td>
                                </tr>
                                <tr>
                                    <td colspan="4">
                                        <a class="layui-btn layui-btn-fluid layui-btn-primary">
                                            更多保险
                                            <i class="layui-icon">&#xe625;</i>
                                        </a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md8">
                    <div class="layui-card">
                        <div class="layui-card-header">
                            <i class="layui-icon" style="color: #ff8706;">&#xe66f;</i>
                            联系人信息
                        </div>
                        <div class="layui-card-body" style="padding-left: 60px;">
                            <div class="layui-form-item">
                                <label class="layui-form-label"><i class="xinghao_red">*</i>姓名：</label>
                                <div class="layui-input-block">
                                    <input style="width: 360px;" type="text" name="name" required lay-verify="required"
                                           placeholder="如：张三" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label"><i class="xinghao_red">*</i>联系电话：</label>
                                <div class="layui-input-inline">
                                    <input style="width: 360px;" type="password" name="phone" required
                                           lay-verify="required" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md8">
                    <div class="layui-card">
                        <div class="layui-card-header">
                            <i class="layui-icon" style="color: #960094;">&#xe770;</i>
                            出游人信息
                        </div>
                        <div class="layui-card-body">
                            <!--第几位出游人-->
                            <div class="p_num_div">
                                <span class="p_num_span">第1位</span>
                                <span class="p_num_span1">成人</span>
                            </div>
                            <div style="padding-left: 60px;">
                                <div class="layui-form-item">
                                    <label class="layui-form-label"><i class="xinghao_red">*</i>中文姓名：</label>
                                    <div class="layui-input-block">
                                        <input style="width: 360px;" type="text" name="callname" required
                                               lay-verify="required" placeholder="请与证件保持一致" autocomplete="off"
                                               class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <div class="layui-inline">
                                        <label class="layui-form-label"><i class="xinghao_red">*</i>证件类型：</label>
                                        <div class="layui-input-inline" style="width:110px;">
                                            <select name="city" lay-verify="">
                                                <option value="010" selected>身份证</option>
                                                <option value="011">护照</option>
                                                <option value="012" disabled>军官证</option>
                                                <option value="013" disabled>学生证</option>
                                            </select>
                                        </div>
                                        <div class="layui-input-inline">
                                            <input style="width: 240px;" type="text" name="title" required
                                                   lay-verify="required" placeholder="证件号码" autocomplete="off"
                                                   class="layui-input">
                                        </div>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label"><i class="xinghao_red">*</i>手机号：</label>
                                    <div class="layui-input-block">
                                        <input style="width: 360px;" type="text" name="title" required
                                               lay-verify="required" placeholder="手机号" autocomplete="off"
                                               class="layui-input">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-row layui-col-space15" style="bottom: 130px;">
                <div class="layui-col-md8">
                    <div class="layui-card">
                        <div class="layui-card-header" style="height:80px;">
                            <i class="layui-icon" style="font-size:18px;color: #ff0100;">&#xe60a;</i>
                            发票
                            <span style="display: inline-block;">
                                <input type="radio" name="fapiao" value="buyao" title="不需要发票">
                                <input type="radio" name="fapiao" value="yao" title="需要发票" checked>
                            </span>
                        </div>
                        <div class="layui-card-body"></div>
                    </div>
                </div>
            </div>
        </div>
        <div style="box-shadow: 0 -1px 3px rgba(255,169,1,0.38);position:fixed;margin-left:1px;bottom:0;width: 100%;height:63px;line-height:63px;z-index:13;background-color: white;min-width: 1366px;">
            <div class="layui-form">
                &nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="zzz" lay-skin="primary">
                <span style="display: inline-block;margin-left:-5px;margin-right:480px;vertical-align: sub;">
                我已同意并阅读预定须知、
                旅游合同、保险条款、保险经济委托合同以及客户告知书、
                特别预定提示、安全提示
            </span>
                <button class="layui-btn layui-btn-warm">提交订单</button>
            </div>
        </div>
    </form>
</section>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['form', 'laydate', 'layer', 'element'], function () {
        // $(function () {
        //     var size = $("#fly").offset();
        //     console.log(size.top);
        //     //190.90384674072266
        //     $(window).scroll( function() {
        //         var size1 = $("#fly").offset();
        //         console.log(size1.top);
        //         if(size1.top>190.90){
        //             $("#fly").css({"position":"fixed","margin-left":"820px","margin-top":"-80px"});
        //             $("#fly").removeClass("layui-col-md4");
        //         }else{
        //             console.log("触发");
        //             $("#fly").css({"position":"fixed","margin-left":"820px","margin-top":"0"});
        //         }
        //     } );
        // });
    });
</script>
</body>
</html>
