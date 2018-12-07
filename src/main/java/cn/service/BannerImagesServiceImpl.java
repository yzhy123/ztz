package cn.service;

import cn.entity.BannerImages;
import cn.mapper.BannerImagesMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BannerImagesServiceImpl implements BannerImagesService {
    @Resource
    private BannerImagesMapper bannerImagesMapper;
    @Override
    public List<BannerImages> getAllBannerImg() {
        return bannerImagesMapper.getAllBannerImg();
    }
}
