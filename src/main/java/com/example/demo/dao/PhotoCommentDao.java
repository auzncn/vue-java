package com.example.demo.dao;

import com.example.demo.entity.PhotoComment;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface PhotoCommentDao {
    void insert(PhotoComment photoComment);
    List<PhotoComment> list(Map<String, Object> map);
}
