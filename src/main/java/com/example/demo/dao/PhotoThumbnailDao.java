package com.example.demo.dao;

import com.example.demo.entity.PhotoThumbnail;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PhotoThumbnailDao {

    void insert(PhotoThumbnail photoThumbnail);

    List<PhotoThumbnail> listByPhotoId(long photoId);
}
