package cn.service;

import cn.util.IndustrySMS;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
@Service
@Transactional
public class SmsServiceImpl implements SmsService {

    @Resource
    private IndustrySMS industrySMS;


    public void sendMessage(String phone) {
        industrySMS.setTo(phone);
        industrySMS.execute();
    }
}
