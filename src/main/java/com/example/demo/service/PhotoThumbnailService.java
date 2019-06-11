package com.example.demo.service;

import com.example.demo.dao.PhotoThumbnailDao;
import com.example.demo.entity.PhotoThumbnail;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PhotoThumbnailService {
    @Resource
    private PhotoThumbnailDao photoThumbnailDao;

    public void add(PhotoThumbnail photoThumbnail) {
        photoThumbnailDao.insert(photoThumbnail);
    }

    public List<PhotoThumbnail> listByPhotoId(long photoId) {
        return photoThumbnailDao.listByPhotoId(photoId);
    }
}
