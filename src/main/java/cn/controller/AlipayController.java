package cn.controller;

import cn.entity.AlipayParams;
import cn.util.AlipayClientUtil;
import cn.util.AlipayPagePayUtil;
import com.alipay.api.AlipayClient;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
public class AlipayController {
    @Resource
    private AlipayPagePayUtil alipayPagePayUtil;
    @RequestMapping("pay.do")
    @ResponseBody
    public String pay(AlipayParams alipayParams){
        System.out.println(alipayParams.getOut_trade_no());
        System.out.println(alipayParams.getSubject());
        System.out.println(alipayParams.getBody());
        System.out.println(alipayParams.getTotal_amount());
        alipayParams.setTimeout_express("30m");
        alipayParams.setQr_pay_mode("4");
        AlipayClient alipayClient = AlipayClientUtil.initAlipayClient();
        String form = alipayPagePayUtil.getAlipayPagePay(alipayClient,alipayParams);
        System.out.println(form);
        return form;
    }
}
