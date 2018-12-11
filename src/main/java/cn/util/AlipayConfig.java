package cn.util;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016091600527810";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQChxL1jPK0O3p2NecYnHQ1arT/+FtkdZi5B2vIjaxrzmXQXlfEiWloWp4ZVI5hoXjr+CRsD4tI2pL+ewXU/czz4q7+mP8zfftUamS/SmjS8TZ+imbBTB19uP91YT7X5yTWuvNquXdJqLciVLdFJ1KzS0WOJ0r3mloDCl+5Jr0klNbN32zrxkTeTphf3r3EC0H6qgjCEW33rw/7eQZpX7MWKhouA7ldVVG1nICJS+oYgL87x/SnRwj0cQl1Sjcycq1KAfka+RO5UV50tirHxFyyX4wjRn+g/OgfZB0vNQMCDJe8YR7HLEzKc2p2EEmsQ0nXJsqZxW25W7IpQP5KgVWx5AgMBAAECggEBAJhKP8TpvT3vY0Fp75qo5gaEbWcGGXVs2YVT2npvfVrxDvKZTP37My56naMPNI6kj0LSTaV15lJc/Kw3Eese0LqF7ZFUJMoOfA5jQjswww62wN7xcqZnnXaMFxPpTraNrsUGs5RNbSZaXafbD1lDJ0P8rYl1ZSNscmE/aKvjoaethwE1eGOKe32JEUNxvcOCfaXe/yyGsJzbkgBT1O2M3z+WAQkNyH+de8A8Q+vBqKRC89FkDg0H816ITPXXpsStEv0VQdPoWpLuSyyMLuLUFYP8JmzNbzWxWcb2E3FKFiIcSObYLjX1hlrviqgCBLGD+qsCNIZdu135RogmjRBL0QECgYEA8Fn6Fgimi5X/4p9OQ97oITheBKljbpEzLuDder99jIYspLwlV0KL01bOxFimsguLglQdNPixxeW/3/EVFNpLPBeqSoU7m/sZRhIzyJoV4dVFns25ZUedodW3daswKL7wi7RCBNCwu9OeM+cMwEm++hQZe9+nf2hEFJ/M2SEqaBkCgYEArEz+L9bNJBz/xrbVoDhoimxCUNxibD369fCYZ1bvLQPqGY9moEsOftQui6Hy6l3tuJOAiG0TCV3BWYrlTo959bqW1lSjCgdy3r6Hx787UIcIPZWpgiUn1HhuT7xCYO/HWkYuE8oCSBzbguFhFPCO4Po8mev8lJ+taoJdlT2fM2ECgYATwaGf7AgckzDcZPHe/FSiXmrEAVRuAzts0AkEjPb59RF4XQrIuGyb65fFZfAV1IMcLGPWNdcPCEqUUtHDzAnBH8TcqUT0FljGfLqK87d2v7wgSJLDs3ZOli2lW3Py9Xb6VM/Ua38LgWKQq55NtAIhtkM9/m1bOKvX8ia5dlNxCQKBgCVLvTHJwznv9QWkifVWgHqGGIy8R6m6eNpHrBWiYb9Su5ewzLwhww99Cl47PgOxNUXg18+wHJDIdJPXVu98ax/ftcrLI0eGeTzx7R41rLcvo38BKGH9fPOm5enojE3DWVmXG145Oek2JeXct1D7CVJ1mCyRQmlBbx5A/dTSM+XBAoGAPZPf5T+jvZZVpaCm4CEt9yf5GzgkJKjz04HKtjnOBW+pfjcpmc14pMYmTOrd+v1HOnjqUdLX6BHAJ0sJjzEHHgSKo7LEuKzd39cD3eZQTvQWoTB71Ip+8xP9J0iZw+HcK8AuQc/yy+jD88+778IPt4MLyArC9plu9vJWeIH2x5w=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxrXo014WnxcfY3jEbqFIUeZ2XzUXiv4a9C5ZcCJsE5/gf0XuSq3TxrJySctUQELKxwVKjn/oXC544aPr+FQOb/JoBm4IOEZo/d7ko7hWJ9Fg21uWxU+aFYf9k08dlv9/9+tIJ6cjpSoWoNuLQyxIRaPsNzrFaoU1ki5/stx6mEUjZqyK+L0NXBRselGzsRc3JIUmxsfLirB/ectg3xPLEN+JO7vMRV4raMtP8VFi90P61jVFdRhBl2GuZEF+BWey/tmEoyUDN4k6upuVZSGORgiykJPpxfMXiMV8q5K+kXYFuJI2HZT/lhEQcOZfzvdDRdh+cX3K7opB4eoLMb/5vwIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/success2.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/success.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

