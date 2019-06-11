package com.example.demo.dao;

import com.example.demo.entity.Photo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface PhotoDao {
    void insert(Photo photo);
    List<Photo> list(Map<String,Object> cateId);
}
