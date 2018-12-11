package cn.entity;

/**
 * 支付宝请求支付参数类
 * */
public class AlipayParams {
    private String out_trade_no;//订单号
    private Double total_amount;//订单金额
    private String subject;//商品名称
    private String body;//商品描述
    private String timeout_express;//二维码过期
    private String qr_pay_mode;//支付宝支付模式；使用前置模式

    public AlipayParams() {
    }

    public AlipayParams(String out_trade_no, Double total_amount, String subject, String body, String timeout_express, String qr_pay_mode) {
        this.out_trade_no = out_trade_no;
        this.total_amount = total_amount;
        this.subject = subject;
        this.body = body;
        this.timeout_express = timeout_express;
        this.qr_pay_mode = qr_pay_mode;
    }

    public String getOut_trade_no() {
        return out_trade_no;
    }

    public void setOut_trade_no(String out_trade_no) {
        this.out_trade_no = out_trade_no;
    }

    public Double getTotal_amount() {
        return total_amount;
    }

    public void setTotal_amount(Double total_amount) {
        this.total_amount = total_amount;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getTimeout_express() {
        return timeout_express;
    }

    public void setTimeout_express(String timeout_express) {
        this.timeout_express = timeout_express;
    }

    public String getQr_pay_mode() {
        return qr_pay_mode;
    }

    public void setQr_pay_mode(String qr_pay_mode) {
        this.qr_pay_mode = qr_pay_mode;
    }
}
