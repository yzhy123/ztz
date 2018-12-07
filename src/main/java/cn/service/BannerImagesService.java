package cn.service;

import cn.entity.BannerImages;
import org.springframework.stereotype.Service;

import java.util.List;

public interface BannerImagesService {
    public List<BannerImages> getAllBannerImg();
}
