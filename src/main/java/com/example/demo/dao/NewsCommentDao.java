package com.example.demo.dao;

import com.example.demo.entity.NewsComment;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface NewsCommentDao {
    void insert(NewsComment newsComment);
    List<NewsComment> list(Map<String,Object> map);
}
