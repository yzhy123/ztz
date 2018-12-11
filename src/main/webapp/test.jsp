<%--
  Created by IntelliJ IDEA.
  User: a'su's
  Date: 2018/12/11
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/pay.do" method="post" target="pay">
    <input type="text" name="out_trade_no" value="123443556"/>
    <input type="text" name="total_amount" value="88.8"/>
    <input type="text" name="subject" value="qwe"/>
    <input type="text" name="body" value="wqeqw"/>
    <input type="submit" value="add"/>
</form>
<iframe id="pay" width="200px" height="200px"></iframe>
</body>
</html>
