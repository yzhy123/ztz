package cn.util;

import cn.entity.AlipayParams;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.io.PrintWriter;
/**
 * 拉取支付饱支付页面：前置模式
 * 方法名：getAlipayPagePay
 * 参数：AlipayClient，AlipayParams
 * */
@Repository
public class AlipayPagePayUtil {

    //支付页面
    public String getAlipayPagePay(AlipayClient alipayClient, AlipayParams params){
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();//创建API对应的request
        alipayRequest.setReturnUrl(AlipayConfig.return_url);
        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);//在公共参数中设置回跳和通知地址
        alipayRequest.setBizContent("{" +
                "\"out_trade_no\":\""+params.getOut_trade_no()+"\"," +
                "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"," +
                "\"total_amount\":"+params.getTotal_amount()+"," +
                "\"subject\":\""+params.getSubject()+"\"," +
                "\"body\":\""+params.getBody()+"\"," +
                "\"timeout_express\":\""+params.getTimeout_express()+"\"," +
                "\"qr_pay_mode\":\""+params.getQr_pay_mode()+"\","+
                "\"qrcode_width\":\"200\""+
                "}");//填充业务参数
        String form="";
        try {
            form = alipayClient.pageExecute(alipayRequest,"get").getBody(); //调用SDK生成表单
        }catch (AlipayApiException e) {
            e.printStackTrace();
        }
        /*response.setContentType("text/html;charset=utf-8");
        PrintWriter pw = response.getWriter();
        pw.write(form);
        pw.flush();
        pw.close();*/
        return form;
    }


}
