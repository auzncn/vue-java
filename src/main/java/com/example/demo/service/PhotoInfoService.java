package com.example.demo.service;

import com.example.demo.dao.PhotoInfoDao;
import com.example.demo.entity.PhotoInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;

@Service
public class PhotoInfoService {
    @Resource
    private PhotoInfoDao photoInfoDao;


    public void add(PhotoInfo photoInfo) {
        photoInfo.setClick(0);
        photoInfo.setCreateTime(new Date());
        photoInfoDao.insert(photoInfo);
    }

    public PhotoInfo getByPhotoId(long photoId) {
        return photoInfoDao.getByPhotoId(photoId);
    }
}
