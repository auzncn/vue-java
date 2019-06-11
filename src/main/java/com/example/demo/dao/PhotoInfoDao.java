package com.example.demo.dao;

import com.example.demo.entity.PhotoInfo;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PhotoInfoDao {
    void insert(PhotoInfo photoInfo);
    PhotoInfo getByPhotoId(long photoId);
}
