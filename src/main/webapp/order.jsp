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
<section class="content">
    <div style="padding: 20px; background-color: #F2F2F2;">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md6">
                <div class="layui-card">
                    <div class="layui-card-header">
                        <h3><strong>三亚冬帽洲岛2人4日豪华游</strong></h3>
                    </div>
                    <div class="layui-card-body">
                        <div class="content2"><span class="content2_style">出发城市：</span><span>广州</span></div>
                        <div class="content2"><span class="content2_style">出发日期：</span><input class="layui-input" type="text" readonly value="2018-09-01出发，2018-09-06返回，共6天" style="display: inline-block;width:300px;"/></div>
                        <div class="content2"><span class="content2_style">出游人数：</span>
                            <div class="layui-btn-group">
                                <button class="layui-btn layui-btn-xs" style="background: white;border: 0.5px rgb(165, 165, 171) solid;">
                                    <i class="layui-icon" style="color: black;">&#xe603;</i>
                                </button>
                            </div>
                            <input type="text" name="person_num" value="4" class="person_num"/>
                            <div class="layui-btn-group">
                                <button class="layui-btn layui-btn-xs" style="background: white;border: 0.5px rgb(165, 165, 171) solid;">
                                    <i class="layui-icon" style="color: black;">&#xe602;</i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-col-md6">
                <div class="layui-card">
                    <div class="layui-card-header">卡片面板2</div>
                    <div class="layui-card-body">
                        结合 layui 的栅格系统<br>
                        轻松实现响应式布局
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md6">
                <div class="layui-card">
                    <div class="layui-card-header">卡片面板2</div>
                    <div class="layui-card-body">
                        结合 layui 的栅格系统<br>
                        轻松实现响应式布局
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md6">
                <div class="layui-card">
                    <div class="layui-card-header">卡片面板2</div>
                    <div class="layui-card-body">
                        结合 layui 的栅格系统<br>
                        轻松实现响应式布局
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md6">
                <div class="layui-card">
                    <div class="layui-card-header">卡片面板2</div>
                    <div class="layui-card-body">
                        结合 layui 的栅格系统<br>
                        轻松实现响应式布局
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md6">
                <div class="layui-card">
                    <div class="layui-card-header">卡片面板2</div>
                    <div class="layui-card-body">
                        结合 layui 的栅格系统<br>
                        轻松实现响应式布局
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md6">
                <div class="layui-card">
                    <div class="layui-card-header">卡片面板2</div>
                    <div class="layui-card-body">
                        结合 layui 的栅格系统<br>
                        轻松实现响应式布局
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md6">
                <div class="layui-card">
                    <div class="layui-card-header">卡片面板2</div>
                    <div class="layui-card-body">
                        结合 layui 的栅格系统<br>
                        轻松实现响应式布局
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md6">
                <div class="layui-card">
                    <div class="layui-card-header">卡片面板2</div>
                    <div class="layui-card-body">
                        结合 layui 的栅格系统<br>
                        轻松实现响应式布局
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['form', 'laydate', 'layer', 'element'], function () {

    });
</script>
</body>
</html>
