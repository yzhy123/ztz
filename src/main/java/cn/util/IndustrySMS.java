package cn.util;

import java.net.URLEncoder;


import com.sun.xml.internal.ws.api.pipe.StreamSOAPCodec;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 验证码通知短信接口
 * 
 * @ClassName: IndustrySMS
 * @Description: 验证码通知短信接口
 *
 */
@Repository
public class IndustrySMS
{
	private static String operation = "/industrySMS/sendSMS";

	private static String accountSid = Config.ACCOUNT_SID;
	private static String to = null;
	private static String code=smsCode();
	private static String smsContent = "【在途中】尊敬的用户您好，您正在注册在途中网站，验证码为："+code+",。如非本人操作请忽略。";

	public static String getTo() {
		return to;
	}

	public static void setTo(String to) {
		IndustrySMS.to = to;
	}

	/**
	 * 验证码通知短信
	 */
	public static void execute()
	{
		String tmpSmsContent = null;
	    try{
	      tmpSmsContent = URLEncoder.encode(smsContent, "UTF-8");
	    }catch(Exception e){
	      
	    }
	    String url = Config.BASE_URL + operation;
	    String body = "accountSid=" + accountSid + "&to=" + to + "&smsContent=" + tmpSmsContent
	        + HttpUtil.createCommonParam();

	    // 提交请求
	    String result = HttpUtil.post(url, body);
	    System.out.println("result:" + System.lineSeparator() + result);
	}
	//创建验证码
	public static String smsCode() {
		String random=(int)((Math.random()*9+1)*100000)+"";
		System.out.println("验证码："+random);
		return random;
	}
}
